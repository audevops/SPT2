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

    stage('Jira Transition ID 7') {
      steps {
         
        sh '''
curl --request POST --url 'https://ausdevops.atlassian.net/rest/api/latest/issue/DL-73/transitions' --user 'shashwat.prasad.telstra@gmail.com:ATATT3xFfGF0WJyxsTRN9ay5AcLUrUv6XfsbjUiVlEKWWI7dZDV6FvI7zKbTjZ0xkPKmEKHAISDfo0ndkxaf1R8gGuDT2x8CbEWPQSTKy-g9clpGqLMkViWdFALQFMgafHXtYzWVrc528IphU4_KynajOk_WnpZwMi8Mw__TmRVgIyRM2uKhN9w=AC8121C8' --header 'Accept: application/json' --header 'Content-Type: application/json' --data '{"transition": {"id": "7"}}'
'''         
         }}          
  }}