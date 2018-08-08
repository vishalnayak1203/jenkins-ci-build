pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                //
                sh 'echo BUILD'
                sh 'pylint --rcfile=pylint.cfg models > pylint.log || exit 0'
                step([
                        $class                     : 'WarningsPublisher',
                        parserConfigurations       : [[
                                                              parserName: 'PYLint',
                                                              pattern   : 'pylint.log'
                                                      ]],
                        failedTotalLow           : '8',
                        usePreviousBuildAsReference: true
                ])
            }
        }
        stage('Test') {
            steps {
                //
                sh 'echo TEST'
            }
        }
        stage('Deploy') {
            steps {
                //
                sh 'echo DEPLOY'
            }
        }
    }
}