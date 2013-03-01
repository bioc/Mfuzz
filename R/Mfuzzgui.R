Mfuzzgui  <- function (){
#require("tcltk") || stop("R-package tcltk needed")
#require("tkWidgets") || stop("Bioconductor-package tkWidgets needed")
nenv <- new.env(hash = TRUE, parent = parent.frame())
gui <- tktoplevel()
tktitle(gui) <- "GUI for Mfuzz package"
width1 <- 14

############DATA LOADING##################################

gui.1l <- tklabel(gui, text = "DATA LOADING", fg = "red")
gui.2l1 <- tklabel(gui, text = "ExpressionSet object")
gui.2l2 <- tklabel(gui, text = "ExpressionSet object")
gui.2l3 <- tklabel(gui, text = "Expression table")
gui.1s <- tklabel(gui, text = "                                ")
gui.h1 <- tkbutton(gui,text= "help", width = 5, height =1) ####################help button
gui.1b <- tkbutton(gui, text = "Browse objects", width = width1-2 
+1)
gui.2b <- tkbutton(gui, text = "Browse files", width = width1-2
+1)
gui.2bb <- tkbutton(gui, text = "Load table", width = width1-2)
maobjname <- tclVar()
maobjname <- "No object loaded"
gui.1t <- tktext(gui, width = width1 , height = 1)
tkinsert(gui.1t, "0.0", maobjname)

maobjname11  <- tclVar()
maobjname11 <- "No file loaded"
gui.1t1 <- tktext(gui, width = width1 , height = 1)
tkinsert(gui.1t1 , "0.0", maobjname11)

maobjname2  <- tclVar()
maobjname2 <- "No table loaded"
gui.2t <- tktext(gui, width = width1 , height = 1)
tkinsert(gui.2t , "0.0", maobjname2)
gui.2s <- tklabel(gui, text = "                                        ")
gui.3l <- tklabel(gui, text = "___________________________________________________________________")
width.2 <- 16
width.3 <- 10

#############DATA PREPROCESSING#############################

gui.3s <- tklabel(gui, text = "                                        ")
gui.4l <- tklabel(gui, text = "PRE-PROCESSING",fg = "red")
gui.4s <- tklabel(gui, text = "                                        ")
gui.5s <- tklabel(gui, text = "                                        ")
gui.6s <- tklabel(gui, text = "                                        ")
gui.h2 <- tkbutton(gui,text= "help", width = 5, height =1) ####################help button
gui.3b <- tkbutton(gui, text = "Filter missing values", width = width.2,
bg = "gray")
gui.7s <- tklabel(gui, text = "                                        ")
gui.8s <- tklabel(gui, text = "                                        ")
gui.4b <- tkbutton(gui, text = "Fill missing values", width = width.2,
bg = "gray")
gui.6b <- tkbutton(gui, text = "Standardise", width = width.2,
bg = "gray")

gui.8b <- tkbutton(gui, text = "Save object", width = width.2)
gui.9b <- tkbutton(gui, text = "Save table", width = width.2)

gui.6l <- tklabel(gui, text = "_____________________________________________________________________")


###############DATA VISUALISATION####################################

gui.7l <- tklabel(gui, text = "VISUALISATION",fg  = "red")
gui.h5 <- tkbutton(gui,text= "help", width = 5, height =1) ####################help button
visu <- tclVar()
tclvalue(visu) <- "Mfuzz.Plot"
gui.1rb <- tkradiobutton(gui, text = "Soft clustering", variable = visu,
value = "Mfuzz.Plot")
gui.2rb <- tkradiobutton(gui, text = "Hard clustering", variable = visu,
value = "Kmeans2.Plot")
gui.3rb <- tkradiobutton(gui, text = "Overlap", variable = visu,
value = "Overlap.Plot")
gui.7b <- tkbutton(gui, text = "Plot", width = width.2,
bg = "gray")
gui.8l <- tklabel(gui, text = "______________________________________________________________________")
width.4 <- 10

################CLUSTERING#############################################

gui.9l <- tklabel(gui, text = "CLUSTERING", fg = "red")
gui.h3 <- tkbutton(gui,text= "help", width = 5, height =1) ####################help button
gui.h3s <- tklabel(gui, text = "                                ")
gui.10b <- tkbutton(gui, text = "Fuzzy C-means", width = width.2,
bg = "gray")
gui.11b <- tkbutton(gui, text = "K-means", width = width.2,
bg = "gray")
gui.16b <- tkbutton(gui, text = "Export clustering", width = width.2)
gui.8l2 <- tklabel(gui, text = "______________________________________________________________________")



############CLUSTER ANALYSIS###########################################
gui.8l3 <- tklabel(gui, text = "CLUSTER ANALYSIS",fg  = "red")
gui.h4 <- tkbutton(gui,text= "help", width = 5, height =1) ####################help button
gui.h4s <- tklabel(gui, text = "                                ")
gui.12b <- tkbutton(gui, text = "Cluster cores", width = width.2,
bg = "gray")
gui.14b <- tkbutton(gui, text = "Overlap", width = width.2,
bg = "gray")
gui.12bb <- tkbutton(gui, text = "Export acore data", width =  width.2)
gui.14bb <- tkbutton(gui, text = "Export overlap data", width = width.2)

gui.10l <- tklabel(gui, text = "=======================")
gui.18b <- tkbutton(gui, text = "Quit", width = width.2)
gui.11l <- tklabel(gui, text = "")
tkgrid(gui.1l,gui.h1)#############columnspan = 24, column = 20, sticky = "w")

tkgrid.configure(gui.1l, columnspan = 4, column = 0, sticky = "w")
tkgrid.configure(gui.h1, column = 2,sticky = "e")
tkgrid(gui.2l1,gui.2l2,gui.2l3)
tkgrid(gui.1s)
tkgrid.configure(gui.1s, columnspan = 3)
tkgrid(gui.1b,gui.2b,gui.2bb)
tkgrid.configure(gui.2bb, column =2,row = 3)
tkgrid(gui.1t ,row=5,column= 0)
tkgrid(gui.1t1,row=5,column=1)
tkgrid(gui.2t ,row=5,column= 2)
#####tkgrid(gui.2s)
#####tkgrid.configure(gui.2s, columnspan = 3)
tkgrid(gui.3l)
tkgrid.configure(gui.3l, columnspan = 3)
tkgrid(gui.4l,gui.h2)
tkgrid.configure(gui.4l, columnspan = 4, column = 0, sticky = "w")
tkgrid.configure(gui.h2, columnspan = 4, column = 2, sticky = "e")
tkgrid(gui.6s)
tkgrid.configure(gui.6s, columnspan = 3)
tkgrid(gui.3b,gui.4b,gui.6b)#, gui.5l)
tkgrid.configure(gui.4b, column=1)#,row=19)
####tkgrid(gui.3bb,gui.4bb)
####tkgrid.configure(gui.4bb, column=2)
####tkgrid(gui.5b,gui.6b)
tkgrid(gui.6b,column=2)
tkgrid.configure(gui.6b, column=2)
tkgrid(gui.8b,gui.9b)
######tkgrid.configure(gui.5b, column=0)
tkgrid.configure(gui.8b, column= 0)
tkgrid.configure(gui.9b, column = 2)
###tkgrid(gui.7s)
###tkgrid.configure(gui.7s, columnspan = 3)
tkgrid(gui.6l)
tkgrid.configure(gui.6l, columnspan = 3)
tkgrid(gui.9l,gui.h3)
tkgrid.configure(gui.9l, columnspan = 4, column = 0, sticky = "w")
tkgrid.configure(gui.h3, columnspan = 4, column = 2, sticky = "e")
tkgrid(gui.h3s)
tkgrid(gui.10b,gui.11b)
tkgrid.configure(gui.11b, column = 2)
tkgrid(gui.16b)
tkgrid.configure(gui.16b,column=1)
#tkgrid(gui.4s)
#tkgrid.configure(gui.4s, column=2)
tkgrid(gui.8l)
tkgrid.configure(gui.8l, columnspan = 3)
tkgrid(gui.8l3,gui.h4)
tkgrid.configure(gui.8l3,columnspan = 4, column = 0, sticky = "w")
tkgrid.configure(gui.h4, columnspan = 4, column = 2, sticky = "e")
tkgrid(gui.h4s)
tkgrid(gui.12b,gui.14b)
tkgrid.configure(gui.14b,column = 2)
tkgrid(gui.12bb,gui.14bb)
tkgrid.configure(gui.14bb,column = 2)
tkgrid(gui.8l2)
tkgrid.configure(gui.8l2,columnspan = 3)
tkgrid(gui.7l,gui.h5)
tkgrid.configure(gui.7l, columnspan = 4, column = 0, sticky = "w")
tkgrid.configure(gui.h5, columnspan = 4, column = 2, sticky = "e")

tkgrid(gui.1rb, gui.2rb, gui.3rb)
tkgrid.configure(gui.2rb, column = 1, sticky = "w")
tkgrid.configure(gui.3rb, column = 2, sticky = "w")
tkgrid(gui.3s)
tkgrid.configure(gui.3s,column=1)
tkgrid(gui.7b)
tkgrid.configure(gui.7b, column = 1)
####tkgrid.configure(gui.19b,column=2)
##tkgrid(gui.5s)
##tkgrid.configure(gui.5s)
tkgrid(gui.10l)
tkgrid.configure(gui.10l, column = 1)
####tkgrid(gui.8s)
####tkgrid.configure(gui.8s)
tkgrid(gui.18b)
tkgrid.configure(gui.18b, column=1)
tkgrid(gui.11l)

#######################

objectBrowser2 <- function(env = .GlobalEnv, fun = function(x) TRUE,
textToShow = "Select ExpressionSet object", nSelect = 1) {
LABELFONT1 <- "Helvetica 11 bold"
LABELFONT2 <- "Helvetica 10"
BUTWIDTH <- 8
selectedObj <- NULL
isPack <- FALSE
returnObj <- NULL
returnList <- NULL
selIndex <- NULL
objIndex <- NULL
objsInSel <- NULL
tempObj <- NULL
currentEnv <- env
currentState <- "env"
end <- function() {
tkgrab.release(base)
tkdestroy(base)
}

on.exit(end(), add = TRUE)
finish <- function() {
if (currentState != "env") {
returnList <<- objsInSel
end()
}
else {
if (length(objsInSel) != 0) {
if (nSelect != length(objsInSel)) {
tkmessageBox(title = "Wrong number", message = paste("You can only select",
nSelect, "object(s)"), icon = "warning",
type = "ok")
}
else {
returnList <<- objNameToList(objsInSel, currentEnv)
end()
}
}
else {
returnList <<- NULL
end()
}
}
}

dClick <- function() {
}

sClick <- function() {
selectedObj <<- NULL
if (currentState != "list") {
tkconfigure(selectBut, state = "normal")
}
selIndex <<- unlist(strsplit(as.character(tkcurselection(listView)),
" "))
if (length(selIndex) == 1) {
tempObj <<- as.character(tkget(listView, selIndex))
}
else {
for (i in selIndex) {
tempObj <<- c(tempObj, as.character(tkget(listView,
i)))
}
}
}

selClick <- function() {
}

cancel <- function() {
objsInSel <<- NULL
finish()
}

selectObj <- function() {
objsInSel <<- c(objsInSel, tempObj)
objsInSel <<- unique(objsInSel)
tkconfigure(selectBut, state = "disabled")
finish()
}

viewEnv <- function(env) {
writeList(listView, pickObjs(objNames = ls(env = env,
all = TRUE), fun = fun), clear = TRUE)
}

base <- tktoplevel()
tktitle(base) <- paste("Object Browser")
capFrame <- tkframe(base)
noteLabel <- tklabel(capFrame, text = textToShow, font = LABELFONT1)
labl2 <- tklabel(capFrame, text = "Objects to select from",
font = LABELFONT2)
tkgrid(noteLabel, columnspan = 3)
tkgrid(labl2)
tkgrid(capFrame, columnspan = 2, padx = 10)
leftFrame <- tkframe(base)
listFrame <- tkframe(leftFrame)
listView <- makeViewer(listFrame)
tkgrid(listFrame, columnspan = 2)
tkconfigure(listView, selectmode = "extended", font = LABELFONT2)
tkbind(listView, "<Double-Button-1>", dClick)
tkbind(listView, "<B1-ButtonRelease>", sClick)
butFrame <- tkframe(leftFrame)
selectBut <- tkbutton(butFrame, text = "Select", width = BUTWIDTH,
command = selectObj, state = "disabled")
canBut <- tkbutton(butFrame, text = "Cancel", width = BUTWIDTH,
command = cancel)
tkgrid(canBut, selectBut)
tkgrid(butFrame)
tkgrid(leftFrame)
viewEnv(env)
tkgrab.set(base)
tkwait.window(base)
return(returnList)
}

###############################

browseObject <- function() {
tmp <- objectBrowser2()
if (!(is.null(tmp))) {
if (class(tmp[[1]]) == "ExpressionSet") {

#####MODIFIED CODE#################

tmp.eset <- tmp[[1]]
gene.id <- dimnames(exprs(tmp.eset))[[1]]
gene.names <- dimnames(exprs(tmp.eset))[[1]]
gd <- data.frame(gene.id,gene.names)
assign("genename.dataframe", gd, nenv)
assign("obj", tmp[[1]], nenv)
tkdelete(gui.1t, "0.0", "end")
tkinsert(gui.1t, "0.0", attributes(tmp)$names[[1]])
rm(tmp)
}
else {
tkmessageBox(message = "Object is not of ExpressionSet class",
title = "Object is not loaded!")
}
}
return()
}
tkconfigure(gui.1b, command = browseObject)

######################

load.table <- function(filename)
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
 
# dimnames(exprs(eset))[[1]] <- gene.names 
# dimnames(exprs(eset))[[2]] <- sample.names
 gd <- data.frame(gene.id,gene.names)
 assign("genename.dataframe", gd, nenv)
 assign("obj.tmp", eset, nenv)
 return()
}

