#' Install Cube Fonts
#'
#' Themes in this package use the Agenda font.
#'
#' This function allows these to be installed within the package
#'
#'
#' @family cubethemes
#' @export
#' @importFrom sysfonts font_add
#' @importFrom showtext showtext_auto

install_dohac_fonts <- function(font.path="C:/windows/fonts") {
  # Add fonts
  sysfonts::font_add("Arial",
                     regular = file.path(font.path,"Arial.ttf"),
                     bold = file.path(font.path,"arialbd.ttf"),
                     italic = file.path(font.path,"ariali.ttf")
  )
  # Tell R to render text using showtext by calling the showtext_auto() function
  showtext::showtext_auto()

}
