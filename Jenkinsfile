node {
    def app

    stage('Clone repository') {
        /* Cloned to our workspace */

        checkout scm
    }

    stage('Build image') {
        /* This builds the actual image*/

        app = docker.build("dyslexicjedi/telegraf")
    }

    stage('Test image') {
        /* Test framework.*/

        app.inside {
            sh 'echo "Tests passed"'
        }
    }

    stage('Push image') {
        /* Push the image */
        docker.withRegistry('https://registry.dyslexicjedi.com') {
            app.push("latest")
        }
    }
}
