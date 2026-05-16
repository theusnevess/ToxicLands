# Active Task - S012A

## Slice
S012A - Animation Prototype Pass do MVP v1

## Status
Em validacao

## Objetivo
Adicionar animacoes prototipo minimas para Saimon e Trepadeira, usando sprites separados por estado com subimages internas, sem alterar gameplay.

## Escopo
- criar `spr_saimon_idle_proto` com 2 frames;
- criar `spr_saimon_walk_proto` com ate 4 frames;
- criar `spr_saimon_attack_proto` com 3 frames;
- criar `spr_trepadeira_idle_proto` com 2 frames;
- criar `spr_trepadeira_telegraph_proto` com 2 frames;
- criar `spr_trepadeira_attack_proto` com 2 frames;
- criar `spr_trepadeira_dead_proto` com 1 frame;
- aplicar troca simples de `sprite_index`;
- usar `image_speed`;
- manter mascaras fixas;
- preservar loop funcional de `rm_test`.

## Fora de Escopo
- spritesheet final completo;
- hurt/dead funcional de Saimon;
- arquivos reservados vazios;
- animacoes com 8+ frames;
- animacao cinematografica;
- particulas;
- efeitos de ataque;
- trails;
- impact flashes;
- som;
- mudanca de hitbox;
- mudanca de timing;
- mudanca de IA;
- mudanca de dano;
- novo sistema de estados;
- animation manager generico;
- nova room;
- novos inimigos;
- novas mecanicas;
- HUD novo.

## Criterios de Aceitacao
- Saimon idle/walk/attack aparecem corretamente;
- Trepadeira idle/telegraph/attack/dead aparecem corretamente;
- loop do MVP continua funcionando;
- nenhum timing foi alterado;
- nenhuma hitbox foi alterada;
- nenhum dano, IA ou cooldown foi alterado;
- nenhum sistema novo foi criado;
- sem audio, particulas ou VFX;
- Saimon continua legivel e nao heroico;
- Trepadeira continua legivel como flora hostil.
