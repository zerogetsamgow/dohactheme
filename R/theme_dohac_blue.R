#' DoHAC Blue Theme
#'
#' This theme takes \code{\link[dohactheme]{theme_cube_foundations}()} and sets
#' background colour to blue and line and text colours to white.
#'
#' Colours are sourced from `dohactheme` and are DoHAC style guide compliant.
#'
#' @family dohactheme
#' @export
#' @importFrom ggplot2 theme
#' @importFrom ggplot2 element_text
#' @importFrom ggplot2 element_rect


theme_dohac_blue <- function(base.colour=dohac.blue,
                             base.size=15,
                            line.colour="white",
                            text.colour="white") {


  thm <- dohactheme::theme_dohac_foundation()

  thm +
    ggplot2::theme(
      # Set colours
      text=element_text(size = base.size, colour = text.colour),
      plot.background = element_rect(fill=base.colour, colour=NA),
      axis.line = element_line(colour=line.colour),
      axis.text = element_text(colour=text.colour)
    )

}
