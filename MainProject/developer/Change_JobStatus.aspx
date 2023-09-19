<%@ Page Language="C#" MasterPageFile="~/developer/MasterPage.master" AutoEventWireup="true" CodeFile="Change_JobStatus.aspx.cs" Inherits="developer_Default" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManager ID="scr" runat="server"></asp:ScriptManager>
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
                            <td style=" width:100%">
                               <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                   <tr>
                                      <td style="width:30%">&nbsp;</td>
                                      <td style="width:40%">
                                             <fieldset id="fsAddFirm">
                                                 <legend class="fontForOuterLegend">Change Job Status</legend>
                                                 <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                                   <tr><td>&nbsp;</td></tr> 
                                                   <tr>
                                                       <td width="100%" >
                                                           <table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
                                                                    <tr>
                                                                        <td width="5%">&nbsp;</td>
                                                                        <td align="center" class="font_size" width="33%">Current&nbsp;Status:</td>
                                                                        <td width="2%">&nbsp;</td>
                                                                        <td width="40%" align="right"><asp:Label ID="current_status" runat="server" style="font-weight:700"></asp:Label></td>
                                                                        <td width="20%">&nbsp;</td>
                                                                    </tr>
                                                            </table>
                                                       </td>
                                                   </tr>
                                                    <tr><td>&nbsp;</td></tr> 
                                                   <tr>
                                                     <td width="100%" >
                                                            <asp:UpdatePanel ID="upd" runat="server" UpdateMode="Conditional">
                                                                <ContentTemplate>
                                                                
                                                           <table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
                                                                    <tr>
                                                                        <td width="5%">&nbsp;</td>
                                                                        <td align="center" class="font_size" width="33%">Select&nbsp;New&nbsp;Status:</td>
                                                                        <td width="2%">&nbsp;</td>
                                                                        <td width="60%"><asp:DropDownList ID="drp_new_status" runat="server" CssClass="fordrp" AutoPostBack="true"></asp:DropDownList></td>
                                                                    </tr>
                                                            </table>
                                                            
                                                            </ContentTemplate>
                                                            </asp:UpdatePanel>    
                                                       </td>
                                                                                                         
                                                   </tr>
                                                   <tr><td>&nbsp;</td></tr> 
                                                   <tr>
                                                       <td>
                                                              <table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
                                                                  <tr>
                                                                     <td width="25%">&nbsp;</td>
                                                                     <td align="center" width="25%">
                                                                         <asp:Button ID="btnSave" Text="Save" runat="server" CssClass="btn" 
                                                                             onclick="btnSave_Click"/>
                                                                     </td>
                                                                      <td width="20%">
                                                                            <asp:Button ID="btnCancel" Text="Cancel" runat="server" CssClass="btn" 
                                                                                onclick="btnCancel_Click"/>
                                                                      </td>
                                                                      <td width="30%">&nbsp;</td>
                                                                  </tr>
                                                              </table> 
                                                       </td>
                                                   </tr> 
                                                    <tr><td>&nbsp;</td></tr>
                                                   <tr>
                                                       <td align="center">
                                                           <asp:Label ID="err_lbl" runat="server" ForeColor="Red"></asp:Label>
                                                       </td>
                                                   </tr>
                                                 </table>
                                             </fieldset>
                                      </td>
                                      <td style="width:30%">&nbsp;</td>
                                   </tr>
                               </table>
                            </td>
                         </tr>
                     </table>
</asp:Content>

