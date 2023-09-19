<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="login_login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>WORK FLOW MANAGEMENT</title>
<link href="css/templatemo_style.css" rel="stylesheet" type="text/css" />
<link href="css/jquery.ennui.contentslider.css" rel="stylesheet" type="text/css" media="screen,projection" />
<script language="javascript">
function clearText(field)
{
    if (field.defaultValue == field.value) field.value = '';
    else if (field.value == '') field.value = field.defaultValue;
}
function showDiv(id1,id2)
            {         
                     document.getElementById(id1).style.display="none";
                     document.getElementById(id2).style.display="inline";
                     return false;
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
                        <a href="loginPage.aspx">
                        	<img src="images/article01.jpg" alt="Artist's interpretation of article headline" />
                        </a>
                        
                        <div class="text">
                            <h2> <a href="loginPage.aspx">Home</a> </h2>
                            
                            <p>
                            Hendrerit tincidunt vero vel eorum claritatem. Soluta legunt quod qui dolore typi. Vel dolore soluta qui odio non. Sollemnes minim eorum feugiat nihil nobis. Gothica dolor in legentis nihil quinta.
                            </p>
                            
                            <a class="readmore" href="loginPage.aspx">Read More</a>
                   		</div>
                	</div><!-- End cs_article -->
                    
                    <div class="cs_article">
                        <a href="generalpage/company.htm">
                        <img src="images/article02.jpg" alt="Artist's interpretation of article headline" />
                        </a>
                        
                        <div class="text">
                            <h2> <a href="generalpage/company.htm">Company</a> </h2>
                            
                            <p>
							Lorem ipsum dolor sit ame, consectetur adipiscing elit. In tincidunt, nulla id accumsan ultrices, justo turpis adipiscing nunc, ac pellentesque ipsum massa id dui. Vivamus ut dui ut mi lobortis sodales.
                            </p>
                            
                            <a class="readmore" href="generalpage/company.htm">Read More</a>
                   		</div>
                	</div><!-- End cs_article -->
                    
                    <div class="cs_article">
                        <a href="generalpage/about.htm">
                        <img src="images/article03.jpg" alt="Artist's interpretation of article headline" />
                        </a>
                        
                        <div class="text">
                            <h2> <a href="generalpage/about.htm">About Us</a> </h2>
                            
                            <p>
                            Hendrerit tincidunt vero vel eorum claritatem. Soluta legunt quod qui dolore typi. Vel dolore soluta qui odio non. Sollemnes minim eorum feugiat nihil nobis. Gothica dolor in legentis nihil quinta.
                            </p>
                            
                            <a class="readmore" href="generalpage/about.htm">Read More</a>
                   		</div>
                	</div><!-- End cs_article -->
                    
                    <div class="cs_article">
                        <a href="generalpage/contact.htm">
                        <img src="images/article04.jpg" alt="Artist's interpretation of article headline" />
                        </a>
                        
                        <div class="text">
                            <h2> <a href="generalpage/contact.htm">Contact Us</a> </h2>
                            
                            <p>
                            Aliquam elit risus, volutpat quis, mattis ac, elementum eget, mauris. In hac habitasse platea dictumst. Aenean cursus. Maecenas aliquam, ligula id egestas suscipit, nisi sapien dignissim nibh.
                            </p>
                            
                            <a class="readmore" href="generalpage/contact.htm">Read More</a>
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
    
	    <ul>
            <li><a href="loginPage.aspx" class="current"><b>Home</b></a></li>
            <li><a href="generalpage/company.htm"><b>Company</b></a></li>
            <li><a href="generalpage/contact.htm"><b>Contact us<b></a></li>
            <li><a href="generalpage/about.htm"><b>About Us</b></a></li>
            
           
        </ul>
    
    </div>
    
    <div id="templatemo_content">
    
    	<div class="section_w920">
            <form id="form1" runat="server">
                 <div id="logindiv" style="border:0px solid black; position:relative; float:left; width:415px; height:232px">
            <fieldset style="height: 232px;width:100%">
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
                                          <a href="javascript:void(0)" class="lnk" onclick="showDiv('logindiv','forgetdiv')"><b>Forget Password [?]</b></a>
                                            <br />
                                            <asp:Label ID="lgnerrmsg" runat="server" ForeColor="Red"></asp:Label>
                                         
                                        </td>
                                    </tr>
                                  
                                </table>
                            </td>
                        </tr>
                        <tr><td align="center">
                             <asp:Label ID="lbl_forget_err" runat="server" ForeColor="Red"></asp:Label>
                       </td></tr>

                    </table>
               </fieldset>
      </div>
      
      <div id="forgetdiv" style="border:0px solid black; position:relative; float:left; width:415px; height:232px;display:none">
        <fieldset style="height: 232px;width:100%">
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
                                                 <td style="width:100%">
                                                    <table border="0" width="100%">
                                                        <tr>
                                                            <td width="45%" align="right">
                                                                <asp:Button ID="forget_send" runat="server" Text="&nbsp;Send&nbsp;" CssClass="btn" onclick="forget_send_Click"  /></td>
                                                            <td width="5%">&nbsp;</td>
                                                            <td width="50%" align="left"><input type="button" id="forget_cancel" value="Cancel" class="btn" onclick="showDiv('forgetdiv','logindiv')" /></td>
                                                        </tr>
                                                    </table>
                                                 </td>
                                            </tr>
                                            
                                        </table>
                                    </td>
                                </tr>
                         </table>
                </fieldset>
            </div>
            </form>
        	 
            <div class="section_w430 fr">
            	<h2>Work Flow Management</h2>
            	<img class="image_wrapper fl_image" src="images/templatemo_image_02.png" alt="image" />
                <h3>Save Your Records</h3>
            	<p>Work Flow Management shows over all flow of the work i.e from where job is coming and who is performing the job.It gives the complete record of employee's work and his cost of work</p>	
            
            </div>
                            
        	
      </div>
        
      
        
        <div class="section_w920">
        	
            
            <div class="cleaner_h20"></div>
            
            <img class="image_wrapper fl_image" src="images/templatemo_image_04.png" alt="image" />
            
            <p>We cater to all the web based needs of our clients with powerful web solutions right from the conception to the completion of the project.The internet promotion services make sure that the websites rank well on the popular search engines and gets maximum exposure over the internet.This is the reason why Conjoinix Technologies is called the 'One Stop Shop' for all your business needs.</p>
            <p>You'll never interact with automated support systems. Managers and customer care representatives will contact you personally making sure they understand your needs.You'll communicate with people who are able to get inside your problem and find the proper solution.</p>
        <!-- <div class="button_01"><a href="#">Read more</a></div> -->
            
            <div class="cleaner"></div>
            
      </div>
    
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