########################


browseTable <- function() {
envtmp <- new.env(hash = TRUE, parent = parent.frame())
file <- fileBrowser(nSelect = 1, textToShow = "Select data file with flat table format")[[1]]
if (!(is.null(file))) {
  
tmp <- try(load.table(file), TRUE)
if (class(tmp) == "try-error") {
tkmessageBox(message = tmp[1])
return()
}

if (class(get("obj.tmp",nenv)) == "ExpressionSet") {
tkdelete(gui.1t, "0.0", "end")
tkdelete(gui.1t1, "0.0","end")
tkinsert(gui.2t, "0.0", file)
assign("obj", get("obj.tmp",nenv), nenv)
}
else {
tkmessageBox(message = "Table format is not supported",
title = "Table is not loaded!")
rm("obj.tmp",envir=nenv)
}
rm(list = ls(envtmp), envir = envtmp)
#rm(tmp.eset)
}
return()
}
tkconfigure(gui.2bb, command = browseTable)

######################

browseFile <- function() {
envtmp <- new.env(hash = TRUE, parent = parent.frame())
file <- fileBrowser(nSelect = 1, textToShow = "Select Rdata file with ExpressionSet object")[[1]]
if (!(is.null(file))) {
tmp <- try(load(file, envtmp), TRUE)
if (class(tmp) == "try-error") {
tkmessageBox(message = tmp[1])
return()
}
if (class(get(tmp, envtmp)) == "ExpressionSet") {
tkdelete(gui.1t, "0.0", "end")
tkinsert(gui.1t, "0.0",tmp)
tkdelete(gui.1t1, "0.0", "end")
tkinsert(gui.1t1, "0.0",tmp)
tkdelete(gui.2t, "0.0", "end")
tkinsert(gui.2t, "0.0","end")

tmp.eset <- get(tmp,envtmp)
gene.id <- dimnames(exprs(tmp.eset))[[1]]
gene.names <- dimnames(exprs(tmp.eset))[[1]]
gd <- data.frame(gene.id,gene.names)
assign("genename.dataframe", gd, nenv)

####dimnames(exprs(yeast))[[2]] ################33Modified code


assign("obj", get(tmp, envtmp), nenv)
}
else {
tkmessageBox(message = "Object is not of ExpressionSet class",
title = "Object is not loaded!")
}
rm(list = ls(envtmp), envir = envtmp)
rm(tmp)
}
return()
}
tkconfigure(gui.2b, command = browseFile)

