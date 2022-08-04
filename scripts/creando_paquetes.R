# creando paquetes


# checar si el nombre del paquete existe

install.packages("available")

available::available("pkgMetagenomica")


# crear estructura del paquete
# hacer nuevo proyecto

usethis::create_package("pkgMetagenomica")


# estructura de biocthis

biocthis::use_bioc_pkg_templates()

# abre 4 scripts
# en el primer scripst checar que tenemos las paqueterias que solicita
