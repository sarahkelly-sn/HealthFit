## Considerações

### Introdução

Ao iniciar este teste, fiquei empolgada em explorar o conjunto de dados. Minha abordagem fugiu um pouco da tratativa e melhoria dos dados em geral, devido ao prazo de entrega. Com essa base, poderia focar em uma análise de perfil de pessoa por tipo de atividade física, por nível de estresse ou por dieta. No entanto, optei por concentrar-me em fornecer um painel focado na análise do IMC. Gostaria de destacar alguns pontos sobre a base de dados nesta documentação.

#### Exploração Inicial
- Identifiquei uma inconsistência na coluna de nome de usuário e implementei uma solução paliativa que se limita a mais uma casa de dígitos, apenas para uso no painel. Essa solução pode não ser ideal, dependendo da regra de negócio.
- Enquanto realizava a inserção dos dados em uma tabela criada no meu banco para processar os dados, enfrentei certa dificuldade em relação à formatação dos números decimais em algumas das colunas. Precisei alterar a formatação do CSV para poder alimentar a tabela sem perder os dados.

#### Oportunidades de Otimização
1. Esta base contém informações de pessoas e informações mutáveis (por exemplo, consumo diário de água). O ideal seria uma tabela (dependendo da estrutura do backend) com um log de alterações. Isso permitiria a extração de dados valiosos sobre o crescimento e exploraria melhor essas informações.
2. Eu criaria uma tabela de usuários e a preencheria com informações de localização, data de criação do perfil, etc. Essas informações são valiosas durante a análise dos dados, pois possibilitam mapear o perfil do usuário. A base enviada estava limitada nesse sentido.

#### Análise Atual
Realizei uma análise geral dos dados, concentrando-me na faixa etária em relação ao estresse e práticas de atividade física. Consegui identificar tendências em relação à quantidade de usuários, seus hábitos, o consumo mínimo diário de água indicado em relação ao peso e extrair alguns insights. Embora tenha sentido a falta de alguns dados, até onde pude analisar, seguem algumas considerações:

- A maioria dos usuários possui idade avançada, sendo principalmente pessoas acima de 75 anos.
- Identifiquei que o principal perfil de usuário que busca o aplicativo são pessoas com hábitos ruins, que não consomem a quantidade mínima de água recomendada para o peso deles e apresentam IMC acima do recomendado.

![image](https://github.com/sarahkelly-sn/HealthFit/assets/101109549/a1265be5-f768-4fd5-9796-26616757dcaa)

