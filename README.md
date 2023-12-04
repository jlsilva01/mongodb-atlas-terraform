# Criando MongoDB Atlas gratuito na Azure

Procedimento para criação de uma instância FREE do MongoDB na Azure (Atlas) usando IaC Terraform.

#### Disclaimer: Utilizar somente para fins de estudo e testes da tecnologia

### Pré-requisitos:

- [Visual Studio Code](https://code.visualstudio.com/download)
- [Terraform]([code.visualstudio.com/download](https://www.terraform.io/downloads))
- Conta na [MongoDB Cloud](https://cloud.mongodb.com/)

### Roteiro:

1. Criar uma API Key com permissão de "Organization Project Creator" e atualizar as informações no arquivo provider.tf.
2. Atualizar o arquivo variables.tf com os dados da sua ORG ID, project, cluster name e demais informações que serão utilizados para criar o seu ambiente.
4. Executar o código Terraform (plan | apply).
5. Logar na na [MongoDB Cloud](https://cloud.mongodb.com/) e conferir o deploy do seu cluster.
