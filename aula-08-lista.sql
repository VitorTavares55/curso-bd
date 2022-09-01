-- 01 - O que é JOIN? Quando é necessário?
     O JOIN é uma forma de combinar colunas ou tabelas usando valores comuns entre elas. É necessário utilizar o JOIN quando precisamos relacionar
		os dados que estão em diferentes tabelas e assim obter
		uma informação mais completa desses dados que estão
		distribuídos.
		
-- 02 - Qual a sintaxe do JOIN? Maiúscula ou minúscula faz diferença? Existe algum padrão? Explique.
   A sintaxe do JOIN não é definida dentro do SQL, portanto não se existe diferença em escrever ele de forma maiúscula ou minúscula.
	Porém assumimos um padrão de escrita maíscula para todos os comandos de DDL, DML e DCL, logo ele deve seguir o padrão estipulado entre a turma.
	
	 
-- 04 - O que é primordial para que o resultado tenha sentido em consultas com JOIN? Explique.
   Para termos os resultados da forma esperada, precisamos direcionar atenção total a forma de seleção pois é por meio dela que os dados seráo estruturados
   e exibidos corretamente, logo qualquer erro no SELECT pode arruinar o funcionamento do JOIN.
   
   
   
-- 05 - Existe mais de uma maneira de realizar o JOIN? Quantas? Qual é a mais eficiente? 
      Sim, existem ao todo 5 maneiras de realizar o JOIN, sendo elas INNER JOIN, LEFT JOIN, RIGHT JOIN, FULL JOIN, CROSS JOIN. Não existe uma que seja mais eficiente, cada uma sendo utilizada para suas devidas aplicações,
      o máximo que poderia ser definido é a que é mais utilizada, que neste caso é o INNER JOIN, mas todas possuem seus aspectos para atender a necessidade do banco.