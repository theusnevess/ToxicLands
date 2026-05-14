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
| S006 | Exploracao inicial | MVP | Em validacao | Uma area pequena navegavel |
| S007 | Ataque simples | MVP | Em validacao | Saimon pode atacar |
| S008 | Planta mutante | MVP | Em validacao | Um inimigo funcional |
| S009 | Item de filtro | MVP | Em validacao | Item pode ser coletado |
| S010 | Loop do MVP | MVP | Em validacao | Sair, lutar, coletar, retornar |
| S011 | Atmosfera inicial | Vertical Slice | A fazer | Ambiente reforca toxicidade |

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
