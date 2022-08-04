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


# crear README estilo bioconductor

biocthis::use_bioc_readme_rmd() # script 3
devtools::build_readme() # script 3


# crear archivo news

biocthis::use_bioc_news_md() # script 3

# ayuda para que la gente contribuya
biocthis::use_bioc_coc()  # script 3
usethis::use_tidy_contributing()
biocthis::use_bioc_support()
biocthis::use_bioc_issue_template()
biocthis::use_bioc_citation()

### creando funciones
# generar un script por cada funcion
# este argumento genera un script para la funcion
usethis::use_r("subset_heatmap")

# identar funciones
# ctrl + i


### Documentacion

# se realiza en el script de la función
# se sombre la funcion
# se da click en la varita >> insert roxygen skeleton

# una vez modificado el script de la funcion se corre
devtools::document()

# posteriormente se da click en build en la parte superior derecha
# click en install and restart
