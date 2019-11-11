pipeline {
  agent any
  stages {
    stage ("Perfomr terraform initialization") {
            steps {
      sh 'cd app_server && terraform init'
    }
  }
  stage ("apply Terraform") {
    steps {
    sh  'terraform apply --auto-approve'
    }
   }
  }
 }