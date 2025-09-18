# 🗂️ Script de Backup com Robocopy

Este script em **Batch (Windows)** realiza o backup automático de arquivos de uma pasta de origem para um destino de rede, utilizando o comando `robocopy`. Ele foi projetado para garantir integridade, eficiência e rastreabilidade por meio de logs com timestamp.

## ⚙️ Funcionalidades

- Espelhamento completo da estrutura de diretórios (`/MIR`)
- Cópia reiniciável para ambientes instáveis (`/Z`)
- Tentativas automáticas em caso de falha (`/R:3 /W:5`)
- Geração de log detalhado com data e hora
- Exibição de progresso e tempo estimado (`/ETA`)
- Compatível com Windows 10/11

## 📁 Estrutura

- **Origem:** `C:\CAMINHO\DA\PASTA\ORIGEM`
- **Destino:** `\\SERVIDOR\CAMINHO\DA\PASTA\DESTINO`
- **Logs:** Gerados em `C:\CAMINHO\COM\A\PASTA\LOG` com nome baseado no timestamp

## 📝 Exemplo de uso

Basta executar o script com duplo clique ou agendar via **Agendador de Tarefas** do Windows para backups automáticos.

## 🚨 Observações

- O parâmetro `/MIR` **exclui arquivos no destino** que foram removidos da origem.
- Certifique-se de que o destino de rede esteja acessível e com permissões adequadas.
- Para ambientes com Samba/Linux, verifique compatibilidade SMB com Windows 11.

## 📌 Requisitos

- Windows com suporte a `robocopy`
- Permissões de leitura e escrita nas pastas de origem e destino

---

Criado por [Daniel] – Ilhéus, BA 🇧🇷  
Backup confiável, simples e direto ao ponto.

