terraform {
  backend "s3" {
   region = "us-east-1"
   bucket = var.BUCKETNAME
   key = "statefilebucketdemo"
  }
}