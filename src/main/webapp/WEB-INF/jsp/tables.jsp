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
              <h2>Static Tables</h2>
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
                    <span class="fs1" aria-hidden="true" data-icon="&#xe14a;"></span> Table with Charts
                  </div>
                </div>
                <div class="widget-body">
                  <table class="table table-condensed table-bordered no-margin">
                    <thead>
                      <tr>
                        <th style="width:3%" class="hidden-phone"></th>
                        <th style="width:15%">
                          Buyer's Name
                        </th>
                        <th style="width:32%" class="hidden-phone">
                          Shipping Address
                        </th>
                        <th style="width:5%" class="hidden-phone">
                          Q'ty
                        </th>
                        <th style="width:10%" class="hidden-phone">
                          Status
                        </th>
                        <th style="width:20%">
                          Overall Status
                        </th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <td class="hidden-phone">
                          <span class="chart" id="spark_1"></span>
                        </td>
                        <td>
                          Michel Clark
                        </td>
                        <td class="hidden-phone">
                          Bel Road, 12th Cross
                        </td>
                        <td class="hidden-phone">
                          1967
                        </td>
                        <td class="hidden-phone">
                          <span class="badge badge-info">
                            Processing
                          </span>
                        </td>
                        <td rowspan="5" class="center-align-text">
                          <div class="chart" id="spark_6"></div>
                        </td>
                      </tr>
                      <tr>
                        <td class="hidden-phone">
                          <span class="chart" id="spark_2"></span>
                        </td>
                        <td>
                          Robin Sharm
                        </td>
                        <td class="hidden-phone">
                          Baswa lane, Kanpur
                        </td>
                        <td class="hidden-phone highlight-even">
                          4122
                        </td>
                        <td class="hidden-phone highlight-even">
                          <span class="badge badge-success">
                            Sent
                          </span>
                        </td>
                      </tr>
                      <tr>
                        <td class="hidden-phone">
                          <span class="chart" id="spark_3"></span>
                        </td>
                        <td>
                          Mariya Kinso
                        </td>
                        <td class="hidden-phone">
                          Lavelle Road, Bangalore
                        </td>
                        <td class="hidden-phone">
                          2263
                        </td>
                        <td class="hidden-phone">
                          <span class="badge badge-important">
                            Cancelled
                          </span>
                        </td>
                      </tr>
                      <tr>
                        <td class="hidden-phone">
                          <span class="chart" id="spark_4"></span>
                        </td>
                        <td>
                          Srinu Basava
                        </td>
                        <td class="hidden-phone">
                          H.S.No. 229, Garabandha
                        </td>
                        <td class="hidden-phone highlight-even">
                          1873
                        </td>
                        <td class="hidden-phone highlight-even">
                          <span class="badge badge-info">
                            Processing
                          </span>
                        </td>
                      </tr>
                      <tr>
                        <td class="hidden-phone">
                          <span class="chart" id="spark_5"></span>
                        </td>
                        <td>
                          Manson Sandy
                        </td>
                        <td class="hidden-phone">
                          Silicon Valley
                        </td>
                        <td class="hidden-phone">
                          2249
                        </td>
                        <td class="hidden-phone">
                          <span class="badge badge-success">
                            Sent
                          </span>
                        </td>
                      </tr>
                    </tbody>
                  </table>
                  </div>
              </div>
            </div>
          </div>

          <div class="row-fluid">
            <div class="span12">
              <div class="widget">
                <div class="widget-header">
                  <div class="title">
                    <span class="fs1" aria-hidden="true" data-icon="&#xe14a;"></span> Table with More Data
                  </div>
                </div>
                <div class="widget-body">
                  <table class="table table-condensed table-bordered no-margin">
                    <thead>
                      <tr>
                        <th class="span1">2013</th>
                        <th class="span4">Description</th>
                        <th class="span1 hidden-phone">Firefox</th>
                        <th class="span1 hidden-phone">Chrome</th>
                        <th class="span1 hidden-phone">Safari</th>
                        <th class="span1 hidden-phone">Opera</th>
                        <th class="span1 hidden-phone">IE8</th>
                        <th class="span1 hidden-phone">IE7</th>
                        <th class="span1 hidden-phone">IE6</th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <td class="success">Dec</td>
                        <td class="info">Frictionless proactive</td>
                        <td class="hidden-phone warning">34.4%</td>
                        <td class="hidden-phone error">41.7%</td>
                        <td class="hidden-phone success">4.1%</td>
                        <td class="hidden-phone info">1.8%</td>
                        <td class="hidden-phone warning">0.6%</td>
                        <td class="hidden-phone error">4.6%</td>
                        <td class="hidden-phone">2.6%</td>
                      </tr>
                      <tr>
                        <td class="success">Nov</td>
                        <td class="info">A-list disintermediate</td>
                        <td class="hidden-phone warning">34.4%</td>
                        <td class="hidden-phone error">42.7%</td>
                        <td class="hidden-phone success">4.1%</td>
                        <td class="hidden-phone info">2.4%</td>
                        <td class="hidden-phone warning">1.5%</td>
                        <td class="hidden-phone error">0.6%</td>
                        <td class="hidden-phone">1.6%</td>
                      </tr>
                      <tr>
                        <td class="success">Oct</td>
                        <td class="info">Leverage repurpose enterprise</td>
                        <td class="hidden-phone warning">35.2%</td>
                        <td class="hidden-phone error">36.3%</td>
                        <td class="hidden-phone success">4.3%</td>
                        <td class="hidden-phone info">2.2%</td>
                        <td class="hidden-phone warning">2.6%</td>
                        <td class="hidden-phone error">0.9%</td>
                        <td class="hidden-phone">2.2%</td>
                      </tr>
                      <tr>
                        <td class="success">Sep</td>
                        <td class="info">Synergize A-list disintermediate</td>
                        <td class="hidden-phone warning">36.8%</td>
                        <td class="hidden-phone error">38.3%</td>
                        <td class="hidden-phone success">4.5%</td>
                        <td class="hidden-phone info">2.3%</td>
                        <td class="hidden-phone warning">2.2%</td>
                        <td class="hidden-phone error">0.9%</td>
                        <td class="hidden-phone">1%</td>
                      </tr>
                      <tr>
                        <td class="success">Aug</td>
                        <td class="info">Syndicate customized</td>
                        <td class="hidden-phone warning">32.8%</td>
                        <td class="hidden-phone error">43.7%</td>
                        <td class="hidden-phone success">4.0%</td>
                        <td class="hidden-phone info">2.2%</td>
                        <td class="hidden-phone warning">4.2%</td>
                        <td class="hidden-phone error">0.1%</td>
                        <td class="hidden-phone">1.1%</td>
                      </tr>
                    </tbody>
                  </table>
                </div>
              </div>
            </div>
          </div>
          
          <div class="row-fluid">
            <div class="span12">
              <div class="widget">
                <div class="widget-header">
                  <div class="title">
                    <span class="fs1" aria-hidden="true" data-icon="&#xe14a;"></span> Deletable Table Row
                  </div>
                </div>
                <div class="widget-body">
                  <table class="table table-striped table-condensed table-bordered no-margin">
                    <thead>
                      <tr>
                        <th class="span1">#</th>
                        <th class="span2">&nbsp;</th>
                        <th class="span3">Name</th>
                        <th class="span4 hidden-phone">Progress</th>
                        <th class="span1 hidden-phone">Status</th>
                        <th class="span1 hidden-phone">Actions</th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <td>1</td>
                        <td>
                          <span class="chart" id="ax">
                            5, 1, 2, 3, 1, 7, 1, 6, 2, 5, 2
                          </span>
                        </td>
                        <td>Srinu Basava</td>
                        <td class="vertical-align-mid hidden-phone">
                          <p class="progress progress-info progress-striped active no-margin">
                            <span class="bar" style="width: 20%">
                            </span>
                          </p>
                        </td>
                        <td class="hidden-phone">
                          <span class="text-success"><strong>Active</strong></span>
                        </td>
                        <td class="hidden-phone">
                          <a class="delete-row" data-original-title="Delete" href="#">
                            <i class="icon-trash"></i>
                          </a>
                        </td>
                      </tr>
                      <tr>
                        <td>2</td>
                        <td>
                          <span class="chart" id="ex">
                            2, 1, 2, 7, 4, 1, 4, 1, 2, 5, 2
                          </span>
                        </td>
                        <td>Hilsonn</td>
                        <td class="vertical-align-mid hidden-phone">
                          <p class="progress progress-success progress-striped active no-margin">
                            <span class="bar" style="width: 44%">
                            </span>
                          </p>
                        </td>
                        <td class="hidden-phone">
                          <span class="text-success"><strong>Active</strong></span>
                        </td>
                        <td class="hidden-phone">
                          <a class="delete-row" data-original-title="Delete" href="#">
                            <i class="icon-trash"></i>
                          </a>
                        </td>
                      </tr>
                      <tr>
                        <td>3</td>
                        <td>
                          <span class="chart" id="dx">
                            1, 4, 1, 6, 2, 4, 1, 4, 1, 6, 2
                          </span>
                        </td>
                        <td>Prem Pillai</td>
                        <td class="vertical-align-mid hidden-phone">
                          <p class="progress progress-warning progress-striped active no-margin">
                            <span class="bar" style="width: 34%">
                            </span>
                          </p>
                        </td>
                        <td class="hidden-phone">
                          <span class="text-error"><strong>Inctive</strong></span>
                        </td>
                        <td class="hidden-phone">
                          <a class="delete-row" data-original-title="Delete" href="#">
                            <i class="icon-trash"></i>
                          </a>
                        </td>
                      </tr>
                      <tr>
                        <td>4</td>
                        <td>
                          <span class="chart" id="cx">
                            3, 2, 1, 4, 7, 4, 1, 6, 2, 5, 2
                          </span>
                        </td>
                        <td>Arjun Urs</td>
                        <td class="vertical-align-mid hidden-phone">
                          <p class="progress progress-danger progress-striped active no-margin">
                            <span class="bar" style="width: 89%">
                            </span>
                          </p>
                        </td>
                        <td class="hidden-phone">
                          <span class="text-success"><strong>Inactive</strong></span>
                        </td>
                        <td class="hidden-phone">
                          <a class="delete-row" data-original-title="Delete" href="#">
                            <i class="icon-trash"></i>
                          </a>
                        </td>
                      </tr>
                      <tr>
                        <td>5</td>
                        <td>
                          <span class="chart" id="bx">
                            2, 1, 2, 5, 7, 4, 1, 6, 2, 5, 2
                          </span>
                        </td>
                        <td>Gajju Ganga</td>
                        <td class="vertical-align-mid hidden-phone">
                          <p class="progress progress-info progress-striped active no-margin">
                            <span class="bar" style="width: 57%">
                            </span>
                          </p>
                        </td>
                        <td class="hidden-phone">
                          <span class="text-error"><strong>Active</strong></span>
                        </td>
                        <td class="hidden-phone">
                          <a class="delete-row" data-original-title="Delete" href="#">
                            <i class="icon-trash"></i>
                          </a>
                        </td>
                      </tr>
                    </tbody>
                  </table>
                </div>
              </div>
            </div>
          </div>

          <div class="row-fluid">
            <div class="span12">
              <div class="widget">
                <div class="widget-header">
                  <div class="title">
                    <span class="fs1" aria-hidden="true" data-icon="&#xe14a;"></span> Table
                  </div>
                </div>
                <div class="widget-body">
                  <table class="table table-condensed table-striped table-bordered table-hover no-margin">
                    <thead>
                      <tr>
                        <th class="span2">Stats</th>
                        <th class="span3">Buyer's Name</th>
                        <th class="span5 hidden-phone">Shipping Address</th>
                        <th class="span1 hidden-phone">Q'ty</th>
                        <th class="span1 hidden-phone">Status</th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <td>
                          <span class="chart" id="unique-visitors">
                            6, 4, 9, 7, 4, 9, 6, 3, 5, 6, 9, 6, 4, 6, 4, 3, 7, 9, 5, 4, 2, 6, 3, 1, 4, 5, 7, 4
                          </span>
                        </td>
                        <td>
                          Michel Clark
                        </td>
                        <td class="hidden-phone">
                          Bel Road, 12th Cross
                        </td>
                        <td class="hidden-phone">
                          662
                        </td>
                        <td class="hidden-phone">
                          <span class="badge badge-info">
                            Processing
                          </span>
                        </td>
                      </tr>
                      <tr>
                        <td>
                          <span class="chart" id="monthly-sales">
                            4, 9, 6, 8, 3, 5, 6, 8, 3, 2, 7, 4, 4, 5, 7, 5, 6, 8, 5, 9, 4, 5, 9, 4, 3, 5, 6, 8, 4, 5, 7, 5
                          </span>
                        </td>
                        <td>
                          Robin Sharm
                        </td>
                        <td class="hidden-phone">
                          Baswa lane, Kanpur
                        </td>
                        <td class="hidden-phone">
                          129
                        </td>
                        <td class="hidden-phone">
                          <span class="badge badge-success">
                            Sent
                          </span>
                        </td>
                      </tr>
                      <tr>
                        <td>
                          <span class="chart" id="current-balance">
                            7, 1, 4, 6, 7, 3, 3, 2, 7, 4, 1, 4, 1, 6, 2, 5, 1, 6, 3, 6, 1, 4, 8, 6, 7, 3, 1, 6, 3, 6, 8, 3, 9, 2, 6, 1, 7 
                          </span>
                        </td>
                        <td>
                          Mariya Kinso
                        </td>
                        <td class="hidden-phone">
                          Lavelle Road, Bangalore
                        </td>
                        <td class="hidden-phone">
                          567
                        </td>
                        <td class="hidden-phone">
                          <span class="badge badge-important">
                            Cancelled
                          </span>
                        </td>
                      </tr>
                      <tr>
                        <td>
                          <span class="chart" id="registrations">
                            2, 5, 1, 2, 8, 3, 2, 7, 4, 1, 4, 1, 6, 2, 5, 3, 2, 7, 4, 1, 4, 1, 6, 2, 5, 9, 1, 2, 8, 3, 2, 7, 4, 1, 2, 4
                          </span>
                        </td>
                        <td>
                          Srinu Basava
                        </td>
                        <td class="hidden-phone">
                          H.S.No. 229, Garabandha
                        </td>
                        <td class="hidden-phone">
                          887
                        </td>
                        <td class="hidden-phone">
                          <span class="badge badge-info">
                            Processing
                          </span>
                        </td>
                      </tr>
                      <tr>
                        <td>
                          <span class="chart" id="site-visits">
                            5, 1, 2, 8, 3, 2, 7, 4, 1, 6, 2, 5, 2, 9, 5, 2, 3, 8, 1, 3, 8, 2, 3, 8, 3, 5
                          </span>
                        </td>
                        <td>
                          Manson Sandy
                        </td>
                        <td class="hidden-phone">
                          Silicon Valley
                        </td>
                        <td class="hidden-phone">
                          548
                        </td>
                        <td class="hidden-phone">
                          <span class="badge badge-success">
                            Sent
                          </span>
                        </td>
                      </tr>
                    </tbody>
                  </table>
                </div>
              </div>
            </div>
          </div>

          <div class="row-fluid">
            <div class="span12">
              <div class="widget">
                <div class="widget-header">
                  <div class="title">
                    <span class="fs1" aria-hidden="true" data-icon="&#xe14a;"></span> Colspan Table
                  </div>
                </div>
                <div class="widget-body">
                  <table class="table table-bordered table-condensed table-striped no-margin">
                    <thead>
                      <tr>
                        <th class="span1">#</th>
                        <th class="span4">First name</th>
                        <th class="span5 hidden-phone">Last name</th>
                        <th class="span2 hidden-phone">@twitter</th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <td>1</td>
                        <td>Srinu</td>
                        <td class="hidden-phone">Basava</td>
                        <td class="hidden-phone">@srinubasava</td>
                      </tr>
                      <tr>
                        <td>2</td>
                        <td>Sandy</td>
                        <td colspan="2" class="hidden-phone">Colspan2</td>
                      </tr>
                      <tr>
                        <td>3</td>
                        <td colspan="2">Colspan2</td>
                        <td class="hidden-phone">@Colspan</td>
                      </tr>
                      <tr>
                        <td>4</td>
                        <td>Karina</td>
                        <td colspan="2" class="hidden-phone">Colspan2</td>
                      </tr>
                      <tr>
                        <td>5</td>
                        <td colspan="3">Samantha Colspan3</td>
                      </tr>
                    </tbody>
                  </table>
                </div>
              </div>
            </div>
          </div>

          <div class="row-fluid">
            <div class="span12">
              <div class="widget no-margin">
                <div class="widget-header">
                  <div class="title">
                    <span class="fs1" aria-hidden="true" data-icon="&#xe14a;"></span> Table Colored
                  </div>
                </div>
                <div class="widget-body">
                  <table class="table table-condensed table-bordered no-margin">
                    <thead>
                      <tr>
                        <th>2012</th>
                        <th>Explorer</th>
                        <th class="hidden-phone">Firefox</th>
                        <th class="hidden-phone">Chrome</th>
                        <th class="hidden-phone">Safari</th>
                        <th class="hidden-phone">Opera</th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr class="success">
                        <td>Dec</td>
                        <td>15.4%</td>
                        <td class="hidden-phone">34.4%</td>
                        <td class="hidden-phone">41.7%</td>
                        <td class="hidden-phone">4.1%</td>
                        <td class="hidden-phone">2.0%</td>
                      </tr>
                      <tr class="error">
                        <td>Nov</td>
                        <td>16.7%</td>
                        <td class="hidden-phone">34.4%</td>
                        <td class="hidden-phone">42.7%</td>
                        <td class="hidden-phone">4.1%</td>
                        <td class="hidden-phone">2.2%</td>
                      </tr>
                      <tr class="info">
                        <td>Oct</td>
                        <td>18.9%</td>
                        <td class="hidden-phone">35.2%</td>
                        <td class="hidden-phone">36.3%</td>
                        <td class="hidden-phone">4.3%</td>
                        <td class="hidden-phone">2.2%</td>
                      </tr>
                      <tr class="warning">
                        <td>Sep</td>
                        <td>18.7%</td>
                        <td class="hidden-phone">36.8%</td>
                        <td class="hidden-phone">38.3%</td>
                        <td class="hidden-phone">4.5%</td>
                        <td class="hidden-phone">2.3%</td>
                      </tr>
                      <tr class="success">
                        <td>Aug</td>
                        <td>16.2%</td>
                        <td class="hidden-phone">32.8%</td>
                        <td class="hidden-phone">43.7%</td>
                        <td class="hidden-phone">4.0%</td>
                        <td class="hidden-phone">2.3%</td>
                      </tr>
                    </tbody>
                  </table>
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
    
    <!-- Sparkline charts -->
    <script src="js/sparkline.js"></script>

    <!-- Easy Pie Chart JS -->
    <script src="js/pie-charts/jquery.easy-pie-chart.js"></script>

    <!-- Tiny scrollbar js -->
    <script src="js/tiny-scrollbar.js"></script>
    
    <!-- Custom Js -->
    <script src="js/custom-tables.js"></script>
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