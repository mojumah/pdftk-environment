![PDF Tool Kit](https://github.com/mojumah/pdftk-environment/blob/main/badge.png)

Prerequisites 

- github-actions user with the following policy:



 {  "Version": "2012-10-17",



    "Statement": [


        {


            "Sid": "VisualEditor0",


            "Effect": "Allow",

            "Action": [

                "sts:AssumeRole",

                "sts:TagSession"

            ],

            "Resource": "arn:aws:iam::xyz:role/github-actions"

        }

    ]
}



- github-actions role with the following Trust relationship



{   "Version": "2012-10-17",
    

    "Statement": [

        {

            "Sid": "",

            "Effect": "Allow",

            "Principal": {

                "AWS": "arn:aws:iam::xyz:user/github-actions"

            },

            "Action": [

                "sts:AssumeRole",

                "sts:TagSession"

            ]

        }

    ]
}


Automated pdf page merging Workflow:

1- Create an S3 bucket and upload the pdf files you want to merge to the bucket. 

2- Push a commit to the front-end. The commit should update the front-end HTML file to include a reference to the S3 path where certificates-merged.pdf is.