# Criando MongoDB Atlas gratuito na Azure

Procedimento para criação de uma instância FREE do MongoDB na Azure (Atlas) usando IaC Terraform.

#### Disclaimer: Utilizar somente para fins de estudo e testes da tecnologia.

### Pré-requisitos:

- [Visual Studio Code](https://code.visualstudio.com/download)
- [Terraform](https://www.terraform.io/downloads)
- Conta na [MongoDB Cloud](https://cloud.mongodb.com/)

### Roteiro:

1. Criar uma API Key com permissão de `Organization Project Creator`.
2. Criar um arquivo chamado `terraform.tfvars` na raiz do projeto (ou copiar de `terraform.tfvars.example`) definindo suas variáveis sensíveis:
   ```hcl
   org_id   = "sua_org_id_aqui"
   username = "seu_usuario_admin"
   password = "sua_senha_segura"
   ```
3. As credenciais do MongoDB Atlas devem ser carregadas de forma segura. Crie um arquivo chamado `.env` (baseado no `.env.example`) com o seguinte conteúdo:
   ```env
   MONGODB_ATLAS_PUBLIC_KEY="sua_public_key"
   MONGODB_ATLAS_PRIVATE_KEY="sua_private_key"
   ```
   Em seguida, carregue essas variáveis no seu terminal antes de executar o Terraform:
   - **Linux/macOS**:
     ```bash
     export $(grep -v '^#' .env | xargs)
     ```
   - **Windows (PowerShell)**:
     ```powershell
     Get-Content .env | Where-Object { $_ -match '^([^#=]+)=(.*)$' } | ForEach-Object {
         [Environment]::SetEnvironmentVariable($Matches[1].Trim(), $Matches[2].Trim(' "\'''), 'Process')
     }
     ```
4. Executar os comandos do Terraform em ordem:
   `terraform init`
   `terraform validate`
   `terraform plan`
   `terraform apply`
5. Logar na [MongoDB Cloud](https://cloud.mongodb.com/) e conferir o deploy do seu cluster.

## Referências

- [MongoDB Atlas Provider - Terraform Registry](https://registry.terraform.io/providers/mongodb/mongodbatlas/latest/docs)
- [Documentação Oficial do Terraform](https://developer.hashicorp.com/terraform/docs)
- [Documentação do MongoDB Atlas](https://www.mongodb.com/docs/atlas/)
- [Criar um Atlas Cluster a partir de um modelo usando Terraform](https://www.mongodb.com/pt-br/docs/mongodb-vscode/create-cluster-terraform/)
