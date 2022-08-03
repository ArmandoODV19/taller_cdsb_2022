library(tidyverse)

checkm<-read.table("06.CheckM/results/CheckM-DAS_Tool_bins_mod.txt", sep = "", header = F, na.strings ="", stringsAsFactors= F)
# Extracting good quality bins Megahit ------------------------------------####
colnames(checkm)<-c("Bin_Id", "Marker", "lineage", "Number_of_genomes",
                    "Number_of_markers", "Number_of_marker_sets",
                    "0", "1", "2", "3", "4", "5", "Completeness",
                    "Contamination", "Strain_heterogeneity")

good_bins<-checkm %>%
  select(Bin_Id, Marker, Completeness, Contamination) %>%
  filter(Completeness >= 50.00) %>%
  filter(Contamination <= 10.00)


medium_bins<-checkm %>%
  select(Bin_Id, Marker, Completeness, Contamination) %>%
  filter(Completeness >= 50.00) %>%
  filter(Contamination <= 20.00)

bins<-medium_bins$Bin_Id

write.table(bins, "lista_medium_bins", quote = F, row.names = F, col.names = F)


change_bin_name<-function(ruta, ambiente){
  ruta_original<-getwd()
  setwd(ruta)
  filez <- list.files()
  newname<-paste0(ambiente, "_", filez)
  file.rename(from=filez, to=newname)
  filez <- list.files()
  file.rename(from=filez, to=sub(pattern="\\.", replacement="_", filez))
  setwd(ruta_original)
}

change_bin_name("/home/user05/08.Bins/Genoma", "htn")

library(phylotools)
library(tidyverse)

add_names_to_seqs <- function(nombre_del_archivo){
  filenames <- unlist(strsplit(nombre_del_archivo, "/"))
  filenames <- filenames[[grep("fa", filenames)]]
  divide <- unlist(strsplit(filenames, "\\."))
  bin_name <- divide[1]
  termination <- divide[2]
  old_name <- get.fasta.name(nombre_del_archivo)
  new_name <- paste0( bin_name, "-scaffold-", old_name)
  ref2 <- data.frame(old_name, new_name)
  out_file <- paste0(bin_name, "_renamed", ".", termination)
  rename.fasta(infile = nombre_del_archivo, ref_table = ref2, outfile = out_file)
}

files <- list.files(".")
files <- paste0("/home/mirna/07.Bins/Genoma/", files)

map(files, add_names_to_seqs)