####################


filter.args <- function() {
nenvtemp <- new.env()
assign("tmp", list(NULL), nenvtemp)
gui.filter <- tktoplevel()
tktitle(gui.filter) <- "Cutoff value for filtering"
cutoff.filter <- tclVar()
tclvalue(cutoff.filter) <- 0.25
gui.filter.l1 <- tklabel(gui.filter, text = "Threshold value :")
gui.filter.e1 <- tkentry(gui.filter, width = 5)
tkinsert(gui.filter.e1, "end", tclvalue(cutoff.filter))
gui.filter.b5 <- tkbutton(gui.filter, text = "OK", width = 5)
gui.filter.b5b <- tkbutton(gui.filter, text = "Cancel", width = 5)
tkgrid(gui.filter.l1, gui.filter.e1)
tkgrid.configure(gui.filter.e1, columnspan = 1)
tkgrid.configure(gui.filter.l1, columnspan = 1, sticky = "w")
tkgrid(gui.filter.b5, gui.filter.b5b)
tkgrid.configure(gui.filter.b5b, column = 2)

desgui.filter <- function() {
tkdestroy(gui.filter)
}
tkconfigure(gui.filter.b5b, command = desgui.filter)

return.filter <- function() {
assign("tmp", list(cutoff = tclvalue(tkget(gui.filter.e1))), nenvtemp)
tkdestroy(gui.filter)
}
tkconfigure(gui.filter.b5, command = return.filter)
tkwait.window(gui.filter)
return(get("tmp", nenvtemp))
}


################################


################################

filter1 <- function() {
if(!exists("obj",nenv)) {
tkmessageBox(message = "No ExpressionSet object has been loaded.")
return()
}

else {

#####l <- get("filter.args",nenv)
l <- filter.args()
if ((!is.null(l[[1]]))){
cutoff <- as.double(l$cutoff)
eset.tmp <- get("obj", nenv)
if (!(is.null(eset.tmp))) {
if (class(eset.tmp) == "ExpressionSet") {
assign("obj", eset.tmp, nenv)
}
tmp <- filter.NA(eset.tmp,cutoff)


index <- logical(dim(exprs(eset.tmp))[1])
    for (i in 1:dim(exprs(eset.tmp))[1]) {
        index[i] <- (((sum(is.na(exprs(eset.tmp)[i, ]))/dim(exprs(eset.tmp))[2])) > 
            cutoff)
    }
gd <- try(get("genename.dataframe",nenv), silent=TRUE)
if(class(gd) !="try-error") {
gd <- gd[!index, ]
assign("genename.dataframe",gd,nenv)
}
if (!(is.null(tmp))) {
if (class(tmp) == "ExpressionSet") {
assign("obj", tmp, nenv)
}

}
}
if(!exists("obj",nenv)) {
tkmessageBox(message = "No ExpressionSet object has been loaded.")
return()
}
}
return()
}
}
tkconfigure(gui.3b, command = filter1)


