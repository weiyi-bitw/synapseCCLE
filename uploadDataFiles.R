require(synapseClient)

synapseLogin()

f <- "ccle.ge.18988x1037.rda"
dataSetID <- "syn1917880"
geLink <- "http://www.broadinstitute.org/ccle/downloadFile/DefaultSystemRoot/exp_10/ds_21/CCLE_Expression_Entrez_2012-09-29.gct?downloadff=true&fileId=6763"

used <- list(list(url=geLink, name="CCLE_Expression_Entrez_2012-09-29.gct", wasExecuted=FALSE))
activity <- Activity(name="gct to txt", used=used)

syn <- File(f, synapseStore=TRUE, parentId=dataSetID)
generatedBy(syn) <- activity
syn <- storeEntity(syn)
activity <- generatedBy(syn)

# file too large to store, save by web interface and change provenance
syn <- synGet("syn1917883", downloadFile=FALSE)
generatedBy(syn) <- activity
syn <- storeEntity(syn)
activity <- generatedBy(syn)



f <- "ccle.ge.18988x1037.rda"
dataSetID <- "syn1917880"
geLink <- "http://www.broadinstitute.org/ccle/downloadFile/DefaultSystemRoot/exp_10/ds_21/CCLE_Expression_Entrez_2012-09-29.gct?downloadff=true&fileId=6763"

used <- list(list(url=geLink, name="CCLE_Expression_Entrez_2012-09-29.gct", wasExecuted=FALSE))
activity <- Activity(name="gct to txt", used=used)

syn <- File(f, synapseStore=TRUE, parentId=dataSetID)
generatedBy(syn) <- activity
syn <- storeEntity(syn)
activity <- generatedBy(syn)

