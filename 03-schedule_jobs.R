d <-
  data.frame(
    time = Sys.time(),
    value = rnorm(1))
if (!file.exists("plot_data.csv")) {
  write.csv(d, 
            "plot_data.csv", 
            row.names = FALSE)
} else {
  d_old <- 
    read.csv("plot_data.csv", 
             stringsAsFactors = FALSE,
             colClasses = c("POSIXct", "numeric"))
  d <- 
    rbind(d_old, d)
}
png(filename = "plot_out.png")
plot(d$time, d$value)
dev.off()
write.csv(d, 
          "plot_data.csv", 
          row.names = FALSE)
