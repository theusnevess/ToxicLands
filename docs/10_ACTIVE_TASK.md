# Active Task - S010

## Slice
S010 - Loop do MVP em `rm_test`

## Status
Em validacao

## Objetivo
Fechar o loop minimo do MVP dentro de `rm_test`: sair -> atravessar -> encontrar ameaca -> coletar componente -> retornar ao inicio.

## Escopo
- criar `obj_mvp_return_zone`;
- adicionar exatamente 1 instancia em `rm_test`;
- posicionar na area inicial, preferencialmente perto de `x 96`, `y 180`;
- se isso ficar muito sobreposto ao spawn, usar `x 96`, `y 220` ou `x 128`, `y 180`;
- criar uma zona aproximada de 64x48;
- verificar `global.has_filter_component`;
- se true, definir `global.mvp_loop_complete = true`;
- inicializar `global.mvp_loop_complete = false` com protecao, se ainda nao existir;
- usar feedback debug minimo com `show_debug_message("MVP LOOP COMPLETE")` e/ou texto simples `LOOP COMPLETE`.

## Fora de escopo
- nova room;
- Vila dos Filtrados final;
- Campo Toxico final;
- transicao real de sala;
- fade in/fade out;
- porta oficial;
- cutscene;
- dialogo;
- NPC;
- tela de vitoria;
- HUD completo;
- objetivo textual persistente;
- quest system;
- save system;
- checkpoint;
- mapa;
- inventario;
- crafting;
- loot;
- recompensa;
- upgrade;
- audio;
- particulas;
- novos inimigos;
- novo layout;
- reestruturacao de S006;
- reestruturacao de S007;
- reestruturacao de S008;
- reestruturacao de S009;
- manager generico;
- sistema de eventos global.

## Criterios de aceitacao
- `obj_mvp_return_zone` existe;
- exatamente 1 zona de retorno existe em `rm_test`;
- zona fica na area inicial;
- zona nao bloqueia movimento;
- entrar na zona sem `global.has_filter_component` nao conclui;
- entrar na zona com `global.has_filter_component == true` define `global.mvp_loop_complete = true`;
- feedback e debug e minimo;
- nao ha nova room;
- nao ha transicao real;
- nao ha dialogo, NPC, HUD final ou quest system;
- S006-S009 nao sao reestruturados.
