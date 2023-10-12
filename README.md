<div id="top"></div>

<!-- HEADER -->
<br />
<div align="center">
    <img src="https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fdwglogo.com%2Fwp-content%2Fuploads%2F2017%2F11%2F1500px_Jenkins_logo.png&f=1&nofb=1&ipt=c213b644c5ebf3cb5c157f4e4d5105db003998715aa9f3d35d1b8125f1b4fce7&ipo=images" alt="Logo" width="80" height="80">

  <h2 align="center">Jenkins on AWS</h2>

  <p align="center">
    *Terraform Repository to deploy a Jenkins server to AWS.*  
    <br />
    <a href=""><strong>View Demo »</strong></a>
    <br />
    <br />
  </p>
</div>

<!-- ABOUT -->
## About

Provision Jenkins to AWS with this Terraform template. This will create several AWS resources: VPC, EC2s, Security Groups, Subnets, etc. 

The Jenkins Controller and a Jenkins Agent will be provisioned on two separate EC2 instances. 

### Built With

* [Terraform](https://www.terraform.io/)
* [Jenkins](https://www.jenkins.io/)

<!-- GETTING STARTED -->
## Getting Started

### Prerequisites

1. An AWS account and access to the [AWS Management Console](https://aws.amazon.com/console/)
2. An S3 bucket for  [Terraform state tracking](https://developer.hashicorp.com/terraform/language/state)
3. [AWS CLI](https://aws.amazon.com/cli/)
4. [Terraform](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli)

<!-- USAGE EXAMPLES -->
## Usage

This is IaC to manage your CI/CD infrastructure. Once deployed, ensure to consult the [documentation](https://www.jenkins.io/doc/book/), configure Jenkins for your environment, and write a [Jenkinsfile](https://www.jenkins.io/doc/book/pipeline/jenkinsfile/) under your project repository.

Ensure to sign into the AWS CLI.

```bash
aws login
```

Modify the data sources and resources to match your current environment. See my blog post for an explaination [here]().

Initalize Terraform, validate the plan to provision the AWS resources, and apply.

```bash
terraform init
terraform plan
terraform apply
```
<p align="right">(<a href="#top">back to top</a>)</p>
