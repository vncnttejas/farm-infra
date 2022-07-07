variable "aws_region" {
  type    = string
}

variable "cluster-name" {
  type    = string
}

variable "egress_def" {
  type = object({
    cidr_blocks = list(string)
    from_port = number
    to_port = number
    protocol = string
  })
  description = "defines the egress rules"
}

variable "ingress_def" {
  type = object({
    cidr_blocks = list(string)
    from_port = number
    to_port = number
    protocol = string
  })
  description = "defines the ingress rules"
}

variable "instance_types" {
  type = list(string)
  description = "list of worker instance types"
}

variable "scaling_config" {
  type = object({
    desired_size = number
    max_size     = number
    min_size     = number
  })
  description = "list of instance types for worker nodes"
}
