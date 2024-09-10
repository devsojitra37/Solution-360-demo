<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="admin_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <!--Core CSS -->
    <link href="bs3/css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/bootstrap-reset.css" rel="stylesheet" />
    <link href="font-awesome/css/font-awesome.css" rel="stylesheet" />

    <!-- Custom styles for this template -->
    <link href="css/style.css" rel="stylesheet" />
    <link href="css/style-responsive.css" rel="stylesheet" />
    <!-- Just for debugging purposes. Don't actually copy this line! -->
    <!--[if lt IE 9]>
    <script src="js/ie8-responsive-file-warning.js"></script><![endif]-->

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
</head>
<body>
    <form id="form1" runat="server"  class="form-signin">
   <h2 class="form-signin-heading">sign in now</h2>
        <div class="login-wrap">
            <div class="user-login-info">
               
                <asp:TextBox ID="txt_un" runat="server" class="form-control" placeholder="User Name" autofocus=""></asp:TextBox> <asp:RequiredFieldValidator ID="rfv_un" runat="server" ControlToValidate="txt_un"
                    ErrorMessage="Enter User Name" ForeColor="Red" ValidationGroup="v1" ></asp:RequiredFieldValidator>
               
                <asp:TextBox ID="txt_pw" runat="server" class="form-control" placeholder="Password" TextMode="Password"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_pw" ErrorMessage="Enter Password" ForeColor="Red" ValidationGroup="v1" ></asp:RequiredFieldValidator>
            </div>
            <%--<label class="checkbox">
                <input type="checkbox" value="remember-me"> Remember me
                <span class="pull-right">
                    <a data-toggle="modal" href="#myModal"> Forgot Password?</a>

                </span>
            </label>--%>
            
         <asp:Button ID="btn_submit" runat="server" class="btn btn-lg btn-login btn-block" Text="Sign in" ValidationGroup="v1" OnClick="btn_submit_Click" />
            
           <%-- <div class="registration">
                Don't have an account yet?
                <a class="" href="registration.html">
                    Create an account
                </a>
            </div>--%>

        </div>

          <!-- Modal -->
          <div aria-hidden="true" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" id="myModal" class="modal fade">
              <div class="modal-dialog">
                  <div class="modal-content">
                      <%--<div class="modal-header">
                          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                          <h4 class="modal-title">Forgot Password ?</h4>
                      </div>--%>
                      <div class="modal-body">
                          <p>Enter your e-mail address below to reset your password.</p>
                         <%-- <input type="text" name="email" placeholder="Email" autocomplete="off" class="form-control placeholder-no-fix">--%>
                          <asp:TextBox ID="txt_email" runat="server" class="form-control" placeholder="Password" ></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_email" ErrorMessage="Enter E-Mail" ForeColor="Red" ValidationGroup="v2" ></asp:RequiredFieldValidator>
                      </div>
                      <%--<div class="modal-footer">
                          <button data-dismiss="modal" class="btn btn-default" type="button">Cancel</button>
            
                          <asp:Button ID="btn_submit1" runat="server" class="btn btn-success" Text="Submit" ValidationGroup="v2"/>
                      </div>--%>
                  </div>
              </div>
          </div>
          <!-- modal -->

     <%-- </form>--%>

    </form>
    
      <!--Core js-->
    <script src="js/jquery.js"></script>
    <script src="bs3/js/bootstrap.min.js"></script>
</body>
</html>
