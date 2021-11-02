#!/usr/bin/env groovy

library identifier: "jenkins-shared-library@main", retriever: modernSCM(
    [$class: 'GitSCMSource', 
    remote: 'https://github.com/MichaelBurak/jenkins-shared-library.git'
    credentialsId: 'github-credentials']
)

def gv

pipeline {
    agent any
    tools {
        maven 'maven-3.6'
    }
    stages {
        stage("init") {
            steps {
                script {
                    gv = load "script.groovy"
                }
            }
        }
        stage("build jar") {
            steps {
                script {
                    buildJar()
                }
            }
        }
        stage("build and push image") {
            steps {
                script {
                    buildImage 'michaelburak/priv-test:jma-2.0'
                    dockerLogin()
                    dockerPush 'michaelburak/priv-test:jma-2.0'
                }
            }
        }
        stage("deploy") {
            steps {
                script {
                    gv.deployApp()
                }
            }
        }
    }
}
