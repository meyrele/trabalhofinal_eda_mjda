# Carregando os pacotes
library(ggplot2)
library(tidyverse)

# Carregando os dados
df <- read.csv2('microdados_limpo.csv')

# Transformando a variável "sexo" em fator
df$sexo <- factor(df$sexo,
                         levels = c("M",
                                    "F"))

# Gráfico 1: Quantidade de registros por sexo
ggplot(df) +
  aes(x = sexo, fill = sexo, weight = id_atleta) +
  geom_bar(stat = "count", position = "dodge") +
  scale_fill_brewer(palette = "Set2") +
  labs(y = "Quantidade de registros", color = "Sexo", title = "Homens e mulheres nos Jogos Olímpicos", subtitle = "Pessoas do sexo masculino são maioria entre os participantes", caption = "Fonte: Base dos Dados +") +
  ggthemes::theme_pander()

# Gráfico 2: Média de idade por sexo
ggplot(df) +
  aes(x = sexo, fill = sexo, y = idade) +
  geom_bar(stat = "summary", position = "dodge") +
  scale_fill_brewer(palette = "Set2") +
  labs(y = "Idade", color = "Sexo", title = "Idade de homens e mulheres nos Jogos Olímpicos", subtitle = "A média de idade dos participantes homens dos Jogos Olímpicos é maior que a de mulheres", caption = "Fonte: Base dos Dados +") +
  ggthemes::theme_pander()