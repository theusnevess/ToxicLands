# Active Task — S018B

## Slice
S018B — Diálogo/log ambiental mínimo

## Status
Em validacao

## Objetivo
Adicionar um único log ambiental Verdant, autocontido, sem sistema de diálogo amplo.

## Escopo
- criar obj_env_log_verdant;
- criar spr_env_log_verdant_broken 32x32;
- adicionar exatamente 1 instância em rm_test;
- posicionar preferencialmente em x 420, y 170;
- se houver overlap ou leitura ruim, usar x 432, y 144;
- mostrar prompt "E — Ler" quando Saimon estiver próximo;
- E abre texto;
- E fecha texto;
- afastar-se fecha texto;
- enquanto texto estiver aberto, bloquear movimento/ataque de Saimon;
- não pausar o mundo inteiro;
- adicionar is_reading = false em obj_saimon;
- is_dead deve ter prioridade sobre is_reading;
- desenhar caixa simples no Draw GUI do próprio log.

## Texto aprovado
VERDANT SYSTEMS — UNIDADE DE CAMPO 04

Biofiltros apresentam resposta estável à umidade local.
A adaptação do solo excedeu as previsões.

Não remover amostras vivas.

## Fora de escopo
- NPC;
- diálogo com Saimon;
- múltiplos logs;
- menu de arquivos;
- codex;
- journal;
- quest system;
- árvore de diálogo;
- retratos;
- áudio de interação;
- typing effect;
- cutscene;
- nova room;
- câmera especial;
- pausa global complexa;
- item novo;
- recompensa mecânica;
- explicação sobre MOTHER;
- explicação sobre Helion;
- explicação sobre Convergência;
- localização/tradução multilíngue;
- JSON externo;
- dialogue manager;
- alteração de Trepadeira;
- alteração de item;
- alteração de retorno;
- alteração de atmosfera;
- alteração de HUD mínima.

## Critérios de aceitação
- obj_env_log_verdant existe;
- spr_env_log_verdant_broken existe;
- exatamente 1 instância do log existe em rm_test;
- log fica antes da Trepadeira e não bloqueia o caminho;
- prompt "E — Ler" aparece quando Saimon está perto;
- pressionar E abre o texto;
- pressionar E novamente fecha o texto;
- afastar-se fecha o texto;
- Saimon não se move nem ataca enquanto lê;
- is_dead continua tendo prioridade sobre leitura;
- texto exibido é o texto aprovado;
- não há NPC, áudio, cutscene, dialogue manager ou quest system;
- loop completo continua funcionando.
