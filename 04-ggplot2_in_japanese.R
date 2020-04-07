library(ggplot2)

p <- 
  ggplot(iris) +
  aes(Sepal.Length, Petal.Width) +
  geom_point()
# ggsave(filename = "ggplot_out.png",
#        p)

p_jp <-
  p +
  xlab("萼片長") +
  ylab("花弁幅") +
  theme_gray(base_family = "Osaka")
warnings()
# png("ggplot_out_jp.png", width = 2100, height = 2100, units = "px", res = 300)
# p_jp
# dev.off()
ggsave(filename = "ggplot_out_jp.png",
       p_jp)
