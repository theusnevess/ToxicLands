# Vertical Slice Prototype Summary

## Status

Prototipo funcional aprovado ate S016.

Este marco registra o estado atual como:

```text
Vertical slice prototipo funcional do MVP v1
```

`rm_test` e o vertical slice tecnico atual. Ele valida sistemas e fluxo de producao, mas ainda nao representa a Vila dos Filtrados final nem o Campo Toxico final.

## Loop Validado

```text
sair -> atravessar -> combater/evitar Trepadeira -> coletar componente -> retornar -> falhar/resetar se HP chegar a 0
```

## Sistemas Implementados

- movimento;
- colisao;
- camera;
- exploracao;
- ataque de Saimon;
- Trepadeira Sensora;
- dano no inimigo;
- dano no player;
- HUD minima de vida e filtro;
- item de filtro;
- zona de retorno;
- morte/reset minimo;
- visual tematico;
- atmosfera visual;
- animacoes prototipo.

## Escopo Nao Implementado

- audio;
- dialogo;
- NPCs;
- transicao real entre salas;
- Vila dos Filtrados final;
- Campo Toxico final;
- save;
- checkpoint;
- inventario;
- crafting;
- menu;
- polimento final.

## Excecoes Aprovadas

- Sprites extras/direcionais de S012A foram aceitos como excecao controlada.
- Esses sprites devem permanecer por enquanto e nao devem ser removidos em limpezas automaticas.

## Dividas Tecnicas

- A nomenclatura `run` em sprites de Saimon e divida tecnica futura, pois o movimento atual ainda representa deslocamento prototipo e nao uma definicao final de animacao.
- `rm_test` concentra validacao tecnica do loop; uma separacao real entre Vila e Campo deve acontecer em slice proprio.
- O reset de flags globais em `obj_saimon/Create_0.gml` e provisorio ate existir um manager de room/sessao aprovado.
- A HUD atual e prototipo minimo, nao UI final.
- As animacoes atuais sao prototipo e nao spritesheet final completo.

## Bugs Conhecidos / Pontos De Atencao

- O build Linux pode gerar `game/ToxicLands/options/linux/` como arquivo temporario nao oficial.
- Dependencias Linux/AppImage ja falharam em ambiente local durante empacotamento e devem ser tratadas fora do escopo de gameplay.
- A validacao final ainda depende de teste manual no GameMaker apos cada checkpoint.

## Proximas Opcoes De Producao

- audio atmosferico minimo;
- dialogo/logs ambientais;
- separacao real entre salas;
- refinamento visual controlado;
- fluxo inicial da Vila dos Filtrados;
- Campo Toxico final do MVP;
- QA e estabilizacao do loop.
