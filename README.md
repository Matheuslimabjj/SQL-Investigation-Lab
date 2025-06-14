# SQL Security Investigation Lab

Este projeto faz parte do desafio de certificação do curso **“Fundamentos de Linux e SQL”** do programa **Google Cybersecurity Certificate (Coursera)**. O foco principal está em aplicar filtros SQL para detectar incidentes de segurança, extraindo informações críticas de bancos de dados de login e funcionários.

---

## 📌 Descrição do Projeto

Neste projeto de portfólio de segurança cibernética, executei uma análise detalhada de dados de login e registros de funcionários usando SQL. A tarefa simulou um cenário real em que um analista de segurança identifica possíveis brechas no sistema utilizando operadores como `AND`, `OR`, `NOT` e `LIKE`. Isso demonstra minha habilidade em realizar investigações de segurança da informação com uso avançado de SQL.

---

## 🧠 Objetivos Técnicos

- Identificar tentativas de login com falha após o expediente.
- Investigar acessos em datas críticas.
- Localizar logins provenientes de fora do México.
- Selecionar funcionários de Marketing no prédio East.
- Recuperar dados de funcionários dos departamentos de Finanças ou Vendas.
- Excluir funcionários da equipe de TI para priorização de atualizações.

---

## 🔍 Consultas SQL e Explicações

### 1. After-hours Failed Login Attempts
```sql
SELECT * FROM log_in_attempts
WHERE login_time > '18:00:00'
AND success = 0;
```
Esta consulta retorna tentativas de login fracassadas ocorridas após as 18h, fora do horário comercial.

---

### 2. Login Attempts on Specific Dates
```sql
SELECT * FROM log_in_attempts
WHERE login_date = '2022-05-09'
OR login_date = '2022-05-08';
```
Filtra acessos nos dias 08 e 09 de maio de 2022, investigando incidentes em datas específicas.

---

### 3. Login Attempts Outside Mexico
```sql
SELECT * FROM log_in_attempts
WHERE country NOT LIKE '%MEX%';
```
Exclui todas as tentativas de login originadas do México (incluindo "MEX" e "MEXICO"), focando em acessos externos.

---

### 4. Employees in Marketing (East Building)
```sql
SELECT * FROM employees
WHERE department = 'Marketing'
AND office LIKE 'East%';
```
Retorna funcionários do departamento de Marketing localizados em qualquer unidade do prédio East.

---

### 5. Employees in Finance or Sales
```sql
SELECT * FROM employees
WHERE department = 'Finance'
OR department = 'Sales';
```
Seleciona todos os registros de funcionários vinculados aos departamentos Financeiro ou Comercial.

---

### 6. Employees not in IT
```sql
SELECT * FROM employees
WHERE department NOT LIKE '%Tecnologia da Informação%';
```
Recupera todos os funcionários que não estão no departamento de TI, para fins de atualização prioritária.

---

## 🧾 Técnicas Aplicadas

- **LIKE**: Usado para buscas por padrão textual (ex: 'East%').
- **NOT**: Exclui registros com condições específicas (ex: não-TI, fora do México).
- **AND/OR**: Combina múltiplos critérios de filtragem.
- **Filtro por hora/data**: Identifica eventos relevantes com base em `login_time` e `login_date`.

---

## 📘 Resumo do Projeto

Este laboratório prático demonstra como operadores SQL podem ser aplicados de forma estratégica para investigar falhas de segurança em sistemas corporativos. Através da manipulação de dados com `AND`, `OR`, `NOT` e `LIKE`, foi possível identificar comportamentos fora do esperado, priorizar departamentos e planejar medidas corretivas. Esta atividade representa minha capacidade analítica na detecção de ameaças e no suporte à segurança organizacional via SQL.
