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
    <div class="container-fluid">
      <div class="row-fluid">
        <div class="span12">
          <div class="error-container">
            <h1>Oops!</h1>
            <h2>404 Not Found</h2>
            <div class="error-details">
              Sorry, an error has occured, Requested page not found!
            </div>
            <div class="error-actions">
              <a href="index" class="btn btn-info">
                Back to Home          
              </a>
              <a href="#contactSupport" role="button" class="btn btn-success" data-toggle="modal">
                Contact Support
              </a>

              <!-- Modal -->
              <div id="contactSupport" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="ontactSupport" aria-hidden="true">
                <div class="modal-header">
                  <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                    ×
                  </button>
                  <h3>
                    Fill the form
                  </h3>
                </div>
                <div class="modal-body">
                  <div class="row-fluid">  
                    <div class="span12">
                      <input type="text" class="span12" Placeholder="Subject">
                    </div>
                  </div>
                  <div class="row-fluid">  
                    <div class="span6">
                      <input type="text" class="span12" Placeholder="Frist name">
                    </div>
                    <div class="span6">
                      <input type="text" class="span12" Placeholder="Last name">
                    </div>
                  </div>
                  <div class="row-fluid">  
                    <div class="span12">
                      <input type="text" class="span12" Placeholder="Phone number">
                    </div>
                  </div>
                  <div class="row-fluid">  
                    <div class="span12">
                      <textarea rows="2" class="span12" placeholder="How can I help you today?"></textarea>
                    </div>
                  </div>
                  <div class="row-fluid">  
                    <div class="span12">
                      <input type="email" class="span12" Placeholder="Enter your email">
                    </div>
                  </div>
                </div>
                <div class="modal-footer">
                  <button class="btn btn-info">Send</button>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.js"></script>

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