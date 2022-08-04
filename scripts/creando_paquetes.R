# creando paquetes


# checar si el nombre del paquete existe

install.packages("available")

available::available("pkgMetagenomica")


# crear estructura del paquete
# hacer nuevo proyecto

usethis::create_package("pkgMetagenomica")


# estructura de biocthis

biocthis::use_bioc_pkg_templates() # esto corre en la consola, no se abre script

# abre 4 scripts
# en el primer scripst checar que tenemos las paqueterias que solicita


# pedir que git ignore el archivo .Rproj

usethis::use_git_ignore("*.Rproj") # esta linea se encuentra en el script 2


# crear repositorio

usethis::use_github() #script dos

# vinculando el paquete a github
usethis::use_github() # script dos


# usar esqueleto de bioconductor

biocthis::use_bioc_description() # modifica DESCRIPTION ; script 3
