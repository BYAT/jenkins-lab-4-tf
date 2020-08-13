pipeline {
  agent {
    docker {
      image "bryandollery/terraform-packer-aws-alpine"
      args "-u root --entrypoint=''"
    }
  }
  environment {
    CREDS = credentials('bashayr')
    AWS_ACCESS_KEY_ID = "${CREDS_USR}"
    AWS_SECRET_ACCESS_KEY = "${CREDS_PSW}"
    OWNER = "bashayr"
    PROJECT_NAME = 'web-server'
    AWS_PROFILE="kh-labs"
    TF_NAMESPACE="bashayr"
  }
  stages {
      stage("init") { // the 1st stage in the job 
          steps {
              sh 'make init' // it will execute make init command >> from Makefile
          }
      }
      stage("plan") {// the 2nd stage in the job 
          steps {
              sh 'make plan'// it will execute make plan command >> from Makefile
          }
      }
      stage("apply") { // the 3rd stage in the job 
          steps {
              sh 'make apply'// it will execute make apply command >> from Makefile
          }
      }
  }
}
