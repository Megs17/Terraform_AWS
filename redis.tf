resource "aws_redshift_subnet_group" "example_subnet_group" {
  name       = "my-redshift-subnet-group"
  subnet_ids = [module.network.subnets["private_subnet1"].id,module.network.subnets["private_subnet2"].id]

  tags = {
    Name = "MyRedshiftSubnetGroup"
  }

}

resource "aws_redshift_cluster" "my-redis" {
  cluster_identifier = "tf-redshift-cluster"
  database_name      = "mydb"
  master_username    = "ahmedmagdy"
  master_password    = "AhmedMagdy123"
  node_type          = "dc2.large"  
  cluster_type       = "single-node"
cluster_subnet_group_name = aws_redshift_subnet_group.example_subnet_group.name
    vpc_security_group_ids = [module.network.security_group_redis_sg_id]
    skip_final_snapshot = true

}
