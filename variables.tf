variable "kms_name" {
  description = "enter kms_name"
  type        = string
}
variable "cluster_name" {
  description = "enter cluster name"
  type        = string
}
variable "kafka_version" {
  description = "enter kafka version"
  type        = string
}
variable "broker_node_count" {
  description = "enter node count"
  type        = string
}
variable "broker_node_instance_type" {
  description = "enter node instance type"
  type        = string
}

variable "volume_size" {
  description = "enter node volume size"
  type        = string
}
variable "subnetid_1" {
  description = "enter subnetid 1"
  type        = string
}
variable "subnetid_2" {
  description = "enter subnetid 2"
  type        = string
}
variable "subnetid_3" {
  description = "enter subnetid 3"
  type        = string
}
variable "security_group_id" {
  description = "enter security group id"
  type        = string
}

