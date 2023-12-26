resource "aws_s3_bucket" "bucket5" {
    provider = aws.main
    bucket = "testing-bucket-nyi-5"
    versioning {
        enabled = true
    }
    acl = "private"

    lifecycle_rule {
        id = "Transition_to_OneZIA"
        enabled = true
        transition {
            days = 30
            storage_class = "ONEZONE_IA"
        }
    }

    lifecycle_rule {
        id = "OneZIA_to_Glacia"
        enabled = true
        transition {
            days = 90
            storage_class = "GLACIER"
        }
    }

    lifecycle_rule {
        id = "deletion"
        enabled = true
        expiration {
            days = 365
        }
    }
}

