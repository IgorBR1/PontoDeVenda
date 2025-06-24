# 🧾 Sistema de Ponto de Venda (PDV) em PHP

Este projeto consiste em um sistema de Ponto de Venda (PDV) desenvolvido em PHP com MySQL. A aplicação permite o gerenciamento de vendas, controle de produtos, estoque, usuários e emissão de comprovantes. É uma solução ideal para pequenos e médios comércios que desejam informatizar seu processo de vendas.

## 🚀 Funcionalidades

- Cadastro e gerenciamento de produtos  
- Controle de estoque em tempo real  
- Registro de vendas com emissão de comprovante  
- Cadastro de usuários com diferentes níveis de acesso  
- Histórico de transações  
- Interface simples e intuitiva  
- Relatórios de vendas por período  

## 🛠️ Tecnologias Utilizadas

- **PHP** (backend)  
- **MySQL** (banco de dados)  
- **HTML/CSS** (frontend básico)  
- **Bootstrap** (estilização responsiva)  

## ⚙️ Instalação

1. Clone o repositório:
   ```bash
   git clone https://github.com/seu-usuario/pdv-php.git
   ```

2. Importe o banco de dados:
   - Abra o `phpMyAdmin`
   - Crie um banco de dados chamado `pdv`
   - Importe o arquivo `pdv.sql` que está na raiz do projeto

3. Configure o acesso ao banco no arquivo `config.php`:
   ```php
   $servidor = "localhost";
   $usuario = "root";
   $senha = "";
   $banco = "pdv";
   ```

4. Inicie o servidor local:
   - Use o XAMPP, WAMP ou outro servidor compatível com PHP  
   - Acesse `http://localhost/pdv/pdv` no navegador  

## 👨‍💻 Contribuidores

Projeto desenvolvido por **Daniel, Igor, Ricardo e Guilherme** como parte de um projeto de faculdade.
