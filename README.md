# infra-tech-challenge-k8s

### Descrição
Este projeto visa automatizar a criação de um cluster Kubernetes usando GitHub Workflow e Azure DevOps Pipelines. Ele fornece um processo simplificado para configurar e provisionar a infraestrutura necessária para o seu ambiente Kubernetes.

## Configuração

1. **Pré-requisitos:**
    - Conta ativa no Azure DevOps.
    - Conta do Azure.
    - Conhecimento básico de GitHub Actions e Azure DevOps.
    - Conhecimento básico do Kubernetes.
    - Ter o [terraform](https://developer.hashicorp.com/terraform/downloads) instalado.
    - Ter o [Azure CLI](https://learn.microsoft.com/pt-br/cli/azure/install-azure-cli) instalado.

2. **Configuração inicial:**
    - Clone este repositório: 
      ```
      https://github.com/Pos-Tech-Fiap-Group-2/infra-tech-challenge-k8s.git
      ```
    - Certifique-se de ter permissões adequadas para criar recursos no Azure.
    - Configure as [credenciais de acesso no GitHub](https://docs.github.com/pt/actions/security-guides/using-secrets-in-github-actions) e no [Azure DevOps](https://learn.microsoft.com/en-us/azure/devops/pipelines/process/set-secret-variables?view=azure-devops&tabs=yaml%2Cbash).

3. **Configuração do Azure DevOps:**
    - Crie um novo projeto no Azure DevOps [conforme o exemplo](https://learn.microsoft.com/pt-br/azure/devops/organizations/projects/create-project?view=azure-devops&tabs=browser).
    - Configure os pipelines de acordo com as especificações do seu ambiente.

4. **Configuração do GitHub Workflow:**
    - Adicione as [credenciais](https://learn.microsoft.com/en-us/cli/azure/get-started-with-azure-cli) do Azure como secrets no GitHub.

## Estrutura do Projeto

A estrutura do projeto está composta da seguinte maneira, na pasta .github encontramos os arquivos do workflow responsavel por acionar a esteira e executar os steps, já a pasta infra terraform estão todos os arquivos utilizado para gerar os recursos de infra estrutura. E por ultimo temos o diretorio do K8s com os arquivos responsaveis de subir os pods da aplicação e base de dados.

```
projeto/
  ├── .github/
  │   ├── workflows/
  │   │   └── infra-terraform-k8s.yml
  ├── infra_terraform/
      ├── main.tf
      ├── providers.tf
      ├── terraform.tfvars
      ├── variables.tf      
```
## Fluxo de Trabalho

O processo geral para configurar o cluster Kubernetes usando este projeto é o seguinte:

1. Configure as variáveis de ambiente necessárias e as credenciais para acessar o Azure.
2. Execute o pipeline do Azure DevOps para criar os recursos de infraestrutura.
3. Utilize o GitHub Workflow para automatizar a implantação e configuração do cluster Kubernetes.