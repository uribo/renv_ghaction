res <- 
  yaml::read_yaml(".github/workflows/cache.yaml")
cat(res[[1]])