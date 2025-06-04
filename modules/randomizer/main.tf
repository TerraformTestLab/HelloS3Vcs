resource "random_string" "bucket_suffix" {
  length  = 8
  special = false
  upper   = false
}

output "name_randomizer" {
  value = random_string.bucket_suffix.result
  
}