pipeline {
  agent any
    environment {
        STR = "https://ausdevops.atlassian.net/rest/api/2/status/10009"
        Jira_ID = "DL-75"
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
curl --request POST --url 'https://ausdevops.atlassian.net/rest/api/latest/issue/DL-75/transitions' --user 'shashwat.prasad.telstra@gmail.com:ATATT3xFfGF0WJyxsTRN9ay5AcLUrUv6XfsbjUiVlEKWWI7dZDV6FvI7zKbTjZ0xkPKmEKHAISDfo0ndkxaf1R8gGuDT2x8CbEWPQSTKy-g9clpGqLMkViWdFALQFMgafHXtYzWVrc528IphU4_KynajOk_WnpZwMi8Mw__TmRVgIyRM2uKhN9w=AC8121C8' --header 'Accept: application/json' --header 'Content-Type: application/json' --data '{"transition": {"id": "3"}}'
'''         
         }} 


       stage('Jira Approval Check') {
      steps {
         script{ 
          PWD = sh(script:"""pwd""", returnStdout: true).trim()
          def logFile = new File("$PWD/test.txt")
          sh '> $PWD/test.txt && cat $PWD/test.txt'
for (int i = 0; i < 10; i++) {
         Job_Status=null
         Jira_staus = sh(script: 'curl -s -D- -u shashwat.prasad.telstra@gmail.com:ATATT3xFfGF0WJyxsTRN9ay5AcLUrUv6XfsbjUiVlEKWWI7dZDV6FvI7zKbTjZ0xkPKmEKHAISDfo0ndkxaf1R8gGuDT2x8CbEWPQSTKy-g9clpGqLMkViWdFALQFMgafHXtYzWVrc528IphU4_KynajOk_WnpZwMi8Mw__TmRVgIyRM2uKhN9w=AC8121C8 -X GET -H "Content-Type: application/json" https://ausdevops.atlassian.net/rest/api/latest/issue/$Jira_ID?fields=status', returnStdout: true).trim()
         println Jira_staus
         logFile.append(Jira_staus)
         sh 'cat test.txt && pwd && ls -lart'
         Job_Status = sh(script:"""if grep -Fq "$STR" $PWD/test.txt; then echo "Approved" ; else  echo "Waiting Approval" ; fi""", returnStdout: true).trim()
         echo " the Staus of Jira ticket is --------------${Job_Status}------------"  
         JiraStatus = Job_Status
             if (JiraStatus == "Approved") 
             {
                 echo "Jira Task is approved now we are moving to next stage of Deployment"
                 break
             }
             else { echo "Waiting Approval"
                      }
          sleep(10) 
          println i
          if (i == 10) {System.exit(1); }
         }
             
         }}
  }
          stage('User ADD') {
            steps {
                
                sh '''
id
##User Addition##
sudo useradd -m -p $(openssl passwd -1 Proximus#18) SPT -g sudo
##UserCheck###
sudo cat /etc/passwd | grep -i SPT
##Login whicth User###
sshpass -p 'Proximus#18' ssh SPT@192.168.1.105
exit
'''
            }}
         
         }}}       