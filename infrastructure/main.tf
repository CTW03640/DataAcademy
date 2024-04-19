resource "aws_s3_bucket_object" "my_objects" {
    bucket = "da7-tf-exercise-2"
    for_each = fileset("/home/vlisnic/DataAcademy/infrastructure/samples/", "/*.*")
    key = "/ctw03640/${each.value}"
    source = "/home/vlisnic/DataAcademy/infrastructure/samples/${each.value}" 
}