 pipeline {

  agent any
 
  stages {

    stage('TF Plan') {
      steps {
          sh 'terraform init'
          sh """
          export TF_VAR_okta_group_name=${params.groupname}

          terraform plan -out myplan
          """
        }
      }


    stage('Approval') {
      steps {
        script {
          def userInput = input(id: 'confirm', message: 'Apply Terraform?', parameters: [ [$class: 'BooleanParameterDefinition', defaultValue: false, description: 'Apply terraform', name: 'confirm'] ])
        }
      }
    }

    stage('TF Apply') {
      steps {
          sh """
          export TF_VAR_okta_group_name=${params.groupname}

          
          terraform apply -input=false -auto-approve myplan 
          """
        }
      }
  }

}
