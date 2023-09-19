<%@ Page Language="C#" MasterPageFile="~/developer/MasterPage.master" AutoEventWireup="true" CodeFile="Chat_Login.aspx.cs" Inherits="developer_Default" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <table border="0" cellpadding="0" cellspacing="0" width="100%">
                    <tr style="height:50px">
                   <td>
                        <table width="100%">
                            <tr>
                                 <td align="right" style="width:90%">
                                    <b>Developer:</b>
                                    <asp:Label ID="Label1" runat="server" ForeColor="Blue"></asp:Label>
                                 </td>
                                 <td width="10%">&nbsp;</td>
                            </tr>
                        </table>
                   </td>
                </tr>
                    <tr>
                        <td style="width:100%">
                            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                <tr>
                                        <td style="width:25%">&nbsp;</td>
                        <td style="width:50%">
                                 
            <div id="logindiv" style="border:0px solid black; position:relative; float:left; width:100%; height:232px">
            <fieldset style="height: 232px">
                <legend><b>SELECT CHAT ROOM</b></legend>
                    <table border="0" cellpadding="0" cellspacing="0" width="100%">
                        <tr><td>&nbsp;</td></tr>
                        <tr>
                            <td width="100%">
                                <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                    <tr>
                                        <td width="5%">&nbsp;</td>
                                        <td width="35%" align="left"><b>Select Room :</b></td>
                                        <td width="60%" align="left">
                                                 <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                                                     CssClass="fordrp" AppendDataBoundItems="True">
                                                     <asp:ListItem Value="0">Select Room</asp:ListItem>
                                                 </asp:DropDownList>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr><td>&nbsp;</td></tr>
                        <tr><td>&nbsp;</td></tr>
                        <tr>
                            <td width="100%" align="center">
                                <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                    <tr>
                                        <td style="width:100%">
                                            <table width="100%">
                                                <tr>
                                                    <td align="center">
                                                       <asp:ImageButton ID="img" runat="server" ImageUrl="../images/chat.jpg" 
                                                            onclick="img_Click" />  
                                                    </td>
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
         </td>
                        <td style="width:25%">&nbsp;</td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>   	 
</asp:Content>

