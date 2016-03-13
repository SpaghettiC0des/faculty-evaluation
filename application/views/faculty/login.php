<form class="lc-block toggled" method="POST" action="faculty_auth">
            <h3>Faculty Login</h3>
            <div class="input-group m-b-20">
                <span class="input-group-addon"><i class="zmdi zmdi-account"></i></span>
                <div class="fg-line">
                    <input name="UserName" type="text" class="form-control" placeholder="Username">
                </div>
            </div>
            
            <div class="input-group m-b-20">
                <span class="input-group-addon"><i class="zmdi zmdi-male"></i></span>
                <div class="fg-line">
                    <input name="Passwd" type="password" class="form-control" placeholder="Password">
                </div>
            </div>
            
            <div class="clearfix"></div>
           <?php if ($this->session->get('login_error')): ?>
                <div class="alert alert-danger">
                    Invalid Credentials!
                </div>
           <?php endif ?>
            <!-- <div class="checkbox">
                <label>
                    <input type="checkbox" value="">
                    <i class="input-helper"></i>
                    Keep me signed in
                </label>
            </div> -->
            
            <button type="submit" class="btn btn-login btn-danger btn-float">
                <i class="zmdi zmdi-arrow-forward"></i>
            </button>
            
        </form>