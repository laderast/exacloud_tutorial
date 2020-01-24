library(R.utils)
file_name <- cmdArg("file")
inputDir <- cmdArg("inputDir")
outputDir <- cmdArg("outputDir")

library(data.table)

disc_data <- fread(file.path(inputDir, file_name))
snps <- disc_data[,-c(1:6)]
snp_freq_disc <- data.frame(id=colnames(snps), 
                            A1_freq= colSums(snps)/(2*nrow(snps)))

if(!dir.exists(outputDir)){dir.create(outputDir)}

write.csv(snp_freq_disc, file=file.path(outputDir, file_name))
