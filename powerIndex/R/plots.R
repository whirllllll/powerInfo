plotPower <- function(buildingsPower)
{
  library(ggplot2)
  #load("./powerIndex/R/power.RData")  
  #id = c(1,2,5)
  #buildingsPower = power[1:24,id]
  ggplot(data=buildingsPower, 
         aes(x=buildingsPower[,2], 
             y=buildingsPower[,3], group=1)) +
    geom_line()
}

plotwather <- function(wather)
{
  library(ggplot2)
  wather = getwather(2016, 2016)

  ggplot(wather, aes(x = wather[,1])) + 
    geom_line(aes(y = wather[,2], group=1, colour = "high")) +
    geom_line(aes(y = wather[,3], group=2, colour = "low"))
}
