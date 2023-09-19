<%@ Page Language="C#" MasterPageFile="~/developer/MasterPage.master" AutoEventWireup="true" CodeFile="edit_TimeSheet.aspx.cs" Inherits="developer_Default" Title="Untitled Page" %>

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
                                      
                                      <tr>
                                        <td  style="width:100%">
                                          <table border="0" cellpadding="0" cellspacing="0" style="width:100%">
                                             <tr>
                                             
                                               <td width="10%">&nbsp;</td>
                                               <td width="40%" align="left"><b>Select&nbsp;Job:</b></td>
                                               <td width="50%" align="left"><asp:DropDownList ID="drpSelectJob" runat="server" 
                                                      CssClass="fordrp1" AutoPostBack="True"></asp:DropDownList></td>
                                              
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
                                               <td width="40%" align="left"><b>Select&nbsp;Job&nbsp;Module&nbsp;Type:</b></td>
                                               <td width="50%" align="left"><asp:DropDownList ID="drpSelectModuleType" 
                                                       runat="server" CssClass="fordrp1" AutoPostBack="True"></asp:DropDownList></td>
                                            
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
                                               <td width="50%" align="left"><asp:TextBox ID="txtDate" runat="server" CssClass="txt" ReadOnly="true"></asp:TextBox>
                                                  
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
                                               <td width="50%" align="left"><asp:TextBox ID="txtStartTime" runat="server" CssClass="txt" ReadOnly="true"></asp:TextBox></td>
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
                                               <td width="50%" align="left"><asp:TextBox ID="txtEndTime" runat="server" CssClass="txt" ReadOnly="true"></asp:TextBox></td>
                                            </tr>
                                          </table>
                                      </td>
                                   </tr>
                                   <tr><td>&nbsp;</td></tr>
                                   <tr>
                            <td width="100%">
                                <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                    <tr align="center">
                                        <td width="48%" align="right">
                                            <asp:Button ID="btnSave" CssClass="btn" runat="server" Text="Update" onclick="btnSave_Click" 
                                              />
                                        </td>
                                        <td width="2%">&nbsp;</td>
                                        <td width="50%" align="left">
                                            <asp:Button ID="btncancel" CssClass="btn" runat="server" Text="Cancel" 
                                                onclick="btncancel_Click" />
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

