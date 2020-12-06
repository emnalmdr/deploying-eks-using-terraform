variable "region" {
  default     = "eu-west-1"
  description = "AWS region"
}

variable "cluster_name" {
  default = "eks-sock-shop"
}


#variable "map_roles" {
#  description = "Additional IAM roles to add to the aws-auth configmap."
#  type = list(object({
#    rolearn  = string
#    username = string
#    groups   = list(string)
#  }))
#
#  default = [
#    {
#      rolearn  = "arn:aws:iam::xxx/role"
#      username = "role1"
#      groups   = ["system:masters"]
#    },
#  ]
#}

#variable "map_users" {
#  description = "Additional IAM users to add to the aws-auth configmap."
#  type = list(object({
#    userarn  = string
#    username = string
#    groups   = list(string)
#  }))
#
#  default = [
#    {
#      userarn  = "arn:aws:iam::xxx:user/user1"
#      username = "user1"
#      groups   = ["system:masters"]
#    },
#    {
#      userarn  = "arn:aws:iam::xxx:user/user2"
#      username = "user2"
#      groups   = ["system:masters"]
#    },
#  ]
#}