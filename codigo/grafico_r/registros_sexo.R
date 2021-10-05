library(esquisse)
library(ggplot2)
library(tidyverse)


df <- read.csv2('microdados_limpo.csv')
df$sexo <- factor(df$sexo,
                         levels = c("M",
                                    "F"))

ggplot(df) +
  aes(x = sexo, fill = sexo, weight = id_atleta) +
  geom_bar(stat = "count", position = "dodge") +
  scale_fill_brewer(palette = "Set2") +
  labs(y = "Quantidade de registros", color = "Sexo", title = "Homens e mulheres nos Jogos Olímpicos", subtitle = "Pessoas do sexo masculino são maioria entre os participantes", caption = "Fonte: Base dos Dados +") +
  ggthemes::theme_pander()
