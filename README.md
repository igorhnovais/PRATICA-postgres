# PRATICA-postgres

Com um terminal aberto conectado ao banco , execute as seguintes consultas:

1. Busque produtos quaisquer, limitados a 5;
    - Resultado esperado
        
        ```
         id |          nome          | preco  
        ----+------------------------+--------
          1 | Televisão 43"          | 139997
          2 | Televisão 55"          | 250000
          3 | Notebook Entrada       | 200000
          4 | Notebook Intermediário | 350000
          5 | Notebook Topo de Linha | 600000
        (5 rows)
        ```
        
2. Busque clientes quaisquer da loja, limitados a 3;
    - Resultado esperado
        
        ```
         id |          nome          |     cpf     
        ----+------------------------+-------------
          1 | Allana Fidalgo Moreira | 12345678900
          2 | Benício Freire Sampaio | 98765432100
          3 | Orlando Pequeno Jesus  | 10293847560
        (3 rows)
        ```
        
3. Busque o produto com nome `Televisão 43"`;
    - Resultado esperado
        
        ```
         id |     nome      | preco  
        ----+---------------+--------
          1 | Televisão 43" | 139997
        (1 row)
        ```
        
4. Adicione um novo produto chamado `Macbook Pro 13"` com preço R$ 17.000,00;
    - Resultado esperado
        
        ```
        INSERT 0 1
        ```
        
5. `Orlando Pequeno Jesus` fez barraco na loja e agora está banido. Remova-o da lista de clientes;
    - Resultado esperado
        
        ```
        DELETE 1
        ```
        
6. O dólar subiu mais uma vez e o preço do produto `Pelúcia Strange Planet com Gatinho` agora é R$ 80,00. Atualize no banco;
    - Resultado esperado
        
        ```
        UPDATE 1
        ```
        
7. A alta do dólar também afetou o preço do Violão Lava ME 2. Altere seu preço para R$ 9800,00. Atualize o banco.
    - Resultado esperado
        
        ```
        UPDATE 1
        ```
        
8. Lucca Santarém Branco usou o CPF de um laranja. Modifique seu CPF para o valor correto: `04652651298`;
    - Resultado esperado
        
        ```
        UPDATE 1
        ```
        
9. Chico Buarque de Holanda comprou o produto `Violão Lava ME 2`. Adicione esse registro de compra na tabela `compra`;
    - Resultado esperado
        
        ```
        INSERT 0 1
        ```
        
10. Olga Cascais Fortunato comprou dois `Celular Topo de Linha`. Adicione os registros de compra na tabela `compra`;
    - Resultado esperado
        
        ```
        INSERT 0 1
        INSERT 0 1
        # ou
        INSERT 0 2
        ```
        
11. Martinha Lima Zambujal devolveu o produto `Fone Topo de Linha`. Remova este registro da tabela `compra`;
    - Resultado esperado
        
        ```
        DELETE 1
        ```
        
12. Busque todos os produtos ordenados pelo preço, de forma crescente. Para este item, procure por `sql order by`;
    - Resultado esperado
        
        ```
         id |                nome                |  preco  
        ----+------------------------------------+---------
         12 | Fone Entrada                       |    2000
          9 | Pelúcia Strange Planet com Gatinho |    8000
         13 | Fone Intermediário                 |   20000
         14 | Fone Topo de Linha                 |   80000
          6 | Celular Entrada                    |   80000
          1 | Televisão 43"                      |  139997
          7 | Celular Intermediário              |  160000
          3 | Notebook Entrada                   |  200000
          2 | Televisão 55"                      |  250000
          8 | Celular Topo de Linha              |  340000
          4 | Notebook Intermediário             |  350000
         11 | Bicicleta Elétrica                 |  370000
          5 | Notebook Topo de Linha             |  600000
         10 | Violão Lava ME 2                   |  980000
         15 | Macbook Pro 13"                    | 1700000
        (15 rows)
        ```
        
13. Busque os 3 produtos mais baratos;
    - Resultado esperado
        
        ```
         id |                nome                | preco 
        ----+------------------------------------+-------
         12 | Fone Entrada                       |  2000
          9 | Pelúcia Strange Planet com Gatinho |  8000
         13 | Fone Intermediário                 | 20000
        (3 rows)
        ```
        
14. Busque o produto com o maior preço;
    - Resultado esperado
        
        ```
         id |      nome       |  preco  
        ----+-----------------+---------
         15 | Macbook Pro 13" | 1700000
        (1 row)
        ```
        
15. Busque o produto com o segundo menor preço. Para este item, procure por `sql offset`.
    - Resultado esperado
        
        ```
         id |                nome                | preco 
        ----+------------------------------------+-------
          9 | Pelúcia Strange Planet com Gatinho |  8000
        (1 row)
        ```

---------------------------------------------------------------------------------------------

### Questão 1:

Utilizando uma query, obtenha todos os usuários (`users`) que vivem na cidade (`cities`) cujo nome seja “**Rio de Janeiro**”.

A resposta deve vir no formato:

```
|---id---|---name---|-------city-------|
    1        João      Rio de Janeiro
    2        Maria     Rio de Janeiro
   ...        ...            ...
```

**OBS:** a coluna `id` se refere ao id do usuário

**Dica:** utilize apelidos para os nomes de colunas ficarem como você deseja (ex: `SELECT cities.name AS city`)

**Dica:** na query, todo nome de coluna que tenha letras maiúsculas precisa estar entre aspas duplas (ex: `ON users."cityId" = ...`). Repare que somente o nome da coluna fica entre aspas duplas.

---

### Questão 2:

Utilizando uma query, obtenha todos os depoimentos (`testimonials`) cadastrados, incluindo o nome do remetente e do destinatário.

A resposta deve vir no formato:

```
|---id---|---writer---|---recipient---|--------------message------------------|
    1        João           Maria         Foi ótimo trabalhar com a Maria...
    2        Maria          João           Adorei trabalhar com o João...
   ...        ...            ...                     ...
```

**OBS:** a coluna `id` se refere ao id do depoimento

**Dica:** para fazer múltiplos joins com uma mesma tabela, use apelidos para cada join (ex: `JOIN tabela t1`)

---

### Questão 3:

Utilizando uma query, obtenha todos os cursos (`courses`) que o usuário com id **30** já finalizou, incluindo o nome da escola. O que indica que um usuário terminou um curso é o campo `status` da tabela `educations`, que deve estar como "**finished**".

A resposta deve vir no formato:

```
|---id---|---name---|---course---|----school----|---endDate---|
    1        João      HTML/CSS       Driven       2021-12-01
    2        João      JavaScript     Driven       2022-01-20
   ...        ...         ...           ...          ...
```

**OBS:** a coluna `id` se refere ao id do usuário

---

### Questão 4:

Utilizando uma query, obtenha as empresas (`companies`) para as quais o usuário com id **50** trabalha atualmente. Para filtrar quem trabalha atualmente, utilize o campo `endDate` da tabela `experiences`. Se ele estiver null (`IS NULL`), significa que a pessoa ainda não encerrou a experiência dela na empresa, ou seja, está trabalhando lá.

A resposta deve vir no formato:

```
|---id---|---name---|--------role--------|----company----|---startDate---|
    1        João      Software Engineer        OLX          2020-06-01
    2        João         Consultant            IBM          2022-02-01
   ...        ...            ...                ...              ...
```

**OBS:** a coluna `id` se refere ao id do usuário