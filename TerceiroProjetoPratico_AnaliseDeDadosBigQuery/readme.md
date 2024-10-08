<a id="documentacao"></a>
<h1 align="center">
    3°Projeto Prático - Dados<br>
    Análise de Dados com BigQuery e Looker e Storytelling 
</h1>
 
<p align="center"> 
    <img src="logoGBoti.png" alt="Logo Grupo Boticário"> 
</center>

## Documentação do Projeto: Análise de Crimes em São Paulo

## 🤖 Introdução
Este projeto teve como objetivo analisar dados de crimes no estado de São Paulo, utilizando BigQuery para manipulação dos dados e Looker para visualização e análise. O foco principal foi identificar padrões de crimes por bairros, determinar os crimes mais frequentes, e comparar a incidência de crimes entre os anos de 2019 e 2020.

## 🚀Etapas do Projeto:
### 🎲 Importação e Limpeza dos Dados
Os dados foram importados para o BigQuery e passaram por um processo de limpeza, incluindo a remoção de duplicatas e correção de dados inconsistentes.
### 🎲 Estruturação das Tabelas
Foram criadas tabelas no BigQuery para armazenar os dados de crimes, organizando-os por bairros e tipos de crime. Uma tabela adicional foi criada para armazenar as coordenadas de latitude e longitude dos bairros, necessária para a visualização geográfica.
### 🎲 Criação das Queries SQL
Diversas queries SQL foram desenvolvidas para extrair e manipular os dados. As principais queries incluíram:
- Agrupamento dos crimes por bairros.
- Cálculo do total de crimes por tipo e por ano.
- Comparação entre os anos de 2019 e 2020.
### 🎲 Desenvolvimento do Dashboard no Looker
O Looker foi utilizado para criar visualizações interativas, incluindo:
- Total de crimes por bairro.
- Crimes mais frequentes.
- Bairros com maior frequência de crimes.
- Comparação de crimes entre 2019 e 2020.
### 🎲 Validação dos Resultados
Os resultados foram validados para garantir a precisão das análises. Esta etapa incluiu a revisão das queries e a verificação dos dados de entrada.

## 📑Códigos Desenvolvidos:
[Queries do Big Query](Queries.md) 

## Visualizações:
As análises foram documentadas nesse dashboard do [Looker](https://lookerstudio.google.com/s/qQ3NtS5KZ9A).  

<img src="https://github.com/user-attachments/assets/ba0e8528-3050-4970-9dbb-d9cb7fd30662" width="500px"/> <img src="https://github.com/user-attachments/assets/a9145f61-a62d-49fe-8e43-b4047e88e5ed" width="500px"/>

## 📄Conclusão
Este projeto forneceu insights valiosos sobre a distribuição e evolução dos crimes no estado de São Paulo. 
As análises foram documentadas no dashboard do Looker, proporcionando uma visualização clara e interativa dos resultados.  
A narrativa dos resultados pode ser encontrada  [aqui ❗](https://github.com/DanieleTravessa/BoticarioDesenvolve_Projetos/blob/main/TerceiroProjetoPratico_AnaliseDeDadosBigQuery/3%C2%BA%20Projeto%20Pr%C3%A1tico%20-%20Resultados.md) 

## 📄Tecnologias Utilizadas
- **BigQuery**: Utilizado para armazenamento e manipulação dos dados.
- **SQL**: Linguagem utilizada para criação e execução de queries no BigQuery.
- **Looker**: Ferramenta de BI utilizada para criação do dashboard final.
- **Python**: Para tratamento do documento CSV que foi importado no BigQuery.

## 📄 Como Contribuir:
Fique à vontade para sugerir melhorias no modelo de banco de dados ou na documentação.
Caso encontre algum problema ou tenha dúvidas, abra uma issue para discussão.
Contribuições são bem-vindas via pull requests.

## 📰 Referências:
✴ Documentação do PostgreSQL.
✴ Livros e recursos online sobre modelagem de banco de dados e SQL.
✴ Orientações das aulas de Modelagem da Alura.

Este projeto busca promover o aprendizado e a prática de modelagem de banco de dados em um contexto realista do negócio do Boticário. 
Se você está interessado em contribuir ou aprender mais sobre o assunto, sinta-se à vontade para contribuir! 🚀


# Índice de conteúdo  
1. [Etapas do Projeto](#etapas-do-projeto)  
2. [Tecnologias Utilizadas](#tecnologias-utilizadas)  
3. [Códigos Desenvolvidos](#códigos-desenvolvidos)  
4. [Visualizações](#visualizações)
5. [Conclusão](#conclusão)
