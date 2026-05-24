# Active Task - S017

## Slice
S017 - Commit checkpoint + documentacao do vertical slice prototipo

## Status
Em validacao

## Objetivo
Consolidar documentacao e preparar checkpoint de producao para o vertical slice prototipo funcional do MVP v1, sem alterar gameplay.

## Escopo
- atualizar `docs/production/SLICE_TRACKER.md`;
- marcar S001 a S016 como concluidos, incluindo slices intermediarios formalizados;
- registrar S017 como em validacao;
- criar `docs/production/VERTICAL_SLICE_PROTOTYPE_SUMMARY.md`;
- registrar estado atual do prototipo;
- registrar sistemas implementados;
- registrar sistemas ainda ausentes;
- registrar excecoes aprovadas;
- registrar dividas tecnicas;
- confirmar `git status`;
- confirmar `git diff --check`;
- recomendar mensagem de commit checkpoint.

## Fora de escopo
- audio;
- dialogo;
- NPC;
- nova room;
- Vila final;
- Campo final;
- novos inimigos;
- novos itens;
- polimento visual;
- refatoracao;
- mudanca de logica;
- mudanca de sprites;
- mudanca de balanceamento;
- mudanca de camera;
- mudanca de HUD.

## Criterios de aceitacao
- `SLICE_TRACKER.md` reflete S001 a S016 como concluidos;
- `10_ACTIVE_TASK.md` aponta para S017;
- resumo do vertical slice existe;
- excecao dos sprites extras/direcionais esta registrada;
- divida tecnica da nomenclatura `run` esta registrada;
- sistemas ausentes estao registrados;
- `git diff --check` passa;
- nenhuma logica de gameplay foi alterada em S017;
- retorno informa `git status` e recomendacao de commit.
