pipeline {
  agent any
  stages {

    
    stage('Gitlab File Download') {
      steps {
         script{ 
         sh 'ls -lart'
         echo "SCM Pooling Complete Files Downloaded"
         sh 'ls -lart & pwd'
         echo "Moving Jira Task to Next ID 3, Code ready for Approval"
         
         }}}  

    stage('Jira Transition ID 3') {
      steps {
         
        sh '''
curl --request POST --url 'https://ausdevops.atlassian.net/rest/api/latest/issue/DL-73/transitions' --user 'shashwat.prasad.telstra@gmail.com:ATATT3xFfGF0oS0uEoLlNSTDof_-uQnLgrFxmm2hh-n-qrcNNWP5N3eg48e9mNqZddLH69Z3rQ81snhkVul31I-HMEc9i26imHPkcEo5S-y1ATYO8jHU2Oqg6ZYRJADCvUhWSRWrZsqMc_1A3Y0bOZ06hs3jmV7-tXuaYGYOztPQlE9e--1JLGk=85157C8B' --header 'Accept: application/json' --header 'Content-Type: application/json' --data '{ "body": {"type": "doc","version": 1,"content": [{"type": "paragraph", "content": [{ "text": "Hello There!!", "type": "text" }]}]},"transition": {"id": "3"}}'
'''         
         }}          
  }}