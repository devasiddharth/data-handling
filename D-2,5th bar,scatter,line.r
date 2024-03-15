# Load required libraries
library(ggplot2)

# Create the dataframe
data <- data.frame(
  "Product ID" = c(1, 2, 3, 4),
  "Product Name" = c("Product A", "Product B", "Product C", "Product D"),
  "January_April_Sales" = c(20000, 15000, 12000, 12000),
  "May_Aug_Sales" = c(22000, 18000, 14000, 18000),
  "Sep_Dec_Sales" = c(24000, 16000, 11000, 14000)
)
library(plotly)

fig <- plot_ly() 
fig <- fig %>%
  add_trace(
    type = "funnel",
    y = c( "Total Sales"),
    x = c("Product ID") )
fig <- fig %>%
  layout(yaxis = list(categoryarray = c("Funnel Plot for Monthly Product Sales")))

