pipeline {
    agent any

    stages {
        stage('Linter'){

            steps {

                sh 'pylint --rcfile=pylint.cfg models | tee pylint.log'

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
                echo 'Testing..'
                sh 'bash tests.sh'
            }
        }
        stage('Build') {
            steps {
                echo 'Deploying....'
                sh 'bash build.sh'
            }
        }
        stage('Archive') {
            steps {
                echo 'Archiving....'
                archiveArtifacts artifacts: '**/builds/*.tar.gz', fingerprint: true
            }
        }
    }
}
