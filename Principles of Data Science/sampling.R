library(tidyverse)
library(nycflights13)
SF <- flights %>%
  filter(dest == "SFO", !is.na(arr_delay))
set.seed(100)
Sample25 <- SF %>%
  sample_n(size = 25)

Sample25 %>% with(mean(arr_delay))

library(mosaic)
n <- 500
Trials <- list()
for(i in 1:n){
  Trials[[i]] <- SF %>%
    sample_n(size = 25, replace=FALSE) %>%
    summarize(SampleMean = mean(arr_delay))
}
Trials_df <- bind_rows(Trials)
favstats( ~ SampleMean, data = Trials_df)

Trials_df %>% ggplot(aes(x=SampleMean)) +
  geom_histogram(aes(y=after_stat(density)), fill="green",
                 colour="black", bins=20, alpha=0.5) +
  geom_density(colour="purple",linewidth=1)

mean(Trials_df$SampleMean);mean(SF$arr_delay)

sd(Trials_df$SampleMean);sd(SF$arr_delay)

mean(Trials_df$SampleMean) + 2*sd(Trials_df$SampleMean)*c(-1,1)  # 95% confidence interval

