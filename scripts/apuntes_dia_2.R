# apuntes dia 2

# como convertir el flujo de trabajo en una paqueteria

BiocManager::install("biocthis")

library(biocthis)

usethis::create_package("path/nombre_paquete")



usethis::create_package("../../../../proyecto_prueba.Rproj")

# funcion para evaluar el paquete en los tres sistemas operativos, version de R
# y version de Bioconductor
use_bioc_github_action()
