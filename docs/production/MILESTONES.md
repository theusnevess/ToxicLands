# ToxicLands - Milestones

## Proposito

Milestones definem pontos de entrega verificaveis. Cada milestone deve produzir um estado mais estavel, mais jogavel ou mais organizado do projeto.

---

# M0 - Producao Organizada

## Objetivo

Criar a estrutura profissional de producao.

## Entregas

- `docs/production/ROADMAP.md`
- `docs/production/MILESTONES.md`
- `docs/production/BACKLOG.md`
- `docs/production/SLICE_TRACKER.md`
- `docs/production/BRANCHING_STRATEGY.md`
- `docs/production/PRODUCTION_RULES.md`

## Criterio De Conclusao

- arquivos existem;
- roadmap define fases oficiais;
- backlog tem regra de entrada;
- branching strategy esta documentada;
- slice tracker pode ser usado pelo Codex.

---

# M1 - Foundation Jogavel

## Objetivo

Garantir que o projeto GameMaker roda com Saimon em uma sala de teste.

## Entregas

- `rm_test`
- `spr_saimon_placeholder`
- `obj_saimon`
- movimento basico;
- camera basica;
- validacao sem tremedeira.

## Criterio De Conclusao

- projeto abre no GameMaker;
- Saimon aparece;
- WASD e setas funcionam;
- camera acompanha de forma estavel;
- nenhum sistema extra foi adicionado.

---

# M2 - Exploracao Basica

## Objetivo

Transformar a base de movimento em exploracao simples.

## Entregas

- colisao simples;
- limites de sala claros;
- primeira sala de vila ou campo, se aprovada;
- leitura visual minima do ambiente.

## Criterio De Conclusao

- jogador navega sem atravessar bloqueios principais;
- sala comunica escala e direcao;
- nao ha combate ainda, salvo se nova task aprovar.

---

# M3 - Primeiro Conflito

## Objetivo

Adicionar combate minimo e um inimigo.

## Entregas

- ataque simples;
- vida do jogador;
- uma planta mutante;
- dano basico;
- morte/desativacao do inimigo.

## Criterio De Conclusao

- Saimon pode derrotar uma planta mutante;
- combate e legivel;
- nao existe sistema complexo de combo, skill tree ou IA avancada.

---

# M4 - Primeiro Loop De MVP

## Objetivo

Conectar combate, item e retorno.

## Entregas

- componente de filtro;
- coleta;
- objetivo simples;
- retorno a area segura;
- conclusao do loop.

## Criterio De Conclusao

- jogador consegue sair, explorar, lutar, coletar e retornar;
- o loop funciona do inicio ao fim.

---

# M5 - Atmosfera Inicial

## Objetivo

Adicionar atmosfera sem sacrificar legibilidade.

## Entregas

- audio ambiente inicial;
- chuva ou vento simples;
- paleta mais consistente;
- detalhes ambientais leves;
- polimento inicial de leitura.

## Criterio De Conclusao

- ambiente reforca isolamento e contaminacao;
- performance permanece estavel;
- nada vira polimento final prematuro.
