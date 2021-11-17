pipeline{
    agent any
    environment {
        PATH = "$PATH:/home/ubuntu/apache-maven-3.6.0/bin"
    }
    stages{
       stage('GetCode'){
            steps{
                git 'https://github.com/Ramesh0107/spring-framework-petclinic.git'
            }
         }        
       stage('Build'){
            steps{
                sh 'mvn clean package'
            }
         }
        stage('SonarQube analysis') {
//    def scannerHome = tool 'SonarScanner 4.6.2';
        steps{
        withSonarQubeEnv('sonarqube-8.9') { 
        // If you have configured more than one global server connection, you can specify its name
//      sh "${scannerHome}/bin/sonar-scanner"
        sh 'mvn org.sonarsource.scanner.maven:sonar-maven-plugin:3.7.0.1746:sonar'
        sh "mvn sonar:sonar"
    }
        }
        }
       
    }
}
