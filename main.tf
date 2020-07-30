resource "aws_kms_key" "kms" {
  description = var.kms_name
}

resource "aws_msk_cluster" "msk-cluster" {
  cluster_name           = var.cluster_name
  kafka_version          = var.kafka_version
  number_of_broker_nodes = var.broker_node_count

  broker_node_group_info {
    instance_type   = var.broker_node_instance_type
    ebs_volume_size = var.volume_size
    client_subnets = [
      "${var.subnetid_1}",
      "${var.subnetid_2}",
      "${var.subnetid_3}",
    ]
    security_groups = ["${var.security_group_id}"]
  }

  encryption_info {
    encryption_at_rest_kms_key_arn = "${aws_kms_key.kms.arn}"
  }

tags = {
    env = "dev"
  }
}
