<%@ Page Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="Allocate_Teamleader.aspx.cs" Inherits="admin_Default" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table border="0" cellpadding="0" cellspacing="0" width="100%">
        <tr>
            <td style="width:100%">
                <table border="0" cellpadding="0" cellspacing="0" width="100%">
                    <tr>
                        <td style="width:10%">&nbsp;</td>
                        <td style="width:80%" align="right">
                            <b>Admin: </b>
                            <asp:Label ID="Label1" runat="server" ForeColor="Blue"></asp:Label>
                        </td>
                        <td style="width:10%">&nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td style="width:100%"><table width="100%" border="0"><tr>
            <td style="width:10%">&nbsp;</td>
             <td style="width:80%">
                <fieldset id="Allocate">
                    <legend class="fontForOuterLegend">Allocate Job</legend>
                    <table border="0" cellpadding="0" cellspacing="0" width="100%">
                        <tr><td>&nbsp;</td></tr>
                        <tr>
                            <td>
                                <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                    
                                    <tr>
                                        <td>
                                            <table width="100%" border="0">
                                                <tr>
                                                    <td style="width:5%">&nbsp;</td>
                                                    <td style="width:40%"> 
                                                        <table width="100%">
                                                            <tr>
                                                                <td>
                                                                    <asp:ListBox ID="TeamLeadName" runat="server" Rows="15" Width="230px"></asp:ListBox>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                    <td style="width:10%" align="center">
                                                        <table border="0" cellpadding="0" cellspacing="0" width="100%" style="height:100%">
                                                            <tr style="height:38%"><td>&nbsp;</td></tr>
                                                            <tr style="height:20%"><td>
                                                                <asp:Button ID="add_btn" runat="server" CssClass="btn" Text="Add >>" 
                                                                    onclick="add_btn_Click" />
                                                            </td></tr>
                                                            <tr style="height:4%"><td>&nbsp;</td></tr>
                                                            <tr style="height:20%"><td>
                                                                <asp:Button ID="remove_btn" runat="server" CssClass="btn" Text="<< Remove" 
                                                                    onclick="remove_btn_Click"/>
                                                            </td></tr>
                                                            <tr><td></td></tr>
                                                            
                                                        </table>
                                                    </td>
                                                    <td style="width:40%" align="right">
                                                          <table width="100%">
                                                            <tr>
                                                                <td align="right">
                                                                    <asp:ListBox ID="list_Allocated" runat="server" Rows="15" Width="230px"></asp:ListBox>
                                                                </td>
                                                            </tr>
                                                        </table>      
                                                    </td>
                                                    <td style="width:5%">&nbsp;</td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr><td>&nbsp;</td></tr>
                        <tr><td align="center">
                            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                <tr>
                                    <td style="width:50%" align="right">
                                        <asp:Button ID="save_btn" runat="server" Text="Save" CssClass="btn" 
                                            onclick="save_btn_Click" />
                                    </td>
                                    <td style="width:3%">&nbsp;</td>
                                    <td style="width:47%" align="left">
                                        <asp:Button ID="cancel_btn" runat="server" Text="Cancel" CssClass="btn" 
                                            onclick="cancel_btn_Click" />
                                    </td>
                                </tr>
                            </table>
                        </td></tr>
                        <tr><td>&nbsp;</td></tr>
                    </table>
                </fieldset>
            </td>
            <td style="width:10%">&nbsp;</td>
            </tr></table></td>
        </tr>
    </table>
</asp:Content>

