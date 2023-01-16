#' Logo for ggplot
#'
#' @param p a ggplot
#' @param img path to an png-file
#' @returns The sum of `x` and `y`.
#' @export
#' @examples
#' add(1, 1)
ggplot_logo <- function(p, logo=system.file("extdata", "logo.png", package = "sothi")) {
  img <- magick::image_read(logo)
  cowplot::ggdraw() +
    cowplot::draw_plot(p,x = 0, y = 0, width = 1, height = 1) +
    cowplot::draw_image(img,x = 0.01, y = 0.02, width = 0.1, height = 0.1)
}
