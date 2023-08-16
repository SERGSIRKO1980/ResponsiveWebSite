<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="ResponsiveWebSite.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Home</title>
    <script 
        src="https://code.jquery.com/jquery-3.6.3.min.js" integrity="sha256-pvPw+upLPUjgMXY0G+8O0xUf+/Im1MZjXxxgOcBQBXU=" crossorigin="anonymous">
    </script>
    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet"/>
    <link href="css/Custom-Cs.css" rel="stylesheet"/>
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://cdn.jsdelivr.net/npm/html5shiv@3.7.3/dist/html5shiv.min.js"></script>
      <script src="https://cdn.jsdelivr.net/npm/respond.js@1.4.2/dest/respond.min.js"></script>
    <![endif]-->
    <script>
        $(document).ready(function myfunction() {
            $("#btnCart").click(function myfunction() {
                window.location.href = "/Cart.aspx";
            });
        });
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="navbar navbar-default navbar-fixed-top" role="navigation">
                <div class="container">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand" href="Default.aspx" ><span><img alt="Logo" src="Images/bg.png" height="30"/></span>TecyCybo</a>
                    </div>
                    <div class="navbar-collapse collapse">
                        <ul class="nav navbar-nav navbar-right">
                            <li class="active"><a href="Default.aspx">Home</a></li>
                            <li><a href="#">About</a></li>
                            <li><a href="#">Contact</a></li>
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Products <b class="caret"></b></a>
                                <ul class="dropdown-menu">
                                    <li><a href="Products.aspx">All Products</a></li>
                                    <li role="separator" class="divider"></li>
                                    <li class="dropdown-header">Men</li>
                                    <li role="separator" class="divider"></li>
                                    <li ><a href="#">Shirts</a></li>
                                    <li ><a href="#">Pants</a></li>
                                    <li ><a href="#">Deims</a></li>
                                    <li role="separator" class="divider"></li>
                                    <li class="dropdown-header">Women</li>
                                    <li role="separator" class="divider"></li>
                                    <li ><a href="#">Top</a></li>
                                    <li ><a href="#">Liggings</a></li>
                                    <li ><a href="#">Deims</a></li>
                                </ul>
                            </li>
                            <li>
                                <button id="btnCart" class="btn btn-primary navbar-btn" type="button">
                                    Cart <span class="badge" id="pCount" runat="server"></span>
                                </button>
                            </li>
                            <li id="btnSignup" runat="server"><a href="SignUp.aspx">Sign Up</a></li>
                            <li id="btnSigin" runat="server"><a href="SignIn.aspx">Sign In</a></li>
                            <li>
                                <asp:Button ID="btnSignOut" runat="server" Class="btn btn-default navbar-btn" Text="Sign Out" OnClick="btnSignOut_Click" />
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <!-- Carusel -->
            <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox">
    <div class="item active">
      <img src="Images/image-1.jpg" alt="..."/>
      <div class="carousel-caption">
        <div class="carousel-caption">
    <h3>Ut enim ad...</h3>
    <p>At vero eos et accusamus et iusto odio dignissimos ducimus, consectetur adipiscing elit, qui dolorem ipsum, quia dolor sit, amet,...</p>
     <p ><a class="btn btn-lg btn-primary" href="#" role="button">Join Up Today</a></p>
         </div>
      </div>
    </div>
    <div class="item">
      <img src="Images/image-2.jpg" alt="..."/>
      <div class="carousel-caption">
        <div class="carousel-caption">
    <h3>Excepteur sint occaecat...</h3>
    <p>Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet, unde omnis iste natus error sit voluptatem accusantium...</p>
    <p ><a class="btn btn-lg btn-primary" href="#" role="button">Join Up Today</a></p>
        </div>
      </div>
    </div>
      <div class="item">
      <img src="Images/image-3.jpg" alt="..."/>
      <div class="carousel-caption">
        <div class="carousel-caption">
    <h3>Quis autem vel...</h3>
    <p>Lorem ipsum dolor sit amet, qui in ea voluptate velit esse, quam nihil molestiae consequatur, vel illum, sunt in culpa...</p>
    <p ><a class="btn btn-lg btn-primary" href="#" role="button">Join Up Today</a></p>
        </div>
      </div>
    </div>
  </div>

  <!-- Controls -->
  <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
            <!-- Carusel end-->
        </div>
        <br />
        <br />
        <!-- Middle Contexts -->
        <div class="container center">
        <div class="row">
            <div class="col-lg-4">
                <img class="img-circle" src="Images/01_avto-aksy.jpg" alt="Lorem ipsum dolor sit amet, qui in ea voluptate velit esse, quam nihil molestiae consequatur, vel illum, sunt in culpa..." width="140" height="140"/>
                <h2>Voluptate</h2>
                <p>Itaque earum rerum hic tenetur a sapiente delectus, nam libero tempore, cum soluta nobis est eligendi optio, cumque nihil impedit, quo minus id, quod maxime placeat, ut et voluptates repudiandae sint et molestiae non recusandae. Duis aute irure dolor in reprehenderit in voluptate, qui blanditiis praesentium voluptatum deleniti atque corrupti,...</p>
                <p><a class="btn btn-default" href="#" role="button">View &raquo;</a></p>
            </div>
             <div class="col-lg-4">
                <img class="img-circle" src="Images/02_avto-aksy.jpg" alt="Lorem ipsum dolor sit amet, qui in ea voluptate velit esse, quam nihil molestiae consequatur, vel illum, sunt in culpa..." width="140" height="140"/>
                <h2>Itaque</h2>
                <p>Itaque earum rerum hic tenetur a sapiente delectus, nam libero tempore, cum soluta nobis est eligendi optio, cumque nihil impedit, quo minus id, quod maxime placeat, ut et voluptates repudiandae sint et molestiae non recusandae. Duis aute irure dolor in reprehenderit in voluptate, qui blanditiis praesentium voluptatum deleniti atque corrupti,...</p>
                <p><a class="btn btn-default" href="#" role="button">View &raquo;</a></p>
            </div>
             <div class="col-lg-4">
                <img class="img-circle" src="Images/03_avto-aksy.jpg" alt="Lorem ipsum dolor sit amet, qui in ea voluptate velit esse, quam nihil molestiae consequatur, vel illum, sunt in culpa..." width="140" height="140"/>
                <h2>Duis</h2>
                <p>Itaque earum rerum hic tenetur a sapiente delectus, nam libero tempore, cum soluta nobis est eligendi optio, cumque nihil impedit, quo minus id, quod maxime placeat, ut et voluptates repudiandae sint et molestiae non recusandae. Duis aute irure dolor in reprehenderit in voluptate, qui blanditiis praesentium voluptatum deleniti atque corrupti,...</p>
                <p><a class="btn btn-default" href="#" role="button">View &raquo;</a></p>
            </div>
            
        </div>
        </div>
        <!-- Middle Contexts end-->
        <!-- footer -->
        <hr />
        <footer>
            <div class="container">
                <p class="pull-right"><a href="#">Back To Top</a></p>
                <p>&copy; 2015 TechCybo.com &middot; <a href="Default.aspx">Home</a> &middot; <a href="#">About</a> &middot; <a href="#">Contact</a> &middot; <a href="#">Products</a> </p>
            </div>

        </footer>
        <!-- footer end-->

    </form>
     <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
</body>
</html>
