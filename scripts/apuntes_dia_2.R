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

