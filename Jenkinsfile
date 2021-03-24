node{
    
    stage("Git clone"){
        git credentialsId: 'git_credentials', url: 'https://github.com/mstrekalov/Project_Kubernetes.git'
    }
    
    stage("Build Docker Image"){
        sh "docker build -t mstrekalov/kefir ."
    }
    
    stage("docker push"){
        withCredentials([string(credentialsId: 'dockerhub_credentials', variable: 'dockerhub_credentials')]) {
            sh "docker login -u mstrekalov -p ${dockerhub_credentials}"
        }
       
        sh "docker push mstrekalov/kefir "
    }
}