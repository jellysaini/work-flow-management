<%@ Page Language="C#" MasterPageFile="~/teamleader/MasterPage.master" AutoEventWireup="true" CodeFile="Change_Password.aspx.cs" Inherits="teamleader_Default" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
         <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr style="height:50px">
                   <td>
                        <table width="100%">
                            <tr>
                                 <td align="right" style="width:90%">
                                    <b>Team&nbsp;Leader:</b>
                                    <asp:Label ID="Label1" runat="server" ForeColor="Blue"></asp:Label>
                                 </td>
                                 <td width="10%">&nbsp;</td>
                            </tr>
                        </table>
                   </td>
                </tr>
                <tr>
                    <td>
                        <table width="100%">
                            <tr>
                                <td style="width:25%">&nbsp;</td>
                    <td style="width:50%">
                         <fieldset id="ChangePassword" style=" height:235px">
                               <legend class="fontForInnerLegend">Change Password</legend>
                                <table border="0"  cellpadding="0" cellspacing="0" width="100%">
                                    <tr><td>&nbsp;</td></tr>
                                    <tr>
                                        <td>
                                            <table width="100%" cellpadding="0" cellspacing="0" border="0">
                                                <tr>
                                                    <td style="width:5%">&nbsp;</td>
                                                    <td style="width:35%" class="font_size">Old&nbsp;Password:</td>
                                                    <td style="width:60%"><asp:TextBox ID="txt_old_password" runat="server" CssClass="txt" ValidationGroup="abc" TextMode="Password"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="for_old_pass" runat="server" ControlToValidate="txt_old_password" ErrorMessage="*" ValidationGroup="abc"></asp:RequiredFieldValidator>
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
                                                    <td style="width:35%" class="font_size">New&nbsp;Password:</td>
                                                    <td style="width:60%"><asp:TextBox ID="txt_new_Password" runat="server" CssClass="txt" ValidationGroup="abc" TextMode="Password"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="for_new_pass" runat="server" ControlToValidate="txt_new_password" ErrorMessage="*" ValidationGroup="abc"></asp:RequiredFieldValidator>
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
                                                    <td style="width:35%" class="font_size">Confirm&nbsp;Password:</td>
                                                    <td style="width:60%"><asp:TextBox ID="txt_confrim_password" runat="server" CssClass="txt" ValidationGroup="abc" TextMode="Password"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="for_confirm_pass" runat="server" ControlToValidate="txt_confrim_password" ErrorMessage="*" ValidationGroup="abc"></asp:RequiredFieldValidator>
                                                    <asp:CompareValidator ID="com" runat="server" ControlToValidate="txt_confrim_password" ControlToCompare="txt_new_password" ValidationGroup="abc" ErrorMessage="*"></asp:CompareValidator>
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                   <tr><td>&nbsp;</td></tr>
                                    <tr>
                                        <td>
                                            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                                <tr>
                                                    <td align="center">
                                                        <asp:Button ID="chg_pass" Text="Save" runat="server" CssClass="btn" 
                                                            ValidationGroup="abc" onclick="chg_pass_Click"/>
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                    <tr><td>&nbsp;</td></tr>
                                    <tr><td align="center">
                                        <asp:Label ID="lderr" runat="server" ForeColor="Red"></asp:Label>
                                    </td></tr>
                                </table>
                         </fieldset>
                    </td>
                    <td style="width:25%">&nbsp;</td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
</asp:Content>

