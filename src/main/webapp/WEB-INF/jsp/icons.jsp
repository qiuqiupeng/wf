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
              <div class="accordion-body collapse" id="collapseOne" style="0">
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
              <div class="accordion-body in collapse" id="collapseFour" style="height: auto;">
                <div class="accordion-inner">

                  <div id="scrollbar-three">
                    <div class="scrollbar">
                      <div class="track">
                        <div class="thumb">
                          <div class="end">
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="viewport">
                      <div class="overview">

                        <ul class="clients">
                          <li>
                            <a href="#" class="designation">Srinu Basava</a>
                          </li>
                          <li>
                            <a href="#" class="designation">Rahul Dravid</a>
                          </li>
                          <li>
                            <a href="#" class="designation">MS Dhoni</a>
                          </li>
                          <li>
                            <a href="#" class="designation">Batman</a>
                          </li>
                          <li>
                            <a href="#" class="designation">Arjun</a>
                          </li>
                          <li>
                            <a href="#" class="designation">Madan</a>
                          </li>
                          <li>
                            <a href="#" class="designation">MC James</a>
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
              <div class="accordion-body collapse" id="collapseSix" style="height: 0px;">
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
          <div class="pie_chart_1" data-percent="66">
            66%
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
              <a href="ui-elements" class="selected">
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
              <a href="invoice">
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
              <h2>Buttons &amp; Icons</h2>
            </div>
            <div class="pull-right">
              <ul class="stats">
                <li class="color-first">
                  <span class="fs1" aria-hidden="true" data-icon="&#xe0b3;"></span>
                  <div class="details">
                    <span class="big">250</span>
                    <span>Font Icons</span>
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
              <div class="widget">
                <div class="widget-header">
                  <div class="title">
                    <span class="fs1" aria-hidden="true" data-icon="&#xe13c;"></span> Sample Buttons
                  </div>
                </div>
                <div class="widget-body">
                  <div class="row-fluid">
                    <a class="quick-action-btn2 span1 input-bottom-margin" data-original-title="You have 1134 messages">
                      <span class="fs1" aria-hidden="true" data-icon="&#xe075;"></span> 
                    </a>
                    <a class="quick-action-btn2 span1 input-bottom-margin" data-original-title="You have 39 attachments">
                      <span class="fs1" aria-hidden="true" data-icon="&#xe0d4;"></span> 
                    </a>
                    <a class="quick-action-btn2 span1 input-bottom-margin" data-original-title="You sent 4695 emails">
                      <span class="fs1" aria-hidden="true" data-icon="&#xe09d;"></span> 
                    </a>
                    <a class="quick-action-btn2 span1 input-bottom-margin" data-original-title="5993 filters">
                      <span class="fs1" aria-hidden="true" data-icon="&#xe13f;"></span> 
                    </a>
                    <a class="quick-action-btn2 span1 input-bottom-margin" data-original-title="1333 chats">
                      <span class="fs1" aria-hidden="true" data-icon="&#xe11a;"></span> 
                    </a>
                    <a class="quick-action-btn2 span1 input-bottom-margin" data-original-title="You have 499 alert messages">
                      <span class="fs1" aria-hidden="true" data-icon="&#xe09f;"></span> 
                    </a>
                    <a class="quick-action-btn2 span1 input-bottom-margin" data-original-title="You have 499 alert messages">
                      <span class="fs1" aria-hidden="true" data-icon="&#xe04b;"></span> 
                    </a>
                    <a class="quick-action-btn2 span1 input-bottom-margin" data-original-title="You have 499 alert messages">
                      <span class="fs1" aria-hidden="true" data-icon="&#xe02a;"></span> 
                    </a>
                    <a class="quick-action-btn2 span1 input-bottom-margin" data-original-title="You have 499 alert messages">
                      <span class="fs1" aria-hidden="true" data-icon="&#xe132;"></span> 
                    </a>
                    <a class="quick-action-btn2 span1 input-bottom-margin" data-original-title="You have 499 alert messages">
                      <span class="fs1" aria-hidden="true" data-icon="&#xe156;"></span> 
                    </a>
                    <a class="quick-action-btn2 span1 input-bottom-margin" data-original-title="You have 499 alert messages">
                      <span class="fs1" aria-hidden="true" data-icon="&#xe13a;"></span> 
                    </a>
                    <a class="quick-action-btn2 span1 input-bottom-margin" data-original-title="You have 499 alert messages">
                      <span class="fs1" aria-hidden="true" data-icon="&#xe12f;"></span> 
                    </a>
                  </div>
                </div>
              </div>
            </div>
          </div>

          <div class="row-fluid">
            <div class="span12">
              <div class="widget">
                <div class="widget-header">
                  <div class="title">
                    <span class="fs1" aria-hidden="true" data-icon="&#xe0a9;"></span> Icomoon Icons
                  </div>
                </div>
                <div class="widget-body">
                  <ul class="icomoon-icons-container">
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe154;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe155;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe156;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe157;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe158;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe159;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe15a;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe15b;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe15c;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe15d;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe15e;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe15f;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe160;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe161;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe162;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe163;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe164;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe165;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe166;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe167;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe168;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe169;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe133;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe134;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe135;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe136;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe13d;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe13e;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe13f;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe140;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe141;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe142;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe143;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe144;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe145;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe146;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe147;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe148;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe149;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe14a;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe14b;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe14c;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe14d;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe14e;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe14f;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe150;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe137;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe138;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe139;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe13a;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe13b;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe13c;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe122;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe123;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe124;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe125;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe126;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe127;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe128;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe129;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe12a;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe12b;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe12c;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe12d;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe12e;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe12f;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe130;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe131;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe132;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe151;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe152;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe153;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe16a;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe16b;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe16c;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe16d;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe16e;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe16f;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe170;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe171;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe172;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe173;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe174;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe175;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe176;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe177;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe178;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe179;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe17a;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe17b;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe17c;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe17d;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe17e;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe17f;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe180;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe181;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe182;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe183;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe184;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe185;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe186;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe187;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe188;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe189;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe18a;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe18b;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe18c;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe18d;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe18e;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe18f;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe190;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe191;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe192;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe193;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe194;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe195;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe196;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe197;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe198;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe199;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe19a;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe19b;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe19c;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe19d;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe19e;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe19f;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe1a0;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe1a1;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe1a2;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe1a3;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe1a4;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe1a5;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe1a6;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe1a7;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe1a8;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe1a9;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe1aa;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe1ab;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe1ac;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe1ad;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe1ae;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe1af;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe1b0;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe1b1;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe1b2;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe1b3;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe1b4;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe1b5;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe1b6;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe1b7;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe1b8;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe1b9;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe1ba;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe1bb;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe1bc;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe1bd;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe1be;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe1bf;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe1c0;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe1c1;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe1c2;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe1c3;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe1c4;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe1c5;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe1c6;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe1c7;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe1c8;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe1c9;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe1ca;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe1cb;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe1cc;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe1cd;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe1ce;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe1cf;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe1d0;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe1d1;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe1d2;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe1d3;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe1d4;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe1d5;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe1d6;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe1d7;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe1d8;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe1d9;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe1da;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe1db;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe1dc;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe1ad;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe000;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe001;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe002;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe003;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe004;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe005;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe006;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe007;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe008;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe009;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe00a;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe00b;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe00c;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe00d;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe00e;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe00f;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe010;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe011;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe012;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe013;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe014;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe015;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe016;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe017;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe018;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe019;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe01a;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe01b;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe01c;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe01d;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe01e;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe01f;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe020;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe021;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe022;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe023;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe024;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe025;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe026;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe027;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe028;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe029;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe02a;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe02b;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe02c;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe02d;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe02e;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe02f;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe030;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe031;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe032;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe033;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe034;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe035;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe036;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe037;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe038;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe039;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe03a;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe03b;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe03c;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe03d;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe03e;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe03f;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe040;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe041;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe042;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe043;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe044;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe045;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe046;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe047;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe048;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe049;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe04a;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe04b;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe04c;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe04d;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe053;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe054;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe052;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe051;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe050;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe14e;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe14f;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe054;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe055;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe056;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe057;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe058;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe059;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe05a;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe05b;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe05c;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe05d;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe05e;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe05f;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe060;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe060;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe061;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe062;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe063;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe064;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe065;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe066;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe067;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe068;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe069;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe06a;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe06b;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe06c;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe06d;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe06e;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe06f;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe070;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe070;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe071;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe072;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe073;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe074;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe075;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe076;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe077;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe078;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe079;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe07a;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe07b;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe07c;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe07d;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe07e;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe07f;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe080;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe080;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe081;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe082;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe083;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe084;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe085;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe086;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe087;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe088;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe089;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe08a;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe08b;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe08c;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe08d;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe08e;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe08f;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe090;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe090;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe091;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe092;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe093;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe094;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe095;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe097;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe097;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe098;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe099;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe09a;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe09b;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe09c;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe09d;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe09e;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe09f;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe0a1;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe0a1;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe0a2;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe0a3;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe0a4;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe0a6;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe0a7;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe0a8;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe0a9;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe0aa;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe0ab;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe0ac;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe0ad;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe0ae;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe0af;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe0b0;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe0b1;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe0b2;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe0b3;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe0b4;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe0b5;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe0b6;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe0b7;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe0b8;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe0b9;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe0ba;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe0bb;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe0bc;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe0bd;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe0be;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe0bf;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe0c0;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe0c1;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe0c2;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe0c3;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe0c4;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe0c5;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe0c6;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe0c7;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe0c8;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe0c9;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe0ca;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe0cd;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe0cc;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe0cd;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe0ce;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe0ce;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe0cf;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe0d0;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe0d1;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe0d2;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe0d3;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe0d4;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe0d5;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe0d6;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe0d7;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe0d8;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe0d9;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe0da;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe0db;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe0dc;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe0dd;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe0de;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe0df;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe0e0;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe0e1;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe0e2;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe0e3;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe0e4;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe0e5;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe0e6;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe0e7;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe0e8;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe0e9;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe0ea;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe0eb;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe0ec;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe0ed;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe0ee;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe0ef;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe0f0;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe0f1;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe0f2;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe0f3;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe0f4;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe0f5;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe0f6;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe0f7;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe0f8;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe0f9;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe0fa;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe0fb;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe0fc;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe0fd;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe0fe;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe0ff;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe100;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe101;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe102;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe103;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe104;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe105;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe106;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe107;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe108;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe109;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe10a;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe10b;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe10c;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe10d;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe10e;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe10f;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe110;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe111;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe112;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe113;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe114;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe115;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe116;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe117;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe118;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe119;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe11a;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe11b;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe11c;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe11d;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe11e;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe11f;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe120;"></span>
                    </li>
                    <li>
                      <span class="fs1" aria-hidden="true" data-icon="&#xe121;"></span>
                    </li>
                  </ul>
                  <div class="clearfix"></div>
                </div>
              </div>
            </div>
          </div>

          <div class="row-fluid">
            <div class="span6">
              <div class="widget no-margin">
                <div class="widget-header">
                  <div class="title">
                    <span class="fs1" aria-hidden="true" data-icon=""></span> Buttons
                  </div>
                </div>
                <div class="widget-body">
                  <button class="btn hidden-tablet" type="button">
                    Default
                  </button>
                  <button class="btn btn-success" type="button">
                    Success
                  </button>
                  <button class="btn btn-warning2 hidden-tablet" type="button">
                    Warning
                  </button>
                  <button class="btn btn-warning input-top-margin" type="button">
                    Warning
                  </button>
                  <button class="btn btn-danger input-top-margin" type="button">
                    Danger
                  </button>
                  <button class="btn btn-primary input-top-margin" type="button">
                    Primary
                  </button>
                </div>
              </div>
            </div>

            <div class="span6">
              <div class="widget">
                <div class="widget-header">
                  <div class="title">
                    <span class="fs1" aria-hidden="true" data-icon=""></span> Dropdowns
                  </div>
                </div>
                <div class="widget-body">
                  <div class="btn-toolbar" style="margin: 0;">
                    <div class="btn-group">
                      <button class="btn btn-danger">
                        Danger
                      </button>
                      <button data-toggle="dropdown" class="btn btn-danger dropdown-toggle">
                        <span class="caret">
                        </span>
                      </button>
                      <ul class="dropdown-menu pull-right">
                        <li>
                          <a href="#" data-original-title="">
                            Action
                          </a>
                        </li>
                        <li>
                          <a href="#" data-original-title="">
                            Another action
                          </a>
                        </li>
                      </ul>
                    </div>

                    <div class="btn-group">
                      <button class="btn btn-warning hidden-tablet">
                        Warning
                      </button>
                      <button data-toggle="dropdown" class="btn btn-warning dropdown-toggle">
                        <span class="caret">
                        </span>
                      </button>
                      <ul class="dropdown-menu pull-right">
                        <li>
                          <a href="#" data-original-title="">
                            Action
                          </a>
                        </li>
                        <li>
                          <a href="#" data-original-title="">
                            Another action
                          </a>
                        </li>
                      </ul>
                    </div>

                    <div class="btn-group input-left-top-margins">
                      <button class="btn btn-success">
                        Success
                      </button>
                      <button data-toggle="dropdown" class="btn btn-success dropdown-toggle">
                        <span class="caret">
                        </span>
                      </button>
                      <ul class="dropdown-menu pull-right">
                        <li>
                          <a href="#" data-original-title="">
                            Action
                          </a>
                        </li>
                        <li>
                          <a href="#" data-original-title="">
                            Another action
                          </a>
                        </li>
                      </ul>
                    </div>

                    <div class="btn-group input-top-margin">
                      <button class="btn btn-info">
                        Info
                      </button>
                      <button data-toggle="dropdown" class="btn btn-info dropdown-toggle">
                        <span class="caret">
                        </span>
                      </button>
                      <ul class="dropdown-menu pull-right">
                        <li>
                          <a href="#" data-original-title="">
                            Action
                          </a>
                        </li>
                        <li>
                          <a href="#" data-original-title="">
                            Another action
                          </a>
                        </li>
                      </ul>
                    </div>

                    <div class="btn-group input-top-margin">
                      <button class="btn btn-inverse hidden-tablet">
                        Inverse
                      </button>
                      <button data-toggle="dropdown" class="btn btn-inverse dropdown-toggle">
                        <span class="caret">
                        </span>
                      </button>
                      <ul class="dropdown-menu pull-right">
                        <li>
                          <a href="#" data-original-title="">
                            Action
                          </a>
                        </li>
                        <li>
                          <a href="#" data-original-title="">
                            Another action
                          </a>
                        </li>
                      </ul>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>

          <div class="row-fluid">
            <div class="span2">
              <div class="widget">
                <div class="widget-header">
                  <div class="title">
                    <span class="fs1" aria-hidden="true" data-icon=""></span> Buttons
                  </div>
                </div>
                <div class="widget-body">
                  <div class="row-fluid">
                    <button class="btn btn-large btn-info btn-block" type="button">
                      Large button
                    </button>
                    <button class="btn btn-warning btn-block" type="button">
                      Default button
                    </button>
                    <button class="btn btn-success btn-block" type="button">
                      <span class="fs1" aria-hidden="true" data-icon="&#xe1a6;"></span> Pinterest
                    </button>
                    <button class="btn btn-small btn-warning2 btn-block" type="button">
                      Small button
                    </button>
                    <button class="btn btn-mini btn-primary btn-block" type="button">
                      Mini button
                    </button>
                    <button class="btn btn-small btn-inverse btn-block" type="button">
                      Small button
                    </button>
                    <button class="btn btn-small btn-block" type="button">
                      Small button
                    </button>
                    <a href="#" class="btn btn-mini btn-warning2 disabled btn-block" data-original-title="">
                      Primary link disabled
                    </a>
                    <a href="#" class="btn btn-mini disabled btn-block" data-original-title="">
                      Link disabled
                    </a>
                  </div>
                </div>
              </div>
            </div>

            <div class="span2">
              <div class="widget">
                <div class="widget-header">
                  <div class="title">
                    <span class="fs1" aria-hidden="true" data-icon="&#xe0b5;"></span> Icon List
                  </div>
                </div>
                <div class="widget-body">
                  <ul>
                    <li><i class="icon-star"></i> star</li>
                    <li><i class="icon-off"></i> off</li>
                    <li><i class="icon-signal"></i> signal</li>
                    <li><i class="icon-star-empty"></i> star-empty</li>
                    <li><i class="icon-th-large"></i> th-large</li>
                    <li><i class="icon-th"></i> th</li>
                    <li><i class="icon-th-list"></i> th-list</li>
                    <li><i class="icon-ok"></i> ok</li>
                    <li><i class="icon-off"></i> off</li>
                    <li><i class="icon-font"></i> font</li>
                    <li><i class="icon-time"></i> time</li>
                    <li><i class="icon-inbox"></i> inbox</li>
                    <li><i class="icon-play-circle"></i> play-circle</li>
                    <li><i class="icon-repeat"></i> repeat</li>
                    <li><i class="icon-refresh"></i> refresh</li>
                    <li><i class="icon-list-alt"></i> list-alt</li>
                  </ul>
                </div>
              </div>
            </div>

            <div class="span2">
              <div class="widget">
                <div class="widget-header">
                  <div class="title">
                    <span class="fs1" aria-hidden="true" data-icon="&#xe0b5;"></span> Icon List
                  </div>
                </div>
                <div class="widget-body">
                  <ul>
                    <li><i class="icon-volume-off"></i> volume-off</li>
                    <li><i class="icon-volume-down"></i> volume-down</li>
                    <li><i class="icon-volume-up"></i> volume-up</li>
                    <li><i class="icon-font"></i> font</li>
                    <li><i class="icon-align-left"></i> align-left</li>
                    <li><i class="icon-align-center"></i> align-center</li>
                    <li><i class="icon-align-right"></i> align-right</li>
                    <li><i class="icon-align-justify"></i> align-justify</li>
                    <li><i class="icon-list"></i> list</li>
                    <li><i class="icon-indent-left"></i> indent-left</li>
                    <li><i class="icon-indent-right"></i> indent-right</li>
                    <li><i class="icon-facetime-video"></i> facetime-video</li>
                    <li><i class="icon-picture"></i> picture</li>
                    <li><i class="icon-map-marker"></i> map-marker</li>
                    <li><i class="icon-adjust"></i> adjust</li>
                    <li><i class="icon-tint"></i> tint</li>
                  </ul>
                </div>
              </div>
            </div>

            <div class="span2">
              <div class="widget">
                <div class="widget-header">
                  <div class="title">
                    <span class="fs1" aria-hidden="true" data-icon="&#xe0b5;"></span> Icon List
                  </div>
                </div>
                <div class="widget-body">
                  <ul>
                    <li><i class="icon-edit"></i> edit</li>
                    <li><i class="icon-share"></i> share</li>
                    <li><i class="icon-check"></i> check</li>
                    <li><i class="icon-move"></i> move</li>
                    <li><i class="icon-step-backward"></i> step-backward</li>
                    <li><i class="icon-fast-backward"></i> fast-backward</li>
                    <li><i class="icon-play"></i> play</li>
                    <li><i class="icon-pause"></i> pause</li>
                    <li><i class="icon-fast-forward"></i> fast-forward</li>
                    <li><i class="icon-step-forward"></i> step-forward</li>
                    <li><i class="icon-chevron-left"></i> chevron-left</li>
                    <li><i class="icon-chevron-right"></i> chevron-right</li>
                    <li><i class="icon-plus-sign"></i> plus-sign</li>
                    <li><i class="icon-minus-sign"></i> minus-sign</li>
                    <li><i class="icon-remove-sign"></i> remove-sign</li>
                    <li><i class="icon-ok-sign"></i> ok-sign</li>
                  </ul>
                </div>
              </div>
            </div>

            <div class="span2">
              <div class="widget">
                <div class="widget-header">
                  <div class="title">
                    <span class="fs1" aria-hidden="true" data-icon="&#xe0b5;"></span> Icon List
                  </div>
                </div>
                <div class="widget-body">
                  <ul>
                    <li><i class="icon-question-sign"></i> question-sign</li>
                    <li><i class="icon-info-sign"></i> info-sign</li>
                    <li><i class="icon-screenshot"></i> screenshot</li>
                    <li><i class="icon-remove-circle"></i> remove-circle</li>
                    <li><i class="icon-ok-circle"></i> ok-circle</li>
                    <li><i class="icon-ban-circle"></i> ban-circle</li>
                    <li><i class="icon-share-alt"></i> share-alt</li>
                    <li><i class="icon-resize-full"></i> resize-full</li>
                    <li><i class="icon-resize-small"></i> resize-small</li>
                    <li><i class="icon-asterisk"></i> asterisk</li>
                    <li><i class="icon-exclamation-sign"></i> exclamation-sign</li>
                    <li><i class="icon-eye-open"></i> eye-open</li>
                    <li><i class="icon-eye-close"></i> eye-close</li>
                    <li><i class="icon-warning-sign"></i> warning-sign</li>
                    <li><i class="icon-plane"></i> plane</li>
                    <li><i class="icon-random"></i> random</li>
                  </ul>
                </div>
              </div>
            </div>

            <div class="span2">
              <div class="widget">
                <div class="widget-header">
                  <div class="title">
                    <span class="fs1" aria-hidden="true" data-icon="&#xe0b5;"></span> Icon List
                  </div>
                </div>
                <div class="widget-body">
                  <ul>
                    <li><i class="icon-chevron-up"></i> chevron-up</li>
                    <li><i class="icon-chevron-down"></i> chevron-down</li>
                    <li><i class="icon-retweet"></i> retweet</li>
                    <li><i class="icon-shopping-cart"></i> shopping-cart</li>
                    <li><i class="icon-folder-close"></i> folder-close</li>
                    <li><i class="icon-resize-vertical"></i> resize-vertical</li>
                    <li><i class="icon-resize-horizontal"></i> resize-horizontal</li>
                    <li><i class="icon-hdd"></i> hdd</li>
                    <li><i class="icon-certificate"></i> certificate</li>
                    <li><i class="icon-thumbs-down"></i> thumbs-down</li>
                    <li><i class="icon-hand-right"></i> hand-right</li>
                    <li><i class="icon-hand-left"></i> hand-left</li>
                    <li><i class="icon-hand-up"></i> hand-up</li>
                    <li><i class="icon-hand-down"></i> hand-down</li>
                    <li><i class="icon-tasks"></i> tasks</li>
                    <li><i class="icon-fullscreen"></i> fullscreen</li>
                  </ul>
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