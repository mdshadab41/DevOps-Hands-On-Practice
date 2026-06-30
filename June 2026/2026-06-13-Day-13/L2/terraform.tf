resource "aws_iam_user" "example_user" {
    name = "pathnex_user"
  
}

resource "aws_iam_policy" "example_policy" {
    name       = "pathnex-policy"
    description = "Policy for Pathnex application"
    policy      = jsondecode({
        Version   = "2023-12-11"
        Statement = [{
             Action = "s3:ListBucket"
            Effect = "Allow"
            Resource = "arn:aws:s3:::pathnex-bucket"

        },
        
           
        ]
    })
  
}