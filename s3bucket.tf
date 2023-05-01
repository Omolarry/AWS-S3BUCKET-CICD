resource "aws_s3_bucket" "mybucket" {
  bucket = "mywebsitesource-test-bucket"
  
  tags = {
    Name = "Source bucket"
    Environment = "Test"
  }
   versioning {
    enabled = true
  }
}

resource "aws_s3_bucket" "bucket2" {
  bucket = "mywebsiteprod"
  
  tags = {
    Name = "Prod bucket "
    Environment = "Production"
  }

   versioning {
    enabled = true
  
  }
}