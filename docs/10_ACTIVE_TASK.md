# Active Task — S014

## Slice
S014 — Dano basico do player

## Status
Em validacao

## Objetivo
Fazer a Trepadeira causar 1 dano em Saimon durante os frames ativos do ataque, usando a HUD para validar a perda de vida.

## Escopo
- Trepadeira causa 1 dano ao player durante frames ativos do attack;
- hp de Saimon diminui;
- hp nunca fica abaixo de 0;
- invulnerabilidade curta apos tomar dano;
- feedback visual minimo em Saimon;
- HUD reflete hp atualizado;
- sem morte;
- sem game over;
- sem cura;
- sem knockback complexo;
- sem audio;
- sem particulas;
- sem alteracao de filtro.

## Valores aprovados
- damage = 1;
- hurt_invuln_duration = 45;
- hurt_flash_timer = 12.

## Fora de escopo
- morte de Saimon;
- game over;
- reset de room;
- checkpoint;
- save;
- cura;
- item de cura;
- regeneracao;
- knockback complexo;
- stun longo;
- estado hurt;
- som;
- particulas;
- screen shake;
- tela piscando;
- dano por veneno;
- alteracao de filtro;
- consumo de filtro;
- armadura;
- resistencia;
- dificuldade;
- balanceamento final;
- novo HUD;
- barra de vida da Trepadeira;
- multiplos tipos de dano;
- sistema generico de combate.

## Criterios de aceitacao
- Trepadeira causa 1 dano durante frames ativos do attack;
- Trepadeira nao causa dano fora dos frames ativos;
- hp de Saimon reduz corretamente;
- HUD reflete hp atualizado;
- invulnerabilidade impede multiplos danos imediatos;
- feedback visual minimo aparece;
- hp nao fica negativo;
- hp = 0 nao dispara morte/game over;
- filtro permanece 100/100;
- loop do MVP continua funcionando;
- nenhum audio, particula, cura, morte ou sistema novo foi criado.
