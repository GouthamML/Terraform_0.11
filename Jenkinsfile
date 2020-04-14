pipeline {

  agent any
   
  /*environment {
   // SVC_ACCOUNT_KEY = credentials('terraform-auth')
  }*/

  stages {
   stage('Checkout') {
      steps {
        checkout scm
        
      }
    }
    
     stage('change_dir') {
      steps {
        dir("/var/lib/jenkins/workspace"){
         sh 'sudo ./source_env.sh'
        }

        dir("/var/lib/jenkins/workspace/Terrafomr_0.11/Multi-AD-Architecture"){
          sh 'pwd'
          sh 'whoami'
          sh 'env'
          //sh 'sudo -s source /var/lib/jenkins/workspace/Terrafomr_0.11/Multi-AD-Architecture/env_vars'
         sh 'sudo ./var/lib/jenkins/workspace/Terrafomr_0.11/source_env.sh'

        }
        
      }
    } 
   /* stage('Source environment'){
      steps {
        sh 'source env_vars'
     
      }
    }*/ 
    stage('TF Plan') {
      steps {
        dir("Multi-AD-Architecture"){
          sh 'pwd'
          sh 'terraform init'
          sh 'terraform plan'
          
        }
      }      
    }

    stage('Approval') {
      steps {
        script {
          def userInput = input(id: 'confirm', message: 'Apply Terraform?', parameters: [ [$class: 'BooleanParameterDefinition', defaultValue: false, description: 'Apply terraform', name: 'confirm'] ])
        }
      }
    }

   /* stage('TF Apply') {
      steps {
          sh 'terraform apply -auto-approve'
      } 
    } */

  } 

}
