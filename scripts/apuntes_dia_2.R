# apuntes dia 2

# como convertir el flujo de trabajo en una paqueteria

BiocManager::install("biocthis")

library(biocthis)

usethis::create_package("path/nombre_paquete")



usethis::create_package("../../../../proyecto_prueba.Rproj")

# funcion para evaluar el paquete en los tres sistemas operativos, version de R
# y version de Bioconductor
use_bioc_github_action()


#### CONDA

# para instalar paquetees en conda se utiliza la terminal. se utiliza el
# siguiente comando

# conda install PACKAGE


# otros canaels de descarga

# Bioconda
# Search::Anaconda.org

# buscar un paquete

# conda search htop
# htop es el nombre del paquete



####
####


# ensamble de lecturas

# pipeline

# control de calidad
# ensamble
# bbmap
# binning
# mataBat, maxbin, concobt
# das tool --> interferencia taxonomica o interferencia metabolica



# binning -- es el proceso de reconstruccón de genomas

# seccion 7.5 binnin en libro
# esto se corre en la terminal

# ingresar al servidor con los datos del correo
# s
# mkdir 01.test   nueva carpeta
# cd 01.test


# correr comandos de 7.5.1 maxbin

# despues

# conda env list

# activando ambiente
#
# conda activate maxbin_env

# nohup  run_MaxBin.pl -contig data/htn.fasta -out results/maxbin -abund data/htn-depth.txt -max_iteration 2 $
# nohup y $ se utilizan para que la informacion no sature la terminal





# evaluando data de 02.maxBin

# cd data/

# grep -c ">" htn.fasta    profundidad
# head htn-depth.txt

# para correr cada elemnto max en result se utiliza less y el nombre del archivo



# crear carpeta que se llame concoct y copiar los archivos
# cp -r /home/mirna/04.Concoct/results/bins-concot /home/user05/concoct








### dia 3


