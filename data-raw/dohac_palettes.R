## code to prepare `dohac_palettes` dataset goes here


library(palettes)

# Define and name DoHAC colours -------------------------------
# Primary, blues and teals
dohac.blue = pal_colour("#1d437f")
usethis::use_data(dohac.blue, overwrite = TRUE)

dohac.teal = pal_colour("#008a96")
usethis::use_data(dohac.teal, overwrite = TRUE)

dohac.darkblue = pal_colour("#153a6e")
usethis::use_data(dohac.darkblue, overwrite = TRUE)


dohac.darkteal = pal_colour("#00727d")
usethis::use_data(dohac.darkteal, overwrite = TRUE)


# Compelementary, more blues and teals, plus pink and orange
dohac.lightblue = pal_colour("#1390cf")
usethis::use_data(dohac.lightblue, overwrite = TRUE)

dohac.midblue = pal_colour("#006fb9")
usethis::use_data(dohac.midblue, overwrite = TRUE)

dohac.lime = pal_colour("#acbf29")
usethis::use_data(dohac.lime, overwrite = TRUE)

dohac.lightteal = pal_colour("#009eba")
usethis::use_data(dohac.lightteal, overwrite = TRUE)

dohac.pink = pal_colour("#aa176d")
usethis::use_data(dohac.pink, overwrite = TRUE)

dohac.orange = pal_colour("#e86234")
usethis::use_data(dohac.orange, overwrite = TRUE)

# Compelementary tints, more blues and teals, plus pink and orange
dohac.lightblue.tint = pal_colour("#80c8ea")
usethis::use_data(dohac.lightblue.tint, overwrite = TRUE)

dohac.midblue.tint = pal_colour("#8a9db7")
usethis::use_data(dohac.midblue.tint, overwrite = TRUE)

dohac.lime.tint = pal_colour("#d6df94")
usethis::use_data(dohac.lime.tint, overwrite = TRUE)

dohac.lightteal.tint = pal_colour("#80b9be")
usethis::use_data(dohac.lightteal.tint, overwrite = TRUE)

dohac.pink.tint = pal_colour("#d58bb6")
usethis::use_data(dohac.pink.tint, overwrite = TRUE)

dohac.orange.tint = pal_colour("#f8d0c2")
usethis::use_data(dohac.orange.tint, overwrite = TRUE)


# Neutrals
dohac.darkgrey = pal_colour("#6d6e70")
usethis::use_data(dohac.darkgrey, overwrite = TRUE)

dohac.midgrey = pal_colour("#bbbdc0")
usethis::use_data(dohac.midgrey, overwrite = TRUE)

dohac.grey = pal_colour("#d1d2d4")
usethis::use_data(dohac.grey, overwrite = TRUE)

dohac.lightgrey = pal_colour("#e6e6e6")
usethis::use_data(dohac.lightgrey, overwrite = TRUE)

dohac.palegrey = pal_colour("#f1f1f2")
usethis::use_data(dohac.palegrey, overwrite = TRUE)

# Accents
dohac.red = pal_colour("#ee2c3b")
usethis::use_data(dohac.red, overwrite = TRUE)

dohac.yellow = pal_colour("#e4d31d")
usethis::use_data(dohac.yellow, overwrite = TRUE)

# Create
dohac_colours =
  pal_palette(
    #primary colours
    primary = c(
      dohac.blue,
      dohac.teal,
      dohac.darkblue,
      dohac.darkteal),
    # complementary colours
    secondary =
      c(
        dohac.lightblue,
        dohac.midblue,
        dohac.lime,
        dohac.lightteal,
        dohac.pink,
        dohac.orange
        ),
    # complementary tints
    tints =
      c(
        dohac.lightblue.tint,
        dohac.midblue.tint,
        dohac.lime.tint,
        dohac.lightteal.tint,
        dohac.pink.tint,
        dohac.orange.tint
        ),
    #neutrals
    neutrals =
      c(
        dohac.darkgrey,
        dohac.midgrey,
        dohac.grey,
        dohac.lightgrey,
        dohac.palegrey
        ),
    # Accents
    accents =
      c(
        dohac.red,
        dohac.yellow
        ),
    accessible =
      c(
        dohac.teal,
        dohac.blue,
        dohac.lime,
        dohac.pink,
        dohac.lightteal,
        dohac.orange,
        dohac.red,
        dohac.yellow
      )
  )

usethis::use_data(dohac_colours, overwrite = TRUE)
# Create shades ----------------------------------------------
# blues at 20 per cent intervals
.blues = pal_ramp(c(dohac.darkblue,pal_colour("white")),n=6, interpolate ="spline")
.blues = .blues[1:5]
# teals
.teals = pal_ramp(c(dohac.darkteal,pal_colour("white")),n=6, interpolate ="spline")
.teals = .teals[1:5]

#
dohac_shades =
  pal_palette(
    blues = .blues,
    teals = .teals,
  )

# Save to data
dohac_palettes =
  c(
    dohac_colours,
    dohac_shades
  )

usethis::use_data(dohac_palettes, overwrite = TRUE)

