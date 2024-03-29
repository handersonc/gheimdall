<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:py="http://purl.org/kid/ns#"
      py:extends="'master.kid'">
<head>
  <meta content="text/html; charset=UTF-8"
        http-equiv="content-type" py:replace="''"/>
  <title>Logging out...</title>
</head>
<body onLoad="javascript:document.acsForm.submit()" py:if="not tg.config('apps.use_ssl_client_auth')">
  <font size="+1">Please wait a second...</font>
  <form name="acsForm" py:attrs="action=url" method="post">
    <div style="display: none">
      <input type="submit" value="logout"/>
    </div>
  </form>
</body>
<body py:if="tg.config('apps.use_ssl_client_auth')">
  <font size="+1">Logged out</font>
  <a py:attrs="href=url">Login again</a>
</body>
</html>
