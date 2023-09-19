<%@ Page Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="JobModule_Add.aspx.cs" Inherits="admin_Default" Title="Untitled Page" %>

<%@ Register src="../user_control/control_for_MohuleJob.ascx" tagname="control_for_MohuleJob" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
       <asp:ScriptManager ID="scr" runat="server"></asp:ScriptManager>
           <div id="maindiv" style="position:relative; float:left; width:100%; height:100%; border:0px solid black">
              <div id="headerdiv" style=" position:relative; float:left; width:100%; height:60px; border:0px solid black">
                <table border="0" width="100%" cellpadding="0" cellspacing="0">
                    <tr>
                        <td width="100%">
                            <table width="100%" border="0" cellpadding="0" cellspacing="0">
                                <tr>
                                    <td width="13%">&nbsp;</td>
                                    <td width="22%">
                                        <uc1:control_for_MohuleJob ID="control_for_MohuleJob1" runat="server" />
                                    </td>
                                    <td width="55%" align="right">
                                        <b>Admin: </b><asp:Label ID="Label1" runat="server" ForeColor="Blue"></asp:Label>
                                    </td>
                                    <td width="10%">&nbsp;</td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                  </table>  
                  </div>
                  
                  <div id="seconddiv" style=" position:relative; float:left; width:100%; height:auto;border:0px solid black">
                     <table border="0" cellpadding="0" cellspacing="0" width="100%">
                         <tr>
                            <td style=" width:100%">
                               <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                   <tr>
                                      <td style="width:25%">&nbsp;</td>
                                      <td style="width:50%">
                                             <fieldset id="fsAddFirm">
                                                 <legend class="fontForOuterLegend">Add Job Module</legend>
                                                 <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                                   <tr><td>&nbsp;</td></tr> 
                                                   
                                                    
                                                   <tr>
                                                       <td width="100%" >
                                                           <table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
                                                                    <tr>
                                                                        <td width="5%">&nbsp;</td>
                                                                        <td align="center" class="font_size" width="33%">Module&nbsp;Name:</td>
                                                                        <td width="2%">&nbsp;</td>
                                                                        <td width="60%"><asp:TextBox ID="txtModuleName" CssClass="txt" runat="server"></asp:TextBox></td>
                                                                    </tr>
                                                            </table>
                                                       </td>
                                                   </tr>
                                                    <tr><td>&nbsp;</td></tr> 
                                                   <tr>
                                                   <asp:UpdatePanel ID="upd" runat="server">
                                                       <ContentTemplate>
                                                           <td width="100%" >
                                                           <table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
                                                                    <tr>
                                                                        <td width="5%">&nbsp;</td>
                                                                        <td align="center" class="font_size" width="33%">Module&nbsp;Type:</td>
                                                                        <td width="2%">&nbsp;</td>
                                                                        <td width="60%"><asp:DropDownList ID="drpModuleType" runat="server" CssClass="fordrp" DataTextField="WorkType" DataValueField="id"></asp:DropDownList></td>
                                                                    </tr>
                                                            </table>    
                                                       </td>
                                                       </ContentTemplate>
                                                   </asp:UpdatePanel>
                                                       
                                                   </tr>
                                                   <tr><td>&nbsp;</td></tr> 
                                                   <tr>
                                                       <td>
                                                              <table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
                                                                  <tr>
                                                                     <td width="25%">&nbsp;</td>
                                                                     <td align="center" width="25%">
                                                                         <asp:Button ID="btnSave" Text="Save" runat="server" CssClass="btn" 
                                                                             onclick="btnSave_Click" />
                                                                     </td>
                                                                      <td width="20%">
                                                                            <asp:Button ID="btnCancel" Text="Cancel" runat="server" CssClass="btn" 
                                                                                onclick="btnCancel_Click" />
                                                                      </td>
                                                                      <td width="30%">
                                                                            <asp:Button ID="tbnReset" Text="Reset" runat="server" CssClass="btn" 
                                                                                onclick="tbnReset_Click" />
                                                                      </td>
                                                                  </tr>
                                                              </table> 
                                                       </td>
                                                   </tr> 
                                                    <tr><td>&nbsp;</td></tr>
                                                   <tr>
                                                       <td align="center">
                                                           <asp:Label ID="Label2" runat="server" ForeColor="Red"></asp:Label>
                                                       </td>
                                                   </tr>
                                                 </table>
                                             </fieldset>
                                      </td>
                                      <td style="width:25%">&nbsp;</td>
                                   </tr>
                               </table>
                            </td>
                         </tr>
                     </table>
                     <div id="innerspacediv" style=" position:relative; float:left; width:100%; height:30px; border:0px solid black">
                                     </div>
                  </div>
           </div>

</asp:Content>

