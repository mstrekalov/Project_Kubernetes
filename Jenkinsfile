#!groovy
// Run docker build
node {

    checkout scm
       
    docker.withRegistry('https://registry.hub.docker.com', 'dockerhub') {

        def image = docker.build("mstrekalov/kefir")
        image.push()    
        
    }

}