#!groovy
import groovy.json.JsonSlurper
import groovy.json.JsonOutput

/* This Jenkinsfile uses scripts inside jenkins folder in same project */

node {
    def serviceName = "filebeat"
    def serviceImage = "<registry host>/devops/filebeat"

    currentBuild.result = "SUCCESS"

    try {
        stage('Checkout') {
            step([$class: 'WsCleanup'])
            checkout scm
        }

        stage('Build') {
            sh "./jenkins/build.sh ${serviceImage}"
        }

        stage('Push Image') {
            sh "./jenkins/push.sh ${serviceImage}"
        }

        stage('Deploy') {
            sh "./jenkins/deploy.sh testing ${serviceName} ${serviceImage}"
            sh "./jenkins/deploy.sh staging ${serviceName} ${serviceImage}"

            input 'Ready to go?'
            sh "./jenkins/deploy.sh production ${serviceName} ${serviceImage}"
        }
    } catch (err) {
        currentBuild.result = "FAILURE"
        throw err
    }
}
