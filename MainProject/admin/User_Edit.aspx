<%@ Page Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="User_Edit.aspx.cs" Inherits="admin_Default3" Title="Untitled Page" %>

<%@ Register src="../user_control/control_for_User.ascx" tagname="control_for_User" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<asp:ScriptManager ID="scr" runat="server"></asp:ScriptManager>
    <table border="0" cellpadding="0" cellspacing="0" width="100%">
        <tr>
            <td>
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
                   <div id="thirddiv" style=" position:relative; float:left; width:100%; height:auto;border:0px solid black"> 
                        <table border="0" cellpadding="0" cellspacing="0" width="100%">
                            <tr>
                                
                                <td style="width:10%">&nbsp;</td>
                                <td style="width:80%">
                                        <asp:UpdatePanel ID="upd_edit" runat="server"><ContentTemplate>
                                        <fieldset id="Fieldset1">
                                              <legend class="fontForOuterLegend">Edit Users</legend>
                                                <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                                    <tr><td>&nbsp;</td></tr>
                                                    <tr>
                                                        <td style="width:100%">
                                                            <table width="100%" border="0" cellpadding="0" cellspacing="0">
                                                                <tr>
                                                                    <td><table width="100%"><tr>
                                                                   <td style="width:2%">&nbsp;</td>
                                                                   <td style="width:47%">
                                                                            <fieldset id="editUsr" style="height:250px">
                                                                                                            <legend class="fontForInnerLegend">Users</legend>
                                                                                                                <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                                                                                                    <tr><td>&nbsp;</td></tr>
                                                                                                                    <tr>
                                                                                                                        <td>
                                                                                                                            <table width="100%" cellpadding="0" cellspacing="0" border="0">
                                                                                                                                <tr>
                                                                                                                                    <td style="width:5%">&nbsp;</td>
                                                                                                                                    <td style="width:35%" class="font_size">User&nbsp;Name:</td>
                                                                                                                                    <td style="width:60%"><asp:TextBox ID="txt_edit_Usr_Name" runat="server" CssClass="txt" ValidationGroup="abcd"></asp:TextBox>
                                                                                                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_edit_Usr_Name" ErrorMessage="*" ValidationGroup="abcd"></asp:RequiredFieldValidator>
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
                                                                                                                                    <td style="width:60%"><asp:TextBox ID="txt_edit_Usr_Email" runat="server" CssClass="txt" ValidationGroup="abcd"></asp:TextBox>
                                                                                                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_edit_Usr_Email" ErrorMessage="*" ValidationGroup="abcd"></asp:RequiredFieldValidator>
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
                                                                                                                                    <td style="width:60%"><asp:TextBox ID="txt_edit_Usr_Rate" runat="server" CssClass="txt" ValidationGroup="abcd"></asp:TextBox>
                                                                                                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txt_edit_Usr_Rate" ErrorMessage="*" ValidationGroup="abcd"></asp:RequiredFieldValidator>
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
                                                                                                                                    <td style="width:35%" class="font_size">Rate&nbsp;Units:</td>
                                                                                                                                    <td style="width:60%"><asp:DropDownList ID="drp_edit_Usr_Rate" runat="server" CssClass="fordrp" DataTextField="DurationTime" DataValueField="DurationId" AutoPostBack="true"></asp:DropDownList>
                                                                                                                                        
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
                                                                            <fieldset id="Fieldset2" style="height:250px;">
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
                                                                                                                                                <asp:DropDownList ID="drp_edit_Usr_level" runat="server" CssClass="fordrp" DataTextField="DesignationLevel" DataValueField="DesignationId" AutoPostBack="true"></asp:DropDownList>
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
                                                                                                                                            <td style="width:35%" class="font_size">User&nbsp;Status:</td>
                                                                                                                                            <td style="width:60%">
                                                                                                                                                <asp:DropDownList ID="drp_edit_Usr_Status" runat="server" CssClass="fordrp" DataTextField="StatusLevel" DataValueField="StatusId" AutoPostBack="true"></asp:DropDownList>
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
                                                                                                                                                <asp:DropDownList ID="drp_edit_Teamleader" runat="server" CssClass="fordrp" DataTextField="UsrName" DataValueField="UsrId" AutoPostBack="true"></asp:DropDownList>
                                                                                                                                            </td>
                                                                                                                                        </tr>
                                                                                                                                    </table>
                                                                                                                                </td>
                                                                                                                            </tr>
                                                                                                                         </table>
                                                                                                </fieldset>
                                                                                        
                                                                   </td>
                                                                   <td style="width:2%">&nbsp;</td>
                                                                   </tr></table></td>
                                                                </tr>
                                                                <tr><td>&nbsp;</td></tr>
                                                                <tr>
                                                                    <td>
                                                                        <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                                                            
                                                                            <tr>
                                                                                <td style="width:2%">&nbsp;</td>
                                                                                <td style="width:96%">
                                                                                    <fieldset id="chd_password" style="height:150px">
                                                                                        <legend class="fontForInnerLegend">Change Password</legend> 
                                                                                            <table border="0"  cellpadding="0" cellspacing="0" width="100%">
                                                                                                <tr><td>&nbsp;</td></tr>
                                                                                                <tr align="center">
                                                                                                    <td>
                                                                                                        <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                                                                                            <tr>
                                                                                                                <td style="width:50%">
                                                                                                        <table>
                                                                                                            <tr>
                                                                                                                <td style="width:30%">Password:</td>
                                                                                                                <td style="width:70%"><asp:TextBox ID="txt_edit_pass" runat="server" CssClass="txt" 
                                                                                                                        ValidationGroup="abcd" TextMode="Password"></asp:TextBox>
                                                                                                                                                                                                                                
                                                                                                                </td>
                                                                                                            </tr>
                                                                                                        </table>  
                                                                                                    </td>
                                                                                                    <td style="width:50%">
                                                                                                        <table>
                                                                                                            <tr>
                                                                                                                <td style="width:30%">Confirm&nbsp;Password:</td>
                                                                                                                <td style="width:70%"><asp:TextBox ID="txt_edit_confirm_pass" runat="server" 
                                                                                                                        CssClass="txt" ValidationGroup="abcd" TextMode="Password"></asp:TextBox>
                                                                                                                
                                                                                                                    <asp:CompareValidator ID="CompareValidator2" runat="server" 
                                                                                                                        ControlToCompare="txt_edit_pass" ControlToValidate="txt_edit_confirm_pass" 
                                                                                                                        ErrorMessage="*" ValidationGroup="abcd">*</asp:CompareValidator>
                                                                                                                
                                                                                                                </td>
                                                                                                            </tr>
                                                                                                        </table>  
                                                                                                    </td>
                                                                                                            </tr>
                                                                                                        </table>
                                                                                                    </td>
                                                                                                </tr>
                                                                                                <tr><td>&nbsp;</td></tr>
                                                                                               <tr><td align="center" style="width:100%">
                                                                                                <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                                                                                    <tr align="center">
                                                                                                         <td width="42%" align="right">
                                                                                                            <asp:Button ID="txt_edit_update" Text="Update" runat="server" CssClass="btn" 
                                                                                                                 ValidationGroup="abcd" onclick="txt_edit_update_Click"/>
                                                                                                         </td>
                                                                                                        <td width="10%" align="center">
                                                                                                                <asp:Button ID="txt_edit_cancel" Text="Cancel" runat="server" CssClass="btn" 
                                                                                                                    onclick="txt_edit_cancel_Click" />
                                                                                                                
                                                                                                        </td>
                                                                                                        <td width="48%" align="left">
                                                                                                                <asp:Button ID="txt_edit_refresh" Text="Refresh" runat="server" CssClass="btn" 
                                                                                                                    onclick="txt_edit_refresh_Click" />
                                                                                                        </td>
                                                                                                    </tr>
                                                                                                    </table>
                                                                         
                                                                                                </td></tr>
                                                                                            </table>
                                                                                    </fieldset>
                                                                                </td>
                                                                                <td style="width:2%">&nbsp;</td>
                                                                            </tr>
                                                                            <tr><td>&nbsp;</td></tr>
                                                                        </table>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </td>
                                                    </tr>
                                                </table>
                                        </fieldset>
                                        </ContentTemplate></asp:UpdatePanel>
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

