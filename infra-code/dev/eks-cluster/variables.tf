variable "aws_region" {
  description = "terraform region"
  default     = "eu-west-1"
}

variable "bucket" {
  type        = string
  description = "terraform state bucket"
}

variable "key" {
  type        = string
  description = "terraform state directory"
}

variable "cluster-name" {
  default = "terraform-eks-demo"
  type    = string
}