##################################

fill.NA.args <- function() {
nenvtemp <- new.env()
assign("tmp", list(NULL), nenvtemp)
gui.fill.NA <- tktoplevel()
tktitle(gui.fill.NA) <- "Options for fill.NA methods"
kvalue <- tclVar()
tclvalue(kvalue) <- 10
gui.fill.NA.l1 <- tklabel(gui.fill.NA, text = "Value of K : ")
gui.fill.NA.e1 <- tkentry(gui.fill.NA, width = 5)
tkinsert(gui.fill.NA.e1, "end", tclvalue(kvalue))
gui.fill.NA.l3 <- tklabel(gui.fill.NA, text = "Averaging method:")
avmethod <- tclVar()
tclvalue(avmethod) <- "median"
gui.fill.NA.r3a <- tkradiobutton(gui.fill.NA, text = "Mean",
variable = avmethod, value = "mean")
gui.fill.NA.r3b <- tkradiobutton(gui.fill.NA, text = "Median",
variable = avmethod, value = "median")
gui.fill.NA.r3c <- tkradiobutton(gui.fill.NA, text = "Knn",
variable = avmethod, value = "knn")
gui.fill.NA.r3d <- tkradiobutton(gui.fill.NA, text = "Knnw",
variable = avmethod, value = "knnw")
gui.fill.NA.b5 <- tkbutton(gui.fill.NA, text = "OK",
width = 5)
gui.fill.NA.b5b <- tkbutton(gui.fill.NA, text = "Cancel",
width = 5)
tkgrid(gui.fill.NA.l1, gui.fill.NA.e1)
tkgrid.configure(gui.fill.NA.e1, column = 2, columnspan = 1)
tkgrid.configure(gui.fill.NA.l1, columnspan = 2, sticky = "w")
tkgrid(gui.fill.NA.l3, gui.fill.NA.r3a, gui.fill.NA.r3b, gui.fill.NA.r3c,gui.fill.NA.r3d)
tkgrid.configure(gui.fill.NA.l3, sticky = "e")
tkgrid.configure(gui.fill.NA.l3, sticky = "w")
tkgrid(gui.fill.NA.b5, gui.fill.NA.b5b)
tkgrid(gui.fill.NA.b5b, column = 2)
desguifillNA <- function() {
tkdestroy(gui.fill.NA)
}
tkconfigure(gui.fill.NA.b5b, command = desguifillNA)
returnfillNA <- function() {
assign("tmp", list(kval = tclvalue(tkget(gui.fill.NA.e1)),
avm = tclvalue(avmethod)),
nenvtemp)
tkdestroy(gui.fill.NA)
}
tkconfigure(gui.fill.NA.b5, command = returnfillNA)
tkwait.window(gui.fill.NA)
return(get("tmp", nenvtemp))
}

######################################

################################


FillNA <- function() {

if (!exists("obj", nenv)) {
tkmessageBox(message = "No ExpressionSet object has been loaded.")
return()
}
#####l <- get("fill.NA.args",nenv)
l <- fill.NA.args()
if ((!is.null(l[[1]])) ){
kvalue <- as.integer(l$kval)
method <- l$avm
}
eset.tmp <- get("obj", nenv)
if(method == "mean") {
tmp <- fill.NA(eset.tmp, mode="mean",k=kvalue)
}
if(method =="median") {
tmp <- fill.NA(eset.tmp, mode= "median", k=kvalue)
}
if(method=="knn") {
tmp <- fill.NA(eset.tmp, mode= "knn", k=kvalue)
}
if(method=="knnw") {
tmp <- fill.NA(eset.tmp, mode= "knnw", k=kvalue)
}

if (!(is.null(tmp))) {
if (class(tmp) == "ExpressionSet") {
assign("obj", tmp, nenv)
}
}
if(!exists("obj",nenv)) {
tkmessageBox(message = "No ExpressionSet object has been loaded.")
return()
}

return()
}
tkconfigure(gui.4b, command = FillNA)

#############################




##########################3


standardise.args <- function() {
nenvtemp <- new.env()
assign("tmp", list(NULL), nenvtemp)
gui.standardise <- tktoplevel()
tktitle(gui.standardise) <- "Options for standardization methods"
tvalue <- tclVar()
tclvalue(tvalue) <- 1
gui.standardise.l1 <- tklabel(gui.standardise, text = "        Time Point : ")
gui.standardise.e1 <- tkentry(gui.standardise, width = 5)
tkinsert(gui.standardise.e1, "end", tclvalue(tvalue))
gui.standardise.l2 <- tklabel(gui.standardise, text = "Standardisation Method:")
stmethod <- tclVar()
tclvalue(stmethod) <- "NormalSDBased"
gui.standardise.rb1 <- tkradiobutton(gui.standardise, text = "Normal SD Based",
variable = stmethod, value = "NormalSDBased")
gui.standardise.rb2 <- tkradiobutton(gui.standardise, text = "Time-Point Based",
variable = stmethod, value = "TimePtBased")
gui.standardise.b1 <- tkbutton(gui.standardise, text = "OK",
width = 5)
gui.standardise.b2 <- tkbutton(gui.standardise, text = "Cancel",
width = 5)

tkgrid(gui.standardise.l2)
tkgrid.configure(gui.standardise.l2, sticky = "e")
tkgrid.configure(gui.standardise.l2, sticky = "w")
tkgrid(gui.standardise.rb1, gui.standardise.rb2)
tkgrid(gui.standardise.l1, gui.standardise.e1)
tkgrid.configure(gui.standardise.e1, column = 2, columnspan = 1)
tkgrid.configure(gui.standardise.l1, column = 1, columnspan = 2, sticky = "w")
tkgrid(gui.standardise.b1, gui.standardise.b2)
tkgrid(gui.standardise.b2, column = 2)
desguistandardise <- function() {
tkdestroy(gui.standardise)
}
tkconfigure(gui.standardise.b2, command = desguistandardise)
returnstandardise <- function() {
assign("tmp", list(tval= tclvalue(tkget(gui.standardise.e1)),stm = tclvalue(stmethod)),nenvtemp)
tkdestroy(gui.standardise)
}
tkconfigure(gui.standardise.b1, command = returnstandardise)
tkwait.window(gui.standardise)
return(get("tmp", nenvtemp))
}

###############################

