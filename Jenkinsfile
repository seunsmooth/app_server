pipeline {
    agent any
    stages {
        stage ("Perfomr terraform initialization") {
        sh 'terraform init'
        }
    }
}
stage ("apply Terraform "){
    steps {
        sh 'terraform apply --auto-approve'
     }
    } 
  }
}