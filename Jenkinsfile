pipeline {
   agent { label 'mac_server_05_we'}
   environment {
      JOB_GIT_URL= 'https://github.com/LalitaO/training_ground_project.git'
      JOB_GIT_BRANCH= 'main'
      GIT_CREDENTIAL= 'a8ac8982-0d5a-459d-809f-eda950edbc49'
   }
   stages {
      stage('Rainbow run robot framework') {
          steps{
            echo "Run Robotframework"
            // catchError(buildResult: 'SUCCESS', stageResult: 'FAILURE') {
            //    script{
            //        robot ./testcases
            //    }
            // }
          }
        //  post {
        //     always {
        //        echo "Publish Robot Framework test results"
        //        robot logFileName: 'log.html', outputFileName: 'output.xml', outputPath: '', reportFileName: 'report.html'
        //        script {
        //           try {
        //              echo "Downloading GIT Code from: ${JOB_GIT_URL}. Branch: ${JOB_GIT_BRANCH}"
        //              checkout([$class: "GitSCM", branches: [[name: "${JOB_GIT_BRANCH}"]], doGenerateSubmoduleConfigurations: false, 
        //              extensions: [], submoduleCfg: [], userRemoteConfigs: [[credentialsId: "${GIT_CREDENTIAL}", 
        //              url: "${JOB_GIT_URL}"]]])
        //           } catch (err) { 
        //              echo "The Download GIT Code Stage failed"
        //           }
        //        }
        //     }
        //  }
      }
   }
//    post {
//       always {
//          robot(
//             outputPath: './',
//             outputFileName: 'output.xml',
//             reportFileName: 'report.html',
//             logFileName: 'log.html',
//             disableArchiveOutput: false,
//             passThreshold: 100.0,
//             unstableThreshold: 100.0,
//             otherFiles: '*.png,*.jpg'
//          )
//          script {
//             String prefix = ":tada:"
//             if (tm('${ROBOT_FAILED}').toInteger() > 0) {
//                prefix = ":thumbsdown:"
//             } 
//             String robotReportSummary = tm('finished `PASSED`: ${ROBOT_PASSED} , `FAILED` : ${ROBOT_FAILED}')
//             echo "${robotReportSummary}"
//             slackSend(channel: "#doppio-ascend-codereview", message:  "${prefix}  ${JOB_NAME}  ${robotReportSummary} after ${currentBuild.durationString}")
//          }
//          echo "Clean Workspace"
//          cleanWs() 
//       }
//    }
}