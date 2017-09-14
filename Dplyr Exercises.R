library(dplyr)
head(mtcars)
filter(mtcars,mpg>20, cyl==6)

arrange(mtcars,cyl,desc(wt))
select(mtcars,mpg,hp)
select(distinct(mtcars,gear),gear)
mtcars %>% distinct(gear)%>% select(gear)
    
mutate(mtcars,Performance=hp/wt)
summarise(mtcars,avg_mpg=mean(mpg,na.rm=TRUE))
results <- mtcars
df <- results %>% filter(cyl==6) %>% summarise(mean_hp=mean(hp,na.rm=TRUE))
df <- results %>% filter(cyl==6) %>% arrange(hp)
