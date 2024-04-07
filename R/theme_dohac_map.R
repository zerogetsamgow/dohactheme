#' DoHAC Map Theme
#'
#' This theme is designed to be be used when creating maps.
#'
#' This theme takes \code{\link[ggthemes]{theme_map}()} and sets
#' base text family and size to `Helvetica neue` and `15`.
#'
#' @inheritParams ggthemes::theme_foundation
#'
#' @family dohacthemes
#' @export
#' @importFrom ggplot2 theme
#' @importFrom ggthemes theme_foundation

theme_dohac_map <-
  function(
    base_colour = c("white","blue"),
    base_size = 20,
    base_family = "Arial") {



  thm <- ggthemes::theme_map(base_size = base_size, base_family = base_family)

  if(is.null(base_colour)) {base_colour="white"}
  if(length(base_colour)>1) {base_colour="white"}
  .base_colour = switch(
      base_colour,
      "white" = "white",
      "blue" = dohactheme::dohac.darkblue)

  .text_colour=switch(
    base_colour,
    "white" = dohactheme::dohac.darkblue,
    "blue" = "white")

  .line_colour=switch(
    base_colour,
    "white" = dohactheme::dohac.darkblue,
    "blue" = "white")

  thm +
    ggplot2::theme(
      # Clear background for clean charts
      rect = ggplot2::element_blank(),
      line = ggplot2::element_blank(),
      panel.background = element_rect(colour="transparent",fill=.base_colour),
      plot.background = element_rect(colour="transparent",fill=.base_colour),
      panel.border = ggplot2::element_blank(),
      # Define cube_founcation text parameters
      text =
        ggplot2::element_text(
          family=base_family,
          size=base_size,
          colour=.text_colour
        ),
      plot.title =
        ggplot2::element_text(
          size=ggplot2::rel(1.2),
          face="bold",
          lineheight = 0.5,
          margin = margin(0, 0, .5, 0, "cm")
        ),
      # Define axis foundation parameters
     # axis.line = ggplot2::element_blank(),
    #  axis.ticks = ggplot2::element_blank(),
     # axis.text = ggplot2::element_blank(),
      # Define foundation legend parameters
      legend.background = ggplot2::element_blank(),
      legend.key = ggplot2::element_blank(),
      legend.key.size = unit(4,"mm"),
      legend.position.inside = c(0,0),
      legend.title.position = "top",
      legend.direction = "horizontal",
      legend.margin = ggplot2::margin(.1, .1, .1, .1, "cm"),
      legend.title = element_text(family=base_family),
      legend.text = element_text(family=base_family),
      # Define foundation margin parameters
      plot.margin = ggplot2::margin(.5, .5, 0, .5, "cm"),
      # Define foundation title parameters
      plot.title.position = "plot"
    )

}
