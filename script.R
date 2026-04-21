# Script para análise da pesquisa de Sociedade e Desenvolvimento - 2026.1
# Felipe Cordeiro, Felipe Fernandes, Jaderson Coriolano, Joyce Micaely
# R 4.5.2

# Primeiros passos --------------------------------------------------------

## Bibliotecas ----
library(readxl) # 1.4.5
library(tidyverse) # 2.0.0

## Importação dos dados ----
dados <- read_excel('grupo2_entrega2_dados-brutos.xlsx', na = '')

## Transformação das colunas em fatores ----
dados <- dados |> mutate(
  across(
    where(is.character), as.factor
  )
)

# Análises ----------------------------------------------------------------

## Qualitativas ----
fisher.test(table(dados$sexo, dados$faixa_etaria)) # Sexo vs. faixa etária
fisher.test(table(dados$sexo, dados$ponto)) # Sexo vs. ponto
fisher.test(table(dados$sexo, dados$ponto_preferencia)) # Sexo vs. preferência
fisher.test(table(dados$sexo, dados$ponto_avaliacao)) # Sexo vs. avaliação
fisher.test(table(dados$sexo, dados$ponto_seguranca)) # Sexo vs. segurança
fisher.test(table(dados$sexo, dados$horario_pior)) # Sexo vs. pior horário
fisher.test(table(dados$sexo, dados$iluminacao)) # Sexo vs. iluminação
fisher.test(table(dados$sexo, dados$visibilidade)) # Sexo vs. visibilidade
fisher.test(table(dados$sexo, dados$calcada)) # Sexo vs. calçamento
fisher.test(table(dados$sexo, dados$policiamento)) # Sexo vs. policiamento
fisher.test(table(dados$sexo, dados$melhoria)) # Sexo vs. melhoria
fisher.test(table(dados$sexo, dados$chegada)) # Sexo vs. chegada
fisher.test(table(dados$sexo, dados$companhia)) # Sexo vs. companhia
fisher.test(table(dados$sexo, dados$aviso)) # Sexo vs. aviso
fisher.test(table(dados$sexo, dados$comportamento)) # Sexo vs. comportamento
fisher.test(table(dados$sexo, dados$transporte_assedio)) # Sexo vs. assédio no transporte
fisher.test(table(dados$sexo, dados$transporte_seguranca)) # Sexo vs. segurança no transporte

## Quantitativas ----
summary(aov(espera ~ sexo, dados)) # Sexo vs. tempo de espera
summary(aov(espera ~ ponto, dados)) # Ponto vs. tempo de espera
summary(aov(espera ~ visibilidade, dados)) # Visibilidade vs. tempo de espera
