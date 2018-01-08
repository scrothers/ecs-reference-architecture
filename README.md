# Amazon ECS Reference Architecture
This Terraform is a reference architecture for the Amazon Web Services (AWS)
EC2 Container Service (ECS). This reference architecture is entirely written in
Terraform and also utilizes Packer to create AMIs within your AWS account.

To see the status of this project, please visit the project [milestones](https://github.com/scrothers/ecs-reference-architecture/milestones).

### The following AWS Services are used:
* [Amazon Elastic Compute Cloud (EC2)](https://aws.amazon.com/ec2/)
* [Amazon EC2 Container Service (ECS)](https://aws.amazon.com/ecs/)
* [Amazon Elastic File System (EFS)](https://aws.amazon.com/efs/)
* [Amazon Identity and Access Management (IAM)](https://aws.amazon.com/iam/)
* [Amazon Route53 Cloud DNS](https://aws.amazon.com/route53/)
* [Amazon Simple Storage Service (S3)](https://aws.amazon.com/s3/)
* [Amazon CloudWatch](https://aws.amazon.com/cloudwatch/)
* And much more...

### Deployment Tools Required
* [Hashicorp Terraform](https://www.terraform.io/)
* [Hashicorp Packer](https://www.packer.io/)
* [GNU Make](https://www.gnu.org/software/make/)

### AWS Regions Deployed
* Ohio, United States (us-east-2)
* Oregon, United States (us-west-2)
* Ireland, United Kingdom (eu-west-1)

## Additional Reference Deployments
In addition to the multi-region capable ECS cluster to be deployed in this
reference architecture. Several services have been included for easy deployment.

These services are:
* [Docker Distribution](https://github.com/docker/distribution)
* [GitLab Community Edition](https://about.gitlab.com/)
* [Laravel Web Framework](https://laravel.com/)

## Deployment Requirements
To successfully deploy this architecture in your environment, you must provide
at least a bare minimum of configuration requirements. These requirements are:
* Your own AWS account with an active billing subscription
* AWS Access Keys or Configured AWS Command Line Tools or EC2 IAM Profile
* A publicly resolvable domain name for reference deployments
* A preconfigured S3 bucket to store
  [Terraform Remote State](https://www.terraform.io/docs/state/remote.html)
* A general desire to learn and experiment!
