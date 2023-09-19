<%@ Page Language="C#" AutoEventWireup="true" CodeFile="loginForm.aspx.cs" Inherits="login_login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>WORK FLOW MANAGEMENT</title>
<meta name="keywords" content="free templates, website templates, CSS, HTML" />
<meta name="description" content="free website template provided by templatemo.com" />
<link href="css/templatemo_style.css" rel="stylesheet" type="text/css" />
<link href="css/jquery.ennui.contentslider.css" rel="stylesheet" type="text/css" media="screen,projection" />
<script language="javascript">
function clearText(field)
{
    if (field.defaultValue == field.value) field.value = '';
    else if (field.value == '') field.value = field.defaultValue;
}

</script>
        <style type="text/css">
        .txt 
        {
            width:150px;
            height:19px; 
            border: 3px double #7A807D ;

        }
        .btn 
         { 
         	 color:#050;  
	        font: bold 100% 'trebuchet ms',helvetica,sans-serif; 
	        background-color:#fed; 
	        width:70px;
	        height:27px;
	        border: 2px solid; 
	        border-color: #696 #363 #363 #696; 
	        filter:progid:DXImageTransform.Microsoft.Gradient 
	        (GradientType=0,StartColorStr='#ffffffff',EndColorStr='#ffeeddaa'); 
	        
	      
        }
        .lnk
        {
        	text-decoration:none;
        }
       
        fieldset
        {
            
             border: 1px solid #000000;
             -moz-border-radius: 8px; 
             border-radius: px;
             
        }
        
        .forfont
        {
        	font-weight:bold;
	        color:black;	
	        font-size:220%;
	        font-style:oblique;
	        font-family:"Lucida Calligraphy",Georgia,Serif;
        }
  
    </style>
</head>
<body>

