# ⚡ High-Performance HTTP Server: C + Lua + Pallene

Servidor HTTP de alta performance escrito em **C**, explorando a integração de baixo nível entre chamadas de sistema POSIX, a API C de **Lua** e a linguagem tipada estática **Pallene** (desenvolvida na PUC-Rio pelos criadores de Lua).

[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](./LICENSE)

---

## 🎯 Conceito e Arquitetura

O projeto demonstra como construir um servidor híbrido onde:
1. **Núcleo de Rede (C):** Responsável pelo gerenciamento de sockets TCP POSIX, aceitação de conexões e manipulação de buffers de entrada e saída.
2. **Camada de Scripting (Lua):** Permite roteamento dinâmico e renderização de respostas HTML em tempo de execução sem necessidade de recompilar o binário em C.
3. **Cálculo Numérico Acelerado (Pallene):** Funções críticas de cálculo (ex: indicadores financeiros) são compiladas via Pallene, atingindo performance próxima ao C nativo com a ergonomia de Lua.

---

## 📂 Estrutura dos Arquivos

```text
WebServer-C-Lua-Pallene/
├── main.c             # Servidor HTTP socket em C e ponte com a Lua C API
├── finance.lua        # Script Lua para renderização de páginas e formatação
├── method.pln         # Módulo Pallene tipado para cálculos financeiros
├── method.d.pln       # Arquivo de definição de tipos Pallene
├── Makefile           # Automação de compilação (gcc + lualib)
└── LICENSE            # Licença MIT
```

---

## 🚀 Como Compilar e Executar

### Pré-requisitos
* Compilador C (`gcc` ou `clang`)
* Bibliotecas de desenvolvimento Lua 5.4 (`liblua5.4-dev`)

### Compilação
```bash
# Compilar o servidor
make

# Iniciar o servidor HTTP na porta 8080
./server
```

Acesse no navegador: `http://localhost:8080`

---

## 👤 Autor

* **Felipe Junqueira Leite**  
  * GitHub: [@felipejunqueira](https://github.com/felipejunqueira)
