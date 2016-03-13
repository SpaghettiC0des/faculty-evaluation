<aside id="sidebar" class="sidebar c-overflow">
                <div class="profile-menu">
                    <a href="">

                        <div class="profile-info">
                            <?php 
                                $faculty = $this->session->get('faculty');

                                echo "{$faculty->FName} {$faculty->LName}";
                             ?>

                            <i class="zmdi zmdi-caret-down"></i>
                        </div>
                    </a>

                    <ul class="main-menu">

                        <li>
                            <a href="<?php echo url::site(); ?>faculty/logout"><i class="zmdi zmdi-time-restore"></i> Logout</a>
                        </li>
                    </ul>
                </div>

                <ul class="main-menu">
                    <li>
                        <a href="<?php echo url::site(); ?>home"><i class="zmdi zmdi-home"></i> Home</a>
                    </li>
                    <li>
                        <a href="<?php echo url::site(); ?>faculty/upload"><i class="zmdi zmdi-file-text zmdi-hc-fw"></i> Upload Documents</a>
                    </li>
 
                </ul>
            </aside>
            
            