<div class="col-md-3 left_col">
    <div class="left_col scroll-view">
        <div class="navbar nav_title" style="border: 0;">
            <a href="${createLink(controller: 'home', action: 'index')}" class="site_title"><i
                    class="glyphicon glyphicon-certificate"></i> <span>PW Jabar</span></a>
        </div>
        <div class="clearfix"></div>

        <!-- menu profile quick info -->
        <div class="profile clearfix">
            <div class="profile_pic">
                <img src="${resource(dir: 'images', file: 'img.jpg')}" alt="..." class="img-circle profile_img">
            </div>

            <div class="profile_info">
                <span>Welcome,</span>

                <h2>PW Jabar</h2>
            </div>
        </div>
        <!-- /menu profile quick info -->

        <br/>

        <g:render template="/layouts/menu"/>
        <g:render template="/layouts/menu_footer"/>

    </div>
</div>