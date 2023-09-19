<%@ Page Language="C#" MasterPageFile="~/developer/MasterPage.master" AutoEventWireup="true" CodeFile="Time_Sheet.aspx.cs" Inherits="developer_Default" Title="Untitled Page" %>

<%@ Register src="../user_control/control_for_TimeSheet_Developer.ascx" tagname="control_for_TimeSheet_Developer" tagprefix="uc1" %>



<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>



<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManager ID="scr" runat="server"></asp:ScriptManager>
    <div id="MainDiv" style="border:0px solid black;height:auto;width:100%;float:left;">
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
                                                                
                                                                
                                                                
                                                                <uc1:control_for_TimeSheet_Developer ID="control_for_TimeSheet_Developer1" 
                                                                    runat="server" />
                                                                
                                                                
                                                                
                                                            </td>
                                                            <td width="70%" align="right">
                                                                <b>Developer: </b>
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
              <td style="width:100%">
                  <table border="0" cellpadding="0" cellspacing="0" width="100%">
                     <tr>
                         <td style="width:25%">&nbsp;</td>
                         <td style="width:50%">
                            <fieldset id="fsViewCategory" style="width:100%">
                                   <legend class="fontForOuterLegend">Fill&nbsp;Time&nbsp;Sheet</legend>
                                   <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                      <tr><td>&nbsp;</td></tr>
                                      <tr>
                                        <td  style="width:100%">
                                          <table border="0" cellpadding="0" cellspacing="0" style="width:100%">
                                             <tr>
                                             <asp:UpdatePanel ID="upd1" runat="server" UpdateMode="Conditional"><ContentTemplate>
                                               <td width="10%">&nbsp;</td>
                                               <td width="40%" align="left"><b>Select&nbsp;Job:</b></td>
                                               <td width="50%" align="left"><asp:DropDownList ID="drpSelectJob" runat="server" 
                                                       CssClass="fordrp1" AutoPostBack="True"></asp:DropDownList></td>
                                              </ContentTemplate></asp:UpdatePanel>
                                            </tr>
                                           
                                          </table>
                                      </td>
                                   </tr>
                                   <tr><td>&nbsp;</td></tr>
                                   <tr>
                                        <td  style="width:100%">
                                          <table border="0" cellpadding="0" cellspacing="0" style="width:100%">
                                          <tr>
                                             <asp:UpdatePanel ID="upd" runat="server" UpdateMode="Conditional"><ContentTemplate>
                                               <td width="10%">&nbsp;</td>
                                               <td width="40%" align="left"><b>Select&nbsp;Job&nbsp;Module&nbsp;Type:</b></td>
                                               <td width="50%" align="left"><asp:DropDownList ID="drpSelectModuleType" 
                                                       runat="server" CssClass="fordrp1" AutoPostBack="True"></asp:DropDownList></td>
                                            </ContentTemplate></asp:UpdatePanel>
                                            </tr>
                                            
                                          </table>
                                      </td>
                                   </tr>
                                   <tr><td>&nbsp;</td></tr>
                                   <tr>
                                        <td  style="width:100%">
                                          <table border="0" cellpadding="0" cellspacing="0" style="width:100%">
                                            <tr>
                                               <td width="10%">&nbsp;</td>
                                               <td width="40%" align="left"><b>Date:</b></td>
                                               <td width="50%" align="left"><asp:TextBox ID="txtDate" runat="server" CssClass="txt"></asp:TextBox>
                                                   
                                                   <cc1:CalendarExtender ID="txtDate_CalendarExtender" runat="server" 
                                                       Enabled="True" TargetControlID="txtDate">
                                                   </cc1:CalendarExtender>
                                                   
                                                </td>
                                            </tr>
                                          </table>
                                      </td>
                                   </tr>
                                   <tr><td>&nbsp;</td></tr>
                                   <tr>
                                        <td  style="width:100%">
                                          <table border="0" cellpadding="0" cellspacing="0" style="width:100%">
                                            <tr>
                                               <td width="10%">&nbsp;</td>
                                               <td width="40%" align="left"><b>Start&nbsp;Time&nbsp;(HH:MM&nbsp;AM/PM):</b></td>
                                               <td width="50%" align="left"><asp:TextBox ID="txtStartTime" runat="server" CssClass="txt"></asp:TextBox></td>
                                            </tr>
                                          </table>
                                      </td>
                                   </tr>
                                   <tr><td>&nbsp;</td></tr>
                                   <tr>
                                        <td  style="width:100%">
                                          <table border="0" cellpadding="0" cellspacing="0" style="width:100%">
                                            <tr>
                                               <td width="10%">&nbsp;</td>
                                               <td width="40%" align="left"><b>End&nbsp;Time&nbsp;(HH:MM&nbsp;AM/PM):</b></td>
                                               <td width="50%" align="left"><asp:TextBox ID="txtEndTime" runat="server" CssClass="txt"></asp:TextBox></td>
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
                                            <asp:Button ID="btnSave" CssClass="btn" runat="server" Text="Save" 
                                                onclick="btnSave_Click" />
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
                                            <asp:Label ID="errll" runat="server" ForeColor="Red" style="font-weight:700"></asp:Label>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                             </table> 
                             </fieldset>
                         </td>
                         <td style="width:25%">&nbsp;</td>
                     </tr>
                     <tr><td colspan="3">&nbsp;</td></tr>
                     <tr><td colspan="3">&nbsp;</td></tr>
                  </table>
              </td>
           </tr>
       </table>
    </div>
</asp:Content>

