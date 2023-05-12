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
curl --request POST --url 'https://ausdevops.atlassian.net/rest/api/latest/issue/DL-73/transitions' --user 'shashwat.prasad.telstra@gmail.com:ATATT3xFfGF0S5HjSRHTcH2uTBWN7WWhHeO-znba0EBh7jHkuRj8HHxe2T5WguqBHEI7rh2KGHD2so3f9Qs_INnIfoAVcT1DU1sQxG_7U2EORO4zIRpcZTq1Ep8Tj8eikQtkEt6olp5YXobbIuT1zri8_fpSjDyKIORGZkeLcl-WGsHH-6ZWYZk=E4482E1A' --header 'Accept: application/json' --header 'Content-Type: application/json' --data '{ "body": {"type": "doc","version": 1,"content": [{"type": "paragraph", "content": [{ "text": "Hello There!!", "type": "text" }]}]},"transition": {"id": "3"}}'
'''         
         }}          
  }}