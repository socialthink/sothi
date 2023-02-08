#' Theme for ggplot UPK
#'
#' @param x A number.
#' @param y A number.
#' @returns The sum of `x` and `y`.
#' @export
#' @examples
#' add(1, 1)
theme_upk <- function(){
  font <- "Georgia"   #assign font family up front
  sothi_colors <- c( "#c51e3f", "#c22f85", "#935ac1","#007be0","#0092d9","#009fb6")

  theme_classic() +    #replace elements we want to change

    theme(


      #grid elements
      #panel.grid.major = element_blank(),    #strip major gridlines
      #panel.grid.minor = element_blank(),    #strip minor gridlines
      #axis.ticks = element_blank(),          #strip axis ticks

      #since theme_minimal() already strips axis lines,
      #we don't need to do that again

      #text elements
      plot.title = element_text(             #title
        family = font,            #set font family
        size = 13,                #set font size
        face = 'bold',            #bold typeface
        hjust = 0,                #left align
        vjust = 2,
        colour = "#f4634c",
        margin=margin(5,0,15,0)
      ),
      plot.subtitle = element_text(          #subtitle
        family = font,            #font family
        size = 11               #font size
      ),

      plot.caption = element_text(           #caption
        family = font,            #font family
        size = 8,                 #font size
        hjust = 1,
        colour = "#f4634c"
      ),

      axis.title = element_text(             #axis titles
        family = font,            #font family
        size = 11,
        margin=margin(20, b = 10)#font size
      ),

      axis.text = element_text(              #axis text
        family = font,            #axis famuly
        size = 9                #font size
      ),

      legend.text = element_text(
        size=9,
        family = font
      ),

      legend.title = element_text(
        size=11,
        family = font
      ),

      plot.title.position = "plot"

      #since the legend often requires manual tweaking
      #based on plot content, don't define it here
    )

}
