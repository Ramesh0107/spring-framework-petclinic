pipeline{
    agent any
    {
    environment {
        PATH = "$PATH:/home/ubuntu/apache-maven-3.6.0/bin"
    }
    stages{
       stage('GetCode'){
            steps{
                git 'https://github.com/Ramesh0107/spring-framework-petclinic.git'
            }
         }  
    }
       stage('Build'){
            steps{
                sh 'mvn clean package'
            }
         }
        steps{withSonarQubeEnv('sonarqube-8.9') { 
        // If you have configured more than one global server connection, you can specify its name
//      sh "${scannerHome}/bin/sonar-scanner"
        sh 'mvn org.sonarsource.scanner.maven:sonar-maven-plugin:4.6.2:sonar'
        sh "mvn sonar:sonar"
    }
    }
   
