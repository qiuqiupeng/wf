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
    <meta name="keywords" content="StartUp Admin UI, Admin UI, Admin Dashboard, Srinu Basava, Best admin UI, Best backend UI, Best Dashboard, Responsive admin UI, Responsive dashboard, Responsive Backend, Mobile admin, Mobile Backend, Mobile Dashboard, Responsive admin UI, Responsive dashboard, Responsive Backend, Mobile admin, Mobile Backend, Mobile Dashboard">
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
              <div class="accordion-body in collapse" id="collapseOne" style="height: auto;">
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
              <h2>General Elements</h2>
            </div>
            <div class="pull-right">
              <ul class="stats">
                <li class="color-first">
                  <span class="fs1" aria-hidden="true" data-icon="&#xe0b3;"></span>
                  <div class="details">
                    <span class="big">12</span>
                    <span>New Tasks</span>
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
                    <a class="quick-action-btn span2 input-bottom-margin" data-original-title="You have 1134 messages">
                      <span class="fs1" aria-hidden="true" data-icon="&#xe160;"></span> 
                      <p class="no-margin">Inbox</p>
                      <div class="label label-important">134</div>
                    </a>
                    <a class="quick-action-btn span2 input-bottom-margin" data-original-title="You have 39 attachments">
                      <span class="fs1" aria-hidden="true" data-icon="&#xe0c5;"></span> 
                      <p class="no-margin">Attachments</p>
                      <div class="label label-info">39</div>
                    </a>
                    <a class="quick-action-btn span2 input-bottom-margin" data-original-title="You sent 4695 emails">
                      <span class="fs1" aria-hidden="true" data-icon="&#xe09f;"></span> 
                      <p class="no-margin">Sent</p>
                      <div class="label label-success">4695</div>
                    </a>
                    <a class="quick-action-btn span2 input-bottom-margin" data-original-title="5993 filters">
                      <span class="fs1" aria-hidden="true" data-icon="&#xe13f;"></span> 
                      <p class="no-margin">Filters</p>
                      <div class="label label-warning">5993</div>
                    </a>
                    <a class="quick-action-btn span2 input-bottom-margin" data-original-title="1333 chats">
                      <span class="fs1" aria-hidden="true" data-icon="&#xe06c;"></span> 
                      <p class="no-margin">Chats</p>
                      <div class="label label-important">1333</div>
                    </a>
                    <a class="quick-action-btn span2 input-bottom-margin" data-original-title="You have 499 alert messages">
                      <span class="fs1" aria-hidden="true" data-icon="&#xe04b;"></span> 
                      <p class="no-margin">Alerts</p>
                      <div class="label label-info">449</div>
                    </a>
                  </div>
                </div>
              </div>
            </div>
          </div>

          <div class="row-fluid">
            <div class="span6">
              <div class="widget">
                <div class="widget-header">
                  <div class="title">
                    <span class="fs1" aria-hidden="true" data-icon="&#xe0fc;"></span> Tooltips
                  </div>
                </div>
                <div class="widget-body">
                  <p>
                    Tight pants next level keffiyeh 
                    <a href="#" data-original-title="Default tooltip" style="color: #0C9ABB">
                      you probably
                    </a>
                    haven't heard of fixie sustainable quinoa 8-bit american apparel 
                    <a title="Another tooltip" href="#" style="color: #0C9ABB">
                      have a terry
                    </a>
                    richardson vinyl chambray. Beard stumptown, cardigans banh mi lomo thundercats. 
                    <a title="Another one here too" href="#" style="color: #0C9ABB">
                      whatever keytar
                    </a>
                    , scenester farm-to-table banksy Austin 
                    <a title="The last tip!" href="#" style="color: #0C9ABB">
                      twitter handle
                    </a>
                    freegan cred raw denim single-origin coffee viral.
                  </p>
                  <a data-original-title="tooltips in top" data-placement="top" class="btn btn-info">
                    Top
                  </a>
                  <a data-original-title="tooltips in right" data-placement="right" class="btn btn-success">
                    Right
                  </a>
                  <a data-original-title="tooltips in bottom" data-placement="bottom" class="btn btn-warning2">
                    Bottom
                  </a>
                  <a data-original-title="tooltips in left" data-placement="left" class="btn btn-warning">
                    Left
                  </a>
                </div>
              </div>
            </div>

            <div class="span6">
              <div class="widget">
                <div class="widget-header">
                  <div class="title">
                    <span class="fs1" aria-hidden="true" data-icon="&#xe0fc;"></span> Popover
                  </div>
                </div>
                <div class="widget-body">
                  <p>
                    Tight pants next level keffiyeh 
                    <span data-content="Vivamus sagittis lacus vel augue laoreet rutrum faucibus." data-placement="top" class="popover-pop" data-original-title="Popover on top" style="color: #0C9ABB; cursor: pointer">
                      you probably
                    </span>
                    haven't heard of fixie sustainable quinoa 8-bit american apparel 
                    <span data-content="Vivamus sagittis lacus vel augue laoreet rutrum faucibus." data-placement="right" class="popover-pop" data-original-title="Popover on right" style="color: #0C9ABB; cursor: pointer">
                      have a terry
                    </span>
                    richardson vinyl chambray. Beard stumptown, cardigans banh mi lomo thundercats. 
                    <span data-content="Vivamus sagittis lacus vel augue laoreet rutrum faucibus." data-placement="bottom" class="popover-pop" data-original-title="Popover on bottom" style="color: #0C9ABB; cursor: pointer">
                      whatever keytar
                    </span>
                    , scenester farm-to-table banksy Austin 
                    <span data-content="Vivamus sagittis lacus vel augue laoreet rutrum faucibus." data-placement="left" class="popover-pop" data-original-title="Popover on left" style="color: #0C9ABB; cursor: pointer">
                      twitter handle
                    </span>
                    freegan cred raw denim single-origin coffee viral.
                  </p>
                  <button data-content="Vivamus sagittis lacus vel augue laoreet rutrum faucibus." data-placement="top" class="btn btn-info popover-pop" data-original-title="Popover on top">
                    Top
                  </button>
                  <button data-content="Vivamus sagittis lacus vel augue laoreet rutrum faucibus." data-placement="right" class="btn btn-success popover-pop" data-original-title="Popover on right">
                    Right
                  </button>
                  <button data-content="Vivamus sagittis lacus vel augue laoreet rutrum faucibus." data-placement="bottom" class="btn btn-warning2 popover-pop" data-original-title="Popover on bottom">
                    Bottom
                  </button>
                  <button data-content="Vivamus sagittis lacus vel augue laoreet rutrum faucibus." data-placement="left" class="btn btn-warning popover-pop" data-original-title="Popover on left">
                    Left
                  </button>
                </div>
              </div>
            </div>
          </div>

          <div class="row-fluid">
            <div class="span12">
              <div class="widget">
                <div class="widget-header">
                  <div class="title">
                    <span class="fs1" aria-hidden="true" data-icon="&#xe0f4;"></span> Notifications
                  </div>
                </div>
                <div class="widget-body">

                  <div class="alert alert-block alert-error fade in">
                    <button data-dismiss="alert" class="close" type="button">
                      ×
                    </button>
                    <h4 class="alert-heading">
                      Error!
                    </h4>
                    <p>
                      Methodologies eyeballs incentivize models. Platforms web-enabled cultivate dynamic synergies: technologies content
                    </p>
                  </div>

                  <div class="alert alert-block alert-warning fade in">
                    <button data-dismiss="alert" class="close" type="button">
                      ×
                    </button>
                    <h4 class="alert-heading">
                      Warning!
                    </h4>
                    <p>
                      Methodologies eyeballs incentivize models. Platforms web-enabled cultivate dynamic synergies: technologies content deploy ROI communities
                    </p>
                  </div>

                  <div class="alert alert-block alert-success fade in">
                    <button data-dismiss="alert" class="close" type="button">
                      ×
                    </button>
                    <h4 class="alert-heading">
                      Success!
                    </h4>
                    <p>
                      Methodologies eyeballs incentivize models. Platforms web-enabled cultivate dynamic synergies: technologies deploy communities methodologies sticky
                    </p>
                  </div>

                  <div class="alert alert-block alert-info fade in no-margin">
                    <button data-dismiss="alert" class="close" type="button">
                      ×
                    </button>
                    <h4 class="alert-heading">
                      Info!
                    </h4>
                    <p>
                      Eyeballs incentivize models. Platforms web-enabled cultivate dynamic synergies: technologies content deploy ROI communities methodologies sticky
                    </p>
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
                    <span class="fs1" aria-hidden="true" data-icon="&#xe14c;"></span> Accordion
                  </div>
                </div>
                <div class="widget-body">
                  <div id="accordion2" class="accordion no-margin">
                    <div class="accordion-group">
                      <div class="accordion-heading">
                        <a href="#collapseA" data-parent="#accordion2" data-toggle="collapse" class="accordion-toggle">
                          <span class="fs1" aria-hidden="true" data-icon="&#xe0e2;"></span>
                          About me
                        </a>
                      </div>
                      <div class="accordion-body in collapse" id="collapseA" style="height: auto;">
                        <div class="accordion-inner">
                          Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor
                        </div>
                      </div>
                    </div>
                    <div class="accordion-group">
                      <div class="accordion-heading">
                        <a href="#collapseB" data-parent="#accordion2" data-toggle="collapse" class="accordion-toggle">
                          <span class="fs1" aria-hidden="true" data-icon="&#xe0c6;"></span>
                          Portfolio
                        </a>
                      </div>
                      <div class="accordion-body collapse" id="collapseB" style="height: 0px;">
                        <div class="accordion-inner">
                          Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor
                        </div>
                      </div>
                    </div>
                    <div class="accordion-group">
                      <div class="accordion-heading">
                        <a href="#collapseC" data-parent="#accordion2" data-toggle="collapse" class="accordion-toggle">
                          <span class="fs1" aria-hidden="true" data-icon="&#xe160;"></span>
                          Contact me
                        </a>
                      </div>
                      <div class="accordion-body collapse" id="collapseC" style="height: 0px;">
                        <div class="accordion-inner">
                          Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor
                        </div>
                      </div>
                    </div>
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
                    <span class="fs1" aria-hidden="true" data-icon="&#xe1cf;"></span> 12 columns responsive grid
                  </div>
                </div>
                <div class="widget-body">
                  <div class="row-fluid show-grid">
                    <div class="span1">1</div>
                    <div class="span1 input-top-margin">1</div>
                    <div class="span1 input-top-margin">1</div>
                    <div class="span1 input-top-margin">1</div>
                    <div class="span1 input-top-margin">1</div>
                    <div class="span1 input-top-margin">1</div>
                    <div class="span1 input-top-margin">1</div>
                    <div class="span1 input-top-margin">1</div>
                    <div class="span1 input-top-margin">1</div>
                    <div class="span1 input-top-margin">1</div>
                    <div class="span1 input-top-margin">1</div>
                    <div class="span1 input-top-margin">1</div>
                  </div>
                  <div class="row-fluid show-grid">
                    <div class="span2">2</div>
                    <div class="span2 input-top-margin">2</div>
                    <div class="span2 input-top-margin">2</div>
                    <div class="span2 input-top-margin">2</div>
                    <div class="span2 input-top-margin">2</div>
                    <div class="span2 input-top-margin">2</div>
                  </div>
                  <div class="row-fluid show-grid">
                    <div class="span3">3</div>
                    <div class="span3 input-top-margin">3</div>
                    <div class="span3 input-top-margin">3</div>
                    <div class="span3 input-top-margin">3</div>
                  </div>
                  <div class="row-fluid show-grid">
                    <div class="span4">4</div>
                    <div class="span4 input-top-margin">4</div>
                    <div class="span4 input-top-margin">4</div>
                  </div>
                  <div class="row-fluid show-grid">
                    <div class="span4">4</div>
                    <div class="span8 input-top-margin">8</div>
                  </div>
                  <div class="row-fluid show-grid">
                    <div class="span3">3</div>
                    <div class="span9 input-top-margin">9</div>
                  </div>
                  <div class="row-fluid show-grid">
                    <div class="span6">6</div>
                    <div class="span6 input-top-margin">6</div>
                  </div>
                  <div class="row-fluid show-grid no-margin">
                    <div class="span12">12</div>
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
                    <span class="fs1" aria-hidden="true" data-icon="&#xe0c9;"></span> Bookmarks Metro Navigation
                  </div>
                </div>
                <div class="widget-body">
                  <div class="row-fluid">
                    <div class="metro-nav">
                      <div class="metro-nav-block nav-block-orange">
                        <a href="#" >
                          <div class="fs1" aria-hidden="true" data-icon="&#xe074;"></div>
                          <div class="info">789</div>
                          <div class="brand">Clients</div>
                        </a>
                      </div>
                      <div class="metro-nav-block nav-block-red">
                        <a href="#">
                          <div class="fs1" aria-hidden="true" data-icon="&#xe036;"></div>
                          <div class="info">6447</div>
                          <div class="brand">Sales</div>
                        </a>
                      </div>
                      <div class="metro-nav-block nav-block-blue double">
                        <a href="#">
                          <div class="fs1" aria-hidden="true" data-icon="&#xe130;"></div>
                          <div class="info">$11907</div>
                          <div class="brand">Income</div>
                        </a>
                      </div>
                      <div class="metro-nav-block nav-block-green">
                        <a href="#">
                          <div class="fs1" aria-hidden="true" data-icon="&#xe09c;"></div>
                          <div class="info">$2635</div>
                          <div class="brand">Expenses</div>
                        </a>
                      </div>
                      <div class="metro-nav-block nav-block-red">
                        <a href="#">
                          <div class="fs1" aria-hidden="true" data-icon="&#xe0d4;"></div>
                          <div class="info">1289</div>
                          <div class="brand">Likes</div>
                        </a>
                      </div>
                      <div class="metro-nav-block nav-block-green">
                        <a href="#">
                          <div class="fs1" aria-hidden="true" data-icon="&#xe0d6;"></div>
                          <div class="info">225</div>
                          <div class="brand">Signups</div>
                        </a>
                      </div>
                      <div class="metro-nav-block nav-block-green double">
                        <a href="#">
                          <div class="fs1" aria-hidden="true" data-icon="&#xe038;"></div>
                          <div class="info">$59435</div>
                          <div class="brand">Stock</div>
                        </a>
                      </div>
                      <div class="metro-nav-block nav-block-orange">
                        <a href="#">
                          <div class="fs1" aria-hidden="true" data-icon="&#xe1c5;"></div>
                          <div class="info">1321</div>
                          <div class="brand">Emails</div>
                        </a>
                      </div>
                      <div class="metro-nav-block nav-block-blue">
                        <a href="#">
                          <div class="fs1" aria-hidden="true" data-icon="&#xe169;"></div>
                          <div class="info">115</div>
                          <div class="brand">Shares</div>
                        </a>
                      </div>
                      <div class="metro-nav-block nav-block-yellow">
                        <a href="#">
                          <div class="fs1" aria-hidden="true" data-icon="&#xe16d;"></div>
                          <div class="info">1197</div>
                          <div class="brand">Tweets</div>
                        </a>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          
          <div class="row-fluid">
            <div class="span4">
              <div class="widget">
                <div class="widget-header">
                  <div class="title">
                    <span class="fs1" aria-hidden="true" data-icon="&#xe0b6;"></span> Pagination
                  </div>
                </div>
                <div class="widget-body">
                  <div class="pagination no-margin">
                    <ul>
                      <li class="disabled">
                        <a href="#">Prev</a>
                      </li>
                      <li class="active">
                        <a href="#">1</a>
                      </li>
                      <li>
                        <a href="#">2</a>
                      </li>
                      <li class="hidden-phone">
                        <a href="#">3</a>
                      </li>
                      <li class="hidden-phone">
                        <a href="#">4</a>
                      </li>
                      <li class="hidden-phone">
                        <a href="#">5</a>
                      </li>
                      <li class="hidden-phone">
                        <a href="#">Next</a>
                      </li>
                    </ul>
                  </div>
                </div>
              </div>
            </div>

            <div class="span4">
              <div class="widget no-margin">
                <div class="widget-header">
                  <div class="title">
                    <span class="fs1" aria-hidden="true" data-icon="&#xe0b6;"></span> Pagination Colored
                  </div>
                </div>
                <div class="widget-body">
                  <div class="btn-group">
                    <button class="btn btn-warning2">
                      1
                    </button>
                    <button class="btn btn-warning">
                      2
                    </button>
                    <button class="btn btn-success">
                      3
                    </button>
                    <button class="btn btn-info">
                      4
                    </button>
                    <button class="btn btn-inverse">
                      5
                    </button>
                  </div>
                </div>
              </div>
            </div>

            <div class="span4">
              <div class="widget no-margin">
                <div class="widget-header">
                  <div class="title">
                    <span class="fs1" aria-hidden="true" data-icon="&#xe0b6;"></span> Simple Menu
                  </div>
                </div>
                <div class="widget-body">
                  <div class="btn-group">
                    <button class="btn btn-info">
                      home
                    </button>
                    <button class="btn btn-info">
                      about
                    </button>
                    <button class="btn btn-info">
                      products
                    </button>
                    <button class="btn btn-info hidden-tablet hidden-phone">
                      contact
                    </button>
                  </div>
                </div>
              </div>
            </div>
          </div>

          <div class="row-fluid">
            <div class="span4">
              <div class="widget">
                <div class="widget-header">
                  <div class="title">
                    <span class="fs1" aria-hidden="true" data-icon="&#xe08c;"></span> Progress bars - Basic
                  </div>
                </div>
                <div class="widget-body">
                  <div class="progress progress-info">
                    <div class="bar" style="width: 20%">
                    </div>
                  </div>
                  <div class="progress progress-success">
                    <div class="bar" style="width: 40%">
                    </div>
                  </div>
                  <div class="progress progress-warning">
                    <div class="bar" style="width: 60%">
                    </div>
                  </div>
                  <div class="progress progress-danger">
                    <div class="bar" style="width: 80%">
                    </div>
                  </div>
                </div>
              </div>
            </div>

            <div class="span4">
              <div class="widget">
                <div class="widget-header">
                  <div class="title">
                    <span class="fs1" aria-hidden="true" data-icon="&#xe08c;"></span> Progress bars - Striped
                  </div>
                </div>
                <div class="widget-body">
                  <div class="progress progress-info progress-striped">
                    <div class="bar" style="width: 20%">
                    </div>
                  </div>
                  <div class="progress progress-success progress-striped">
                    <div class="bar" style="width: 40%">
                    </div>
                  </div>
                  <div class="progress progress-warning progress-striped">
                    <div class="bar" style="width: 60%">
                    </div>
                  </div>
                  <div class="progress progress-danger progress-striped">
                    <div class="bar" style="width: 80%">
                    </div>
                  </div>
                </div>
              </div>
            </div>

            <div class="span4">
              <div class="widget">
                <div class="widget-header">
                  <div class="title">
                    <span class="fs1" aria-hidden="true" data-icon="&#xe08c;"></span> Progress bars - Animated
                  </div>
                </div>
                <div class="widget-body">
                  <div class="progress progress-info progress-striped active">
                    <div class="bar" style="width: 20%">
                    </div>
                  </div>
                  <div class="progress progress-success progress-striped active">
                    <div class="bar" style="width: 40%">
                    </div>
                  </div>
                  <div class="progress progress-warning progress-striped active">
                    <div class="bar" style="width: 60%">
                    </div>
                  </div>
                  <div class="progress progress-danger progress-striped active">
                    <div class="bar" style="width: 80%">
                    </div>
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
                    <span class="fs1" aria-hidden="true" data-icon="&#xe14c;"></span> Labels and badges
                  </div>
                </div>
                <div class="widget-body">
                  <span class="label">
                    Default
                  </span>
                  <span class="label label-success">
                    Success
                  </span>
                  <span class="label label-warning">
                    Warning
                  </span>
                  <span class="label label-important">
                    Important
                  </span>
                  <span class="label label-info">
                    Info
                  </span>
                  <span class="label label-inverse">
                    Inverse
                  </span>

                  <span class="badge">
                    Default
                  </span>
                  <span class="badge badge-success">
                    Success
                  </span>
                  <span class="badge badge-warning">
                    Warning
                  </span>
                  <span class="badge badge-important">
                    Important
                  </span>
                  <span class="badge badge-info">
                    Info
                  </span>
                  <span class="badge badge-inverse">
                    Inverse
                  </span>
                </div>
              </div>
            </div>
          </div>

          <div class="row-fluid">  
            <div class="span4">
              <div class="widget">
                <div class="widget-header">
                  <div class="title">
                    <span class="fs1" aria-hidden="true" data-icon="&#xe0b6;"></span> Modal
                  </div>
                </div>
                <div class="widget-body">
                  <a href="#myModal" role="button" class="btn btn-large btn-warning2 btn-block" data-toggle="modal">
                    Default modal
                  </a>

                  <!-- Modal -->
                  <div id="myModal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                    <div class="modal-header">
                      <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                        ×
                      </button>
                      <h4 id="myModalLabel">
                        Modal header
                      </h4>
                    </div>
                    <div class="modal-body">
                      <p>
                        One fine body…
                      </p>
                    </div>
                    <div class="modal-footer">
                      <button class="btn" data-dismiss="modal" aria-hidden="true">
                        Close
                      </button>
                      <button class="btn btn-primary">
                        Save changes
                      </button>
                    </div>
                  </div>
                </div>
              </div>
            </div>

            <div class="span4">
              <div class="widget">
                <div class="widget-header">
                  <div class="title">
                    <span class="fs1" aria-hidden="true" data-icon="&#xe0b6;"></span> Modal 
                  </div>
                </div>
                <div class="widget-body">
                  <a href="#accSettings" role="button" class="btn btn-large btn-success btn-block" data-toggle="modal">
                    Account Settings
                  </a>

                  <!-- Modal -->
                  <div id="accSettings" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel1" aria-hidden="true">
                    <div class="modal-header">
                      <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                        ×
                      </button>
                      <h4 id="myModalLabel1">
                        Account Settings
                      </h4>
                    </div>
                    <div class="modal-body">
                      <div class="row-fluid">  
                        <div class="span4">
                          <input type="text" class="span12" Placeholder="Frist name">
                        </div>
                        <div class="span4">
                          <input type="text" class="span12" Placeholder="Last name">
                        </div>
                        <div class="span4">
                          <input type="text" class="span12" Placeholder="email">
                        </div>
                      </div>
                      <div class="row-fluid">  
                        <div class="span6">
                          <button class="span12 btn btn-info">Edit name</button>
                        </div>
                        <div class="span6">
                          <button class="span12 input-top-margin btn btn-warning">Edit email</button>
                        </div>
                      </div>
                    </div>
                    <div class="modal-footer">
                      <div class="btn-group pull-left">
                        <button class="btn btn-warning2">
                          <span class="fs1" aria-hidden="true" data-icon="&#xe002;"></span>
                        </button>
                        <button class="btn btn-info">
                          <span class="fs1" aria-hidden="true" data-icon="&#xe06a;"></span>
                        </button>
                        <button class="btn btn-success">
                          <span class="fs1" aria-hidden="true" data-icon="&#xe090;"></span>
                        </button>
                      </div>
                      <button class="btn" data-dismiss="modal" aria-hidden="true">
                        Close
                      </button>
                      <button class="btn btn-primary">
                        Save changes
                      </button>
                    </div>
                  </div>
                </div>
              </div>
            </div>

            <div class="span4">
              <div class="widget">
                <div class="widget-header">
                  <div class="title">
                    <span class="fs1" aria-hidden="true" data-icon="&#xe0b6;"></span> Modal Wizard
                  </div>
                </div>
                <div class="widget-body">
                  <a href="#advanced" role="button" data-toggle="modal" class="btn btn-large btn-info btn-block">Advanced Modal</a>

                  <!-- Advanced Modal -->
                  <div id="advanced" class="modal hide fade" tabindex="-1" role="dialog" aria-hidden="true">
                    <div class="modal-header">
                      <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                      <ul class="nav nav-pills pull-right">
                        <li class="active">
                          <a href="#date" data-toggle="pill">Date</a>
                        </li>
                        <li><a href="#relevance" data-toggle="pill">Relevance</a></li>
                        <li><a href="#dealership" data-toggle="pill">Dealership</a></li>
                      </ul>
                      <h4>Advanced Sort</h4>  
                    </div>
                    <div class="modal-body">
                      <div class="row-fluid">
                        <div class="tab-content">
                          <div class="tab-pane active" id="date">
                            <form>
                              <div class="controls controls-row">
                                <select>
                                  <option>Date</option>
                                  <option>Today</option>
                                  <option>Yesterday</option>
                                  <option>Last Week</option>
                                  <option>Last Month</option>
                                </select>
                              </div>
                              <button type="submit" class="btn btn-warning">Sort</button>
                            </form>
                          </div>
                          <div class="tab-pane" id="relevance">
                            <form>
                              <fieldset>
                                <div class="controls controls-row">
                                  <select class="span6">
                                    <option value="">Relevance Factor</option>
                                    <option value="">Containing</option>
                                    <option value="">Starting with</option>
                                    <option value="">Enging with</option>
                                  </select>
                                  <select class="span6">
                                    <option value="">Sorting</option>
                                    <option value="">Relevant on top</option>
                                    <option value="">Relevant on bottom</option>
                                  </select>
                                </div>
                                <button type="submit" class="btn btn-warning">Sort</button>
                              </fieldset>
                            </form>
                          </div>
                          <div class="tab-pane" id="dealership">
                            <form>
                              <fieldset>
                                <div class="controls controls-row">
                                  <input type="text" class="span8" placeholder="Location">
                                  <select class="span4">
                                    <option>City</option>
                                    <option>Los Angeles</option>
                                    <option>Tokyo</option>
                                    <option>New York</option>
                                    <option>London</option>
                                  </select>
                                </div>
                                <button type="submit" class="btn btn-warning">Sort</button>
                              </fieldset>
                            </form>
                          </div>
                        </div>          
                      </div>
                    </div>
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
                    <span class="fs1" aria-hidden="true" data-icon=""></span> Breadcrumb
                  </div>
                </div>
                <div class="widget-body">
                  <ul class="breadcrumb-beauty">
                    <li>
                      <a href="#" data-original-title="">
                        One
                      </a> 
                    </li>
                    <li>
                      <a href="#" data-original-title="">
                        Two
                      </a>  
                    </li>
                    <li>
                      <a href="#" data-original-title="">
                        Three
                      </a> 
                    </li>
                    <li>
                      <a href="#" data-original-title="">
                        Four
                      </a>   
                    </li>
                  </ul>
                </div>
              </div>
            </div>
          </div>

          <div class="row-fluid">
            <div class="span12">
              <div class="widget no-margin">
                <div class="widget-header">
                  <div class="title">
                    <span class="fs1" aria-hidden="true" data-icon="&#xe0b8;"></span> Radio Button Tabs
                  </div>
                </div>
                <div class="widget-body">
                  <div id="tab" class="btn-group" data-toggle="buttons-radio">
                    <a href="#prices" class="btn active" data-toggle="tab">Prices</a>
                    <a href="#features" class="btn" data-toggle="tab">Features</a>
                    <a href="#requests" class="btn" data-toggle="tab">Requests</a>
                    <a href="#contact" class="btn hidden-phone"  data-toggle="tab">Contact</a>
                  </div>
                  <div class="tab-content no-margin">
                    <div class="tab-pane active" id="prices">Engineer enable strategize visualize architect folksonomies reinvent; enable front-end; world-class ROI disintermediate dynamic, web-enabled efficient B2B robust tag. Deliver, benchmark, "benchmark,". Markets mindshare; compelling citizen-media cross-platform leading-edge, ecologies revolutionary; beta-test web-enabled; revolutionize. Interactive.
                    </div>
                    <div class="tab-pane" id="features">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form. Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC.
                    </div>
                    <div class="tab-pane" id="requests">World-class ROI disintermediate dynamic, web-enabled efficient B2B robust tag. Deliver, benchmark, "benchmark,". Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC.
                    </div>
                    <div class="tab-pane" id="contact">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC. There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form
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