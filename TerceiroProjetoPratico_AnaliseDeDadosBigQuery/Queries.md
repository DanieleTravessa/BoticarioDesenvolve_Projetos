[Criação da Lista de geolocalização](#criação-da-lista-de-geolocalização)  
[Criação da tabela crimes com os campos Código e Bairros](#criação-da-tabela-crimes-com-os-campos-código-e-bairros)  
[Atualização da tabela crimes com os dados de geolocalização](#atualização-da-tabela-crimes-com-os-dados-de-geolocalização)  
[Atualização da tabela crimes com os dados de geolocalização](#atualização-da-tabela-crimes-com-os-dados-de-geolocalização)  
### Criação da Lista de geolocalização
```sql
CREATE OR REPLACE TABLE `gb-projeto3dados.Projeto3.bairros_lat_lon` AS
SELECT * FROM UNNEST([
  STRUCT("01 DP Pessoa com Deficiência" AS bairro, "[-23.5505, -46.6333]" AS lat_lon),
  STRUCT("Sacomã" AS bairro, "[-23.6144, -46.5777]" AS lat_lon),
  STRUCT("Parque São Jorge" AS bairro, "[-23.5594, -46.5833]" AS lat_lon),
  STRUCT("Parque da Moóca" AS bairro, "[-23.5686, -46.6045]" AS lat_lon),
  STRUCT("Campo Grande" AS bairro, "[-23.6165, -46.5810]" AS lat_lon),
  STRUCT("Centro" AS bairro, "[-23.5505, -46.6333]" AS lat_lon),
  STRUCT("Sul" AS bairro, "[-23.6319, -46.7150]" AS lat_lon),
  STRUCT("Oeste" AS bairro, "[-23.5505, -46.6333]" AS lat_lon),
  STRUCT("Norte" AS bairro, "[-23.4839, -46.6170]" AS lat_lon),
  STRUCT("Leste" AS bairro, "[-23.5505, -46.5622]" AS lat_lon),
  STRUCT("Santo Amaro" AS bairro, "[-23.6528, -46.7104]" AS lat_lon),
  STRUCT("Itaquera" AS bairro, "[-23.5343, -46.4511]" AS lat_lon),
  STRUCT("8ª Seccional São Mateus" AS bairro, "[-23.5690, -46.5000]" AS lat_lon),
  STRUCT("Guarulhos (SP)" AS bairro, "[-23.4542, -46.5330]" AS lat_lon),
  STRUCT("CPS (SP)" AS bairro, "[-23.5505, -46.6333]" AS lat_lon),
  STRUCT("Congonhas" AS bairro, "[-23.6269, -46.6592]" AS lat_lon),
  STRUCT("Del. Pol. Atendimento ao Turista" AS bairro, "[-23.5505, -46.6333]" AS lat_lon),
  STRUCT("Delegacia Porto de Santos (SP)" AS bairro, "[-23.9677, -46.3296]" AS lat_lon),
  STRUCT("DELPOL Metropolitano" AS bairro, "[-23.5505, -46.6333]" AS lat_lon),
  STRUCT("OUTRAS ESPECIALIZADAS" AS bairro, "[-23.5505, -46.6333]" AS lat_lon),
  STRUCT("Alto da Moóca" AS bairro, "[-23.5494, -46.5935]" AS lat_lon),
  STRUCT("Bom Retiro" AS bairro, "[-23.5326, -46.6374]" AS lat_lon),
  STRUCT("Consolação" AS bairro, "[-23.5544, -46.6576]" AS lat_lon),
  STRUCT("Perdizes" AS bairro, "[-23.5411, -46.6809]" AS lat_lon),
  STRUCT("Vila Diva" AS bairro, "[-23.5627, -46.5261]" AS lat_lon),
  STRUCT("Vila Mariana" AS bairro, "[-23.5857, -46.6333]" AS lat_lon),
  STRUCT("Belém" AS bairro, "[-23.5391, -46.5890]" AS lat_lon),
  STRUCT("Carandiru" AS bairro, "[-23.5094, -46.6246]" AS lat_lon),
  STRUCT("Penha de França" AS bairro, "[-23.5270, -46.5337]" AS lat_lon),
  STRUCT("Pinheiros" AS bairro, "[-23.5617, -46.7016]" AS lat_lon),
  STRUCT("Itaim Bibi" AS bairro, "[-23.5874, -46.6807]" AS lat_lon),
  STRUCT("Tatuapé" AS bairro, "[-23.5366, -46.5760]" AS lat_lon),
  STRUCT("Vila Carrão" AS bairro, "[-23.5587, -46.5364]" AS lat_lon),
  STRUCT("Vila Alpina" AS bairro, "[-23.5967, -46.5555]" AS lat_lon),
  STRUCT("Parque Bristol" AS bairro, "[-23.6289, -46.5814]" AS lat_lon),
  STRUCT("Monções" AS bairro, "[-23.5941, -46.6862]" AS lat_lon),
  STRUCT("Ipiranga" AS bairro, "[-23.5897, -46.6116]" AS lat_lon),
  STRUCT("Freguesia do Ó" AS bairro, "[-23.4975, -46.7063]" AS lat_lon),
  STRUCT("Parque São Lucas" AS bairro, "[-23.5923, -46.5188]" AS lat_lon),
  STRUCT("Cidade Dutra" AS bairro, "[-23.7052, -46.6930]" AS lat_lon),
  STRUCT("Butantã" AS bairro, "[-23.5676, -46.7254]" AS lat_lon),
  STRUCT("Vila Formosa" AS bairro, "[-23.5627, -46.5364]" AS lat_lon),
  STRUCT("Artur Alvim" AS bairro, "[-23.5333, -46.4951]" AS lat_lon),
  STRUCT("Jardins" AS bairro, "[-23.5674, -46.6545]" AS lat_lon),
  STRUCT("Ceagesp" AS bairro, "[-23.5425, -46.7140]" AS lat_lon),
  STRUCT("Heliópolis" AS bairro, "[-23.6300, -46.5950]" AS lat_lon),
  STRUCT("Socorro" AS bairro, "[-23.6761, -46.6986]" AS lat_lon),
  STRUCT("Aclimação" AS bairro, "[-23.5680, -46.6254]" AS lat_lon),
  STRUCT("Ponte Rasa" AS bairro, "[-23.5130, -46.4930]" AS lat_lon),
  STRUCT("Vila Sonia" AS bairro, "[-23.5822, -46.7193]" AS lat_lon),
  STRUCT("Guaianazes" AS bairro, "[-23.5258, -46.4078]" AS lat_lon),
  STRUCT("Jardim Robru" AS bairro, "[-23.5305, -46.3992]" AS lat_lon),
  STRUCT("Cambuci" AS bairro, "[-23.5629, -46.6217]" AS lat_lon),
  STRUCT("Brás" AS bairro, "[-23.5464, -46.6212]" AS lat_lon),
  STRUCT("Casa Verde" AS bairro, "[-23.5144, -46.6645]" AS lat_lon),
  STRUCT("Campo Belo" AS bairro, "[-23.6204, -46.6625]" AS lat_lon),
  STRUCT("Parque do Carmo" AS bairro, "[-23.5668, -46.4836]" AS lat_lon),
  STRUCT("Vila Jacuí" AS bairro, "[-23.5071, -46.4253]" AS lat_lon),
  STRUCT("Lajeado" AS bairro, "[-23.5047, -46.3836]" AS lat_lon),
  STRUCT("Vila Pereira Barreto" AS bairro, "[-23.4978, -46.7346]" AS lat_lon),
  STRUCT("Jaguaré" AS bairro, "[-23.5463, -46.7507]" AS lat_lon),
  STRUCT("Jabaquara" AS bairro, "[-23.6396, -46.6413]" AS lat_lon),
  STRUCT("Vila Rica" AS bairro, "[-23.5384, -46.5266]" AS lat_lon),
  STRUCT("Cidade A E Carvalho" AS bairro, "[-23.5161, -46.4552]" AS lat_lon),
  STRUCT("Cohab Itaquera" AS bairro, "[-23.5250, -46.4630]" AS lat_lon),
  STRUCT("Vila Maria" AS bairro, "[-23.5078, -46.6059]" AS lat_lon),
  STRUCT("Vila Matilde" AS bairro, "[-23.5425, -46.5196]" AS lat_lon),
  STRUCT("Vila Brasilândia" AS bairro, "[-23.4844, -46.6973]" AS lat_lon),
  STRUCT("Itaim Paulista" AS bairro, "[-23.5045, -46.4013]" AS lat_lon),
  STRUCT("Jardim Noemia" AS bairro, "[-23.5543, -46.5294]" AS lat_lon),
  STRUCT("Lapa" AS bairro, "[-23.5275, -46.7050]" AS lat_lon),
  STRUCT("Pari" AS bairro, "[-23.5314, -46.6174]" AS lat_lon),
  STRUCT("Jardim Ângela" AS bairro, "[-23.6966, -46.7865]" AS lat_lon),
  STRUCT("Fazenda da Juta" AS bairro, "[-23.5774, -46.4926]" AS lat_lon),
  STRUCT("Jardim Ângela (Zona Sul)" AS bairro, "[-23.7037, -46.7742]" AS lat_lon),
  STRUCT("Cidade Ademar" AS bairro, "[-23.6661, -46.6598]" AS lat_lon),
  STRUCT("Ipiranga" AS bairro, "[-23.5888, -46.6113]" AS lat_lon),
  STRUCT("Jardim Cumbica (Guarulhos)" AS bairro, "[-23.4666, -46.4558]" AS lat_lon),
  STRUCT("Jardim Marilu (Guarulhos)" AS bairro, "[-23.4534, -46.4474]" AS lat_lon),
  STRUCT("Jardim Novo Portugal (Guarulhos)" AS bairro, "[-23.4604, -46.4693]" AS lat_lon)
]) AS bairros;
```

### Criação da tabela crimes com os campos Código e Bairros
```
CREATE TABLE `gb-projeto3dados.Projeto3.crimes-sp` AS
SELECT
    REGEXP_EXTRACT(Delegacia, r'^[^- ]+') AS Codigo_Delegacia,
    Delegacia,
    REGEXP_EXTRACT(Delegacia, r'[^-]+$') AS Bairros_Regioes,
    * EXCEPT(Delegacia)
FROM
    `gb-projeto3dados.Projeto3.base-crimes-sp`;

# Atualização da tabela crimes com os dados de geolocalização
UPDATE `gb-projeto3dados.Projeto3.crimes-sp`
SET latitude_longitude = CASE
    WHEN TRIM(`Bairros_Regioes`) = TRIM("Aclimação") THEN ("-23.5707, -46.6301")
    WHEN TRIM(`Bairros_Regioes`) = TRIM("Água Fria") THEN ("-23.4858, -46.6136")
    WHEN TRIM(`Bairros_Regioes`) = TRIM("Alto da Mooca") THEN ("-23.5461, -46.5852")
    WHEN TRIM(`Bairros_Regioes`) = TRIM("Belém") THEN ("-23.5447, -46.5953")
    WHEN TRIM(`Bairros_Regioes`) = TRIM("Bom Retiro") THEN ("-23.5298, -46.6343")
    WHEN TRIM(`Bairros_Regioes`) = TRIM("Butantã") THEN ("-23.5735, -46.7186")
    WHEN TRIM(`Bairros_Regioes`) = TRIM("Cambuci") THEN ("-23.5639, -46.6251")
    WHEN TRIM(`Bairros_Regioes`) = TRIM("Campo Belo") THEN ("-23.6225, -46.6702")
    WHEN TRIM(`Bairros_Regioes`) = TRIM("Campo Grande") THEN ("-23.6479, -46.6502")
    WHEN TRIM(`Bairros_Regioes`) = TRIM("Capão Redondo") THEN ("-23.6524, -46.7698")
    WHEN TRIM(`Bairros_Regioes`) = TRIM("Casa Verde") THEN ("-23.5083, -46.6566")
    WHEN TRIM(`Bairros_Regioes`) = TRIM("Cidade Ademar") THEN ("-23.6625, -46.6631")
    WHEN TRIM(`Bairros_Regioes`) = TRIM("Cidade Dutra") THEN ("-23.7053, -46.6895")
    WHEN TRIM(`Bairros_Regioes`) = TRIM("Cidade Tiradentes") THEN ("-23.6035, -46.3829")
    WHEN TRIM(`Bairros_Regioes`) = TRIM("Consolação") THEN ("-23.5483, -46.6518")
    WHEN TRIM(`Bairros_Regioes`) = TRIM("Ermelino Matarazzo") THEN ("-23.5017, -46.4742")
    WHEN TRIM(`Bairros_Regioes`) = TRIM("Freguesia do Ó") THEN ("-23.5012, -46.7036")
    WHEN TRIM(`Bairros_Regioes`) = TRIM("Guaianazes") THEN ("-23.5423, -46.4026")
    WHEN TRIM(`Bairros_Regioes`) = TRIM("Heliópolis") THEN ("-23.6317, -46.5817")
    WHEN TRIM(`Bairros_Regioes`) = TRIM("Itaim Bibi") THEN ("-23.5888, -46.6797")
    WHEN TRIM(`Bairros_Regioes`) = TRIM("Itaim Paulista") THEN ("-23.4997, -46.4135")
    WHEN TRIM(`Bairros_Regioes`) = TRIM("Itaquera") THEN ("-23.5296, -46.4534")
    WHEN TRIM(`Bairros_Regioes`) = TRIM("Jaçanã") THEN ("-23.4669, -46.5886")
    WHEN TRIM(`Bairros_Regioes`) = TRIM("Jabaquara") THEN ("-23.6451, -46.6348")
    WHEN TRIM(`Bairros_Regioes`) = TRIM("Jaguaré") THEN ("-23.5508, -46.7427")
    WHEN TRIM(`Bairros_Regioes`) = TRIM("Jardim Mirna") THEN ("-23.6871, -46.6822")
    WHEN TRIM(`Bairros_Regioes`) = TRIM("Jardins") THEN ("-23.5613, -46.6553")
    WHEN TRIM(`Bairros_Regioes`) = TRIM("Lapa") THEN ("-23.5276, -46.7147")
    WHEN TRIM(`Bairros_Regioes`) = TRIM("Mooca") THEN ("-23.5546, -46.5947")
    WHEN TRIM(`Bairros_Regioes`) = TRIM("Pari") THEN ("-23.5263, -46.6272")
    WHEN TRIM(`Bairros_Regioes`) = TRIM("Penha de França") THEN ("-23.5312, -46.6037")
    WHEN TRIM(`Bairros_Regioes`) = TRIM("Perdizes") THEN ("-23.5343, -46.6579")
    WHEN TRIM(`Bairros_Regioes`) = TRIM("Pinheiros") THEN ("-23.5617, -46.6906")
    WHEN TRIM(`Bairros_Regioes`) = TRIM("Pirituba") THEN ("-23.5024, -46.7301")
    WHEN TRIM(`Bairros_Regioes`) = TRIM("Santana") THEN ("-23.5006, -46.6238")
    WHEN TRIM(`Bairros_Regioes`) = TRIM("Santo Amaro") THEN ("-23.6495, -46.6971")
    WHEN TRIM(`Bairros_Regioes`) = TRIM("São Mateus") THEN ("-23.5854, -46.4687")
    WHEN TRIM(`Bairros_Regioes`) = TRIM("Sé") THEN ("-23.5505, -46.6333")
    WHEN TRIM(`Bairros_Regioes`) = TRIM("Socorro") THEN ("-23.6696, -46.7151")
    WHEN TRIM(`Bairros_Regioes`) = TRIM("Tatuapé") THEN ("-23.5406, -46.5614")
    WHEN TRIM(`Bairros_Regioes`) = TRIM("Vila Alpina") THEN ("-23.5883, -46.5897")
    WHEN TRIM(`Bairros_Regioes`) = TRIM("Vila Carrão") THEN ("-23.5610, -46.5783")
    WHEN TRIM(`Bairros_Regioes`) = TRIM("Vila Clementino") THEN ("-23.6028, -46.6354")
    WHEN TRIM(`Bairros_Regioes`) = TRIM("Vila Diva") THEN ("-23.5726, -46.6891")
    WHEN TRIM(`Bairros_Regioes`) = TRIM("Vila Formosa") THEN ("-23.5601, -46.5602")
    WHEN TRIM(`Bairros_Regioes`) = TRIM("Vila Gustavo") THEN ("-23.4895, -46.6327")
    WHEN TRIM(`Bairros_Regioes`) = TRIM("Vila Jacuí") THEN ("-23.5257, -46.4497")
    WHEN TRIM(`Bairros_Regioes`) = TRIM("Vila Joaniza") THEN ("-23.6894, -46.7138")
    WHEN TRIM(`Bairros_Regioes`) = TRIM("Vila Mariana") THEN ("-23.5894, -46.6598")
    WHEN TRIM(`Bairros_Regioes`) = TRIM("Vila Matilde") THEN ("-23.5401, -46.5732")
    WHEN TRIM(`Bairros_Regioes`) = TRIM("Vila Maria") THEN ("-23.5089, -46.5773")
    WHEN TRIM(`Bairros_Regioes`) = TRIM("Vila Penteado") THEN ("-23.4842, -46.5894")
    WHEN TRIM(`Bairros_Regioes`) = TRIM("Vila Prudente") THEN ("-23.5820, -46.6105")
    WHEN TRIM(`Bairros_Regioes`) = TRIM("Vila Sônia") THEN ("-23.5981, -46.7161")
    ELSE NULL
END
WHERE latitude_longitude is null;
```

### Atualização da tabela crimes com os dados de geolocalização
```
UPDATE `gb-projeto3dados.Projeto3.crimes-sp`
SET latitude_longitude = CASE TRIM(Bairros_Regioes)
    -- Campos Elísios
    WHEN TRIM('Campos Elísios') THEN '[-23.546566, -46.633308]'
    -- Brás
    WHEN TRIM('Brás') THEN '[-23.532759, -46.621372]'
    -- Carandiru
    WHEN TRIM('Carandiru') THEN '[-23.525558, -46.626982]'
    -- Ipiranga
    WHEN TRIM('Ipiranga') THEN '[-23.583151, -46.605454]'
    -- Alto da Moóca
    WHEN TRIM('Alto da Moóca') THEN '[-23.568406, -46.616809]'
    -- São Miguel Paulista
    WHEN TRIM('São Miguel Paulista') THEN '[-23.502470, -46.549855]'
    -- Ponte Rasa
    WHEN TRIM('Ponte Rasa') THEN '[-23.528971, -46.556973]'
    -- Parelheiros
    WHEN TRIM('Parelheiros') THEN '[-23.712304, -46.597736]'
    -- Sacomã
    WHEN TRIM('Sacomã') THEN '[-23.606133, -46.605701]'
    -- Vila Sonia
    WHEN TRIM('Vila Sonia') THEN '[-23.616658, -46.737522]'
    -- Campo Limpo
    WHEN TRIM('Campo Limpo') THEN '[-23.646312, -46.743038]'
    -- Vila Amália
    WHEN TRIM('Vila Amália') THEN '[-23.510927, -46.626579]'
    -- Vila Santa Maria
    WHEN TRIM('Vila Santa Maria') THEN '[-23.531704, -46.593523]'
    -- Vila Rica
    WHEN TRIM('Vila Rica') THEN '[-23.548781, -46.633933]'
    -- Parque São Lucas
    WHEN TRIM('Parque São Lucas') THEN '[-23.582716, -46.546740]'
    -- Vila Brasilândia
    WHEN TRIM('Vila Brasilândia') THEN '[-23.451965, -46.657527]'
    -- Perus
    WHEN TRIM('Perus') THEN '[-23.477987, -46.742623]'
    -- Parque São Jorge
    WHEN TRIM('Parque São Jorge') THEN '[-23.538308, -46.600349]'
    -- Parque do Carmo
    WHEN TRIM('Parque do Carmo') THEN '[-23.575232, -46.475694]'
    -- Parque São Rafael
    WHEN TRIM('Parque São Rafael') THEN '[-23.609235, -46.548987]'
    -- Parque da Moóca
    WHEN TRIM('Parque da Moóca') THEN '[-23.550573, -46.598310]'
    -- Jardim Noemia
    WHEN TRIM('Jardim Noemia') THEN '[-23.572596, -46.639470]'
    -- Cidade A E Carvalho
    WHEN TRIM('Cidade A E Carvalho') THEN '[-23.572596, -46.639470]'
    -- Artur Alvim
    WHEN TRIM('Artur Alvim') THEN '[-23.537962, -46.556236]'
    -- Vale do Aricanduva
    WHEN TRIM('Vale do Aricanduva') THEN '[-23.550068, -46.555527]'
    -- Jardim Robru
    WHEN TRIM('Jardim Robru') THEN '[-23.523690, -46.611962]'
    -- Lajeado
    WHEN TRIM('Lajeado') THEN '[-23.526063, -46.568832]'
    -- Teotônio Vilela
    WHEN TRIM('Teotônio Vilela') THEN '[-23.541044, -46.597654]'
    -- Vila Ema
    WHEN TRIM('Vila Ema') THEN '[-23.562568, -46.637061]'
    -- Jaraguá
    WHEN TRIM('Jaraguá') THEN '[-23.477928, -46.747052]'
    -- Jardim Arpoador
    WHEN TRIM('Jardim Arpoador') THEN '[-23.569117, -46.665724]'
    -- Santa Cecília
    WHEN TRIM('Santa Cecília') THEN '[-23.537293, -46.640247]'
    -- Parque Bristol
    WHEN TRIM('Parque Bristol') THEN '[-23.593947, -46.620078]'
    -- Vila Pereira Barreto
    WHEN TRIM('Vila Pereira Barreto') THEN '[-23.517210, -46.579259]'
    -- Portal do Morumbi
    WHEN TRIM('Portal do Morumbi') THEN '[-23.569117, -46.665724]'
    -- Parque Novo Mundo
    WHEN TRIM('Parque Novo Mundo') THEN '[-23.485890, -46.603793]'
    -- Ceagesp
    WHEN TRIM('Ceagesp') THEN '[-23.541202, -46.683969]'
    -- Parque Santo Antônio
    WHEN TRIM('Parque Santo Antônio') THEN '[-23.570890, -46.641076]'
    -- Monções
    WHEN TRIM('Monções') THEN '[-23.537986, -46.612593]'
    -- Americanópolis
    WHEN TRIM('Americanópolis') THEN '[-23.580040, -46.614944]'
    -- Jardim Míriam
    WHEN TRIM('Jardim Míriam') THEN '[-23.570481, -46.616603]'
    -- Jardim Herculano
    WHEN TRIM('Jardim Herculano') THEN '[-23.593446, -46.626790]'
    -- Jardim das Imbuias
    WHEN TRIM('Jardim das Imbuias') THEN '[-23.590842, -46.608789]'
    -- Cohab Itaquera
    WHEN TRIM('Cohab Itaquera') THEN '[-23.550618, -46.495062]'
    -- Centro
    WHEN TRIM('Centro') THEN '[-23.550520, -46.633308]'
    -- Sul
    WHEN TRIM('Sul') THEN '[-23.621849, -46.688159]'
    -- Oeste
    WHEN TRIM('Oeste') THEN '[-23.550520, -46.633308]'
    -- Norte
    WHEN TRIM('Norte') THEN '[-23.550520, -46.633308]'
    -- Leste
    WHEN TRIM('Leste') THEN '[-23.550520, -46.633308]'
    -- 8ª Seccional São Mateus
    WHEN TRIM('8ª Seccional São Mateus') THEN '[-23.571883, -46.490299]'
    -- Guarulhos (SP)
    WHEN TRIM('Guarulhos (SP)') THEN '[-23.473226, -46.533308]'
    -- Congonhas
    WHEN TRIM('Congonhas') THEN '[-23.616056, -46.657042]'
    -- CPS (SP)
    WHEN TRIM('CPS (SP)') THEN '[-23.550520, -46.633308]'
    -- 91 DP
    WHEN TRIM('91 DP') THEN '[-23.550520, -46.633308]'
    ELSE NULL
END
WHERE latitude_longitude is null;
/*
WHERE Bairros_Regioes IN (
    'Campos Elísios', 'Brás', 'Carandiru', 'Ipiranga', 'Alto da Moóca',
    'São Miguel Paulista', 'Ponte Rasa', 'Parelheiros', 'Sacomã', 'Vila Sonia',
    'Campo Limpo', 'Vila Amália', 'Vila Santa Maria', 'Vila Rica', 'Parque São Lucas',
    'Vila Brasilândia', 'Perus', 'Parque São Jorge', 'Parque do Carmo',
    'Parque São Rafael', 'Parque da Moóca', 'Jardim Noemia', 'Cidade A E Carvalho',
    'Artur Alvim', 'Vale do Aricanduva', 'Jardim Robru', 'Lajeado', 'Teotônio Vilela',
    'Vila Ema', 'Jaraguá', 'Jardim Arpoador', 'Santa Cecília', 'Parque Bristol',
    'Vila Pereira Barreto', 'Portal do Morumbi', 'Parque Novo Mundo', 'Ceagesp',
    'Parque Santo Antônio', 'Monções', 'Americanópolis', 'Jardim Míriam', 'Jardim Herculano',
    'Jardim das Imbuias', 'Cohab Itaquera', 'Centro', 'Sul', 'Oeste', 'Norte', 'Leste',
    '8ª Seccional São Mateus', 'Guarulhos (SP)', 'Congonhas', 'CPS (SP)', '91 DP'
);*/
```

### Consulta: Total de Crimes por Ano
```
SELECT ANO, ROUND(Sum(crimes),2) as TotalCrimes
from `gb-projeto3dados.Projeto3.base-crimes-sp`, UNNEST([`Furtos na região`, `Roubo de carga`,`Roubos`,`Roubo de Veiculo`,`Furto de veiculo`, `Latrocinios`,`Homicídio doloso por acidente de trânsito`,`Homicídio Culposo por acidente de Trânsito`,`Homicídio Culposo`,`Tentativa de Homicídio`,`Lesão Corporal seguida de morte`,`Lesão Corporal Dolosa`,`Lesão Corporal Culposa por acidente de trânsito`,`Lesão Corporal Culposa`,Estupro,`Estupro de vulnerável`,`Roubo de veiculos`, `Roubo a Banco `]) as crimes
GROUP BY Ano
```

### Consulta: Total de Crimes Violentos por Ano, por Bairro
```
SELECT 
  ANO,
  Bairros_Regioes, 
  ROUND(Sum(crimes),2) as TotalCrimesViolentos
FROM `gb-projeto3dados.Projeto3.crimes-sp`, 
UNNEST([`Furtos na região`, `Roubo de carga`,`Roubos`,`Roubo de Veiculo`,`Furto de veiculo`, `Latrocinios`,`Homicídio doloso por acidente de trânsito`,`Homicídio Culposo por acidente de Trânsito`,`Homicídio Culposo`,`Tentativa de Homicídio`,`Lesão Corporal seguida de morte`,`Lesão Corporal Dolosa`,`Lesão Corporal Culposa por acidente de trânsito`,`Lesão Corporal Culposa`,Estupro,`Estupro de vulnerável`,`Roubo de veiculos`, `Roubo a Banco `]) as crimes
GROUP BY Ano, Bairros_Regioes 
```

### Consulta: crimes mais frequentes
```
WITH crime_data AS (
  SELECT
    *,
    ARRAY<STRUCT<crime_value FLOAT64, crime_type STRING>>[
      STRUCT(`Furtos na região`, 'Furtos na região'),
      STRUCT(`Roubo de carga`, 'Roubo de carga'),
      STRUCT(`Roubos`, 'Roubos'),
      STRUCT(`Roubo de Veiculo`, 'Roubo de Veiculo'),
      STRUCT(`Furto de veiculo`, 'Furto de veiculo'),
      STRUCT(`Latrocinios`, 'Latrocinios'),
      STRUCT(`Homicídio doloso por acidente de trânsito`, 'Homicídio doloso por acidente de trânsito'),
      STRUCT(`Homicídio Culposo por acidente de Trânsito`, 'Homicídio Culposo por acidente de Trânsito'),
      STRUCT(`Homicídio Culposo`, 'Homicídio Culposo'),
      STRUCT(`Tentativa de Homicídio`, 'Tentativa de Homicídio'),
      STRUCT(`Lesão Corporal seguida de morte`, 'Lesão Corporal seguida de morte'),
      STRUCT(`Lesão Corporal Dolosa`, 'Lesão Corporal Dolosa'),
      STRUCT(`Lesão Corporal Culposa por acidente de trânsito`, 'Lesão Corporal Culposa por acidente de trânsito'),
      STRUCT(`Lesão Corporal Culposa`, 'Lesão Corporal Culposa'),
      STRUCT(`Estupro`, 'Estupro'),
      STRUCT(`Estupro de vulnerável`, 'Estupro de vulnerável'),
      STRUCT(`Roubo de veiculos`, 'Roubo de veiculos'),
      STRUCT(`Roubo a Banco `, 'Roubo a Banco')
    ] AS crime_array
  FROM
    `gb-projeto3dados.Projeto3.crimes-sp`
),
max_crimes AS (
  SELECT
    *,
    (SELECT AS STRUCT crime_value, crime_type
     FROM UNNEST(crime_array)
     GROUP BY Delegacia, crime_type, crime_value
     ORDER BY crime_value DESC
     LIMIT 1) AS max_crime
  FROM
    crime_data
)
SELECT
  max_crime.crime_value AS max_crime_value,
  max_crime.crime_type AS max_crime_type,
  Delegacia,
  Bairros_Regioes  
FROM
  max_crimes
--GROUP BY Delegacia, max_crime_type, max_crime.crime_value
ORDER BY max_crime_value DESC;
```

### [Tabela crimes](crimes-sp.csv)
### [Tabela base-crimes-sp-Ajustado](base-crimes-sp-Ajustado.csv)
