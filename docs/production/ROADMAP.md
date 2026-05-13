# ToxicLands - Roadmap Oficial

## Proposito

Este roadmap define a ordem oficial de desenvolvimento do ToxicLands.

ToxicLands e um jogo 16-bit dark rural biopunk horror feito em GameMaker/GML.
O desenvolvimento deve preservar atmosfera, legibilidade, performance, escopo de MVP e a identidade de Saimon como um homem comum.

Regra central:

> Isso melhora ToxicLands?
> Ou isso apenas adiciona complexidade?

---

## Filosofia De Producao

ToxicLands nao sera desenvolvido:

- feature-first;
- asset-first;
- graphics-first.

ToxicLands sera desenvolvido:

- vertical-slice-first;
- MVP first;
- um sistema por vez;
- tarefas pequenas;
- validacao frequente.

Cada entrega deve aproximar o jogo de uma fatia jogavel e atmosferica.

---

## Ordem Real De Producao

### 1. Infraestrutura, Workflow, Pipeline

Antes de expandir gameplay, o projeto precisa ter base confiavel:

- documentacao organizada;
- skills do Codex;
- regras de producao;
- estrategia de branches;
- backlog controlado;
- slice tracker;
- milestones;
- GameMaker project limpo.

### 2. Movimento, Camera, Exploracao

Primeiro bloco jogavel:

- Saimon visivel;
- movimento simples;
- camera estavel;
- leitura clara em pixel art;
- exploracao basica em sala de teste.

### 3. Combate, 1 Inimigo, 1 Item, 1 Loop

Primeiro loop de MVP:

- ataque simples;
- dano simples;
- uma planta mutante;
- um componente de filtro;
- objetivo de coleta;
- retorno ao ponto seguro.

### 4. Atmosfera, Audio, Polimento Inicial

Depois do loop jogavel:

- chuva;
- vento;
- respiracao/filtro;
- paleta mais consistente;
- feedback audiovisual minimo;
- polimento de legibilidade.

---

## Estrutura De Fases

```text
Pre-Production
  -> Foundation
  -> MVP
  -> Vertical Slice
  -> Alpha
  -> Beta
  -> Release Candidate
```

---

# 1. Pre-Production

## Objetivo

Definir identidade, limites e metodo de trabalho.

## Entregas

- AGENTS.md com identidade e regras gerais.
- Lore Bible.
- Game Design Document.
- Art Bible.
- MVP Scope.
- Codex Workflow.
- Active Task.
- Skills do projeto.
- Estrutura de producao.

## Criterio De Saida

Pre-Production termina quando:

- o projeto tem identidade clara;
- o MVP esta definido;
- os documentos principais existem;
- o Codex tem regras especificas do projeto;
- nao ha duvida sobre engine, protagonista ou escopo proibido.

## Status

Em andamento, com base documental ja criada.

---

# 2. Foundation

## Objetivo

Criar uma base tecnica simples e jogavel em GameMaker.

## Entregas

- projeto GameMaker abre sem erro;
- `rm_test` existe;
- Saimon aparece em tela;
- movimento basico funciona;
- camera basica segue Saimon sem tremedeira;
- estrutura de producao existe em `docs/production/`.

## Sistemas Permitidos

- sala de teste;
- placeholder visual;
- objeto do jogador;
- movimento;
- camera minima;
- validacao de leitura.

## Sistemas Proibidos Nesta Fase

- combate;
- inimigos;
- inventario;
- HUD;
- dialogo;
- crafting;
- shaders;
- IA complexa;
- polimento visual final.

## Criterio De Saida

Foundation termina quando:

- Saimon pode se mover em `rm_test`;
- a camera e estavel;
- o projeto roda sem erros;
- a base permite comecar exploracao e colisao sem reorganizacao grande.

---

# 3. MVP

## Objetivo

Criar a primeira versao jogavel do loop principal.

## MVP Atual

Saimon sai da Vila dos Filtrados, explora um campo toxico, derrota uma planta mutante, coleta um componente de filtro e retorna.

## Entregas

- sala da Vila dos Filtrados;
- sala do Campo Toxico;
- movimento com colisao simples;
- transicao entre salas;
- ataque simples;
- vida do jogador;
- uma planta mutante;
- dano basico;
- item de componente de filtro;
- coleta;
- retorno ao ponto seguro;
- HUD minimo se aprovado pelo active task.

## Criterio De Saida

MVP termina quando:

- o loop pode ser jogado do inicio ao fim;
- ha uma condicao clara de objetivo completo;
- nao ha sistemas grandes nao aprovados;
- o jogo ainda preserva atmosfera e vulnerabilidade.

---

# 4. Vertical Slice

## Objetivo

Transformar o MVP em uma fatia representativa do jogo final.

## Entregas

- primeira versao atmosferica da Vila dos Filtrados;
- primeira versao atmosferica do Campo Toxico;
- audio ambiente inicial;
- identidade visual mais consistente;
- feedback de combate mais legivel;
- melhor ritmo de exploracao;
- sinais de toxicidade ambiental;
- narracao ambiental minima.

## Criterio De Saida

Vertical Slice termina quando:

- uma pessoa externa entende a proposta do jogo em poucos minutos;
- o loop principal funciona;
- o visual comunica ToxicLands;
- audio e atmosfera reforcam isolamento e contaminacao;
- ainda nao ha feature creep.

---

# 5. Alpha

## Objetivo

Expandir conteudo e sistemas principais mantendo estabilidade.

## Entregas Possiveis

- mais areas pequenas;
- mais inimigos simples;
- refinamento de combate;
- filtros e sobrevivencia;
- itens essenciais;
- checkpoints ou retorno seguro, se aprovado;
- mais narracao ambiental.

## Criterio De Entrada

Alpha so comeca depois que o vertical slice estiver validado.

## Criterio De Saida

Alpha termina quando:

- todos os sistemas principais existem;
- o jogo e jogavel em sequencia;
- conteudo ainda pode ser bruto, mas funcional;
- bugs criticos estao controlados.

---

# 6. Beta

## Objetivo

Estabilizar, balancear e corrigir.

## Entregas

- correcoes de bugs;
- ajuste de dificuldade;
- melhoria de legibilidade;
- otimizacao;
- revisao de audio;
- revisao de UX;
- cortes de escopo se necessario.

## Regra Da Beta

Beta nao e fase para inventar sistemas grandes.

## Criterio De Saida

Beta termina quando:

- nao ha bugs bloqueadores conhecidos;
- o jogo esta legivel;
- performance esta aceitavel;
- escopo esta congelado.

---

# 7. Release Candidate

## Objetivo

Preparar build candidata a lancamento.

## Entregas

- build estavel;
- validacao final;
- checklist de regressao;
- ajustes pequenos;
- empacotamento;
- documentacao de release.

## Criterio De Saida

Release Candidate termina quando:

- a build pode ser enviada sem mudancas de sistema;
- apenas hotfixes criticos sao permitidos;
- `main` contem uma versao estavel.

---

# Regras De Corte

Nao fazer agora:

- shaders avancados;
- procedural generation;
- multiplayer;
- crafting complexo;
- arvore de skills;
- sistema gigante de IA;
- inventario enorme;
- dialogos ramificados gigantes;
- multiplos bosses;
- grandes cinematics.

---

# Regra Operacional Final

Toda tarefa deve responder:

1. Qual slice isto melhora?
2. Isto aproxima o MVP?
3. Isto preserva atmosfera?
4. Isto mantem Saimon vulneravel?
5. Isto e pequeno o suficiente para validar rapido?

Se a resposta for fraca, a tarefa nao entra no roadmap ativo.
