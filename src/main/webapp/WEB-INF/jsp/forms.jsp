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
              <div class="accordion-body in collapse" id="collapseThree" style="height: auto;">
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
              <a href="forms" class="selected">
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
              <h2>Basic Forms</h2>
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
            <div class="span6">
              <div class="widget">
                <div class="widget-header">
                  <div class="title">
                    <span class="fs1" aria-hidden="true" data-icon="&#xe14a;"></span>Horizontal Form
                  </div>
                </div>
                <div class="widget-body">
                  <form class="form-horizontal no-margin">
                    <div class="control-group">
                      <label class="control-label">
                        First Name
                      </label>
                      <div class="controls controls-row">
                        <input class="span12" type="text" placeholder="First Name">
                      </div>
                    </div>
                    <div class="control-group">
                      <label class="control-label">
                        Last Name 
                      </label>
                      <div class="controls controls-row">
                        <input class="span12" type="text" placeholder="Last Name">
                      </div>
                    </div>
                    <div class="control-group">
                      <label class="control-label" for="email1">
                        Email ID
                      </label>
                      <div class="controls">
                        <input type="text" name="email1" id="email1" class="span12" placeholder="Enter your Email Address"  />
                      </div>
                    </div>
                    <div class="control-group">
                      <label class="control-label" for="password5">
                        Password
                      </label>
                      <div class="controls">
                        <input type="password" name="password1" id="password5" class="span12" placeholder="6 or more characters"  />
                      </div>
                    </div>
                    <div class="control-group">
                      <label class="control-label" for="repPassword">
                        Repeat Password
                      </label>
                      <div class="controls">
                        <input type="password" name="repPassword" id="repPassword" class="span12" placeholder="Retype Password"  />
                      </div>
                    </div>
                    
                    <div class="control-group">
                      <label class="control-label" for="DateofBirthMonth">
                        Date of birth
                      </label>
                      <div class="controls controls-row">
                        <select id="DateofBirthMonth" class="span4">
                          <option>
                            - Month -
                          </option>
                          <option value="1">
                            January
                          </option>
                          <option value="2">
                            February
                          </option>
                          <option value="3">
                            March
                          </option>
                          <option value="4">
                            April
                          </option>
                          <option value="5">
                            May
                          </option>
                          <option value="6">
                            June
                          </option>
                          <option value="7">
                            July
                          </option>
                          <option value="8">
                            August
                          </option>
                          <option value="9">
                            September
                          </option>
                          <option value="10">
                            October
                          </option>
                          <option value="11">
                            November
                          </option>
                          <option value="12">
                            December
                          </option>
                        </select>
                        <select name="DateOfBirth_Day"  class="span4 input-left-top-margins">
                          <option>
                            - Day -
                          </option>
                          <option value="1">
                            1
                          </option>
                          <option value="2">
                            2
                          </option>
                          <option value="3">
                            3
                          </option>
                          <option value="4">
                            4
                          </option>
                          <option value="5">
                            5
                          </option>
                          <option value="6">
                            6
                          </option>
                          <option value="7">
                            7
                          </option>
                          <option value="8">
                            8
                          </option>
                          <option value="9">
                            9
                          </option>
                          <option value="10">
                            10
                          </option>
                          <option value="11">
                            11
                          </option>
                          <option value="12">
                            12
                          </option>
                          <option value="13">
                            13
                          </option>
                          <option value="14">
                            14
                          </option>
                          <option value="15">
                            15
                          </option>
                          <option value="16">
                            16
                          </option>
                          <option value="17">
                            17
                          </option>
                          <option value="18">
                            18
                          </option>
                          <option value="19">
                            19
                          </option>
                          <option value="20">
                            20
                          </option>
                          <option value="21">
                            21
                          </option>
                          <option value="22">
                            22
                          </option>
                          <option value="23">
                            23
                          </option>
                          <option value="24">
                            24
                          </option>
                          <option value="25">
                            25
                          </option>
                          <option value="26">
                            26
                          </option>
                          <option value="27">
                            27
                          </option>
                          <option value="28">
                            28
                          </option>
                          <option value="29">
                            29
                          </option>
                          <option value="30">
                            30
                          </option>
                          <option value="31">
                            31
                          </option>
                        </select>
                        
                        <select name="DateOfBirth_Year" class="span4 input-left-top-margins">
                          <option>
                            - Year -
                          </option>
                          <option value="2013">
                            2011
                          </option>
                          <option value="2012">
                            2010
                          </option>
                          <option value="2011">
                            2011
                          </option>
                          <option value="2010">
                            2010
                          </option>
                          <option value="2009">
                            2009
                          </option>
                          <option value="2008">
                            2008
                          </option>
                          <option value="2007">
                            2007
                          </option>
                          <option value="2006">
                            2006
                          </option>
                          <option value="2005">
                            2005
                          </option>
                          <option value="2004">
                            2004
                          </option>
                          <option value="2003">
                            2003
                          </option>
                          <option value="2002">
                            2002
                          </option>
                          <option value="2001">
                            2001
                          </option>
                          <option value="2000">
                            2000
                          </option>
                          <option value="1999">
                            1999
                          </option>
                          <option value="1998">
                            1998
                          </option>
                          <option value="1997">
                            1997
                          </option>
                          <option value="1996">
                            1996
                          </option>
                          <option value="1995">
                            1995
                          </option>
                          <option value="1994">
                            1994
                          </option>
                          <option value="1993">
                            1993
                          </option>
                          <option value="1992">
                            1992
                          </option>
                          <option value="1991">
                            1991
                          </option>
                          <option value="1990">
                            1990
                          </option>
                        </select>      
                      </div>
                    </div>
                    
                    <div class="control-group">
                      <label class="control-label" for="country">
                        Country/Region
                      </label>
                      <div class="controls">
                        <select id="country" class="span12">
                          <option value="">
                            Country...
                          </option>
                          <option value="Afganistan">
                            Afghanistan
                          </option>
                          <option value="Albania">
                            Albania
                          </option>
                          <option value="Australia">
                            Australia
                          </option>
                          <option value="Austria">
                            Austria
                          </option>
                          <option value="Azerbaijan">
                            Azerbaijan
                          </option>
                          <option value="Barbados">
                            Barbados
                          </option>
                          <option value="Belarus">
                            Belarus
                          </option>
                          <option value="Belgium">
                            Belgium
                          </option>
                          <option value="Belize">
                            Belize
                          </option>
                          <option value="Chile">
                            Chile
                          </option>
                          <option value="China">
                            China
                          </option>
                          <option value="Comoros">
                            Comoros
                          </option>
                          <option value="Congo">
                            Congo
                          </option>
                          <option value="Egypt">
                            Egypt
                          </option>
                          <option value="El Salvador">
                            El Salvador
                          </option>
                          <option value="Equatorial Guinea">
                            Equatorial Guinea
                          </option>
                          <option value="Georgia">
                            Georgia
                          </option>
                          <option value="Germany">
                            Germany
                          </option>
                          <option value="Ghana">
                            Ghana
                          </option>
                          <option value="Hawaii">
                            Hawaii
                          </option>
                          <option value="Honduras">
                            Honduras
                          </option>
                          <option value="Hong Kong">
                            Hong Kong
                          </option>
                          <option value="Iceland">
                            Iceland
                          </option>
                          <option value="India">
                            India
                          </option>
                          <option value="Indonesia">
                            Indonesia
                          </option>
                          <option value="Zambia">
                            Zambia
                          </option>
                          <option value="Zimbabwe">
                            Zimbabwe
                          </option>
                        </select>
                      </div>
                    </div>
                    <div class="control-group">
                      <div class="controls">
                        <label class="checkbox">
                          <input type="checkbox" value="a">
                          Yes! I would like to receive email relating to products and services.
                        </label>
                        <label class="checkbox">
                          <input type="checkbox" value="b">
                          Remember Me :)
                        </label>
                      </div>
                    </div>
                    <div class="form-actions no-margin">
                      <button type="submit" class="btn btn-info pull-right">
                        Create Account
                      </button>
                      <div class="clearfix">
                      </div>
                    </div>
                  </form>
                </div>
              </div>
            </div>

            <div class="span6">
              <div class="widget">
                <div class="widget-header">
                  <div class="title">
                    <span class="fs1" aria-hidden="true" data-icon="&#xe14a;"></span> Event Registration
                  </div>
                </div>
                <div class="widget-body">
                  <form class="form-horizontal no-margin">
                    <div class="control-group">
                      <label class="control-label">
                        First Name
                      </label>
                      <div class="controls controls-row">
                        <input class="span12" type="text" placeholder="First Name">
                      </div>
                    </div>
                    <div class="control-group">
                      <label class="control-label">
                        Last Name
                      </label>
                      <div class="controls controls-row">
                        <input class="span12" type="text" placeholder="Last Name">
                      </div>
                    </div>
                    <div class="control-group">
                      <label class="control-label">
                        No. of Persons
                      </label>
                      <div class="controls controls-row">
                        <input class="span12" type="number" placeholder="Number of persons attending">
                      </div>
                    </div>
                    <div class="control-group">
                      <label class="control-label" for="stateAndCity">
                        State and City
                      </label>
                      <div class="controls">
                        <select id="stateAndCity" class="span6">
                          <option value="" selected="selected">
                            Select a State
                          </option>
                          <option value="AL">
                            Alabama
                          </option>
                          <option value="AK">
                            Alaska
                          </option>
                          <option value="AZ">
                            Arizona
                          </option>
                          <option value="AR">
                            Arkansas
                          </option>
                          <option value="CA">
                            California
                          </option>
                          <option value="CO">
                            Colorado
                          </option>
                          <option value="CT">
                            Connecticut
                          </option>
                          <option value="DE">
                            Delaware
                          </option>
                          <option value="DC">
                            District Of Columbia
                          </option>
                          <option value="FL">
                            Florida
                          </option>
                          <option value="GA">
                            Georgia
                          </option>
                          <option value="HI">
                            Hawaii
                          </option>
                          <option value="ID">
                            Idaho
                          </option>
                          <option value="IL">
                            Illinois
                          </option>
                          <option value="IN">
                            Indiana
                          </option>
                          <option value="IA">
                            Iowa
                          </option>
                          <option value="KS">
                            Kansas
                          </option>
                          <option value="KY">
                            Kentucky
                          </option>
                          <option value="LA">
                            Louisiana
                          </option>
                          <option value="ME">
                            Maine
                          </option>
                          <option value="MD">
                            Maryland
                          </option>
                          <option value="MA">
                            Massachusetts
                          </option>
                          <option value="MI">
                            Michigan
                          </option>
                          <option value="MN">
                            Minnesota
                          </option>
                          <option value="MS">
                            Mississippi
                          </option>
                          <option value="MO">
                            Missouri
                          </option>
                          <option value="MT">
                            Montana
                          </option>
                          <option value="NE">
                            Nebraska
                          </option>
                          <option value="NV">
                            Nevada
                          </option>
                          <option value="NH">
                            New Hampshire
                          </option>
                          <option value="NJ">
                            New Jersey
                          </option>
                          <option value="NM">
                            New Mexico
                          </option>
                          <option value="NY">
                            New York
                          </option>
                          <option value="NC">
                            North Carolina
                          </option>
                          <option value="ND">
                            North Dakota
                          </option>
                          <option value="OH">
                            Ohio
                          </option>
                          <option value="OK">
                            Oklahoma
                          </option>
                          <option value="OR">
                            Oregon
                          </option>
                          <option value="PA">
                            Pennsylvania
                          </option>
                          <option value="RI">
                            Rhode Island
                          </option>
                          <option value="SC">
                            South Carolina
                          </option>
                          <option value="SD">
                            South Dakota
                          </option>
                          <option value="TN">
                            Tennessee
                          </option>
                          <option value="TX">
                            Texas
                          </option>
                          <option value="UT">
                            Utah
                          </option>
                          <option value="VT">
                            Vermont
                          </option>
                          <option value="VA">
                            Virginia
                          </option>
                          <option value="WA">
                            Washington
                          </option>
                          <option value="WV">
                            West Virginia
                          </option>
                          <option value="WI">
                            Wisconsin
                          </option>
                          <option value="WY">
                            Wyoming
                          </option>
                        </select>
                        <select name="City" class="span6 input-left-top-margins">
                          <option value="" selected="selected">
                            Select a City
                          </option>
                          <option value="AL">
                            Alabama
                          </option>
                          <option value="AK">
                            Alaska
                          </option>
                          <option value="AZ">
                            Arizona
                          </option>
                          <option value="AR">
                            Arkansas
                          </option>
                          <option value="CA">
                            California
                          </option>
                          <option value="CO">
                            Colorado
                          </option>
                          <option value="CT">
                            Connecticut
                          </option>
                          <option value="DE">
                            Delaware
                          </option>
                          <option value="DC">
                            District Of Columbia
                          </option>
                          <option value="FL">
                            Florida
                          </option>
                          <option value="IL">
                            Illinois
                          </option>
                          <option value="IN">
                            Indiana
                          </option>
                          <option value="IA">
                            Iowa
                          </option>
                          <option value="KS">
                            Kansas
                          </option>
                          <option value="KY">
                            Kentucky
                          </option>
                          <option value="LA">
                            Louisiana
                          </option>
                          <option value="ME">
                            Maine
                          </option>
                          <option value="NV">
                            Nevada
                          </option>
                          <option value="NH">
                            New Hampshire
                          </option>
                          <option value="NJ">
                            New Jersey
                          </option>
                          <option value="NM">
                            New Mexico
                          </option>
                          <option value="NY">
                            New York
                          </option>
                          <option value="NC">
                            North Carolina
                          </option>
                          <option value="ND">
                            North Dakota
                          </option>
                          <option value="OH">
                            Ohio
                          </option>
                          <option value="OK">
                            Oklahoma
                          </option>
                          <option value="OR">
                            Oregon
                          </option>
                          <option value="PA">
                            Pennsylvania
                          </option>
                          <option value="RI">
                            Rhode Island
                          </option>
                        </select>
                      </div>
                    </div>
                    <div class="control-group info">
                      <label class="control-label">
                        Zip Code
                      </label>
                      <div class="controls">
                        <input class="span4" type="text" placeholder="Zip Code">
                        <span class="help-inline ">
                          Enter your Zip Code
                        </span>
                      </div>
                    </div>
                    <div class="control-group error">
                      <label class="control-label">
                        Phone
                      </label>
                      <div class="controls">
                        <input class="span4" type="text" placeholder="Phone">
                        <span class="help-inline ">
                          Enter your Phone Number
                        </span>
                      </div>
                    </div>
                    <div class="control-group success">
                      <label class="control-label" for="email2">
                        Email
                      </label>
                      <div class="controls">
                        <div class="input-prepend">
                          <span class="add-on">
                            @
                          </span>
                          <input class="span12" id="email2" type="text" placeholder="Email">
                        </div>
                      </div>
                    </div>
                    <div class="control-group">
                      <label class="control-label">
                        Address
                      </label>
                      <div class="controls">
                        <textarea class="input-block-level no-margin" style="height: 75px"></textarea>
                      </div>
                    </div>
                    <div class="form-actions no-margin">
                      <button type="submit" class="btn btn-info pull-right">
                        Registar
                      </button>
                      <div class="clearfix">
                      </div>
                    </div>
                  </form>
                </div>
              </div>
            </div>
          </div>

          <div class="row-fluid">
            <div class="span6">
              <div class="widget no-margin">
                <div class="widget-header">
                  <div class="title">
                    <span class="fs1" aria-hidden="true" data-icon="&#xe023;"></span> Validation Input States
                  </div>
                </div>
                <div class="widget-body">
                  <form class="form-horizontal no-margin">
                    <div class="control-group warning">
                      <label class="control-label" for="your-name">
                        Name
                      </label>
                      <div class="controls controls-row">
                        <input class="span6" id="your-name" type="text" placeholder="First Name">
                        <input class="span6 input-left-top-margins" type="text" placeholder="Last Name">
                      </div>
                    </div>
                    <div class="control-group error">
                      <label class="control-label" for="your-email">
                        Email
                      </label>
                      <div class="controls">
                        <input type="text" name="your-email" id="your-email" class="span12" placeholder="Enter your Email Address"  />
                      </div>
                    </div>
                    <div class="control-group success">
                      <label class="control-label" for="password1">
                        Password
                      </label>
                      <div class="controls">
                        <input type="password" name="password1" id="password1" class="span12" placeholder="Min 6 characters"  />
                      </div>
                    </div>
                    <div class="control-group">
                      <label class="control-label" for="DateOfBirthMonth">
                        Date of birth
                      </label>
                      <div class="controls controls-row">
                        <select id="DateOfBirthMonth" class="span4">
                          <option>
                            Month -
                          </option>
                          <option value="1">
                            January
                          </option>
                          <option value="2">
                            February
                          </option>
                          <option value="3">
                            March
                          </option>
                          <option value="4">
                            April
                          </option>
                          <option value="5">
                            May
                          </option>
                          <option value="6">
                            June
                          </option>
                          <option value="7">
                            July
                          </option>
                          <option value="8">
                            August
                          </option>
                          <option value="9">
                            September
                          </option>
                          <option value="10">
                            October
                          </option>
                          <option value="11">
                            November
                          </option>
                          <option value="12">
                            December
                          </option>
                        </select>
                        <select name="DateOfBirth_Day"  class="span4 input-left-top-margins">
                          <option>
                            Day -
                          </option>
                          <option value="1">
                            1
                          </option>
                          <option value="2">
                            2
                          </option>
                          <option value="3">
                            3
                          </option>
                          <option value="4">
                            4
                          </option>
                          <option value="5">
                            5
                          </option>
                          <option value="6">
                            6
                          </option>
                          <option value="7">
                            7
                          </option>
                          <option value="8">
                            8
                          </option>
                          <option value="9">
                            9
                          </option>
                        </select>

                        <select name="DateOfBirth_Year" class="span4 input-left-top-margins">
                          <option>
                            Year -
                          </option>
                          <option value="2013">
                            2011
                          </option>
                          <option value="2012">
                            2010
                          </option>
                          <option value="2011">
                            2011
                          </option>
                          <option value="2010">
                            2010
                          </option>
                          <option value="2009">
                            2009
                          </option>
                          <option value="2008">
                            2008
                          </option>
                          <option value="2007">
                            2007
                          </option>
                          <option value="2006">
                            2006
                          </option>
                          <option value="2005">
                            2005
                          </option>
                        </select>
                      </div>
                    </div>
                    <div class="control-group">
                      <label class="control-label">
                        Check Boxes
                      </label>
                      <div class="controls">
                        <label class="checkbox inline">
                          <input type="checkbox" value="">
                          Default
                        </label>
                        <label class="checkbox inline">
                          <input type="checkbox" value="" checked>
                          Checked
                        </label>
                      </div>
                    </div>
                    <div class="control-group">
                      <label class="control-label">
                        Radio Buttons
                      </label>
                      <div class="controls">
                        <label class="radio inline">
                          <input type="radio" name="optionsRadios" id="optionsRadios1" value="option1">
                          Default
                        </label>
                        <label class="radio inline">
                          <input type="radio" name="optionsRadios" id="optionsRadios2" value="option2" checked>
                          Selected
                        </label>
                      </div>
                    </div>
                    <hr />
                    <button type="submit" class="btn btn-info pull-right">Update</button>
                    <div class="clearfix"></div>
                  </form>
                </div>
              </div>
            </div>

            <div class="span6">
              <div class="widget no-margin">
                <div class="widget-header">
                  <div class="title">
                    <span class="fs1" aria-hidden="true" data-icon="&#xe14c;"></span> Input Styles
                  </div>
                </div>
                <div class="widget-body">
                  <input class="input-mini" type="text" placeholder=".input-mini"><br />
                  <input class="input-small" type="text" placeholder=".input-small"><br />
                  <input class="input-medium" type="text" placeholder=".input-medium"><br />
                  <input class="input-large" type="text" placeholder=".input-large"><br />
                  <input class="input-xlarge" type="text" placeholder=".input-xlarge"><br />
                  <input class="input-block-level" type="text" placeholder=".input-block-level"><br />
                  <textarea class="input-block-level no-margin" style="height: 112px">
                  </textarea>
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