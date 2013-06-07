

maf = loadClin("CCLE_hybrid_capture1650_hg19_NoCommonSNPs_NoNeutralVariants_CDS_2012.05.07.maf", sep='\t')

mutSamples = sort(unique(maf[,"Tumor_Sample_Barcode"]))
mutEvent = cbind(rownames(maf), maf[,"Tumor_Sample_Barcode"])
mutGenes = sort(unique(mutEvent[,1]))

mutmat = matrix(0, ncol=length(mutSamples), nrow=length(mutGenes), dimnames=list(mutGenes, mutSamples))

m = nrow(mutEvent)
for(j in 1:m){
	if(j %% 100 == 0) message(j, " / ", nrow(mutEvent), "...")
	mutmat[mutEvent[j, 1], mutEvent[j,2]] = 1
}

save(mutmat, file=paste("ccle.mutmat.rda", sep=""))

