# Sistema de Eventos – Modelo de Domínio e ORM (Spring Boot + JPA + H2)

Este projeto foi desenvolvido como parte do módulo de **Back end** da formação *Desenvolvedor Moderno* da DevSuperior.  
O objetivo do desafio foi implementar, do zero, um **modelo de domínio** completo para um sistema de evento acadêmico, mapeando-o para um banco de dados relacional usando **JPA/Hibernate** e **Spring Boot**, com seeding automático da base de dados em **H2**.

##  Objetivo do sistema

O sistema gerencia as informações de **participantes** e **atividades** de um evento acadêmico (palestras, cursos, oficinas, etc.), incluindo:

- Cadastro de **participantes** (nome, e-mail)
- Cadastro de **atividades** (nome, descrição, preço)
- Divisão de atividades em **blocos de horários** (data, horário de início e fim)
- Relação **Many-to-Many** entre participantes e atividades  
  (um participante pode estar em várias atividades e uma atividade pode ter vários participantes)
<img width="994" height="591" alt="Screenshot 2026-02-16 135938" src="https://github.com/user-attachments/assets/eb7c2a65-b065-4759-a2da-9379208acbbb" />
<img width="993" height="663" alt="Screenshot 2026-02-16 140119" src="https://github.com/user-attachments/assets/481d54f3-1966-48f6-8fe6-9a71881a755c" />


##  Principais conceitos trabalhados

- **Modelo de domínio** a partir de especificação textual e diagrama conceitual
- **ORM com JPA/Hibernate**
  - Relacionamento `ManyToMany` entre `Participante` e `Atividade` com tabela de junção própria
  - Relacionamento `OneToMany` / `ManyToOne` entre `Atividade` e `Bloco`
- **Seeding da base de dados**
  - Uso de `import.sql` para popular tabelas com dados de exemplo
  - Inserção consistente respeitando chaves estrangeiras e relacionamentos
- **Banco em memória H2**
  - Configuração do H2 Console para inspeção do esquema e dos dados
  - Geração automática de tabelas via JPA (`ddl-auto`)

##  Tecnologias utilizadas

- **Java 24**
- **Spring Boot 4 (snapshot)**  
  - Spring Data JPA
  - Spring Web
- **JPA / Hibernate**
- **H2 Database** (banco em memória)
- Maven

##  Modelo de domínio (resumo)

Entidades principais:

- `Participante`
  - `id`, `nome`, `email`
  - Relação `ManyToMany` com `Atividade`

- `Atividade`
  - `id`, `nome`, `descricao`, `preco`
  - Relação `ManyToMany` com `Participante`
  - Relação `OneToMany` com `Bloco`

- `Bloco`
  - `id`, `inicio`, `fim`
  - Relação `ManyToOne` com `Atividade`

A relação muitos-para-muitos entre participantes e atividades é mapeada com uma **tabela de junção** (`tb_participante_atividade`), configurada via `@JoinTable`.

## ▶️ Como executar o projeto

1. Clonar o repositório:
   ```bash
   git clone https://github.com/SEU_USUARIO/eventos-modelo-dominio-orm-springboot.git
