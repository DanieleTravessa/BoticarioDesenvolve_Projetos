import pandas as pd

# Importar os dados do CSV
df = pd.read_csv('C:\\InstanciasVisualStudio\\BoticarioDadosProjetos\\BoticarioDesenvolve_Projetos\\SegundoProjetoPratico_AnaliseDeDadosePredicao\\base-alugueis-sp.csv')

# Exibir as primeiras linhas do DataFrame
print(df.head())
df.info()

df.duplicated()
print(df)

# Verificar se há valores ausentes
print("Valores Ausentes:")
print(df.isnull().sum())

# Tratar valores ausentes se houvessem (nesse caso não há, mas vamos demonstrar como fazer)
#df.fillna(df.mean(), inplace=True)

# Verificar tipos de dados antes da correção
'''print("Tipos de Dados Antes:")
print(df.dtypes)'''

# Converter colunas numéricas para os tipos de dados apropriados
'''df['area'] = pd.to_numeric(df['area'], errors='coerce')
df['bedrooms'] = pd.to_numeric(df['bedrooms'], errors='coerce')
df['garage'] = pd.to_numeric(df['garage'], errors='coerce')
df['rent'] = pd.to_numeric(df['rent'], errors='coerce')
df['total'] = pd.to_numeric(df['total'], errors='coerce')
'''
# Estatísticas descritivas gerais
print("Estatísticas Descritivas:")
print(df.describe())

# Distribuição de uma variável
import matplotlib.pyplot as plt
import seaborn as sns

sns.histplot(df['rent'], kde=True)
plt.title('Distribuição dos Preços de Aluguel')
plt.xlabel('Preço do Aluguel')
plt.ylabel('Frequência')
plt.show()

'''Etapa d: Modelagem de Regressão Linear
Selecionar as variáveis independentes (features) e a variável dependente (target):'''
from sklearn.model_selection import train_test_split
from sklearn.linear_model import LinearRegression
from sklearn.metrics import mean_squared_error, r2_score

# Exemplo: supondo que 'area' seja a variável independente e 'preco_aluguel' a variável dependente
X = df[['area']]  # Variável independente
y = df['preco_aluguel']  # Variável dependente

# Dividir os dados em conjuntos de treinamento e teste
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.3, random_state=42)
#Ajustar o modelo de regressão linear:
# Criar o modelo
model = LinearRegression()
# Treinar o modelo
model.fit(X_train, y_train)
# Prever no conjunto de teste
y_pred = model.predict(X_test)

#Avaliar o desempenho do modelo:
# Avaliar o modelo
mse = mean_squared_error(y_test, y_pred)
r2 = r2_score(y_test, y_pred)

print(f'Mean Squared Error: {mse}')
print(f'R² Score: {r2}')

#Visualização de Dados
#Visualizações gráficas:
# Visualização da relação entre a área e o preço do aluguel
sns.scatterplot(x='area', y='preco_aluguel', data=df)
plt.plot(X_test, y_pred, color='red')  # Linha de regressão
plt.title('Relação entre Área e Preço do Aluguel')
plt.show()

# Matriz de correlação para analisar relações entre variáveis
corr_matrix = df.corr()
sns.heatmap(corr_matrix, annot=True, cmap='coolwarm')
plt.title('Matriz de Correlação')
plt.show()
