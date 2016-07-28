# Facebook_ReAuthenticator
ReAuth facebook session  every 300 seconds


<h4>To who</h4>
<hr/>
  For those Who test facebook or bruteforcing somewhere , facebook ask for resubmitting your password from time to time , so this script will refresh your session every 300 seconds .
  
  
  <br />
  <br />
  <br />
  
<h4>Using curl and sleep</h4><hr/>
  <a href='https://www.wikiwand.com/en/CURL' > curl </a> sends HTTP request with your session data to facebook <br />
  POST https://m.facebook.com/password/reauth/?next=https%3A%2F%2Fm.facebook.com
  and <a href='http://ss64.com/bash/sleep.html' >sleep</a>s for 300 seconds then repeate
  
  
  <br />
  <br />
  <br />
<h4>asks for </h4>
  -Facebook valid session cookie <br />
  -facebook valid fb_dtsg value<br />
  -Your password<br />
