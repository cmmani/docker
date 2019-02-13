
FROM tomcat:8de{
   stage('SCM Checkout'){
       git credentialsId: 'git-creds', url: 'https://github.com/javahometech/my-app'
   }
   stage('Mvn Package'){
def mvn
# Take the war and copy to webapps of tomcat
COPY target/*.war /usr/local/tomcat/webapps/