Standardise <- function() {

if (!exists("obj", nenv)) {
tkmessageBox(message = "No ExpressionSet object has been loaded.")
return()
}
l <- standardise.args()
if ((!is.null(l[[1]]))& (!is.null(l[[1]]))){
tvalue <- as.integer(l$tval)
method <- l$stm
eset.tmp <- get("obj", nenv)
if(method == "NormalSDBased") {
tmp <- standardise(eset.tmp)
}
if(method =="TimePtBased") {
tmp <- standardise2(eset.tmp, timepoint=tvalue)
}

if (!(is.null(tmp))) {
if (class(tmp) == "ExpressionSet") {
assign("obj", tmp, nenv)
}
}
}
return()
}
tkconfigure(gui.6b, command = Standardise)

################################

fuzzy.cmeans.args <- function() {
nenvtemp <- new.env()
assign("tmp", list(NULL), nenvtemp)
gui.fuzzy.cmeans <- tktoplevel()
tktitle(gui.fuzzy.cmeans) <- "Options for Fuzzy Cmeans"
ccenters <- tclVar()
tclvalue(ccenters) <- 10
gui.fuzzy.cmeans.l1 <- tklabel(gui.fuzzy.cmeans, text = "Centers :")
gui.fuzzy.cmeans.e1 <- tkentry(gui.fuzzy.cmeans, width = 5)
tkinsert(gui.fuzzy.cmeans.e1, "end", tclvalue(ccenters))
mval <- tclVar()
tclvalue(mval) <- 1.25
gui.fuzzy.cmeans.l2 <- tklabel(gui.fuzzy.cmeans, text = "Value of m ")
gui.fuzzy.cmeans.e2 <- tkentry(gui.fuzzy.cmeans, width = 5)
tkinsert(gui.fuzzy.cmeans.e2, "end", tclvalue(mval))
gui.fuzzy.cmeans.b5 <- tkbutton(gui.fuzzy.cmeans, text = "OK",
width = 5)
gui.fuzzy.cmeans.b5b <- tkbutton(gui.fuzzy.cmeans, text = "Cancel",
width = 5)
tkgrid(gui.fuzzy.cmeans.l1, gui.fuzzy.cmeans.e1)
tkgrid.configure(gui.fuzzy.cmeans.e1, column = 2, columnspan = 1)
tkgrid.configure(gui.fuzzy.cmeans.l1, columnspan = 2, sticky = "w")
tkgrid(gui.fuzzy.cmeans.l2, gui.fuzzy.cmeans.e2)
tkgrid.configure(gui.fuzzy.cmeans.l2, columnspan = 2, sticky = "w")
tkgrid.configure(gui.fuzzy.cmeans.e2, column = 2, columnspan = 1)
tkgrid(gui.fuzzy.cmeans.b5, gui.fuzzy.cmeans.b5b)
tkgrid(gui.fuzzy.cmeans.b5b, column = 2)
desguifuzzy.cmeans <- function() {
tkdestroy(gui.fuzzy.cmeans)
}
tkconfigure(gui.fuzzy.cmeans.b5b, command = desguifuzzy.cmeans)
returnfuzzy.cmeans <- function() {
assign("tmp", list(ccenters = tclvalue(tkget(gui.fuzzy.cmeans.e1)),
mval = tclvalue(tkget(gui.fuzzy.cmeans.e2))), nenvtemp)
tkdestroy(gui.fuzzy.cmeans)
}
tkconfigure(gui.fuzzy.cmeans.b5, command = returnfuzzy.cmeans)
tkwait.window(gui.fuzzy.cmeans)
return(get("tmp", nenvtemp))
}

#############################

fuzzy.cmeans <- function() {

if (!exists("obj", nenv)) {
tkmessageBox(message = "No ExpressionSet object has been loaded.")
return()
}
lis <- fuzzy.cmeans.args()
if (!is.null(lis[[1]])) {
centers <- as.integer(lis$ccenters)
m <- as.double(lis$mval)
eset.tmp1 <- get("obj", nenv)
#centers <- dim(exprs(eset.tmp1))[[2]]
tmp <- mfuzz(eset.tmp1, centers, m)
if (!(is.null(tmp))) {
if (class(tmp) != "ExpressionSet") {
assign("obj.ccl", tmp, nenv)
}
}
}
return()

}
tkconfigure(gui.10b, command = fuzzy.cmeans)

############################

acore.args <- function() {
nenvtemp <- new.env()
assign("tmp", list(NULL), nenvtemp)
gui.acore <- tktoplevel()
tktitle(gui.acore) <- "Options for alpha core extraction"
min.acore <- tclVar()
tclvalue(min.acore) <- 0.5
gui.acore.l1 <- tklabel(gui.acore, text = "Minimum Membership Value \n or min.acore :")
gui.acore.e1 <- tkentry(gui.acore, width = 5)
tkinsert(gui.acore.e1, "end", tclvalue(min.acore))
gui.acore.b5 <- tkbutton(gui.acore, text = "OK", width = 5)
gui.acore.b5b <- tkbutton(gui.acore, text = "Cancel", width = 5)
tkgrid(gui.acore.l1, gui.acore.e1)
tkgrid.configure(gui.acore.e1, columnspan = 1)
tkgrid.configure(gui.acore.l1, columnspan = 1, sticky = "w")
tkgrid(gui.acore.b5, gui.acore.b5b)
tkgrid.configure(gui.acore.b5b, column = 2)

desgui.acore <- function() {
tkdestroy(gui.acore)
}
tkconfigure(gui.acore.b5b, command = desgui.acore)

return.acore <- function() {
assign("tmp", list(minacore = tclvalue(tkget(gui.acore.e1)), nenvtemp))
tkdestroy(gui.acore)
}
tkconfigure(gui.acore.b5, command = return.acore)
tkwait.window(gui.acore)
return(get("tmp", nenvtemp))
}


#####################################3


Acore <- function() {

if (!exists("obj", nenv)) {
tkmessageBox(message = "No ExpressionSet object has been loaded.")
return()
}
if (!exists("obj.ccl", nenv)) {
tkmessageBox(message = "Fuzzy clustering has not been applied yet.")
return()
}
eset.tmp <- get("obj", nenv)
cl.tmp <- get("obj.ccl", nenv)
lis <- acore.args()
if (!is.null(lis[[1]])) {

min.acore <- as.double(lis$minacore)

acore.list <- acore(eset.tmp,cl.tmp,min.acore)
if (!(is.null(acore.list))) {
assign("acore.list", acore.list, nenv)

}
}
return()
}


