pipeline {
  agent any
  stages {

    
    stage('Gitlab File Download') {
      steps {
         script{ 
         sh 'ls -lart'
         echo "SCM Pooling Complete Files Downloaded"
         sh 'ls -lart & pwd'
         echo "Moving Jira Task to Next ID 3"
         sh 'curl -D- -u abhi24.81@gmail.com:ATATT3xFfGF0IreCittgQJqoeNONWPBQXRp_8EJyHA109X3Nw9BwpmBlj2pwj71Ei1QNEMHg_Hp4XchGGiSLrmUL41n8hHIv2MryIkhHlrtdvGuUNhgRHJHtFU-vdtSh428LZEcSJXTE1dbgW2NZoNCxiSW7H-uzyEerR9gS0k-nfSw04B422UQ=C7683585 -X POST -d "{\"update\": {\"comment\": [{\"add\": {\"body\": \"Transitioned as all sub-tasks closed\"}}]},\"transition\": {\"id\": \"3\"}}" -H "Content-Type: application/json" https://ausdevops.atlassian.net/rest/api/2/issue/DL-73/transitions'
        
         }}}    
            
    
  }}