library(tidyverse)
library(sf)

setwd("d:/vData/林道分布圖/1101/")

pl <- read_sf("LSH0101000011101.shp")

for(n_lt in 1:dim(pl)[1]){
  
  pl_i <- pl[n_lt,]
  name_lt_i <- pl[n_lt,]$`林道名`
  
  # 每條林道以200公尺做buffer，端點以圓角連接
  pl_i %>%
    st_buffer(.,
              dist = 200,
              nQuadSegs = 20,
              endCapStyle = "ROUND",
              joinStyle = "ROUND") %>%
    st_simplify(.,
                dTolerance = 25) %>%
    st_write(.,
             dsn = paste0("output_BufferSimplify/", name_lt_i, ".kml"),
             append = FALSE)
  
  rm(list = c("pl_i", "name_lt_i"));gc()
}