tkconfigure(gui.12b, command = Acore)

################################

Overlap <- function() {

if (!exists("obj", nenv)) {
tkmessageBox(message = "No ExpressionSet object has been loaded.")
return()
}
cl.tmp <- get("obj.ccl", nenv)
tmp <- overlap(cl.tmp)
if (!(is.null(tmp))) {

assign("ovl.matrix", tmp, nenv)
}
return()
}

tkconfigure(gui.14b,command=Overlap)

#################################

kmeans2.args <- function() {
nenvtemp <- new.env()
assign("tmp", list(NULL), nenvtemp)
gui.kmeans2 <- tktoplevel()
tktitle(gui.kmeans2) <- "Options for Kmeans2"
ccenters <- tclVar()
tclvalue(ccenters) <- 10
gui.kmeans2.l1 <- tklabel(gui.kmeans2, text = "Centers :")
gui.kmeans2.e1 <- tkentry(gui.kmeans2, width = 5)
tkinsert(gui.kmeans2.e1, "end", tclvalue(ccenters))
it.max <- tclVar()
tclvalue(it.max) <- 20
gui.kmeans2.l2 <- tklabel(gui.kmeans2, text = "Number of Max Iteration ")
gui.kmeans2.e2 <- tkentry(gui.kmeans2, width = 5)
tkinsert(gui.kmeans2.e2, "end", tclvalue(it.max))
gui.kmeans2.b5 <- tkbutton(gui.kmeans2, text = "OK",
width = 5)
gui.kmeans2.b5b <- tkbutton(gui.kmeans2, text = "Cancel",
width = 5)
tkgrid(gui.kmeans2.l1, gui.kmeans2.e1)
tkgrid.configure(gui.kmeans2.e1, column = 2, columnspan = 1)
tkgrid.configure(gui.kmeans2.l1, columnspan = 2, sticky = "w")
tkgrid(gui.kmeans2.l2, gui.kmeans2.e2)
tkgrid.configure(gui.kmeans2.l2, columnspan = 2, sticky = "w")
tkgrid.configure(gui.kmeans2.e2, column = 2, columnspan = 1)
tkgrid(gui.kmeans2.b5, gui.kmeans2.b5b)
tkgrid(gui.kmeans2.b5b, column = 2)
desguikmeans2 <- function() {
tkdestroy(gui.kmeans2)
}
tkconfigure(gui.kmeans2.b5b, command = desguikmeans2)
return.kmeans2 <- function() {
assign("tmp", list(ccenters = tclvalue(tkget(gui.kmeans2.e1)),
it.max = tclvalue(tkget(gui.kmeans2.e2))), nenvtemp)

tkdestroy(gui.kmeans2)
}
tkconfigure(gui.kmeans2.b5, command = return.kmeans2)
tkwait.window(gui.kmeans2)
return(get("tmp", nenvtemp))
}

###################################3


kmean2 <- function() {

if (!exists("obj", nenv)) {
tkmessageBox(message = "No ExpressionSet object has been loaded.")
return()
}
lis <- kmeans2.args()
if (!is.null(lis[[1]])) {
centers <- as.integer(lis$ccenters)
m <- as.double(lis$it.max)
eset.tmp <- get("obj", nenv)
tmp <- kmeans2(eset.tmp, centers, m)
if (!(is.null(tmp))) {
if (class(tmp) != "ExpressionSet") {
assign("obj.kcl", tmp, nenv)
}
}
}
return()
}
tkconfigure(gui.11b, command = kmean2)

###########################

overlap.plot.args <- function() {
nenvtemp <- new.env()
assign("tmp", list(NULL), nenvtemp)
gui.overlap.plot <- tktoplevel()
tktitle(gui.overlap.plot) <- "Options for Plot of overlapping clusters"
thres.value <- tclVar()
tclvalue(thres.value) <- 0.1
gui.overlap.plot.l1 <- tklabel(gui.overlap.plot, text = " Threshold Value  : ")
gui.overlap.plot.e1 <- tkentry(gui.overlap.plot, width = 5)
tkinsert(gui.overlap.plot.e1, "end", tclvalue(thres.value))
gui.overlap.plot.l2 <- tklabel(gui.overlap.plot,text="Scale  :")
scal <- tclVar()
tclvalue(scal) <- "TRUE"
gui.overlap.plot.r1 <- tkradiobutton(gui.overlap.plot, text = "TRUE", variable =scal,
value = "TRUE")
magni.value <- tclVar()
tclvalue(magni.value) <- 30
gui.overlap.plot.l3 <- tklabel(gui.overlap.plot, text = " Magnitude  : ")
gui.overlap.plot.e2 <- tkentry(gui.overlap.plot, width = 5)
tkinsert(gui.overlap.plot.e1, "end", tclvalue(magni.value))

gui.overlap.plot.b5 <- tkbutton(gui.overlap.plot, text = "OK",
width = 5)
gui.overlap.plot.b5b <- tkbutton(gui.overlap.plot, text = "Cancel",
width = 5)
tkgrid(gui.overlap.plot.l1, gui.overlap.plot.e1)
tkgrid.configure(gui.overlap.plot.e1, columnspan = 1)
tkgrid.configure(gui.overlap.plot.l1, columnspan = 2, sticky = "w")
tkgrid(gui.overlap.plot.l2,gui.overlap.plot.r1)
tkgrid.configure(gui.overlap.plot.l2,columnspan = 1)
tkgrid.configure(gui.overlap.plot.r1, columnspan = 1, sticky = "w")
tkgrid(gui.overlap.plot.l3, gui.overlap.plot.e2)
tkgrid.configure(gui.overlap.plot.e2, columnspan = 1)
tkgrid.configure(gui.overlap.plot.l3, columnspan = 2, sticky = "w")

tkgrid(gui.overlap.plot.b5, gui.overlap.plot.b5b)
tkgrid(gui.overlap.plot.b5b, column = 2)
desguioverlap.plot <- function() {
tkdestroy(gui.overlap.plot)
}
tkconfigure(gui.overlap.plot.b5b, command = desguioverlap.plot)
return.overlap.plot <- function() {
assign("tmp", list(thres = tclvalue(tkget(gui.overlap.plot.e1)),scal=tclvalue(scal),mag =tclvalue(tkget(gui.overlap.plot.e2)) ), nenvtemp)
tkdestroy(gui.overlap.plot)
}
tkconfigure(gui.overlap.plot.b5, command = return.overlap.plot)
tkwait.window(gui.overlap.plot)
return(get("tmp", nenvtemp))
}

