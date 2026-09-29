variable "aws_region" {
  description = "AWS region for all resources."
  type        = string
  default     = "us-west-2"
}

variable "app_name" {
  description = "Name prefix for the application resources and ECR repository."
  type        = string
  default     = "ecs-demo"
}

variable "image_tag" {
  description = "Immutable image tag to deploy. GitHub Actions supplies the commit SHA."
  type        = string
  default     = "bootstrap"
}

variable "desired_count" {
  description = "Number of ECS tasks to run. Keep at zero for the initial bootstrap."
  type        = number
  default     = 0
}

variable "github_repository" {
  description = "GitHub repository allowed to publish images, in owner/repository format."
  type        = string
}

variable "github_branch" {
  description = "Branch allowed to assume the GitHub deployment role."
  type        = string
  default     = "main"
}

variable "vpc_cidr" {
  description = "IPv4 CIDR range for the application VPC."
  type        = string
  default     = "10.20.0.0/16"
}