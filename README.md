# Facebook_ReAuthenticator
ReAuth facebook session  every 300 seconds


*For those 
  Who test facebook or bruteforcing somewhere , facebook ask for resubmitting your password from time to time , so this script will refresh your session every 300 seconds .
  
  
  *Using curl and sleep
  <a href='https://www.wikiwand.com/en/CURL' > curl </a> sends HTTP request with your session data to facebook 
  POST https://m.facebook.com/password/reauth/?next=https%3A%2F%2Fm.facebook.com
  and <a href='http://ss64.com/bash/sleep.html' >sleep</a>s for 300 seconds then repeate
  
  
  *asks for
  -Facebook valid session cookie
  -facebook valid fb_dtsg value
  -Your password
