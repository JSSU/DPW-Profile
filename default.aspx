<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="dpwProfile._default" %>

<html lang="en"><head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery-ui.js"></script>
    <link href="css/style.css" rel="stylesheet" type="text/css" />

    <link rel="icon" href="icons/form.ico">
    <style>
        #draggable { width: 150px; height: 150px; padding: 0.5em; border: 1px solid #ccc; display: table; }  
        #centerdiv { text-align:center; vertical-align: middle; display: table-cell;}  
    </style>
</head>
 <body>

    <nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">DPW</a>
        </div>
        <div id="navbar" class="collapse navbar-collapse">
          <ul id="nav_id" class="nav navbar-nav">
            <li class="active"><a href="#Main">Main</a></li>
            <li><a href="#about">Director</a></li>
            <li><a href="#contact">Summary-Sheet</a></li>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </nav>

    <div class="container">
      <div class="starter">
        <h1>DPW Profile</h1>
        <p class="lead"><br></p>
      </div>
    </div><!-- /.container -->

<!-- BodyParts -->
  <div>
    <div id="Main" class="starter" style="visibility:hidden">
      <h1>Main</h1>
    </div>

    <!-- Director -->
    <div id="Director" class="starter" style="visibility:hidden">
      <h1>Director</h1>
    </div>

    <!-- Summary-Sheet -->
    <div id="Summary-Sheet" class="starter" style="visibility:hidden">
      <h1>Summary-Sheet</h1>
    </div>
  </div>  
<!-- DataSource -->
     <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
     <asp:SqlDataSource ID="SqlDataSource2" runat="server"></asp:SqlDataSource>
     <asp:SqlDataSource ID="SqlDataSource3" runat="server"></asp:SqlDataSource>
    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
  <script type="text/javascript">
      $(".nav a").on("click", function () {
          $(".nav").find(".active").removeClass("active");
          $(this).parent().addClass("active");
          alert($(this).html());
          $("div .starter").css('visibility', 'hidden');
          $("div #" + $(this).html()).css('visibility', 'visible');
      });
  </script>
<script type="text/javascript">    (function () { return window.SIG_EXT = {}; })()</script>
      </body>
</html>