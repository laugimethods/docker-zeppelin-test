pipeline {
  agent  {
    dockerfile true
  }
  stages {
    stage("Build") {
      steps {
        sh 'docker build -t zeppelin_test .'
      }
    }
    stage("Archive"){
      steps {
        archive "*/target/**/*"
        junit '*/target/surefire-reports/*.xml'
      }
    }
  }
  post {
    always {
      deleteDir()
    }
  }
}