##########################333

kmeans2.plot.args <- function() {
nenvtemp <- new.env()
assign("tmp", list(NULL), nenvtemp)
gui.kmeans2.plot <- tktoplevel()
tktitle(gui.kmeans2.plot) <- "Options for Kmeans2.Plot"
mfrow <- tclVar()
mfrow <- c(3,3)
gui.kmeans2.plot.l1 <- tklabel(gui.kmeans2.plot, text = " Mfrow :")
gui.kmeans2.plot.e1 <- tkentry(gui.kmeans2.plot, width = 7)
tkinsert(gui.kmeans2.plot.e1, "end", mfrow)
gui.kmeans2.plot.b5 <- tkbutton(gui.kmeans2.plot, text = "OK",
width = 5)
gui.kmeans2.plot.b5b <- tkbutton(gui.kmeans2.plot, text = "Cancel",
width = 5)
tkgrid(gui.kmeans2.plot.l1, gui.kmeans2.plot.e1)
tkgrid.configure(gui.kmeans2.plot.e1, column = 2, columnspan = 1)
tkgrid.configure(gui.kmeans2.plot.l1, columnspan = 2, sticky = "w")
tkgrid(gui.kmeans2.plot.b5, gui.kmeans2.plot.b5b)
tkgrid(gui.kmeans2.plot.b5b, column = 2)
desguikmeans2.plot <- function() {
tkdestroy(gui.kmeans2.plot)
}
tkconfigure(gui.kmeans2.plot.b5b, command = desguikmeans2.plot)
return.kmeans2.plot <- function() {
assign("tmp", list(mfrow=tkget(gui.kmeans2.plot.e1)), nenvtemp)
tkdestroy(gui.kmeans2.plot)
}
tkconfigure(gui.kmeans2.plot.b5, command = return.kmeans2.plot)
tkwait.window(gui.kmeans2.plot)

return(get("tmp", nenvtemp))
}

################################

mfuzz.plot.args <- function() {
nenvtemp <- new.env()
assign("tmp", list(NULL), nenvtemp)
gui.mfuzz.plot <- tktoplevel()
tktitle(gui.mfuzz.plot) <- "Options for Mfuzz.Plot"
mfrow <- tclVar()
mfrow <- c(3,3)
gui.mfuzz.plot.l1 <- tklabel(gui.mfuzz.plot, text = " Mfrow :")
gui.mfuzz.plot.e1 <- tkentry(gui.mfuzz.plot, width = 7)
tkinsert(gui.mfuzz.plot.e1, "end", mfrow)
gui.mfuzz.plot.b5 <- tkbutton(gui.mfuzz.plot, text = "OK",
width = 5)
gui.mfuzz.plot.b5b <- tkbutton(gui.mfuzz.plot, text = "Cancel",
width = 5)
tkgrid(gui.mfuzz.plot.l1, gui.mfuzz.plot.e1)
tkgrid.configure(gui.mfuzz.plot.e1, column = 2, columnspan = 1)
tkgrid.configure(gui.mfuzz.plot.l1, columnspan = 2, sticky = "w")
tkgrid(gui.mfuzz.plot.b5, gui.mfuzz.plot.b5b)
tkgrid(gui.mfuzz.plot.b5b, column = 2)
desguimfuzz.plot <- function() {
tkdestroy(gui.mfuzz.plot)
}
tkconfigure(gui.mfuzz.plot.b5b, command = desguimfuzz.plot)
return.mfuzz.plot <- function() {
assign("tmp", list(mfrow=tkget(gui.mfuzz.plot.e1)), nenvtemp)
tkdestroy(gui.mfuzz.plot)
}
tkconfigure(gui.mfuzz.plot.b5, command = return.mfuzz.plot)
tkwait.window(gui.mfuzz.plot)

return(get("tmp", nenvtemp))
}

##################################

Plot <- function() {
if (!exists("obj", nenv)) {
tkmessageBox(message = "No ExpressionSet object has been loaded yet.")
return()
}
if(tclvalue(visu) == "Mfuzz.Plot") {
if (!exists("obj.ccl", nenv)) {
tkmessageBox(message = "Fuzzy clustering method has not been applied yet .")
return()
}
else {
lis <- mfuzz.plot.args()
if (!is.null(lis[[1]])) {
mfrow.tmp <- as.integer(lis[[1]])
eset.tmp <- get("obj", nenv)
cl <- get("obj.ccl",nenv)
mfuzz.plot(eset.tmp,cl,mfrow=mfrow.tmp)
return()
}
}
}

if(tclvalue(visu) == "Kmeans2.Plot") {
if (!exists("obj.kcl", nenv)) {
tkmessageBox(message = "K-means clustering method has not been applied yet .")
return()
}
else {
lis <- kmeans2.plot.args()
if (!is.null(lis[[1]])) {
mfrow.tmp <- as.integer(lis[[1]])
eset.tmp <- get("obj", nenv)
cl <- get("obj.kcl",nenv)
kmeans2.plot(eset.tmp,cl,mfrow=mfrow.tmp)
return()
}
}
}


if(tclvalue(visu) == "Overlap.Plot") {
if (!exists("obj.ccl", nenv)) {
tkmessageBox(message = "Fuzzy clustering method has not been applied yet .")
return()
}
else {
if (!exists("ovl.matrix", nenv)) {
tkmessageBox(message = "Overlap Matrix  has not been created yet .")
return()
}
else {
l <- overlap.plot.args()
thres <- as.double(l$thres)
scal <- as.logical(l$scal)
magni <- as.double(l$mag)
cl.tmp <- get("obj.ccl", nenv)
ovl.mat <- get("ovl.matrix",nenv)
overlap.plot(cl.tmp,ovl.mat,thres,scal,magni)
return()

}
}
}

}

tkconfigure(gui.7b, command = Plot)

###############################33

export.eset <- function() {
if (!exists("obj", nenv)) {
tkmessageBox(message = "No preprocessing has been done yet.")
return()
}

tmp.eset <- get("obj", nenv)

tmp.gd <- try(get("genename.dataframe", nenv),silent=TRUE)
if(class(tmp.gd) !="try-error") {
gene.id <- tmp.gd[1]
gene.names <- tmp.gd[[2]]
}

else {

gene.id <- TRUE
gene.names <- TRUE
}


f <- tclvalue(tkgetSaveFile())
if (f != "") {
write.exprs(tmp.eset,file=f, row.names=as.character(gene.names),col.names=dimnames(exprs(tmp.eset))[[2]]) 
}
return()
}
tkconfigure(gui.9b, command = export.eset)


