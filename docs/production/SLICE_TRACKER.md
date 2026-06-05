# ToxicLands - Slice Tracker

## Proposito

Este arquivo acompanha slices oficiais. Cada slice deve ser pequeno, verificavel e alinhado ao MVP.

---

# Regras De Slice

Um slice oficial deve ter:

- objetivo unico;
- arquivos provaveis;
- fora de escopo explicito;
- criterio de aceitacao;
- validacao no GameMaker quando aplicavel.

---

# Slices Oficiais

| ID | Slice | Fase | Status | Criterio Principal |
| --- | --- | --- | --- | --- |
| S001 | Estrutura GameMaker inicial | Foundation | Concluido | Projeto abre e tem sala base |
| S002 | Placeholder de Saimon | Foundation | Concluido | Saimon visivel em `rm_test` |
| S003 | Movimento basico | Foundation | Concluido | WASD e setas movem Saimon |
| S004 | Camera basica | Foundation | Concluido | Camera segue sem tremedeira |
| S005 | Colisao simples | Foundation/MVP | Concluido | Saimon respeita bloqueios |
| S006 | Exploracao inicial | MVP | Concluido | Uma area pequena navegavel |
| S007 | Ataque simples | MVP | Concluido | Saimon pode atacar |
| S008 | Planta mutante | MVP | Concluido | Um inimigo funcional |
| S009 | Item de filtro | MVP | Concluido | Item pode ser coletado |
| S010 | Loop do MVP | MVP | Concluido | Sair, lutar, coletar, retornar |
| S011A | Visual Prototype Pass | Vertical Slice | Concluido | Placeholders tematicos sem alterar gameplay |
| S011A.1 | Visual Readability & Quality Pass | Vertical Slice | Concluido | Assets v2 refinam legibilidade sem alterar gameplay |
| S011B | Atmosfera inicial visual | Vertical Slice | Concluido | Chuva e overlay discretos sem alterar gameplay |
| S012A | Animation Prototype Pass | Vertical Slice | Concluido | Animacoes prototipo sem alterar gameplay |
| S013 | HUD minima: vida + filtro | MVP | Concluido | HUD minima exibe vida e filtro sem alterar gameplay |
| S014 | Dano basico do player | MVP | Concluido | Trepadeira causa dano apenas nos frames ativos do ataque |
| S015 | Marco intermediario sem implementacao propria | MVP | Concluido | Sem slice de codigo registrado; consolidado no checkpoint S017 |
| S016 | Morte/reset minimo do player | MVP | Concluido | Falha minima em hp zero e reset por R |
| S017 | Commit checkpoint + documentacao do vertical slice prototipo | Production | Concluido | Vertical slice prototipo documentado e checkpoint registrado |
| S018B | Dialogo/log ambiental minimo | Vertical Slice | Em validacao | Um log Verdant autocontido sem manager de dialogo |

---

# Marco Atual - S017

`rm_test` e o vertical slice tecnico atual. Ele valida o loop do MVP v1, mas ainda nao representa a Vila dos Filtrados final nem o Campo Toxico final.

## Excecoes Aprovadas

- Sprites extras/direcionais de S012A foram aceitos como excecao controlada.
- A nomenclatura `run` em sprites de Saimon e uma divida tecnica futura.

## Sistemas Ausentes Registrados

- audio;
- dialogo;
- NPCs;
- transicao real entre salas;
- Vila final;
- Campo final;
- save;
- checkpoint;
- inventario;
- crafting;
- menu;
- polimento final.

---

# Template De Slice

```text
ID:
Nome:
Fase:
Objetivo:
Escopo:
Fora de escopo:
Arquivos previstos:
Criterios de aceitacao:
Validacao:
Status:
```

---

# Regra De Encerramento

Um slice so pode ser marcado como concluido quando:

- abre no GameMaker sem erro;
- cumpre criterios de aceitacao;
- nao adiciona sistemas fora do escopo;
- nao quebra slices anteriores;
- foi descrito no resumo final da tarefa.
