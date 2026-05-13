# ToxicLands - Production Rules

## Regra Mais Importante

Sempre perguntar:

```text
Isso melhora ToxicLands?
ou
Isso apenas adiciona complexidade?
```

Se a resposta for "complexidade", a tarefa deve ser rejeitada, adiada ou reduzida.

---

# Filosofia Oficial

ToxicLands e vertical-slice-first.

Nao desenvolver:

- feature-first;
- asset-first;
- graphics-first.

Desenvolver:

- MVP first;
- slices pequenos;
- validacao frequente;
- implementacao minima;
- atmosfera e legibilidade sempre.

---

# Ordem De Producao

1. infraestrutura;
2. workflow;
3. pipeline;
4. movimento;
5. camera;
6. exploracao;
7. combate;
8. um inimigo;
9. um item;
10. um loop;
11. atmosfera;
12. audio;
13. polimento inicial.

---

# Regras De Implementacao

Cada tarefa deve:

- estar aprovada em `docs/10_ACTIVE_TASK.md` ou documento equivalente;
- ser pequena;
- preservar GameMaker/GML;
- preservar Saimon como homem comum;
- evitar overengineering;
- ter criterio de validacao;
- informar arquivos alterados.

---

# Nao Fazer Agora

Ainda nao implementar:

- shaders avancados;
- procedural generation;
- multiplayer;
- crafting complexo;
- arvore de skills;
- sistema gigante de IA;
- inventario enorme;
- dialogos ramificados gigantes;
- sistemas de boss;
- cinematicas;
- frameworks genericos.

---

# Ritmo Operacional

## Antes De Codar

- ler `AGENTS.md`;
- ler o active task;
- conferir source of truth relevante;
- limitar escopo;
- identificar arquivos afetados.

## Durante A Tarefa

- alterar o minimo necessario;
- manter codigo legivel;
- evitar alteracoes nao relacionadas;
- preservar estrutura GameMaker.

## Depois Da Tarefa

- validar arquivos;
- checar `git status`;
- resumir mudancas;
- explicar como testar no GameMaker;
- registrar riscos.

---

# Criterios De Qualidade

Uma mudanca so e aceitavel se:

- melhora o MVP ou a fundacao;
- nao quebra atmosfera;
- nao aumenta escopo sem necessidade;
- nao contradiz lore;
- nao transforma Saimon em heroi escolhido;
- nao cria dependencia pesada;
- nao prejudica performance.

---

# Decisao De Corte

Quando uma tarefa parecer grande demais:

1. dividir em slices menores;
2. implementar o primeiro comportamento observavel;
3. validar;
4. so entao expandir.
