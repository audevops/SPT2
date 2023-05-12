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
        script{ 
        sh '''
curl --request POST --url 'https://ausdevops.atlassian.net/rest/api/latest/issue/DL-73/transitions' --user 'shashwat.prasad.telstra@gmail.com:ATATT3xFfGF0HWdxV_vDI2xZO5NwqLGUL5G8Y3dvhtQ7AdrF7Bq9GcULPZ4hOB3AR3iOLYtt9SOdN6Nm6O_3xKIpLi6z-tbhVzdgS4xAzMlINadct_RAp16eMogK4w7QUaIKhH_RXV7rCx9iKeLzNrlh2qn2PNBBrAKy_Xccf2oOM-aVf2gyYiE=FABD6504' --header 'Accept: application/json' --header 'Content-Type: application/json' --data '{ "body": {"type": "doc","version": 1,"content": [{"type": "paragraph", "content": [{ "text": "Hello There!!", "type": "text" }]}]},"transition": {"id": "3"}}'
'''
         
         }}}        
    
  }}