##########################


save.eset <- function() {
if (!exists("obj", nenv)) {
tkmessageBox(message = "Data has not been preprocessed yet.")
return()
}
tmp.eset <- get("obj", nenv)
f <- tclvalue(tkgetSaveFile())
if (f != "") {
save(tmp.eset, file = f)
}
return()
}
tkconfigure(gui.8b, command = save.eset)

############################


export.fclust <- function() {
if ((!exists("obj.ccl", nenv))&(!exists("obj.kcl", nenv)))  {
tkmessageBox(message = "No clustering method has been applied yet.")
return()
}
if (exists("obj.ccl", nenv)) {
tmp.ccl <- get("obj.ccl", nenv)
tmp.gd <- try(get("genename.dataframe", nenv),silent=TRUE)
membership.values <- tmp.ccl[[4]]
if(class(tmp.gd) !="try-error") {
gene.id <- tmp.gd[1]
gene.names <- tmp.gd[2]
}
num.cluster <- dim(membership.values)[2]
cluster.names <- paste("cluster",1:num.cluster)
dimnames(membership.values)[[2]] <- cluster.names
if(class(tmp.gd) !="try-error") {  ##########MODIFIED CODE
mem.data <- data.frame(gene.id,gene.names,membership.values)
}
else {

mem.data <- data.frame(membership.values)
}
assign("mem.obj", mem.data, nenv)

##############MODIFIED CODE STARTS HERE

f <- tclvalue(tkgetSaveFile())
if (f != "") {
write.csv(mem.data,file=f)
##png2file(paste(f,".png"))
}
}  ###outer if statement closes here

else if (exists("obj.kcl", nenv)) {

tmp.kcl <- get("obj.kcl", nenv)
cluster.vector <- tmp.kcl$cluster

f <- tclvalue(tkgetSaveFile())
if (f != "") {
write.csv(data.frame(cluster.vector),file=f)
##png2file(paste(f,".png"))
}


}
return()

}
tkconfigure(gui.16b, command = export.fclust)

desguimfuzz <- function() {
tkdestroy(gui)
}
tkconfigure(gui.18b, command = desguimfuzz)

#########################################################


export.acore <- function() {
if (!exists("acore.list", nenv)) {
tkmessageBox(message = "Data has not been preprocessed yet.")
return()
}
tmp <- get("acore.list", nenv)
index <- length(tmp)

f <- tclvalue(tkgetSaveFile())
if (f != "") {
   for (i in 1:index) {
              cl.no <- c("CLUSTER NUMBER",i)
              write(x=cl.no,file=f,append=TRUE)
              write.table(as.matrix(tmp[[i]]),file=f,row.names=FALSE,quote=FALSE,append=TRUE)
       }
}

return()
}
tkconfigure(gui.12bb, command = export.acore)

#######################################################


export.overlap <- function() {
if (!exists("ovl.matrix", nenv)) {
tkmessageBox(message = "Data has not been preprocessed yet.")
return()
}
tmp <- get("ovl.matrix", nenv)
f <- tclvalue(tkgetSaveFile())
if (f != "") {
 write.table(tmp,file=f,quote=FALSE)
}
return()
}
tkconfigure(gui.14bb, command = export.overlap)


#############################

help1 <- function() {
tkmessageBox(message = "This section provides the basic functions for data loading into the current environment via three slightly different 
methods. \n\nThe \"Browse object\" button can be used to load an ExpressionSet object from the global environment. 
\n\nSimilarly, the \"Browse files\" button can be used to load data from a disk file stored in the form of ExpressionSet object. 
\n\nAnd lastly, the \"Load table\" button could be used to load tab-delimited tabular data from a disk file. 
\n\nFor more details please see the documentations for Mfuzzgui package.")
return()
}
tkconfigure(gui.h1, command = help1)

#############################

help2 <- function() {
tkmessageBox(message = "As is evident from its heading, this section provides tools for data preprocessing. The \"Filter missing values\" 
button filters out all the genes (or samples) having more missing values than the user defined threshold value. 
\n\nThe \"Fill missing values\" button replaces missing values according to the method selected by the user. 
\n\nThe \"Standardise\" button standardises the gene expression values so that they have a mean value of zero and standard deviation of one. 
\n\nThe \"Save object\" button will save the currently preprocessed ExpressionSet object in a disk file for later use. 
\n\nThe last button \"Export table \" will export the preprocessed ExpressionSet object in a disk file in tabular format. \n\nFor further details please refer to the package documentations.")
return()
}
tkconfigure(gui.h2, command = help2)


#############################

help3 <- function() {
tkmessageBox(message = "This section provides functionality for clustering of the microarray data.
\n\nThe \"Fuzzy-Cmeans\" button clusters the data based upon fuzzy-c means clustering algorithm. The algorithm parameters can be selected from the pop-up window.
\n\nThe \"K-means\" button performs the standard k-means clustering. 
\n\nFinally, the results of clustering can be exported into a csv file which can be easily opened in MS excel. The data is comma seperate.
\nIn case of Fuzzy-Cmeans, the saved file contains the membership values of each gene for each cluster whereas in K-means, the cluster vector containing gene names and their correspondig cluster number is saved.
")
return()
}

tkconfigure(gui.h3, command = help3)

#############################

help4 <- function() {
tkmessageBox(message = "This section provides tools for analyzing the results of clustering.
\n\nThe \"Cluster cores\" button extracts the genes forming alpha-core of the clusters produced by soft clustering. The minimum membership value can be specified in the pop-up window.
\n\nThe \"Overlap\" button can be used to calculate the overlapping between soft clusters.
\n\nAnd the \"Export\" buttons can be used to save the results of their corresponding analysis.
\n\nFor more details, please see the documentations for Mfuzz package")
return()
}

tkconfigure(gui.h4, command = help4)

#############################

help5 <- function() {
tkmessageBox(message = "This section offers various visualization tools.
\n\nThe three radio buttons gives the user a choice to choose a particular plotting scheme. The names of these buttons themselves are enough to give an idea of their functions. 
\n\nThe \"Plot\" button then does the dirty work of plotting in one or more pop-up windows as per the user specified display parameters
\n\nThe \"Quit\" button then closes the Mfuzzgui window.")
return()
}
tkconfigure(gui.h5, command = help5)




} #### The end of Mfuzzgui function

#########################################################
