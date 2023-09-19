<%@ Page Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="User_Add.aspx.cs" Inherits="admin_Default2" Title="Untitled Page" %>

<%@ Register src="../user_control/control_for_User.ascx" tagname="control_for_User" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <table border="0" cellpadding="0" cellspacing="0" width="100%">
            <tr>
                <td>
                    <asp:ScriptManager ID="scr" runat="server"></asp:ScriptManager>
                        <table border="0" cellpadding="0" cellspacing="0" width="100%">
                            <tr>
                             <td>
                                 <div id="headerdiv" style=" position:relative; float:left; width:100%; height:50px; border:0px solid black; top: 0px; left: 0px;">
                                        <table border="0" width="100%" cellpadding="0" cellspacing="0">
                                            <tr>
                                                <td width="100%">
                                                    <table width="100%" border="0" cellpadding="0" cellspacing="0">
                                                        <tr>
                                                            <td width="3%">&nbsp;</td>
                                                            <td width="17%">
                                                                <uc1:control_for_User ID="control_for_User1" runat="server" />
                                                            </td>
                                                            <td width="70%" align="right">
                                                                <b>Admin: </b>
                                                                <asp:Label ID="Label1" runat="server" ForeColor="Blue"></asp:Label>
                                                            </td>
                                                            <td width="10%">&nbsp;</td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                        </table>
                                     </div>        
                                </td>
                            </tr>
                            <tr>
                <td>
                    <div id="seconddiv" style=" position:relative; float:left; width:100%; height:auto;border:0px solid black">
                        
                                  <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                        <tr>
                                                <td style="width:10%">&nbsp;</td>
                                                <td style="width:80%">
                                                         <fieldset id="fsAddUser">
                                                            <legend class="fontForOuterLegend">Add Users</legend>
                                                                <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                                                        <tr><td>&nbsp;</td></tr>
                                                                        <tr>
                                                                            <td>
                                                                                <table width="100%" cellpadding="0" cellspacing="0" border="0">
                                                                                    <tr>
                                                                                        <td style="width:2%">&nbsp;</td>
                                                                                        <td style="width:47%">
                                                                                                <fieldset id="fsUsers" style=" height:210px">
                                                                                                            <legend class="fontForInnerLegend">Users</legend>
                                                                                                                <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                                                                                                    <tr><td>&nbsp;</td></tr>
                                                                                                                    <tr>
                                                                                                                        <td>
                                                                                                                            <table width="100%" cellpadding="0" cellspacing="0" border="0">
                                                                                                                                <tr>
                                                                                                                                    <td style="width:5%">&nbsp;</td>
                                                                                                                                    <td style="width:35%" class="font_size">User&nbsp;Name:</td>
                                                                                                                                    <td style="width:60%"><asp:TextBox ID="txt_Usr_Name" runat="server" CssClass="txt" ValidationGroup="abc"></asp:TextBox>
                                                                                                                                        <asp:RequiredFieldValidator ID="for_txt_Name" runat="server" ControlToValidate="txt_Usr_Name" ErrorMessage="*" ValidationGroup="abc"></asp:RequiredFieldValidator>
                                                                                                                                    </td>
                                                                                                                                </tr>
                                                                                                                            </table>
                                                                                                                        </td>
                                                                                                                    </tr>
                                                                                                                    <tr><td>&nbsp;</td></tr>
                                                                                                                    <tr>
                                                                                                                        <td>
                                                                                                                            <table width="100%" cellpadding="0" cellspacing="0" border="0">
                                                                                                                                <tr>
                                                                                                                                    <td style="width:5%">&nbsp;</td>
                                                                                                                                    <td style="width:35%" class="font_size">Email&nbsp;Address:</td>
                                                                                                                                    <td style="width:60%"><asp:TextBox ID="txt_Usr_EmailAdd" runat="server" CssClass="txt" ValidationGroup="abc"></asp:TextBox>
                                                                                                                                        <asp:RequiredFieldValidator ID="for_txt_EmailAdd" runat="server" ControlToValidate="txt_Usr_EmailAdd" ErrorMessage="*" ValidationGroup="abc"></asp:RequiredFieldValidator>
                                                                                                                                    </td>
                                                                                                                                </tr>
                                                                                                                            </table>
                                                                                                                        </td>
                                                                                                                    </tr>
                                                                                                                     <tr><td>&nbsp;</td></tr>
                                                                                                                    <tr>
                                                                                                                        <td>
                                                                                                                            <table width="100%" cellpadding="0" cellspacing="0" border="0">
                                                                                                                                <tr>
                                                                                                                                    <td style="width:5%">&nbsp;</td>
                                                                                                                                    <td style="width:35%" class="font_size">Rate:</td>
                                                                                                                                    <td style="width:60%"><asp:TextBox ID="txt_Usr_Rate" runat="server" CssClass="txt" ValidationGroup="abc"></asp:TextBox>
                                                                                                                                        <asp:RequiredFieldValidator ID="for_txt_Rate" runat="server" ControlToValidate="txt_Usr_Rate" ErrorMessage="*" ValidationGroup="abc"></asp:RequiredFieldValidator>
                                                                                                                                    </td>
                                                                                                                                </tr>
                                                                                                                            </table>
                                                                                                                        </td>
                                                                                                                    </tr>
                                                                                                                   <tr><td>&nbsp;</td></tr>
                                                                                                                </table>
                                                                                                </fieldset>
                                                                                        </td>
                                                                                        <td style="width:2%">&nbsp;</td>
                                                                                        <td style="width:47%">
                                                                                        <asp:UpdatePanel ID="upd_for_drp" runat="server" UpdateMode="Conditional"><ContentTemplate>
                                                                                             <fieldset id="fsUserType" style="height:210px;">
                                                                                                                    <legend class="fontForInnerLegend">User Type</legend> 
                                                                                                                        <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                                                                                                            <tr><td>&nbsp;</td></tr>
                                                                                                                            <tr>
                                                                                                                                <td>
                                                                                                                                    <table width="100%" cellpadding="0" cellspacing="0" border="0">
                                                                                                                                        <tr>
                                                                                                                                            <td style="width:5%">&nbsp;</td>
                                                                                                                                            <td style="width:35%" class="font_size">User&nbsp;Level:</td>
                                                                                                                                            <td style="width:60%">
                                                                                                                                                <asp:DropDownList ID="drp_Usr_Level" runat="server" CssClass="fordrp" 
                                                                                                                                                    DataTextField="DesignationLevel" DataValueField="DesignationId" 
                                                                                                                                                    AutoPostBack="True" onselectedindexchanged="drp_Usr_Level_SelectedIndexChanged"></asp:DropDownList>
                                                                                                                                            </td>
                                                                                                                                        </tr>
                                                                                                                                    </table>
                                                                                                                                </td>
                                                                                                                            </tr>
                                                                                                                             <tr><td>&nbsp;</td></tr>
                                                                                                                            <tr>
                                                                                                                                <td>
                                                                                                                                    <table width="100%" cellpadding="0" cellspacing="0" border="0">
                                                                                                                                        <tr>
                                                                                                                                            <td style="width:5%">&nbsp;</td>
                                                                                                                                            <td style="width:35%" class="font_size">Rate&nbsp;Unit:</td>
                                                                                                                                            <td style="width:60%">
                                                                                                                                                <asp:DropDownList ID="drp_Usr_Rate" runat="server" CssClass="fordrp" DataTextField="DurationTime" DataValueField="DurationId" AutoPostBack="true"></asp:DropDownList>
                                                                                                                                            </td>
                                                                                                                                        </tr>
                                                                                                                                    </table>
                                                                                                                                </td>
                                                                                                                            </tr>
                                                                                                                             <tr><td>&nbsp;</td></tr>
                                                                                                                            <tr>
                                                                                                                                <td>
                                                                                                                                    <table width="100%" cellpadding="0" cellspacing="0" border="0">
                                                                                                                                        <tr>
                                                                                                                                            <td style="width:5%">&nbsp;</td>
                                                                                                                                            <td style="width:35%" class="font_size">
                                                                                                                                                <asp:Label ID="lbl_Teamlead" runat="server" Text="Team&nbsp;Leader:"></asp:Label>
                                                                                                                                            </td>
                                                                                                                                            <td style="width:60%">
                                                                                                                                                <asp:DropDownList ID="drp_Teamleader" runat="server" CssClass="fordrp" DataTextField="UsrName" DataValueField="UsrId" AutoPostBack="true"></asp:DropDownList>
                                                                                                                                            </td>
                                                                                                                                        </tr>
                                                                                                                                    </table>
                                                                                                                                </td>
                                                                                                                            </tr>
                                                                                                                         </table>
                                                                                                </fieldset>
                                                                                              </ContentTemplate></asp:UpdatePanel>
                                                                                        </td>
                                                                                        <td style="width:2%">&nbsp;</td>
                                                                                    </tr>
                                                                                    
                                                                                </table>
                                                                            </td>
                                                                        </tr>
                                                                         <tr><td>&nbsp;</td></tr>
                                                                         <tr><td>
                                                                                    <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                                                                            <tr>
                                                                                                <td width="42%" align="right">
                                                                                                 <asp:Button ID="btnSave" Text="Save" runat="server" CssClass="btn" 
                                                                                                        ValidationGroup="abc" onclick="btnSave_Click"/>
                                                                                                 </td>
                                                                                                 <td width="10%" align="center">
                                                                                                    <asp:Button ID="btncan" Text="Cancel" runat="server" CssClass="btn" 
                                                                                                         onclick="btncan_Click" />
                                                                                                     
                                                                                                 </td>
                                                                                                 <td width="48%" align="left">
                                                                                                     <asp:Button ID="btnReset" Text="Reset" runat="server" CssClass="btn" 
                                                                                                         onclick="btnReset_Click" />
                                                                                                 </td>
                                                                                            </tr>
                                                                                        </table>
                                                                         
                                                                         </td></tr>
                                                                          <tr style="height:15px"><td></td></tr>
                                                                          <tr>
                                    <td style="width:100%">
                                        <table width="100%" cellpadding="0" cellspacing="0" border="0">
                                            <tr>
                                                <td  align="center">
                                                    <asp:Label ID="lblerr" runat="server" ForeColor="Red"></asp:Label>
                                                    <asp:Label ID="lblmailerr" runat="server" ForeColor="Red"></asp:Label>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                                                </table>
                                                         </fieldset>
                                                </td>
                                                <td style="width:10%">&nbsp;</td>
                                        </tr>
                                 </table>
                    </div>
                </td>
            </tr>
                        </table>
                </td>
            </tr>
        </table>
</asp:Content>

