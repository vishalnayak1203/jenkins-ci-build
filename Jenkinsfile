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
                        unstableTotalAll           : '0',
                        usePreviousBuildAsReference: true
                ])
            }
        }
        stage('Test') {
            steps {
                //
                sh 'echo TEST'
                sh 'bash tests.sh'
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