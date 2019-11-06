pipeline {
<<<<<<< HEAD
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
=======
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

>>>>>>> ad867a317903c3c4f23d59d4287dee35f2eafec3
