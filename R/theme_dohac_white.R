#' DoHAC White Theme
#'
#' This theme takes \code{\link[dohactheme]{theme_cube_foundations}()} and sets
#' background colour to white and line and text colours to blue.
#'
#' Colours are sourced from `dohactheme` and are DoHAC style guide compliant.
#'
#' @family dohactheme
#' @export
#' @importFrom ggplot2 theme
#' @importFrom ggplot2 element_text
#' @importFrom ggplot2 element_rect


theme_dohac_white <- function(base.colour="white",
                            line.colour=dohac.darkblue,
                            text.colour=dohac.darkblue) {


  thm <- dohactheme::theme_dohac_foundation()

  thm +
    ggplot2::theme(
      # Set colours
      text=element_text(colour = text.colour),
      plot.background = element_rect(fill=base.colour, colour=NA),
      axis.line = element_line(colour=line.colour),
      axis.text = element_text(colour=text.colour)
    )

}
