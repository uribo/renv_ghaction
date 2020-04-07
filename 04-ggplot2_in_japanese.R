library(ggplot2)
library(magrittr)

p <- 
  ggplot(iris) +
  aes(Sepal.Length, Petal.Width) +
  geom_point()
ggsave(filename = "ggplot_out.png",
       p)

# p_jp <- 
#   p +
#   xlab("萼片長") +
#   ylab("花弁幅") +
#   theme_gray(base_family = "Osaka")
# ggsave(filename = "ggplot_out_jp.png",
#        p_jp)