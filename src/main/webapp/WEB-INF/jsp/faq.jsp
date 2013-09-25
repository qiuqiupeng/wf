<!DOCTYPE html>
  <!--[if lt IE 7]>
    <html class="lt-ie9 lt-ie8 lt-ie7" lang="en">
  <![endif]-->

  <!--[if IE 7]>
    <html class="lt-ie9 lt-ie8" lang="en">
  <![endif]-->

  <!--[if IE 8]>
    <html class="lt-ie9" lang="en">
  <![endif]-->

  <!--[if gt IE 8]>
    <!-->
    <html lang="en">
    <!--
  <![endif]-->

  <head>
    <meta charset="utf-8">
    <title>StartUp Admin</title>
    <meta name="author" content="Srinu Basava">
    <meta content="width=device-width, initial-scale=1.0, user-scalable=no" name="viewport">
    <meta name="description" content="StartUp Admin UI">
    <meta name="keywords" content="StartUp Admin UI, Admin UI, Admin Dashboard, Srinu Basava, Best admin UI, Best backend UI, Best Dashboard, Responsive admin UI, Responsive dashboard, Responsive Backend, Mobile admin, Mobile Backend, Mobile Dashboard">
    <script src="js/html5-trunk.js"></script>
    <link href="icomoon/style.css" rel="stylesheet">
    <!--[if lte IE 7]>
    <script src="css/icomoon-font/lte-ie7.js"></script>
    <![endif]-->
    <!-- bootstrap css -->
    <link href="css/main.css" rel="stylesheet">
  </head>
  <body>
    <header>
      <a href="index" class="logo">StartUP</a>
      <div id="mini-nav">
        <ul class="hidden-phone">
          <li>
            <a href="#documentation" data-toggle="modal" data-original-title="">
              Documentation
            </a>
            <div id="documentation" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel1" aria-hidden="true">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                  ×
                </button>
                <h4 id="myModalLabel1">
                  Full html documentation is available on purchase.
                </h4>
              </div>
              <div class="modal-body">
                <img src="img/documentation.png" />
              </div>
            </div>
          </li>
          <li class="dropdown">
            <a data-toggle="dropdown" class="dropdown-toggle" href="">
              Theming
              <span class="caret icon-white"></span>
            </a>
            <ul class="dropdown-menu pull-right">
                            <li>
                <a href="#" id="default">Default</a>
              </li>
              <li>
                <a href="#" id="facebook">Facebook</a>
              </li>
              <li>
                <a href="#" id="foursquare">Foursquare</a>
              </li>
              <li>
                <a href="#" id="google-plus">Google+</a>
              </li>
              <li>
                <a href="#" id="instagram">Instagram</a>
              </li>
              <li>
                <a href="#" id="whitesmoke">White Smoke</a>
              </li>
              <li>
                <a href="#" id="grey">Grey</a>
              </li>
            </ul>
          </li>
          <li>
            <a href="faq"><span class="fs1" aria-hidden="true" data-icon="&#xe03b;"></span></a>
          </li>
          <li>
            <a href="profile"><span class="fs1" aria-hidden="true" data-icon="&#xe090;"></span></a>
          </li>
          <li>
            <a href="login"><span class="fs1" aria-hidden="true" data-icon="&#xe0b1;"></span></a>
          </li>
        </ul>
        <div class="clearfix"></div>
      </div>
    </header>
    <div class="container-fluid">
      <div class="left-sidebar hidden-tablet hidden-phone">
        <div class="user-details">
          <div class="user-img">
            <img src="img/user-avatar.png" class="avatar" alt="Avatar">
          </div>
          <div class="welcome-text">
            <span>Welcome</span>
            <p class="name">Mr. Srinu Basava</p>
          </div>
        </div>
        <div class="content">
          <div id="accordion1" class="accordion no-margin">
            <div class="accordion-group">
              <div class="accordion-heading">
                <a href="#collapseSeven" data-parent="#accordion1" data-toggle="collapse" class="accordion-toggle">
                  Signups <span class="label info-label label-important">06</span>
                </a>
              </div>
              <div class="accordion-body collapse" id="collapseSeven" style="height: 0px;">
                <div class="accordion-inner">
                  <ul class="signups">
                    <li>
                      <div class="user pull-left">
                        <img src="img/avatar-8.png" alt="user" >
                      </div>
                      <div class="info">
                        <h6>Sandy</h6>
                        <p class="designation">CTO of Lukbuk</p>
                      </div>
                    </li>
                    <li>
                      <div class="user pull-left">
                        <img src="img/avatar-7.png" alt="user" >
                      </div>
                      <div class="info">
                        <h6>Srinu Basava</h6>
                        <p class="designation">Designer</p>
                      </div>
                    </li>
                    <li>
                      <div class="user pull-left">
                        <img src="img/avatar-1.png" alt="user" >
                      </div>
                      <div class="info">
                        <h6>Rahul Dravid</h6>
                        <p class="designation">Favourite Cricketer</p>
                      </div>
                    </li>
                    <li>
                      <div class="user pull-left">
                        <img src="img/avatar-3.png" alt="user" >
                      </div>
                      <div class="info">
                        <h6>Prem Pillai</h6>
                        <p class="designation">Senior Developer</p>
                      </div>
                    </li>
                    <li>
                      <div class="user pull-left">
                        <img src="img/avatar-4.png" alt="user" >
                      </div>
                      <div class="info">
                        <h6>Arjun URS</h6>
                        <p class="designation">ROR Developer</p>
                      </div>
                    </li>
                  </ul>
                </div>
              </div>
            </div>
            <div class="accordion-group">
              <div class="accordion-heading">
                <a href="#collapseOne" data-parent="#accordion1" data-toggle="collapse" class="accordion-toggle">
                  Online <span class="label info-label label-success">03</span>
                </a>
              </div>
              <div class="accordion-body collapse" id="collapseOne" style="height: 0;">
                <div class="accordion-inner">
                  <div class="online-users">
                    <ul>
                      <li>
                        <a href="" data-lastname="Srinu Basava" data-status="online">
                          <span>Sandy</span>
                          <div class="user-status online"></div>
                        </a>
                      </li>
                      <li>
                        <a href="" data-lastname="Srinu Basava" data-status="online">
                          <span>Srinu Basava</span>
                          <div class="user-status online"></div>
                        </a>
                      </li>
                      <li>
                        <a href="" data-lastname="Srinu Basava" data-status="online">
                          <span>John Doe</span>
                          <div class="user-status busy"></div>
                        </a>
                      </li>
                      <li>
                        <a href="" data-lastname="Srinu Basava" data-status="online">
                          <span>Steve waugh</span>
                          <div class="user-status away"></div>
                        </a>
                      </li>
                      <li>
                        <a href="" data-lastname="Srinu Basava" data-status="online">
                          <span>Robin Fleming</span>
                          <div class="user-status away"></div>
                        </a>
                      </li>
                      <li>
                        <a href="" data-lastname="Srinu Basava" data-status="online">
                          <span>Arjun URS</span>
                          <div class="user-status"></div>
                        </a>
                      </li>
                      <li>
                        <a href="" data-lastname="Srinu Basava" data-status="online">
                          <span>Prem Pillai</span>
                          <div class="user-status"></div>
                        </a>
                      </li>
                    </ul>
                  </div>
                </div>
              </div>
            </div>
            <div class="accordion-group">
              <div class="accordion-heading">
                <a href="#collapseTwo" data-parent="#accordion1" data-toggle="collapse" class="accordion-toggle">
                  Inbox <span class="label info-label label-warning">17</span>
                </a>
              </div>
              <div class="accordion-body collapse" id="collapseTwo" style="height: 0px;">
                <div class="accordion-inner">
                  <ul class="inbox">
                    <li>
                      <a href="#" class="designation">Best design</a>
                    </li>
                    <li>
                      <a href="#" class="designation">Check your email</a>
                    </li>
                    <li>
                      <a href="#" class="designation">Invitation</a>
                    </li>
                    <li>
                      <a href="#" class="designation">Birthday party</a>
                    </li>
                    <li>
                      <a href="#" class="designation">Design day</a>
                    </li>
                  </ul>
                </div>
              </div>
            </div>
            <div class="accordion-group">
              <div class="accordion-heading">
                <a href="#collapseThree" data-parent="#accordion1" data-toggle="collapse" class="accordion-toggle">
                  Payment Due <span class="label info-label">24</span>
                </a>
              </div>
              <div class="accordion-body collapse" id="collapseThree" style="height: 0px;">
                <div class="accordion-inner">
                  <ul class="payments">
                    <li>
                      <a href="#" class="designation">John smith - $2679</a>
                    </li>
                    <li>
                      <a href="#" class="designation">Marko - $ 4490</a>
                    </li>
                    <li>
                      <a href="#" class="designation">MC Doe - $1989</a>
                    </li>
                    <li>
                      <a href="#" class="designation">Steve Stores - $3389</a>
                    </li>
                    <li>
                      <a href="#" class="designation">VLS Supermarket - $2265</a>
                    </li>
                  </ul>
                </div>
              </div>
            </div>
            <div class="accordion-group">
              <div class="accordion-heading">
                <a href="#collapseFour" data-parent="#accordion1" data-toggle="collapse" class="accordion-toggle">
                  Clients <span class="label info-label label-important">249</span>
                </a>
              </div>
              <div class="accordion-body collapse" id="collapseFour" style="height: 0px;">
                <div class="accordion-inner">
                  <ul class="clients">
                    <li>
                      <a href="#" class="designation">Srinu Basava</a>
                    </li>
                    <li>
                      <a href="#" class="designation">Rahul Dravid</a>
                    </li>
                    <li>
                      <a href="#" class="designation">MC Dhoni</a>
                    </li>
                    <li>
                      <a href="#" class="designation">Steve Jobs</a>
                    </li>
                    <li>
                      <a href="#" class="designation">VK Singh</a>
                    </li>
                    <li>
                      <a href="#" class="designation">Julia</a>
                    </li>
                    <li>
                      <a href="#" class="designation">BSR Smith</a>
                    </li>
                    <li>
                      <a href="#" class="designation">Henrik</a>
                    </li>
                  </ul>
                </div>
              </div>
            </div>
            <div class="accordion-group">
              <div class="accordion-heading">
                <a href="#collapseFive" data-parent="#accordion1" data-toggle="collapse" class="accordion-toggle">
                  Staff Contacts <span class="label info-label label-info">112</span>
                </a>
              </div>
              <div class="accordion-body collapse" id="collapseFive" style="height: 0px;">
                <div class="accordion-inner">
                  <ul class="staff">
                    <li>
                      <a href="#">John Doe - <span>0000 7777 00</span></a>
                    </li>
                    <li>
                      <a href="#">Mill Gates - <span>1111 9999 11</span></a>
                    </li>
                    <li>
                      <a href="#">Mike Mills - <span>2222 2332 22</span></a>
                    </li>
                    <li>
                      <a href="#">Crucks - <span>4444 4444 44</span></a>
                    </li>
                    <li>
                      <a href="#">Robin Mills - <span>2211 2211 22</span></a>
                    </li>
                  </ul>
                </div>
              </div>
            </div>
            <div class="accordion-group">
              <div class="accordion-heading">
                <a href="#collapseSix" data-parent="#accordion1" data-toggle="collapse" class="accordion-toggle">
                  Content <span class="label info-label">05</span>
                </a>
              </div>
              <div class="accordion-body in collapse" id="collapseSix" style="height: auto;">
                <div class="accordion-inner">
                  <ul class="contents">
                    <li>
                      <a href="#">Articles</a>
                    </li>
                    <li>
                      <a href="#">Blogs</a>
                    </li>
                    <li>
                      <a href="#">Pages</a>
                    </li>
                    <li>
                      <a href="#">News</a>
                    </li>
                    <li>
                      <a href="#">Comments</a>
                    </li>
                  </ul>

                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="easy-pie-chart">
          <div class="pie_chart_1" data-percent="87">
            87%
          </div>
          <p class="name">
            Animated Chart
          </p>
        </div>
      </div>
      <div class="dashboard-wrapper">
        <div id="main-nav" class="hidden-phone hidden-tablet">
          <ul>
            <li>
              <a href="index">
                <span class="fs1" aria-hidden="true" data-icon="&#xe0a0;"></span> Dashboard
              </a>
            </li>
            <li>
              <a href="reports">
                <span class="fs1" aria-hidden="true" data-icon="&#xe097;"></span> Reports
              </a>
            </li>
            <li>
              <a href="forms">
                <span class="fs1" aria-hidden="true" data-icon="&#xe0b8;"></span> Forms
              </a>
              <ul>
                <li>
                  <a href="forms">Basic Forms</a>
                </li>
                <li>
                  <a href="extended-forms">Extended Forms</a>
                </li>
                <li>
                  <a href="form-wizards">Form Wizards</a>
                </li>
              </ul>
            </li>
            <li>
              <a href="graphs">
                <span class="fs1" aria-hidden="true" data-icon="&#xe096;"></span> Graphs
              </a>
              <ul>
                <li>
                  <a href="graphs">Flot Charts</a>
                </li>
                <li>
                  <a href="google-charts">Google Charts</a>
                </li>
                <li>
                  <a href="animated-charts">Animated Charts</a>
                </li>
              </ul>
            </li>
            <li>
              <a href="ui-elements">
                <span class="fs1" aria-hidden="true" data-icon="&#xe0a5;"></span> UI Lab
              </a>
              <ul>
                <li>
                  <a href="clients-list">Clients List</a>
                </li>
                <li>
                  <a href="ui-elements">General Elements</a>
                </li>
                <li>
                  <a href="messages">Messages</a>
                </li>
                <li>
                  <a href="timeline">Timeline</a>
                </li>
                <li>
                  <a href="pricing">Pricing Plans</a>
                </li>
                <li>
                  <a href="grid">Grid Layout</a>
                </li>
                <li>
                  <a href="icons">Buttons &amp; Icons</a>
                </li>
                <li>
                  <a href="typography">Typography</a>
                </li>
                <li>
                  <a href="layout">Blank Page</a>
                </li>
              </ul>
            </li>
            <li>
              <a href="tables">
                <span class="fs1" aria-hidden="true" data-icon="&#xe14a;"></span> Tables
              </a>
              <ul>
                <li>
                  <a href="tables">Static Tables</a>
                </li>
                <li>
                  <a href="dynamic-tables">Dynamic Tables</a>
                </li>
              </ul>
            </li>
            <li>
              <a href="gallery">
                <span class="fs1" aria-hidden="true" data-icon="&#xe00d;"></span> Gallery
              </a>
            </li>
            <li>
              <a href="invoice" class="selected">
                <span class="fs1" aria-hidden="true" data-icon="&#xe0aa;"></span> Extras
              </a>
              <ul>
                <li>
                  <a href="invoice">Invoice</a>
                </li>
                <li>
                  <a href="calendar">Calendar</a>
                </li>
                <li>
                  <a href="profile">Profile</a>
                </li>
                <li>
                  <a href="error">404 Error</a>
                </li>
                <li>
                  <a href="faq">Faq</a>
                </li>
                <li>
                  <a href="login">Login</a>
                </li>
              </ul>
            </li>
          </ul>
          <div class="clearfix"></div>
        </div>

        <div class="main-container">
          <div class="navbar hidden-desktop">
            <div class="navbar-inner">
              <div class="container">
                <a data-target=".navbar-responsive-collapse" data-toggle="collapse" class="btn btn-navbar">
                  <span class="icon-bar"></span>
                  <span class="icon-bar"></span>
                  <span class="icon-bar"></span>
                </a>
                <div class="nav-collapse collapse navbar-responsive-collapse">
                  <ul class="nav">
                    <li>
                      <a href="index">Dashboard</a>
                    </li>
                    
                    <li>
                      <a href="reports">Reports</a>
                    </li>
                    <li>
                      <a href="forms">Basic Forms</a>
                    </li>
                    <li>
                      <a href="extended-forms">Extended Forms</a>
                    </li>
                    <li>
                      <a href="form-wizards">Form Wizard</a>
                    </li>
                    <li>
                      <a href="graphs">Flot Charts</a>
                    </li>
                    <li>
                      <a href="google-charts">Google Charts</a>
                    </li>
                    <li>
                      <a href="animated-charts">Animated Charts</a>
                    </li>
                    <li>
                      <a href="ui-elements">General Elements</a>
                    </li>
                    <li>
                      <a href="clients-list">Clients List</a>
                    </li>
                    <li>
                      <a href="messages">Messages</a>
                    </li>
                    <li>
                      <a href="timeline">Timeline</a>
                    </li>
                    <li>
                      <a href="pricing">Pricing Plans</a>
                    </li>
                    <li>
                      <a href="grid">Grid Layout</a>
                    </li>
                    <li>
                      <a href="icons">Buttons &amp; Icons</a>
                    </li>
                    <li>
                      <a href="typography">Typography</a>
                    </li>
                    <li>
                      <a href="tables">Static Tables</a>
                    </li>
                    <li>
                      <a href="dynamic-tables">Dynamic Tables</a>
                    </li>
                    <li>
                      <a href="gallery">Gallery</a>
                    </li>
                    <li>
                      <a href="invoice">Invoice</a>
                    </li>
                    <li>
                      <a href="calendar">Calendar</a>
                    </li>
                    <li>
                      <a href="profile">Profile</a>
                    </li>
                    <li>
                      <a href="error">404 Error</a>
                    </li>
                    <li>
                      <a href="faq">Faq</a>
                    </li>
                    <li>
                      <a href="login">Login</a>
                    </li>
                  </ul>
                </div>
              </div>
            </div>
          </div>

          <div class="page-header">
            <div class="pull-left">
              <h2>Help Desk</h2>
            </div>
            <div class="pull-right">
              <ul class="stats">
                <li class="color-first">
                  <span class="fs1" aria-hidden="true" data-icon="&#xe0b3;"></span>
                  <div class="details">
                    <span class="big">09</span>
                    <span>Updates</span>
                  </div>
                </li>
                <li class="color-second hidden-phone">
                  <span class="fs1" aria-hidden="true" data-icon="&#xe052;"></span>
                  <div class="details" id="date-time">
                    <span>Date </span>
                    <span>Day, Time</span>
                  </div>
                </li>
              </ul>
            </div>
            <div class="clearfix"></div>
          </div>

          <div class="row-fluid">
            <div class="span12">
              <div class="widget no-margin">
                <div class="widget-header">
                  <div class="title">
                    <span class="fs1" aria-hidden="true" data-icon="&#xe07a;"></span> Help Desk
                  </div>
                </div>
                <div class="widget-body">
                  <div id="accordion3" class="accordion no-margin">
                    <div class="accordion-group">
                      <div class="accordion-heading">
                        <a href="#collapsOne" data-parent="#accordion3" data-toggle="collapse" class="accordion-toggle">
                          <span class="fs1" aria-hidden="true" data-icon="&#xe0f7;"></span>
                          Anim pariatur cliche reprehenderit?
                        </a>
                      </div>
                      <div class="accordion-body in collapse" id="collapsOne" style="height: auto;">
                        <div class="accordion-inner">
                          Dkateboard dolor brunch. Food truck Srinu Basava nesciunt laborum eiusmod. Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry StartUp Admin ad squid. 3 wolf StartUp Admin aute, non cupidatat s Brunch 3 wolf moon tempor Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry StartUp Admin ad squid. 3 wolf StartUp Admin aute, non cupidatat.
                        </div>
                      </div>
                    </div>
                    <div class="accordion-group">
                      <div class="accordion-heading">
                        <a href="#collapsTwo" data-parent="#accordion3" data-toggle="collapse" class="accordion-toggle">
                          <span class="fs1" aria-hidden="true" data-icon="&#xe0f7;"></span>
                          Food truck Srinu Basava nesciunt laborum eiusmod?
                        </a>
                      </div>
                      <div class="accordion-body collapse" id="collapsTwo" style="height: 0px;">
                        <div class="accordion-inner">
                          StartUp Admin cliche reprehenderit, enim eiusmod high life accusamus terry StartUp Admin ad squid. 3 wolf StartUp Admin aute, non cupidatat skateboard dolor brunch. Food truck Srinu Basava nesciunt laborum eiusmod. Brunch 3 wolf moon tempor
                        </div>
                      </div>
                    </div>
                    <div class="accordion-group">
                      <div class="accordion-heading">
                        <a href="#collapsThree" data-parent="#accordion3" data-toggle="collapse" class="accordion-toggle">
                          <span class="fs1" aria-hidden="true" data-icon="&#xe0f7;"></span>
                          Food truck Srinu Basava nesciunt laborum eiusmod?
                        </a>
                      </div>
                      <div class="accordion-body collapse" id="collapsThree" style="height: 0px;">
                        <div class="accordion-inner">
                          Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry StartUp Admin ad squid. 3 wolf StartUp Admin aute, non cupidatat skateboard dolor brunch. Food truck Srinu Basava nesciunt laborum eiusmod. Brunch 3 wolf moon tempor
                        </div>
                      </div>
                    </div>
                    <div class="accordion-group">
                      <div class="accordion-heading">
                        <a href="#collapsFour" data-parent="#accordion3" data-toggle="collapse" class="accordion-toggle">
                          <span class="fs1" aria-hidden="true" data-icon="&#xe0f7;"></span>
                          Brunch 3 wolf moon tempor Question?
                        </a>
                      </div>
                      <div class="accordion-body collapse" id="collapsFour" style="height: 0px;">
                        <div class="accordion-inner">
                          Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry StartUp Admin ad squid. 3 wolf StartUp Admin aute, non cupidatat skateboard dolor brunch. Food truck Srinu Basava nesciunt laborum eiusmod. Brunch 3 wolf moon tempor
                        </div>
                      </div>
                    </div>
                    <div class="accordion-group">
                      <div class="accordion-heading">
                        <a href="#collapsFive" data-parent="#accordion3" data-toggle="collapse" class="accordion-toggle">
                          <span class="fs1" aria-hidden="true" data-icon="&#xe0f7;"></span>
                          Enim eiusmod high life accusamus terry StartUp Admin ad squid?
                        </a>
                      </div>
                      <div class="accordion-body collapse" id="collapsFive" style="height: 0px;">
                        <div class="accordion-inner">
                          Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry StartUp Admin ad squid. 3 wolf StartUp Admin aute, non cupidatat skateboard dolor brunch. Food truck Srinu Basava nesciunt laborum eiusmod. Brunch 3 wolf moon tempor
                        </div>
                      </div>
                    </div>
                    <div class="accordion-group">
                      <div class="accordion-heading">
                        <a href="#collapsSix" data-parent="#accordion3" data-toggle="collapse" class="accordion-toggle">
                          <span class="fs1" aria-hidden="true" data-icon="&#xe0f7;"></span>
                          Non cupidatat skateboard dolor brunch. Food truck Srinu Basava nesciunt?
                        </a>
                      </div>
                      <div class="accordion-body collapse" id="collapsSix" style="height: 0px;">
                        <div class="accordion-inner">
                          Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry StartUp Admin ad squid. 3 wolf StartUp Admin aute, non cupidatat skateboard dolor brunch. Food truck Srinu Basava nesciunt laborum eiusmod. Brunch 3 wolf moon tempor
                        </div>
                      </div>
                    </div>
                    <div class="accordion-group">
                      <div class="accordion-heading">
                        <a href="#collapsSeven" data-parent="#accordion3" data-toggle="collapse" class="accordion-toggle">
                          <span class="fs1" aria-hidden="true" data-icon="&#xe0f7;"></span>
                          Good truck Srinu Basava nesciunt laborum eiusmod. Brunch 3 wolf moon tempor?
                        </a>
                      </div>
                      <div class="accordion-body collapse" id="collapsSeven" style="height: 0px;">
                        <div class="accordion-inner">
                          Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry StartUp Admin ad squid. 3 wolf StartUp Admin aute, non cupidatat skateboard dolor brunch. Food truck Srinu Basava nesciunt laborum eiusmod. Brunch 3 wolf moon tempor
                        </div>
                      </div>
                    </div>
                    <div class="accordion-group">
                      <div class="accordion-heading">
                        <a href="#collapsEight" data-parent="#accordion3" data-toggle="collapse" class="accordion-toggle">
                          <span class="fs1" aria-hidden="true" data-icon="&#xe0f7;"></span>
                          Officia aute, non cupidatat skateboard dolor brunch?
                        </a>
                      </div>
                      <div class="accordion-body collapse" id="collapsEight" style="height: 0px;">
                        <div class="accordion-inner">
                          Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry StartUp Admin ad squid. 3 wolf StartUp Admin aute, non cupidatat skateboard dolor brunch. Food truck Srinu Basava nesciunt laborum eiusmod. Brunch 3 wolf moon tempor
                        </div>
                      </div>
                    </div>
                    <div class="accordion-group">
                      <div class="accordion-heading">
                        <a href="#collapsNine" data-parent="#accordion3" data-toggle="collapse" class="accordion-toggle">
                          <span class="fs1" aria-hidden="true" data-icon="&#xe0f7;"></span>
                          StartUp Admin ad squid. 3 wolf StartUp Admin aute, non cupidatat skateboard dolor brunch?
                        </a>
                      </div>
                      <div class="accordion-body collapse" id="collapsNine" style="height: 0px;">
                        <div class="accordion-inner">
                          Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry StartUp Admin ad squid. 3 wolf StartUp Admin aute, non cupidatat skateboard dolor brunch. Food truck Srinu Basava nesciunt laborum eiusmod. Brunch 3 wolf moon tempor
                        </div>
                      </div>
                    </div>
                    <div class="accordion-group">
                      <div class="accordion-heading">
                        <a href="#collapsTen" data-parent="#accordion3" data-toggle="collapse" class="accordion-toggle">
                          <span class="fs1" aria-hidden="true" data-icon="&#xe0f7;"></span>
                          Skateboard dolor brunch. Food truck Srinu Basava nesciunt laborum eiusmod?
                        </a>
                      </div>
                      <div class="accordion-body collapse" id="collapsTen" style="height: 0px;">
                        <div class="accordion-inner">
                          Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry StartUp Admin ad squid. 3 wolf StartUp Admin aute, non cupidatat skateboard dolor brunch. Food truck Srinu Basava nesciunt laborum eiusmod. Brunch 3 wolf moon tempor
                        </div>
                      </div>
                    </div>
                    <div class="accordion-group">
                      <div class="accordion-heading">
                        <a href="#collapsEleven" data-parent="#accordion3" data-toggle="collapse" class="accordion-toggle">
                          <span class="fs1" aria-hidden="true" data-icon="&#xe0f7;"></span>
                          Cliche reprehenderit, enim eiusmod high life accusamus terry StartUp Admin ad squid?
                        </a>
                      </div>
                      <div class="accordion-body collapse" id="collapsEleven" style="height: 0px;">
                        <div class="accordion-inner">
                          Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry StartUp Admin ad squid. 3 wolf StartUp Admin aute, non cupidatat skateboard dolor brunch. Food truck Srinu Basava nesciunt laborum eiusmod. Brunch 3 wolf moon tempor
                        </div>
                      </div>
                    </div>
                    <div class="accordion-group">
                      <div class="accordion-heading">
                        <a href="#collapsTwelve" data-parent="#accordion3" data-toggle="collapse" class="accordion-toggle">
                          <span class="fs1" aria-hidden="true" data-icon="&#xe0f7;"></span>
                          Food truck Srinu Basava nesciunt laborum eiusmod?
                        </a>
                      </div>
                      <div class="accordion-body collapse" id="collapsTwelve" style="height: 0px;">
                        <div class="accordion-inner">
                          Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry StartUp Admin ad squid. 3 wolf StartUp Admin aute, non cupidatat skateboard dolor brunch. Food truck Srinu Basava nesciunt laborum eiusmod. Brunch 3 wolf moon tempor
                        </div>
                      </div>
                    </div>
                    <div class="accordion-group">
                      <div class="accordion-heading">
                        <a href="#collapsThirteen" data-parent="#accordion3" data-toggle="collapse" class="accordion-toggle">
                          <span class="fs1" aria-hidden="true" data-icon="&#xe0f7;"></span>
                          Brunch 3 wolf moon tempor Question?
                        </a>
                      </div>
                      <div class="accordion-body collapse" id="collapsThirteen" style="height: 0px;">
                        <div class="accordion-inner">
                          Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry StartUp Admin ad squid. 3 wolf StartUp Admin aute, non cupidatat skateboard dolor brunch. Food truck Srinu Basava nesciunt laborum eiusmod. Brunch 3 wolf moon tempor
                        </div>
                      </div>
                    </div>
                    <div class="accordion-group">
                      <div class="accordion-heading">
                        <a href="#collapsFourteen" data-parent="#accordion3" data-toggle="collapse" class="accordion-toggle">
                          <span class="fs1" aria-hidden="true" data-icon="&#xe0f7;"></span>
                          Enim eiusmod high life accusamus terry StartUp Admin ad squid?
                        </a>
                      </div>
                      <div class="accordion-body collapse" id="collapsFourteen" style="height: 0px;">
                        <div class="accordion-inner">
                          Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry StartUp Admin ad squid. 3 wolf StartUp Admin aute, non cupidatat skateboard dolor brunch. Food truck Srinu Basava nesciunt laborum eiusmod. Brunch 3 wolf moon tempor
                        </div>
                      </div>
                    </div>
                    <div class="accordion-group">
                      <div class="accordion-heading">
                        <a href="#collapsFifteen" data-parent="#accordion3" data-toggle="collapse" class="accordion-toggle">
                          <span class="fs1" aria-hidden="true" data-icon="&#xe0f7;"></span>
                          Food truck Srinu Basava nesciunt laborum eiusmod?
                        </a>
                      </div>
                      <div class="accordion-body collapse" id="collapsFifteen" style="height: 0px;">
                        <div class="accordion-inner">
                          Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry StartUp Admin ad squid. 3 wolf StartUp Admin aute, non cupidatat skateboard dolor brunch. Food truck Srinu Basava nesciunt laborum eiusmod. Brunch 3 wolf moon tempor
                        </div>
                      </div>
                    </div>
                    <div class="accordion-group">
                      <div class="accordion-heading">
                        <a href="#collapsSixteen" data-parent="#accordion3" data-toggle="collapse" class="accordion-toggle">
                          <span class="fs1" aria-hidden="true" data-icon="&#xe0f7;"></span>
                          Brunch 3 wolf moon tempor Question?
                        </a>
                      </div>
                      <div class="accordion-body collapse" id="collapsSixteen" style="height: 0px;">
                        <div class="accordion-inner">
                          Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry StartUp Admin ad squid. 3 wolf StartUp Admin aute, non cupidatat skateboard dolor brunch. Food truck Srinu Basava nesciunt laborum eiusmod. Brunch 3 wolf moon tempor
                        </div>
                      </div>
                    </div>
                    <div class="accordion-group">
                      <div class="accordion-heading">
                        <a href="#collapsSeventeen" data-parent="#accordion3" data-toggle="collapse" class="accordion-toggle">
                          <span class="fs1" aria-hidden="true" data-icon="&#xe0f7;"></span>
                          Enim eiusmod high life accusamus terry StartUp Admin ad squid?
                        </a>
                      </div>
                      <div class="accordion-body collapse" id="collapsSeventeen" style="height: 0px;">
                        <div class="accordion-inner">
                          Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry StartUp Admin ad squid. 3 wolf StartUp Admin aute, non cupidatat skateboard dolor brunch. Food truck Srinu Basava nesciunt laborum eiusmod. Brunch 3 wolf moon tempor
                        </div>
                      </div>
                    </div>
                    <div class="accordion-group">
                      <div class="accordion-heading">
                        <a href="#collapsEighteen" data-parent="#accordion3" data-toggle="collapse" class="accordion-toggle">
                          <span class="fs1" aria-hidden="true" data-icon="&#xe0f7;"></span>
                          Brunch 3 wolf moon tempor Question?
                        </a>
                      </div>
                      <div class="accordion-body collapse" id="collapsEighteen" style="height: 0px;">
                        <div class="accordion-inner">
                          Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry StartUp Admin ad squid. 3 wolf StartUp Admin aute, non cupidatat skateboard dolor brunch. Food truck Srinu Basava nesciunt laborum eiusmod. Brunch 3 wolf moon tempor.
                        </div>
                      </div>
                    </div>
                    
                  </div>
                </div>
              </div>
            </div>
          </div>

        </div>
      </div><!-- dashboard-container -->
    </div><!-- container-fluid -->

    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.js"></script>
    <script src="js/moment.js"></script>

    <!-- Easy Pie Chart JS -->
    <script src="js/pie-charts/jquery.easy-pie-chart.js"></script>

    <!-- Tiny scrollbar js -->
    <script src="js/tiny-scrollbar.js"></script>
    
    <!-- Custom Js -->
    <script src="js/theming.js"></script>
    <script src="js/custom.js"></script>
      
    <script>
      (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
      (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
      m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
      })(window,document,'script','http://www.google-analytics.com/analytics.js','ga');

      ga('create', 'UA-41161221-1', 'srinu.me');
      ga('send', 'pageview');

    </script>
  </body>
</html>