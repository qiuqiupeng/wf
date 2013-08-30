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
              <a href="tables" class="selected">
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
              <h2>Dynamic Tables</h2>
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
              <div class="widget no-margin">
                <div class="widget-header">
                  <div class="title">
                    <span class="fs1" aria-hidden="true" data-icon="&#xe14a;"></span> Dynamic Table
                  </div>
                </div>
                <div class="widget-body">
                  <div id="dt_example" class="example_alt_pagination">
                    <table class="table table-condensed table-striped table-hover table-bordered pull-left" id="data-table">    
                      <thead>
                        <tr>
                          <th style="width:20%">Buyers Name</th>
                          <th style="width:35%">Address</th>
                          <th style="width:15%" class="hidden-phone">Contact</th>
                          <th style="width:15%" class="hidden-phone">Due Amount</th>
                          <th style="width:15%" class="hidden-phone">Actions</th>
                        </tr>
                      </thead>
                      <tbody>
                        <tr class="gradeX">
                          <td>Srinu Basava</td>
                          <td>Tacoma, WA(Washington)</td>
                          <td class="hidden-phone">0099009900</td>
                          <td class="hidden-phone">$22590</td>
                          <td class="hidden-phone">
                            <a href="#" class="btn btn-success btn-small hidden-phone" data-original-title="">email</a>
                            <a href="#accSettings1" role="button" class="btn btn-small btn-primary hidden-tablet hidden-phone" data-toggle="modal" data-original-title="">
                              edit
                            </a>
                              <div id="accSettings1" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel1" aria-hidden="true">
                              <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                                  ×
                                </button>
                                <h4 id="myModalLabel1">
                                  Edit client details
                                </h4>
                              </div>
                              <div class="modal-body">
                                <div class="row-fluid">  
                                  <div class="span4">
                                    <input type="text" class="span12" placeholder="Frist name">
                                  </div>
                                  <div class="span4">
                                    <input type="text" class="span12" placeholder="Last name">
                                  </div>
                                  <div class="span4">
                                    <input type="text" class="span12" placeholder="email">
                                  </div>
                                </div>
                                <div class="row-fluid">  
                                  <div class="span4">
                                    <input type="text" class="span12" placeholder="Contact">
                                  </div>
                                  <div class="span8">
                                    <input type="text" class="span12" placeholder="Address">
                                  </div>
                                </div>
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
                          </td>
                        </tr>
                        <tr class="gradeA">
                          <td>Prem Pillai</td>
                          <td>Fresno, CA 93711-1005</td>
                          <td class="hidden-phone">0006008800</td>
                          <td class="hidden-phone">$98450</td>
                          <td class="hidden-phone">
                            <a href="#" class="btn btn-success btn-small hidden-phone" data-original-title="">email</a>
                            <a href="#accSettings2" role="button" class="btn btn-small btn-primary hidden-tablet hidden-phone" data-toggle="modal" data-original-title="">
                              edit
                            </a>
                              <div id="accSettings2" class="modal hide fade" tabindex="-2" role="dialog" aria-labelledby="myModalLabel2" aria-hidden="true">
                              <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                                  ×
                                </button>
                                <h4 id="myModalLabel2">
                                  Edit client details
                                </h4>
                              </div>
                              <div class="modal-body">
                                <div class="row-fluid">  
                                  <div class="span4">
                                    <input type="text" class="span12" placeholder="Frist name">
                                  </div>
                                  <div class="span4">
                                    <input type="text" class="span12" placeholder="Last name">
                                  </div>
                                  <div class="span4">
                                    <input type="text" class="span12" placeholder="email">
                                  </div>
                                </div>
                                <div class="row-fluid">  
                                  <div class="span4">
                                    <input type="text" class="span12" placeholder="Contact">
                                  </div>
                                  <div class="span8">
                                    <input type="text" class="span12" placeholder="Address">
                                  </div>
                                </div>
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
                          </td>
                        </tr>
                        <tr class="gradeU">
                          <td>Barote babu</td>
                          <td>Baripoda, 35-Africa</td>
                          <td class="hidden-phone">2059990099</td>
                          <td class="hidden-phone">$99876</td>
                          <td class="hidden-phone">
                            <a href="#" class="btn btn-success btn-small hidden-phone" data-original-title="">email</a>
                            <a href="#accSettings3" role="button" class="btn btn-small btn-primary hidden-tablet hidden-phone" data-toggle="modal" data-original-title="">
                              edit
                            </a>
                              <div id="accSettings3" class="modal hide fade" tabindex="-3" role="dialog" aria-labelledby="myModalLabel3" aria-hidden="true">
                              <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                                  ×
                                </button>
                                <h4 id="myModalLabel3">
                                  Edit client details
                                </h4>
                              </div>
                              <div class="modal-body">
                                <div class="row-fluid">  
                                  <div class="span4">
                                    <input type="text" class="span12" placeholder="Frist name">
                                  </div>
                                  <div class="span4">
                                    <input type="text" class="span12" placeholder="Last name">
                                  </div>
                                  <div class="span4">
                                    <input type="text" class="span12" placeholder="email">
                                  </div>
                                </div>
                                <div class="row-fluid">  
                                  <div class="span4">
                                    <input type="text" class="span12" placeholder="Contact">
                                  </div>
                                  <div class="span8">
                                    <input type="text" class="span12" placeholder="Address">
                                  </div>
                                </div>
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
                          </td>
                        </tr>
                        <tr class="gradeC">
                          <td>Arjun Aurs</td>
                          <td>395 - Yumi Street, London</td>
                          <td class="hidden-phone">0088770099</td>
                          <td class="hidden-phone">$44550</td>
                          <td class="hidden-phone">
                            <a href="#" class="btn btn-success btn-small hidden-phone" data-original-title="">email</a>
                            <a href="#accSettings4" role="button" class="btn btn-small btn-primary hidden-tablet hidden-phone" data-toggle="modal" data-original-title="">
                              edit
                            </a>
                              <div id="accSettings4" class="modal hide fade" tabindex="-4" role="dialog" aria-labelledby="myModalLabel4" aria-hidden="true">
                              <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                                  ×
                                </button>
                                <h4 id="myModalLabel4">
                                  Edit client details
                                </h4>
                              </div>
                              <div class="modal-body">
                                <div class="row-fluid">  
                                  <div class="span4">
                                    <input type="text" class="span12" placeholder="Frist name">
                                  </div>
                                  <div class="span4">
                                    <input type="text" class="span12" placeholder="Last name">
                                  </div>
                                  <div class="span4">
                                    <input type="text" class="span12" placeholder="email">
                                  </div>
                                </div>
                                <div class="row-fluid">  
                                  <div class="span4">
                                    <input type="text" class="span12" placeholder="Contact">
                                  </div>
                                  <div class="span8">
                                    <input type="text" class="span12" placeholder="Address">
                                  </div>
                                </div>
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
                          </td>
                        </tr>
                        <tr class="gradeA">
                          <td>Tom Maskerre</td>
                          <td>Brigade road - Africa</td>
                          <td class="hidden-phone">1002001000</td>
                          <td class="hidden-phone">$9992</td>
                          <td class="hidden-phone">
                            <a href="#" class="btn btn-success btn-small hidden-phone" data-original-title="">email</a>
                            <a href="#accSettings5" role="button" class="btn btn-small btn-primary hidden-tablet hidden-phone" data-toggle="modal" data-original-title="">
                              edit
                            </a>
                              <div id="accSettings5" class="modal hide fade" tabindex="-5" role="dialog" aria-labelledby="myModalLabel5" aria-hidden="true">
                              <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                                  ×
                                </button>
                                <h4 id="myModalLabel5">
                                  Edit client details
                                </h4>
                              </div>
                              <div class="modal-body">
                                <div class="row-fluid">  
                                  <div class="span4">
                                    <input type="text" class="span12" placeholder="Frist name">
                                  </div>
                                  <div class="span4">
                                    <input type="text" class="span12" placeholder="Last name">
                                  </div>
                                  <div class="span4">
                                    <input type="text" class="span12" placeholder="email">
                                  </div>
                                </div>
                                <div class="row-fluid">  
                                  <div class="span4">
                                    <input type="text" class="span12" placeholder="Contact">
                                  </div>
                                  <div class="span8">
                                    <input type="text" class="span12" placeholder="Address">
                                  </div>
                                </div>
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
                          </td>
                        </tr>
                        <tr class="gradeX">
                          <td>Maitai Mui</td>
                          <td>24- Chingcgang - China</td>
                          <td class="hidden-phone">0011001100</td>
                          <td class="hidden-phone">$44560</td>
                          <td class="hidden-phone">
                            <a href="#" class="btn btn-success btn-small hidden-phone" data-original-title="">email</a>
                            <a href="#accSettings6" role="button" class="btn btn-small btn-primary hidden-tablet hidden-phone" data-toggle="modal" data-original-title="">
                              edit
                            </a>
                              <div id="accSettings6" class="modal hide fade" tabindex="-6" role="dialog" aria-labelledby="myModalLabel6" aria-hidden="true">
                              <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                                  ×
                                </button>
                                <h4 id="myModalLabel6">
                                  Edit client details
                                </h4>
                              </div>
                              <div class="modal-body">
                                <div class="row-fluid">  
                                  <div class="span4">
                                    <input type="text" class="span12" placeholder="Frist name">
                                  </div>
                                  <div class="span4">
                                    <input type="text" class="span12" placeholder="Last name">
                                  </div>
                                  <div class="span4">
                                    <input type="text" class="span12" placeholder="email">
                                  </div>
                                </div>
                                <div class="row-fluid">  
                                  <div class="span4">
                                    <input type="text" class="span12" placeholder="Contact">
                                  </div>
                                  <div class="span8">
                                    <input type="text" class="span12" placeholder="Address">
                                  </div>
                                </div>
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
                          </td>
                        </tr>
                        <tr class="gradeU">
                          <td>Himresh Mayi</td>
                          <td>Anniston, AL 36207-1211</td>
                          <td class="hidden-phone">0000002200</td>
                          <td class="hidden-phone">$88790</td>
                          <td class="hidden-phone">
                            <a href="#" class="btn btn-success btn-small hidden-phone" data-original-title="">email</a>
                            <a href="#accSettings7" role="button" class="btn btn-small btn-primary hidden-tablet hidden-phone" data-toggle="modal" data-original-title="">
                              edit
                            </a>
                              <div id="accSettings7" class="modal hide fade" tabindex="-7" role="dialog" aria-labelledby="myModalLabel7" aria-hidden="true">
                              <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                                  ×
                                </button>
                                <h4 id="myModalLabel7">
                                  Edit client details
                                </h4>
                              </div>
                              <div class="modal-body">
                                <div class="row-fluid">  
                                  <div class="span4">
                                    <input type="text" class="span12" placeholder="Frist name">
                                  </div>
                                  <div class="span4">
                                    <input type="text" class="span12" placeholder="Last name">
                                  </div>
                                  <div class="span4">
                                    <input type="text" class="span12" placeholder="email">
                                  </div>
                                </div>
                                <div class="row-fluid">  
                                  <div class="span4">
                                    <input type="text" class="span12" placeholder="Contact">
                                  </div>
                                  <div class="span8">
                                    <input type="text" class="span12" placeholder="Address">
                                  </div>
                                </div>
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
                          </td>
                        </tr>
                        <tr class="gradeU">
                          <td>Gajju Marnison</td>
                          <td>Downingtown, PA 1133-1209</td>
                          <td class="hidden-phone">1234321678</td>
                          <td class="hidden-phone">$9908</td>
                          <td class="hidden-phone">
                            <a href="#" class="btn btn-success btn-small hidden-phone" data-original-title="">email</a>
                            <a href="#accSettings8" role="button" class="btn btn-small btn-primary hidden-tablet hidden-phone" data-toggle="modal" data-original-title="">
                              edit
                            </a>
                              <div id="accSettings8" class="modal hide fade" tabindex="-8" role="dialog" aria-labelledby="myModalLabel8" aria-hidden="true">
                              <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                                  ×
                                </button>
                                <h4 id="myModalLabel8">
                                  Edit client details
                                </h4>
                              </div>
                              <div class="modal-body">
                                <div class="row-fluid">  
                                  <div class="span4">
                                    <input type="text" class="span12" placeholder="Frist name">
                                  </div>
                                  <div class="span4">
                                    <input type="text" class="span12" placeholder="Last name">
                                  </div>
                                  <div class="span4">
                                    <input type="text" class="span12" placeholder="email">
                                  </div>
                                </div>
                                <div class="row-fluid">  
                                  <div class="span4">
                                    <input type="text" class="span12" placeholder="Contact">
                                  </div>
                                  <div class="span8">
                                    <input type="text" class="span12" placeholder="Address">
                                  </div>
                                </div>
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
                          </td>
                        </tr>
                        <tr class="gradeA">
                          <td>Powell Pack</td>
                          <td>South Orange, NJ</td>
                          <td class="hidden-phone">1123889911</td>
                          <td class="hidden-phone">$77651</td>
                          <td class="hidden-phone">
                            <a href="#" class="btn btn-success btn-small hidden-phone" data-original-title="">email</a>
                            <a href="#accSettings9" role="button" class="btn btn-small btn-primary hidden-tablet hidden-phone" data-toggle="modal" data-original-title="">
                              edit
                            </a>
                              <div id="accSettings9" class="modal hide fade" tabindex="-9" role="dialog" aria-labelledby="myModalLabel9" aria-hidden="true">
                              <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                                  ×
                                </button>
                                <h4 id="myModalLabel9">
                                  Edit client details
                                </h4>
                              </div>
                              <div class="modal-body">
                                <div class="row-fluid">  
                                  <div class="span4">
                                    <input type="text" class="span12" placeholder="Frist name">
                                  </div>
                                  <div class="span4">
                                    <input type="text" class="span12" placeholder="Last name">
                                  </div>
                                  <div class="span4">
                                    <input type="text" class="span12" placeholder="email">
                                  </div>
                                </div>
                                <div class="row-fluid">  
                                  <div class="span4">
                                    <input type="text" class="span12" placeholder="Contact">
                                  </div>
                                  <div class="span8">
                                    <input type="text" class="span12" placeholder="Address">
                                  </div>
                                </div>
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
                          </td>
                        </tr>
                        <tr class="gradeU">
                          <td>Kinsin Mane</td>
                          <td>Dublin, OH 13019-8579</td>
                          <td class="hidden-phone">1919189191</td>
                          <td class="hidden-phone">$22189</td>
                          <td class="hidden-phone">
                            <a href="#" class="btn btn-success btn-small hidden-phone" data-original-title="">email</a>
                            <a href="#accSettings10" role="button" class="btn btn-small btn-primary hidden-tablet hidden-phone" data-toggle="modal" data-original-title="">
                              edit
                            </a>
                              <div id="accSettings10" class="modal hide fade" tabindex="-10" role="dialog" aria-labelledby="myModalLabel10" aria-hidden="true">
                              <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                                  ×
                                </button>
                                <h4 id="myModalLabel10">
                                  Edit client details
                                </h4>
                              </div>
                              <div class="modal-body">
                                <div class="row-fluid">  
                                  <div class="span4">
                                    <input type="text" class="span12" placeholder="Frist name">
                                  </div>
                                  <div class="span4">
                                    <input type="text" class="span12" placeholder="Last name">
                                  </div>
                                  <div class="span4">
                                    <input type="text" class="span12" placeholder="email">
                                  </div>
                                </div>
                                <div class="row-fluid">  
                                  <div class="span4">
                                    <input type="text" class="span12" placeholder="Contact">
                                  </div>
                                  <div class="span8">
                                    <input type="text" class="span12" placeholder="Address">
                                  </div>
                                </div>
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
                          </td>
                        </tr>
                        <tr class="gradeU">
                          <td>Barote babu</td>
                          <td>Baripoda, 35-Africa</td>
                          <td class="hidden-phone">2059990099</td>
                          <td class="hidden-phone">$99876</td>
                          <td class="hidden-phone">
                            <a href="#" class="btn btn-success btn-small hidden-phone" data-original-title="">email</a>
                            <a href="#accSettings11" role="button" class="btn btn-small btn-primary hidden-tablet hidden-phone" data-toggle="modal" data-original-title="">
                              edit
                            </a>
                              <div id="accSettings11" class="modal hide fade" tabindex="-11" role="dialog" aria-labelledby="myModalLabel11" aria-hidden="true">
                              <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                                  ×
                                </button>
                                <h4 id="myModalLabel11">
                                  Edit client details
                                </h4>
                              </div>
                              <div class="modal-body">
                                <div class="row-fluid">  
                                  <div class="span4">
                                    <input type="text" class="span12" placeholder="Frist name">
                                  </div>
                                  <div class="span4">
                                    <input type="text" class="span12" placeholder="Last name">
                                  </div>
                                  <div class="span4">
                                    <input type="text" class="span12" placeholder="email">
                                  </div>
                                </div>
                                <div class="row-fluid">  
                                  <div class="span4">
                                    <input type="text" class="span12" placeholder="Contact">
                                  </div>
                                  <div class="span8">
                                    <input type="text" class="span12" placeholder="Address">
                                  </div>
                                </div>
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
                          </td>
                        </tr>
                        <tr class="gradeA">
                          <td>Tom Maskerre</td>
                          <td>Brigade road - Africa</td>
                          <td class="hidden-phone">1002001000</td>
                          <td class="hidden-phone">$9992</td>
                          <td class="hidden-phone">
                            <a href="#" class="btn btn-success btn-small hidden-phone" data-original-title="">email</a>
                            <a href="#accSettings12" role="button" class="btn btn-small btn-primary hidden-tablet hidden-phone" data-toggle="modal" data-original-title="">
                              edit
                            </a>
                              <div id="accSettings12" class="modal hide fade" tabindex="-12" role="dialog" aria-labelledby="myModalLabel12" aria-hidden="true">
                              <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                                  ×
                                </button>
                                <h4 id="myModalLabel12">
                                  Edit client details
                                </h4>
                              </div>
                              <div class="modal-body">
                                <div class="row-fluid">  
                                  <div class="span4">
                                    <input type="text" class="span12" placeholder="Frist name">
                                  </div>
                                  <div class="span4">
                                    <input type="text" class="span12" placeholder="Last name">
                                  </div>
                                  <div class="span4">
                                    <input type="text" class="span12" placeholder="email">
                                  </div>
                                </div>
                                <div class="row-fluid">  
                                  <div class="span4">
                                    <input type="text" class="span12" placeholder="Contact">
                                  </div>
                                  <div class="span8">
                                    <input type="text" class="span12" placeholder="Address">
                                  </div>
                                </div>
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
                          </td>
                        </tr>
                        <tr class="gradeX">
                          <td>Maitai Mui</td>
                          <td>24- Chingcgang - China</td>
                          <td class="hidden-phone">0011001100</td>
                          <td class="hidden-phone">$44560</td>
                          <td class="hidden-phone">
                            <a href="#" class="btn btn-success btn-small hidden-phone" data-original-title="">email</a>
                            <a href="#accSettings13" role="button" class="btn btn-small btn-primary hidden-tablet hidden-phone" data-toggle="modal" data-original-title="">
                              edit
                            </a>
                              <div id="accSettings13" class="modal hide fade" tabindex="-13" role="dialog" aria-labelledby="myModalLabel13" aria-hidden="true">
                              <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                                  ×
                                </button>
                                <h4 id="myModalLabel13">
                                  Edit client details
                                </h4>
                              </div>
                              <div class="modal-body">
                                <div class="row-fluid">  
                                  <div class="span4">
                                    <input type="text" class="span12" placeholder="Frist name">
                                  </div>
                                  <div class="span4">
                                    <input type="text" class="span12" placeholder="Last name">
                                  </div>
                                  <div class="span4">
                                    <input type="text" class="span12" placeholder="email">
                                  </div>
                                </div>
                                <div class="row-fluid">  
                                  <div class="span4">
                                    <input type="text" class="span12" placeholder="Contact">
                                  </div>
                                  <div class="span8">
                                    <input type="text" class="span12" placeholder="Address">
                                  </div>
                                </div>
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
                          </td>
                        </tr>
                        <tr class="gradeU">
                          <td>Himresh Mayi</td>
                          <td>Anniston, AL 36207-1211</td>
                          <td class="hidden-phone">0000002200</td>
                          <td class="hidden-phone">$88790</td>
                          <td class="hidden-phone">
                            <a href="#" class="btn btn-success btn-small hidden-phone" data-original-title="">email</a>
                            <a href="#accSettings14" role="button" class="btn btn-small btn-primary hidden-tablet hidden-phone" data-toggle="modal" data-original-title="">
                              edit
                            </a>
                              <div id="accSettings14" class="modal hide fade" tabindex="-14" role="dialog" aria-labelledby="myModalLabel14" aria-hidden="true">
                              <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                                  ×
                                </button>
                                <h4 id="myModalLabel14">
                                  Edit client details
                                </h4>
                              </div>
                              <div class="modal-body">
                                <div class="row-fluid">  
                                  <div class="span4">
                                    <input type="text" class="span12" placeholder="Frist name">
                                  </div>
                                  <div class="span4">
                                    <input type="text" class="span12" placeholder="Last name">
                                  </div>
                                  <div class="span4">
                                    <input type="text" class="span12" placeholder="email">
                                  </div>
                                </div>
                                <div class="row-fluid">  
                                  <div class="span4">
                                    <input type="text" class="span12" placeholder="Contact">
                                  </div>
                                  <div class="span8">
                                    <input type="text" class="span12" placeholder="Address">
                                  </div>
                                </div>
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
                          </td>
                        </tr>
                        <tr class="gradeU">
                          <td>Gajju Marnison</td>
                          <td>Downingtown, PA 1133-1209</td>
                          <td class="hidden-phone">1234321678</td>
                          <td class="hidden-phone">$9908</td>
                          <td class="hidden-phone">
                            <a href="#" class="btn btn-success btn-small hidden-phone" data-original-title="">email</a>
                            <a href="#accSettings15" role="button" class="btn btn-small btn-primary hidden-tablet hidden-phone" data-toggle="modal" data-original-title="">
                              edit
                            </a>
                              <div id="accSettings15" class="modal hide fade" tabindex="-15" role="dialog" aria-labelledby="myModalLabel15" aria-hidden="true">
                              <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                                  ×
                                </button>
                                <h4 id="myModalLabel15">
                                  Edit client details
                                </h4>
                              </div>
                              <div class="modal-body">
                                <div class="row-fluid">  
                                  <div class="span4">
                                    <input type="text" class="span12" placeholder="Frist name">
                                  </div>
                                  <div class="span4">
                                    <input type="text" class="span12" placeholder="Last name">
                                  </div>
                                  <div class="span4">
                                    <input type="text" class="span12" placeholder="email">
                                  </div>
                                </div>
                                <div class="row-fluid">  
                                  <div class="span4">
                                    <input type="text" class="span12" placeholder="Contact">
                                  </div>
                                  <div class="span8">
                                    <input type="text" class="span12" placeholder="Address">
                                  </div>
                                </div>
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
                          </td>
                        </tr>
                        <tr class="gradeA">
                          <td>Powell Pack</td>
                          <td>South Orange, NJ</td>
                          <td class="hidden-phone">1123889911</td>
                          <td class="hidden-phone">$77651</td>
                          <td class="hidden-phone">
                            <a href="#" class="btn btn-success btn-small hidden-phone" data-original-title="">email</a>
                            <a href="#accSettings16" role="button" class="btn btn-small btn-primary hidden-tablet hidden-phone" data-toggle="modal" data-original-title="">
                              edit
                            </a>
                              <div id="accSettings16" class="modal hide fade" tabindex="-16" role="dialog" aria-labelledby="myModalLabel16" aria-hidden="true">
                              <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                                  ×
                                </button>
                                <h4 id="myModalLabel16">
                                  Edit client details
                                </h4>
                              </div>
                              <div class="modal-body">
                                <div class="row-fluid">  
                                  <div class="span4">
                                    <input type="text" class="span12" placeholder="Frist name">
                                  </div>
                                  <div class="span4">
                                    <input type="text" class="span12" placeholder="Last name">
                                  </div>
                                  <div class="span4">
                                    <input type="text" class="span12" placeholder="email">
                                  </div>
                                </div>
                                <div class="row-fluid">  
                                  <div class="span4">
                                    <input type="text" class="span12" placeholder="Contact">
                                  </div>
                                  <div class="span8">
                                    <input type="text" class="span12" placeholder="Address">
                                  </div>
                                </div>
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
                          </td>
                        </tr>
                      </tbody>
                    </table>
                    <div class="clearfix"></div>
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

    <!-- Data tables JS -->
    <script src="js/jquery.dataTables.js"></script>
    
    <!-- Sparkline Chart JS -->
    <script src="js/sparkline.js"></script>

    <!-- Easy Pie Chart JS -->
    <script src="js/pie-charts/jquery.easy-pie-chart.js"></script>

    <!-- Tiny scrollbar js -->
    <script src="js/tiny-scrollbar.js"></script>
    
    <!-- Custom Js -->
    <script src="js/theming.js"></script>
    <script src="js/custom.js"></script>

    <script type="text/javascript">
      //Data Tables
      $(document).ready(function () {
        $('#data-table').dataTable({
          "sPaginationType": "full_numbers"
        });
      });
    </script>
      
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