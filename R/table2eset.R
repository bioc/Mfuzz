table2eset <- function(filename)
{

 line1 <- scan(file=filename,what='character', sep="\t",nlines=1)
 sample.names <- as.character(line1)

 if (length(grep("gene",sample.names[2],ignore.case=TRUE))){
   gene.names.ok <- 1
 } else {
   gene.names.ok <- 0
 }

 sample.names <- sample.names[(2+gene.names.ok):length(sample.names)]
 
 tmp <- scan(file=filename,what='numeric', sep="\t",nlines=1,skip=1)[1]
  if (tmp=="Time" | tmp=="time" | tmp == "TIME") 
    {   line2 <- scan(file=filename,what='numeric', sep="\t",nlines=1,skip=1)
        time <- as.double(line2[(gene.names.ok+2):length(line2)])        
        data <- read.table(file=filename,sep="\t",skip=2)
      } else {
         time <- as.double(0:(length(sample.names)-1))
         data <- read.table(file=filename,sep="\t",skip=1)
       }
 
        gene.id <- as.character(data[,1])# gene identifiers are in the first columns
        gene.names <- as.character(data[,gene.names.ok+1]) # gene info or gene names are in second column
        expression.matrix <- as.matrix(data[,(gene.names.ok+2):dim(data)[[2]]])# expression values
        #col.names(expression.matrix) <- sample.names
        row.names(expression.matrix) <- gene.id
  

    


 pD <- data.frame(time=time)
 attributes(pD)$row.names <- sample.names
 dimnames(expression.matrix)[[2]] <- sample.names  
# Construction of exprSet object

 
  phenoData.object <- new("AnnotatedDataFrame", data=pD, varMetadata=data.frame(labelDescription=c("Time")))

 eset <- new("ExpressionSet",
 exprs = expression.matrix, # Object of class matrix
 phenoData = phenoData.object # Object of class phenoData
 )

}
