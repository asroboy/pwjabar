<html>
<head>
    <meta name='layout' content='login'/>
    <title><g:message code="springSecurity.login.title"/></title>
</head>

<body>
<div class="animate form login_form">
    <section class="login_content">
        <form action='${postUrl}' method='POST' id='loginForm' class='cssform' autocomplete='off'>
            <h1>Login</h1>
            <g:if test='${flash.message}'>
                <div class='login_message'>${flash.message}</div>
            </g:if>
            <div>
                %{--<input type="text" class="form-control" placeholder="Username" required=""/>--}%
                <input type='text' class='text_ form-control' name='j_username' id='username'/>
            </div>

            <div>
                %{--<input type="password" class="form-control" placeholder="Password" required=""/>--}%
                <input type='password' class='text_ form-control' name='j_password' id='password'/>
            </div>

            <div>
                <p id="remember_me_holder" style="margin: auto">
                    <input type='checkbox' class='chk' name='${rememberMeParameter}' id='remember_me'
                           <g:if test='${hasCookie}'>checked='checked'</g:if>/>
                    <label for='remember_me'><g:message code="springSecurity.login.remember.me.label"/></label>
                </p>
                <br/>
            </div>

            <div>
                <input style="width: 80%" class="btn btn-default submit" type='submit' id="submit"
                       value='${message(code: "springSecurity.login.button")}'/>
            </div>
            <div class="clearfix"></div>

        </form>
    </section>
</div>

</body>
</html>
