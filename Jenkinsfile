pipeline {
  agent any
  stages {
      stage ("perform terraform initialization") {
        steps {
        sh 'terraform init'
      }
    }
    stage ("apply Terraform") {
        steps {
        sh  'terraform apply --auto-approve'
      }
    }
  }
}

