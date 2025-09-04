## build a simple plot

# load packages 
library(ggplot2)
library(EVR628tools)

# load data
data("data_heatwaves")

# build plot 
p <- ggplot(data = data_heatwaves,
            mapping = aes(x = year, y = temp_mean,
                          group = paste(fishery, eu_rnpa))) +
  geom_line()

# export plot
ggsave(plot = p,
       filename = "results/SST_plot.png")
