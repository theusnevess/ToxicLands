# ToxicLands - Branching Strategy

## Branches Oficiais

```text
main
develop
feature/*
hotfix/*
```

---

# main

## Proposito

`main` contem apenas builds estaveis.

## Regras

- nao recebe commits experimentais;
- nao recebe tarefas incompletas;
- nao recebe sistemas quebrados;
- deve abrir no GameMaker sem erro;
- deve representar um ponto seguro do projeto.

## Entrada Permitida

- merge de `develop` apos validacao;
- `hotfix/*` quando houver correcao critica.

---

# develop

## Proposito

`develop` e a branch de integracao atual.

## Regras

- recebe features pequenas;
- deve permanecer jogavel sempre que possivel;
- pode conter trabalho recente ainda nao promovido para `main`;
- nao deve acumular grandes mudancas sem validacao.

---

# feature/*

## Proposito

Branches de tarefas pequenas.

## Exemplos

```text
feature/player-movement
feature/basic-camera
feature/mutant-plant
feature/filter-component
```

## Regras

- uma feature por branch;
- escopo claro;
- sem sistemas extras;
- merge para `develop`;
- apagar depois do merge, se apropriado.

---

# hotfix/*

## Proposito

Corrigir problemas criticos em build estavel.

## Exemplos

```text
hotfix/project-does-not-open
hotfix/movement-crash
```

## Regras

- apenas correcao critica;
- escopo minimo;
- merge em `main`;
- replicar em `develop` se necessario.

---

# Fluxo Padrao

```text
main
  -> develop
      -> feature/small-task
      -> merge back to develop
  -> validate
  -> merge develop into main when stable
```

---

# Regras De Commit

Usar mensagens pequenas e objetivas:

```text
feat(player): add basic movement
fix(camera): remove jitter
docs(production): add roadmap
chore(gamemaker): register room
```

Commits devem conter apenas mudancas relacionadas ao mesmo objetivo.
