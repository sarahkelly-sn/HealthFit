/* -- SELECT Utilizado no painel
SELECT 
	CASE 
		WHEN imc BETWEEN 18.5 AND 24.99 THEN 'Saudável' 
	ELSE 'Não Saudável' 
	END AS TipagemIMC,
	CASE	
		WHEN imc < 18.5 THEN 'Abaixo do Peso' 
		WHEN imc BETWEEN 18.5 AND 24.99 THEN 'Saudável' 
		WHEN imc > 24.99 THEN 'Acima do Peso' 
	END AS ApuracaoIMC,
	CASE 
		WHEN consumo_agua_ld < (peso*35/1000) THEN 'Abaixo'
		ELSE 'Correto' END ConsumoAgua,
	* 
FROM DadosUsuarios
*/

/* -- Correção coluna nome
UPDATE DadosUsuarios
SET nome = 'user_'+CONVERT(VARCHAR,FORMAT(id_usuario,'000000'));
*/

/* -- Criação coluna faixa_etaria 
ALTER TABLE DadosUsuarios
ADD faixa_etaria VARCHAR (100);
*/

/* -- Inserindo informações na coluna faixa_etaria
UPDATE DadosUsuarios
SET faixa_etaria =
	CASE
		WHEN idade < 18 THEN 'Menor que 18'
		WHEN idade BETWEEN 18 AND 24 THEN 'Entre 18 e 24'
		WHEN idade BETWEEN 25 AND 34 THEN 'Entre 25 e 34'
		WHEN idade BETWEEN 35 AND 44 THEN 'Entre 35 e 44'
		WHEN idade BETWEEN 45 AND 54 THEN 'Entre 45 e 54'
		WHEN idade BETWEEN 55 AND 64 THEN 'Entre 55 e 64'
		WHEN idade BETWEEN 65 AND 75 THEN 'Entre 65 e 75'
	ELSE 'Maior que 75'
	END;
*/

/* -- Criando tabela
USE [teste_sql]

CREATE TABLE [dbo].[DadosUsuarios](
	[id_usuario] [int] NULL,
	[nome] [nvarchar](50) NULL,
	[idade] [int] NULL,
	[sexo] [nvarchar](10) NULL,
	[peso] [float] NULL,
	[altura] [float] NULL,
	[imc] [float] NULL,
	[horas_ef_s] [float] NULL,
	[tipo_ef] [nvarchar](50) NULL,
	[dieta] [nvarchar](50) NULL,
	[consumo_agua_ld] [float] NULL,
	[estresse] [int] NULL,
	[sono] [int] NULL
*/