<div id="templatemo_container">

	<div id="templatemo_site_title_wrapper">
    
    	<div id="site_title">
           
                <font class="forfont">WORK FLOW MANAGEMENT</font> 
                
           
        </div>
    
    </div> <!-- end of site title -->
    
	<div id="templatemo_banner">

     <div id="one" class="contentslider">
            <div class="cs_wrapper">
                <div class="cs_slider">
                
                    <div class="cs_article">
                        <a href="loginForm.aspx">
                        	<img src="images/article01.jpg" alt="Artist's interpretation of article headline" />
                        </a>
                        
                        <div class="text">
                            <h2> <a href="loginForm.aspx"></a> </h2>
                            
                            <p>
                            Hendrerit tincidunt vero vel eorum claritatem. Soluta legunt quod qui dolore typi. Vel dolore soluta qui odio non. Sollemnes minim eorum feugiat nihil nobis. Gothica dolor in legentis nihil quinta.
                            </p>
                            
                            <a class="readmore" href="loginForm.aspx">Click Here</a>
                   		</div>
                	</div><!-- End cs_article -->
                                  
                </div><!-- End cs_slider -->
            </div><!-- End cs_wrapper -->
        </div><!-- End contentslider -->

	<!-- Site JavaScript -->
	<script type="text/javascript" src="js/jss.js"></script>
	<script type="text/javascript" src="js/jquery.easing.1.3.js"></script>
	<script type="text/javascript" src="jslogin/jquery.ennui.contentslider.js"></script>
	<script type="text/javascript">
			$(function() {
				$('#one').ContentSlider({
					width : '860px',
					height : '210px',
					speed : 800,
					easing : 'easeInOutBack'
				});
			});
    </script>
	

    </div> 
    <!-- end of banner -->
    
    <div id="templatemo_menu">
    
	    
    
    </div>
    
    <div id="templatemo_content">
                <table border="0" cellpadding="0" cellspacing="0" width="100%">
                    <tr>
                        <td style="width:25%">&nbsp;</td>
                        <td style="width:50%">
                                 <form id="form1" runat="server">
            <div id="logindiv" style="border:0px solid black; position:relative; float:left; width:100%; height:232px">
            <fieldset style="height: 232px">
                <legend><b>LOGIN</b></legend>
                    <table border="0" cellpadding="0" cellspacing="0" width="100%">
                        <tr><td>&nbsp;</td></tr>
                        <tr>
                            <td width="100%">
                                <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                    <tr>
                                        <td width="5%">&nbsp;</td>
                                        <td width="35%" align="left"><b>Email Address :</b></td>
                                        <td width="60%" align="left"><asp:TextBox ID="usr" runat="server" CssClass="txt"></asp:TextBox></td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr><td>&nbsp;</td></tr>
                        <tr>
                            <td width="100%">
                                <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                    <tr>
                                        <td width="5%">&nbsp;</td>
                                        <td width="35%" align="left"><b>Password :</b></td>
                                        <td width="60%" align="left"><asp:TextBox ID="pass" runat="server" CssClass="txt" TextMode="Password"></asp:TextBox> </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr><td>&nbsp;</td></tr>
                        <tr>
                            <td width="100%">
                                <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                    <tr align="center">
                                        <td width="100%">
                                            <asp:Button ID="btn_lgn" runat="server" Text="&nbsp;Login&nbsp;" CssClass="btn" 
                                                onclick="btn_lgn_Click" /> 
                                                
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        
                        <tr>
                            <td width="100%">
                                <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                    <tr align="center">
                                        <td width="100%">
                                           <asp:Label ID="lgnerrmsg" runat="server" ForeColor="Red"></asp:Label>
                                        </td>
                                    </tr>
                                  
                                </table>
                            </td>
                        </tr>

                    </table>
               </fieldset>
      </div>
      
      <div id="forgetdiv" style="border:0px solid black; position:relative; float:left; width:100%; height:232px; display:none;">
        <fieldset style="height: 232px">
                <legend><b>FORGET PASSWORD</b></legend>
                <table border="0" cellpadding="0" cellspacing="0" width="100%">
                               
                                <tr><td><p align="center">Your new password send on your email address</p></td></tr>
                               
                                <tr>
                                    <td width="100%">
                                        <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                            <tr>
                                                <td width="5%">&nbsp;</td>
                                                 <td width="35%" align="left"><b>Name :</b></td>
                                                 <td width="60%" align="left"><asp:TextBox ID="forget_name" runat="server" CssClass="txt"></asp:TextBox></td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr><td>&nbsp;</td></tr>
                                <tr>
                                   <td width="100%">
                                        <table width="100%" border="0" cellpadding="0" cellspacing="0">
                                            <tr>
                                                <td width="5%">&nbsp;</td>
                                                <td width="35%" align="left"><b>Email :</b></td>
                                                <td width="60%" align="left"><asp:TextBox ID="forget_email" runat="server" CssClass="txt"></asp:TextBox></td>
                                            </tr>
                                        </table>
                                   </td> 
                                </tr>
                                <tr><td>&nbsp;</td></tr>
                                <tr align="center">
                                    <td width="100%">
                                        <table width="100%" border="0" cellpadding="0" cellspacing="0">
                                            <tr>
                                                 <td width="45%" align="right"><asp:Button ID="forget_send" runat="server" 
                                                         Text="&nbsp;Send&nbsp;" CssClass="btn"  /></td>
                                                 <td width="5%">&nbsp;</td>
                                                 <td width="50%" align="left"><input type="button" id="forget_cancel" value="Cancel" class="btn" onclick="showDiv('forgetdiv','logindiv')" /></td>

                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                         </table>
                </fieldset>
            </div>
            </form>
                        
                        </td>
                        <td style="width:25%">&nbsp;</td>
                    </tr>
                </table>   	    
    </div>
    
    <div id="templatemo_footer">
        
        <ul class="footer_menu">
            
            <li><a href="#">About</a></li>
            <li><a href="#">News</a></li>
           
            <li class="last_menu"><a href="#">Contact</a></li>
        </ul>

        Copyright © 2010 <a href="www.conjoinix.com">Conjoinix Total Solutions</a> 
        
    </div> <!-- end of footer -->

</div> <!-- end of container -->

</body>
</html>