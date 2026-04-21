# Análise de Segurança nos Pontos de Ônibus - Cohabinal (Parnamirim/RN)

Este repositório contém o script de análise estatística desenvolvido para o projeto da disciplina **Sociedade e Desenvolvimento**, do curso de **Ecologia da UFRN (2026.1)**.

## 📌 Propósito do Projeto
O objetivo central desta pesquisa é investigar a percepção de segurança dos usuários de transporte público nos pontos de ônibus localizados no bairro da **Cohabinal, em Parnamirim/RN**. 

A análise busca identificar correlações entre o perfil dos usuários (gênero, faixa etária) e diversos fatores de infraestrutura e comportamento, tais como:
* Qualidade da iluminação e calçamento.
* Presença de policiamento.
* Tempo de espera e visibilidade do ponto.
* Experiências de assédio e estratégias de segurança adotadas pelos usuários.

## 🛠️ Tecnologias Utilizadas
* **Linguagem:** R (versão 4.5.2)
* **Bibliotecas:**
  * `readxl`: Para importação dos dados brutos em formato Excel.
  * `tidyverse`: Para manipulação e transformação de dados.

## 📂 Estrutura do Código
O script `script.R` está dividido em três etapas principais:

### 1. Preparação e Limpeza
O código inicia carregando as bibliotecas necessárias e importando o arquivo `grupo2_entrega2_dados-brutos.xlsx`. 
Uma etapa crucial realizada é a conversão de todas as colunas de texto (character) em fatores (factors), o que permite a correta execução dos testes estatísticos para variáveis categóricas.

### 2. Análise de Variáveis Qualitativas
Para entender a relação entre o sexo dos entrevistados e as demais variáveis qualitativas (como percepção de iluminação, segurança e ocorrência de assédio), o script utiliza o Teste Exato de Fisher (`fisher.test`). 
> *Nota: O Teste de Fisher foi escolhido por ser adequado para analisar tabelas de contingência, especialmente quando as frequências esperadas em algumas categorias podem ser baixas.*

### 3. Análise de Variáveis Quantitativas
Para analisar a variável numérica tempo de espera (`espera`), o script utiliza a Análise de Variância (ANOVA) (`aov`). O objetivo é verificar se existem diferenças estatisticamente significativas na média de espera com base em:
* Sexo do usuário.
* Ponto de ônibus específico.
* Nível de visibilidade do local.

## 🚀 Como Executar
1. Certifique-se de ter o **R** e o **RStudio** instalados.
2. Instale as dependências executando:
   ```r
   install.packages(c("readxl", "tidyverse"))
   ```
3. Mantenha o arquivo de dados `grupo2_entrega2_dados-brutos.xlsx` na mesma pasta do script.
4. Execute o script para visualizar os resultados dos testes no console.

## 👥 Autores
Trabalho desenvolvido pelos discentes:
* Felipe Cordeiro
* Felipe Fernandes
* Jaderson Coriolano
* Joyce Micaely

---
*Texto feito com Inteligência Artificial (IA)*
