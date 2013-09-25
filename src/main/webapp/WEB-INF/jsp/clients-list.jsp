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

    <!-- Clients list css -->
    <link href="css/listnav.css" rel="stylesheet">
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
                  <a href="animated-charts">Other Charts</a>
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
                  <a href="error">404</a>
                </li>
                <li>
                  <a href="faq">Faq</a>
                </li>
                <li>
                  <a href="login">Login</a>
                </li>
              </ul>
            </li>
            <li>
              <a href="gallery">
                <span class="fs1" aria-hidden="true" data-icon="&#xe00d;"></span> Gallery
              </a>
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
                      <a href="error">404</a>
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
              <h2>Clients</h2>
            </div>
            <div class="pull-right">
              <ul class="stats">
                <li class="color-first">
                  <span class="fs1" aria-hidden="true" data-icon="&#xe0b3;"></span>
                  <div class="details">
                    <span class="big">19</span>
                    <span>New Signups</span>
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
                    <span class="fs1" aria-hidden="true" data-icon="&#xe14a;"></span> Employees Details with Scrollbar
                  </div>
                </div>
                <div class="widget-body">
                  <div id="demoOne-nav" class="listNav">
                    <div class="ln-letter-count">11</div>
                  </div>
                  <div id="scrollbar-one">
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
                        <ul id="demoOne" class="demo">
                          <li class="ln-_">
                            <a href="#">411 Services</a>
                          </li>
                          <li class="ln-a">
                            <a href="#">Accountants</a>
                          </li>
                          <li class="ln-a">
                            <a href="#">Advertising</a>
                          </li>
                          <li class="ln-a">
                            <a href="#">Admin UI</a>
                          </li>
                          <li class="ln-a">
                            <a href="#">Admin Dashboard</a>
                          </li>
                          <li class="ln-a">
                            <a href="#">Audio Visual Consultants</a>
                          </li>
                          <li class="ln-a">
                            <a href="#">Automobile - Renting </a>
                          </li>
                          <li class="ln-a">
                            <a href="#">Automobile - Repair &amp; Service</a>
                          </li>
                          <li class="ln-b">
                            <a href="#">Banks</a>
                          </li>
                          <li class="ln-b">
                            <a href="#">Backend Admin UI</a>
                          </li>
                          <li class="ln-b">
                            <a href="#">Backend Dashboard</a>
                          </li>
                          <li class="ln-b">
                            <a href="#">Baseball Clubs</a>
                          </li>
                          <li class="ln-b">
                            <a href="#">Book Dealers - Used &amp; Rare</a>
                          </li>
                          <li class="ln-b">
                            <a href="#">Business - Services</a>
                          </li>
                          <li class="ln-c">
                            <a href="#">Cabinet Makers</a>
                          </li>
                          <li class="ln-c">
                            <a href="#">Cabinets</a>
                          </li>
                          <li class="ln-c">
                            <a href="#">Campgrounds</a>
                          </li>
                          <li class="ln-c">
                            <a href="#">Cemeteries &amp; Crematories</a>
                          </li>
                          <li class="ln-e">
                            <a href="#">Earthquake Products &amp; Services</a>
                          </li>
                          <li class="ln-e">
                            <a href="#">Education Centers</a>
                          </li>
                          <li class="ln-e">
                            <a href="#">Electric Contractors</a>
                          </li>
                          <li class="ln-f">
                            <a href="#">Fabric Shops</a>
                          </li>
                          <li class="ln-f">
                            <a href="#">Dashboard</a>
                          </li>
                          <li class="ln-f">
                            <a href="#">Farms</a>
                          </li>
                          <li class="ln-f">
                            <a href="#">Foundation - Educational Philanthropic Research</a>
                          </li>
                          <li class="ln-i">
                            <a href="#">Importers</a>
                          </li>
                          <li class="ln-i">
                            <a href="#">Industrial - Equipment &amp; Supplies (Wholesale)</a>
                          </li>
                          <li class="ln-i">
                            <a href="#">Internet - Services</a>
                          </li>
                          <li class="ln-i">
                            <a href="#">Inventors</a>
                          </li>
                          <li class="ln-j">
                            <a href="#">Janitor Service</a>
                          </li>
                          <li class="ln-j">
                            <a href="#">Jewelers (Wholesale)</a>
                          </li>
                          <li class="ln-m">
                            <a href="#">Machine Shops</a>
                          </li>
                          <li class="ln-m">
                            <a href="#">Machinery - Rebuilding &amp; Repairing (Wholesale)</a>
                          </li>
                          <li class="ln-m">
                            <a href="#">Motorcycles - Supplies &amp; Parts (Manufacturers)</a>
                          </li>
                          <li class="ln-m">
                            <a href="#">Multimedia (Manufacturers)</a>
                          </li>
                          <li class="ln-m">
                            <a href="#">Museums</a>
                          </li>
                          <li class="ln-n">
                            <a href="#">Newspaper - Publishers</a>
                          </li>
                          <li class="ln-n">
                            <a href="#">Nurseries - Plants &amp; Trees (Wholesale)</a>
                          </li>
                          <li class="ln-n">
                            <a href="#">Nurserymen</a>
                          </li>
                          <li class="ln-p">
                            <a href="#">Painters</a>
                          </li>
                          <li class="ln-p">
                            <a href="#">Parking Area &amp; Lots Maintenance &amp; Marking</a>
                          </li>
                          <li class="ln-p">
                            <a href="#">Parks</a>
                          </li>
                          <li class="ln-q">
                            <a href="#">Quilting - Materials &amp; Supplies</a>
                          </li>
                          <li class="ln-r">
                            <a href="#">Radio Stations &amp; Broadcasting Companies</a>
                          </li>
                          <li class="ln-r">
                            <a href="#">Reading Rooms</a>
                          </li>
                          <li class="ln-r">
                            <a href="#">Real Estate</a>
                          </li>
                          <li class="ln-r">
                            <a href="#">Restaurants</a>
                          </li>
                          <li class="ln-r">
                            <a href="#">Roofing - Service Consultants</a>
                          </li>
                          <li class="ln-s">
                            <a href="#">Sand &amp; Gravel (Wholesale)</a>
                          </li>
                          <li class="ln-s">
                            <a href="#">Shopping Centers &amp; Malls</a>
                          </li>
                          <li class="ln-s">
                            <a href="#">Sunglasses &amp; Sun Goggles (Wholesale)</a>
                          </li>
                          <li class="ln-s">
                            <a href="#">StartUp admin UI</a>
                          </li>
                          <li class="ln-t">
                            <a href="#">Tanning Salons</a>
                          </li>
                          <li class="ln-t">
                            <a href="tax-consultants.aspx">Tax Consultants</a>
                          </li>
                          <li class="ln-t">
                            <a href="#">Tax Return Preparation &amp; Filing</a>
                          </li>
                          <li class="ln-t">
                            <a href="#">Technical Manual Preparation</a>
                          </li>
                          <li class="ln-t">
                            <a href="#">Tools - Electric - Repairing &amp; Parts</a>
                          </li>
                          <li class="ln-u">
                            <a href="#">Ultrasonic Equipment &amp; Supplies (Wholesale)</a>
                          </li>
                          <li class="ln-u">
                            <a href="#">Upholsterers</a>
                          </li>
                          <li class="ln-u">
                            <a href="#">Utilities - Underground - Cable Locating Service</a>
                          </li>
                          <li class="ln-w">
                            <a href="#">Wallpapers &amp; Wallcoverings - Installation</a>
                          </li>
                          <li class="ln-w">
                            <a href="#">Windows - Repairing</a>
                          </li>
                          <li class="ln-w">
                            <a href="#">Woodworkers</a>
                          </li>
                          <li class="ln-w">
                            <a href="writers.aspx">Writers</a>
                          </li>
                          <li class="ln-x">
                            <a href="#">X-Ray - Apparatus &amp; Supplies (Manufacturers)</a>
                          </li>
                        </ul>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>

          <div class="row-fluid">
            <div class="span12">
              <div class="widget no-margin">
                <div class="widget-header">
                  <div class="title">
                    <span class="fs1" aria-hidden="true" data-icon="&#xe14a;"></span> Clients List
                  </div>
                </div>
                <div class="widget-body">
                  <div id="demoFour-nav" class="listNav">
                    <div class="ln-letter-count">11</div>
                  </div>
                  <ul id="demoFour" class="demo">
                    <li class="ln-_">
                      <a href="#">411 Services</a>
                    </li>
                    <li class="ln-a">
                      <a href="#">Accountants</a>
                    </li>
                    <li class="ln-a">
                      <a href="#"> Bookkeeping</a>
                    </li>
                    <li class="ln-a">
                      <a href="#">Acupuncture</a>
                    </li>
                    <li class="ln-a">
                      <a href="#">Advertising</a>
                    </li>
                    <li class="ln-a">
                      <a href="#">Advertising</a>
                    </li>
                    <li class="ln-a">
                      <a href="#">Computer</a>
                    </li>
                    <li class="ln-a">
                      <a href="#">Promotional</a>
                    </li>
                    <li class="ln-a">
                      <a href="#">Attorneys</a>
                    </li>
                    <li class="ln-a">
                      <a href="#">Auctioneers</a>
                    </li>
                    <li class="ln-a">
                      <a href="#">Audio</a>
                    </li>
                    <li class="ln-a">
                      <a href="#">Visual</a>
                    </li>
                    <li class="ln-a">
                      <a href="#">Renting</a>
                    </li>
                    <li class="ln-a">
                      <a href="#">Repair</a>
                    </li>
                    <li class="ln-b">
                      <a href="#">Banks</a>
                    </li>
                    <li class="ln-b">
                      <a href="#">Banquet</a>
                    </li>
                    <li class="ln-b">
                      <a href="#">Barber</a>
                    </li>
                    <li class="ln-b">
                      <a href="#">Baseball</a>
                    </li>
                    <li class="ln-b">
                      <a href="#">Book</a>
                    </li>
                    <li class="ln-b">
                      <a href="#">Bookbinders</a>
                    </li>
                    <li class="ln-b">
                      <a href="#">Brake</a>
                    </li>
                    <li class="ln-b">
                      <a href="#">Business</a>
                    </li>
                    <li class="ln-b">
                      <a href="#">Services</a>
                    </li>
                    <li class="ln-c">
                      <a href="#">Cabinet Makers</a>
                    </li>
                    <li class="ln-c">
                      <a href="#">Cabinets</a>
                    </li>
                    <li class="ln-c">
                      <a href="#">Cafeterias</a>
                    </li>
                    <li class="ln-c">
                      <a href="#">Calligraphers</a>
                    </li>
                    <li class="ln-c">
                      <a href="#">Campgrounds</a>
                    </li>
                    <li class="ln-c">
                      <a href="#">Cemeteries</a>
                    </li>
                    <li class="ln-c">
                      <a href="#">Ceramic</a>
                    </li>
                    <li class="ln-c">
                      <a href="#">Chambers</a>
                    </li>
                    <li class="ln-c">
                      <a href="#">Crane</a>
                    </li>
                    <li class="ln-c">
                      <a href="#">Cruises</a>
                    </li>
                    <li class="ln-d">
                      <a href="#">Dancing</a>
                    </li>
                    <li class="ln-d">
                      <a href="#">Networks</a>
                    </li>
                    <li class="ln-d">
                      <a href="#">Deck</a>
                    </li>
                    <li class="ln-d">
                      <a href="#">Service</a>
                    </li>
                    <li class="ln-d">
                      <a href="#">Dentists</a>
                    </li>
                    <li class="ln-d">
                      <a href="#">Stores</a>
                    </li>
                    <li class="ln-d">
                      <a href="#">Draperies</a>
                    </li>
                    <li class="ln-d">
                      <a href="#">Drilling</a>
                    </li>
                    <li class="ln-d">
                      <a href="#">Driving</a>
                    </li>
                    <li class="ln-d">
                      <a href="#">Treatment</a>
                    </li>
                    <li class="ln-d">
                      <a href="#">Insulation</a>
                    </li>
                    <li class="ln-e">
                      <a href="#">Earthquake</a>
                    </li>
                    <li class="ln-e">
                      <a href="#">E-Commerce</a>
                    </li>
                    <li class="ln-e">
                      <a href="#">Centers</a>
                    </li>
                    <li class="ln-e">
                      <a href="#">Consultants</a>
                    </li>
                    <li class="ln-e">
                      <a href="#">Service</a>
                    </li>
                    <li class="ln-e">
                      <a href="#">Contractors</a>
                    </li>
                    <li class="ln-e">
                      <a href="#">Electric</a>
                    </li>
                    <li class="ln-e">
                      <a href="#">Electrolysis</a>
                    </li>
                    <li class="ln-e">
                      <a href="#">Erosion Control</a>
                    </li>
                    <li class="ln-e">
                      <a href="#">Excavating</a>
                    </li>
                    <li class="ln-e">
                      <a href="#">Consultants</a>
                    </li>
                    <li class="ln-e">
                      <a href="#">Exercise</a>
                    </li>
                    <li class="ln-e">
                      <a href="#">Exterminating</a>
                    </li>
                    <li class="ln-f">
                      <a href="#">Shops</a>
                    </li>
                    <li class="ln-f">
                      <a href="#">Fabrics</a>
                    </li>
                    <li class="ln-f">
                      <a href="#">Facilities</a>
                    </li>
                    <li class="ln-f">
                      <a href="#">Farms</a>
                    </li>
                    <li class="ln-f">
                      <a href="#">Research</a>
                    </li>
                    <li class="ln-f">
                      <a href="#">Fraternities</a>
                    </li>
                    <li class="ln-g">
                      <a href="#">Games</a>
                    </li>
                    <li class="ln-g">
                      <a href="#">Garbage</a>
                    </li>
                    <li class="ln-g">
                      <a href="#">Garden</a>
                    </li>
                    <li class="ln-g">
                      <a href="#">Gas</a>
                    </li>
                    <li class="ln-g">
                      <a href="#">Guide Service</a>
                    </li>
                    <li class="ln-g">
                      <a href="#">Instruction</a>
                    </li>
                    <li class="ln-h">
                      <a href="#">Halls</a>
                    </li>
                    <li class="ln-h">
                      <a href="#">Handyman</a>
                    </li>
                    <li class="ln-h">
                      <a href="hardware_retail.aspx">Retail</a>
                    </li>
                    <li class="ln-h">
                      <a href="#">Hardwood</a>
                    </li>
                    <li class="ln-h">
                      <a href="#">Foods</a>
                    </li>
                    <li class="ln-h">
                      <a href="#">Building</a>
                    </li>
                    <li class="ln-h">
                      <a href="#">House</a>
                    </li>
                    <li class="ln-h">
                      <a href="#">Research</a>
                    </li>
                    <li class="ln-h">
                      <a href="#">Human</a>
                    </li>
                    <li class="ln-i">
                      <a href="#">Importers</a>
                    </li>
                    <li class="ln-i">
                      <a href="#">Supplies</a>
                    </li>
                    <li class="ln-i">
                      <a href="#">Internet</a>
                    </li>
                    <li class="ln-i">
                      <a href="#">Inventors</a>
                    </li>
                    <li class="ln-i">
                      <a href="#">Investigators</a>
                    </li>
                    <li class="ln-i">
                      <a href="#">Investment</a>
                    </li>
                    <li class="ln-i">
                      <a href="#">Investments</a>
                    </li>
                    <li class="ln-j">
                      <a href="#">Janitor</a>
                    </li>
                    <li class="ln-j">
                      <a href="#">Jewelers</a>
                    </li>
                    <li class="ln-j">
                      <a href="#">Retail</a>
                    </li>
                    <li class="ln-j">
                      <a href="#">Jewelry</a>
                    </li>
                    <li class="ln-l">
                      <a href="#">Laboratories</a>
                    </li>
                    <li class="ln-l">
                      <a href="#">Laboratories</a>
                    </li>
                    <li class="ln-l">
                      <a href="#">Land</a>
                    </li>
                    <li class="ln-l">
                      <a href="#">Sanitary</a>
                    </li>
                    <li class="ln-l">
                      <a href="#">Lumber</a>
                    </li>
                    <li class="ln-m">
                      <a href="#">Shops</a>
                    </li>
                    <li class="ln-m">
                      <a href="#">Machinery</a>
                    </li>
                    <li class="ln-m">
                      <a href="#">Designed</a>
                    </li>
                    <li class="ln-m">
                      <a href="#">Magicians</a>
                    </li>
                    <li class="ln-m">
                      <a href="#">Butler Service</a>
                    </li>
                    <li class="ln-m">
                      <a href="#">Supplies</a>
                    </li>
                    <li class="ln-m">
                      <a href="#">Multimedia</a>
                    </li>
                    <li class="ln-m">
                      <a href="#">Museums</a>
                    </li>
                    <li class="ln-n">
                      <a href="#">Publishers</a>
                    </li>
                    <li class="ln-n">
                      <a href="#">Establishments</a>
                    </li>
                    <li class="ln-n">
                      <a href="#">Non-Profit</a>
                    </li>
                    <li class="ln-n">
                      <a href="#">Nurseries</a>
                    </li>
                    <li class="ln-n">
                      <a href="#">Nurserymen</a>
                    </li>
                    <li class="ln-n">
                      <a href="#">Nutritionists</a>
                    </li>
                    <li class="ln-p">
                      <a href="#">Paint</a>
                    </li>
                    <li class="ln-p">
                      <a href="#">Painters</a>
                    </li>
                    <li class="ln-p">
                      <a href="#">Parking</a>
                    </li>
                    <li class="ln-p">
                      <a href="#">Parks</a>
                    </li>
                    <li class="ln-p">
                      <a href="#">Party</a>
                    </li>
                    <li class="ln-p">
                      <a href="#">Patio</a>
                    </li>
                    <li class="ln-p">
                      <a href="#">Paving</a>
                    </li>
                    <li class="ln-p">
                      <a href="#">Pumps</a>
                    </li>
                    <li class="ln-q">
                      <a href="#">Quilting</a>
                    </li>
                    <li class="ln-r">
                      <a href="#">Radio</a>
                    </li>
                    <li class="ln-r">
                      <a href="#">Railroads</a>
                    </li>
                    <li class="ln-r">
                      <a href="#">Ranches</a>
                    </li>
                    <li class="ln-r">
                      <a href="#">Reading</a>
                    </li>
                    <li class="ln-r">
                      <a href="#">Reading</a>
                    </li>
                    <li class="ln-r">
                      <a href="#">Realestate</a>
                    </li>
                    <li class="ln-r">
                      <a href="#">Appraisers</a>
                    </li>
                    <li class="ln-r">
                      <a href="#">Consultants</a>
                    </li>
                    <li class="ln-r">
                      <a href="#">Restaurants</a>
                    </li>
                    <li class="ln-r">
                      <a href="#">American</a>
                    </li>
                    <li class="ln-r">
                      <a href="#">Bakeries</a>
                    </li>
                    <li class="ln-r">
                      <a href="#">Barbecue</a>
                    </li>
                    <li class="ln-r">
                      <a href="#">Roofing</a>
                    </li>
                    <li class="ln-r">
                      <a href="#">Service</a>
                    </li>
                    <li class="ln-s">
                      <a href="#">Sand</a>
                    </li>
                    <li class="ln-s">
                      <a href="#">School</a>
                    </li>
                    <li class="ln-s">
                      <a href="#">Services</a>
                    </li>
                    <li class="ln-s">
                      <a href="#">Nursery</a>
                    </li>
                    <li class="ln-s">
                      <a href="#">Universities</a>
                    </li>
                    <li class="ln-s">
                      <a href="#">Boot Repairing</a>
                    </li>
                    <li class="ln-s">
                      <a href="#">Shoes</a>
                    </li>
                    <li class="ln-s">
                      <a href="#">Shopping</a>
                    </li>
                    <li class="ln-s">
                      <a href="#">Shower</a>
                    </li>
                    <li class="ln-s">
                      <a href="#">Sunglasses</a>
                    </li>
                    <li class="ln-s">
                      <a href="#">Land</a>
                    </li>
                    <li class="ln-t">
                      <a href="#">Salons</a>
                    </li>
                    <li class="ln-t">
                      <a href="#">Tattooing</a>
                    </li>
                    <li class="ln-t">
                      <a href="tax-consultants.aspx">Tax</a>
                    </li>
                    <li class="ln-t">
                      <a href="#">Tax Return</a>
                    </li>
                    <li class="ln-t">
                      <a href="#">Technical</a>
                    </li>
                    <li class="ln-t">
                      <a href="#">Tools</a>
                    </li>
                    <li class="ln-t">
                      <a href="#">Tours</a>
                    </li>
                    <li class="ln-t">
                      <a href="#">Tutoring</a>
                    </li>
                    <li class="ln-u">
                      <a href="#">Ultrasonic</a>
                    </li>
                    <li class="ln-u">
                      <a href="#">Upholsterers</a>
                    </li>
                    <li class="ln-u">
                      <a href="#">Utilities</a>
                    </li>
                    <li class="ln-v">
                      <a href="#">Vacuum</a>
                    </li>
                    <li class="ln-v">
                      <a href="#">Vending</a>
                    </li>
                    <li class="ln-v">
                      <a href="#">Ventilating</a>
                    </li>
                    <li class="ln-v">
                      <a href="#">Venture</a>
                    </li>
                    <li class="ln-v">
                      <a href="#">Vineyards</a>
                    </li>
                    <li class="ln-v">
                      <a href="#">Products</a>
                    </li>
                    <li class="ln-v">
                      <a href="#">Vitamins</a>
                    </li>
                    <li class="ln-w">
                      <a href="#">Wallpapers</a>
                    </li>
                    <li class="ln-w">
                      <a href="#">Windows</a>
                    </li>
                    <li class="ln-w">
                      <a href="wineries.aspx">Wineries</a>
                    </li>
                    <li class="ln-w">
                      <a href="#">Wines</a>
                    </li>
                    <li class="ln-w">
                      <a href="wines_retail.aspx">Wines - Retail</a>
                    </li>
                    <li class="ln-w">
                      <a href="#">Woodworkers</a>
                    </li>
                    <li class="ln-w">
                      <a href="writers.aspx">Writers</a>
                    </li>
                    <li class="ln-x">
                      <a href="#">X-Ray</a>
                    </li>
                    <li class="ln-y">
                      <a href="#">Yarn</a>
                    </li>
                    <li class="ln-y">
                      <a href="#">Yoga</a>
                    </li>
                    <li class="ln-y">
                      <a href="#">Youth</a>
                    </li>
                  </ul>
                  <div class="clearfix"></div>
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

    <!-- List Nav JS -->
    <script src="js/listnav.js"></script>

    <!-- Custom Js -->
    <script src="js/theming.js"></script>
    <script src="js/custom.js"></script>

    <script type="text/javascript">
      $('#demoOne').listnav();

      $('#demoFour').listnav({ 
        includeNums: false 
      });

      //Tiny Scrollbar
      $('#scrollbar-one').tinyscrollbar();
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