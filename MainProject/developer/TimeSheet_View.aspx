<%@ Page Language="C#" MasterPageFile="~/developer/MasterPage.master" AutoEventWireup="true" CodeFile="TimeSheet_View.aspx.cs" Inherits="developer_Default" Title="Untitled Page" %>

<%@ Register src="../user_control/control_for_TimeSheet_Developer.ascx" tagname="control_for_TimeSheet_Developer" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <table border="0" cellpadding="0" style="height:auto" cellspacing="0" width="100%">
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
                                                                
                                                                
                                                                
                                                                <uc1:control_for_TimeSheet_Developer ID="control_for_TimeSheet_Developer1" 
                                                                    runat="server" />
                                                                
                                                                
                                                                
                                                            </td>
                                                            <td width="70%" align="right">
                                                                <b>Developer:</b>
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
                        <div id="firstdiv" style=" position:relative; float:left; width:100%; height:auto; border:0px solid black">
                               <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                    <tr>
                                        <td style="width:8%">&nbsp;</td>
                                        <td style="width:84%" align="center">
                                            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                                <tr>
                                                    <td align="center" style="width:100%">
                                                                    <asp:UpdatePanel ID="upd_for_datalist" runat="server"><ContentTemplate>
                                                                        <fieldset id="fsViewTimeSheet" >
                                                                            <legend class="fontForOuterLegend">View Time Sheet</legend>
                                                                            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                                                                <tr>
                                                                                    <td align="center" style="width:100%">
                                                                            								            
                                                                            <asp:DataList ID="dtlstForJobAssignment" runat="server" DataKeyField="TimeSheetId" 
                                                                                            ondeletecommand="dtlstForJobAssignment_DeleteCommand" 
                                                                                            onitemdatabound="dtlstForJobAssignment_ItemDataBound" 
                                                                                            oneditcommand="dtlstForJobAssignment_EditCommand" >
                                                                                <HeaderTemplate>
                                                                                    <table cellpadding="2" cellspacing="1" border="0">
                                                                                        <tr  style="background-color:White" align="center">
                                                                                            <th>JobId</th>
                                                                                            <th>Job&nbsp;Name</th>
                                                                                            <th>Firm&nbsp;Name</th>
                                                                                            <th>Date</th>
                                                                                            <th>Start&nbsp;Time</th>
                                                                                            <th>End&nbsp;Time</th>
                                                                                            <th>Work&nbsp;Type</th>
                                                                                            <th>Prod/Nonprod</th>
                                                                                            <th>Status</th>
                                                                                            <th>Edit</th>
                                                                                            <th>Delete</th>
                                                                                        </tr>
                                                                                </HeaderTemplate>
                                                                                
                                                                                <ItemTemplate>
                                                                                    <tr style="background-color:#99CCFF" align="center">
                                                                                        <td align="center"><%#Eval("JobId") %></td>
                                                                                        <td align="center"><%#Eval("JobName") %></td>
                                                                                        <td align="center"><%#Eval("FirmName") %></td>
                                                                                        <td align="center"><%#Eval("AddOnDate") %></td>
                                                                                        <td align="center"><%#Eval("StartTime") %></td>
                                                                                        <td align="center"><%#Eval("EndTime") %></td>
                                                                                        <td align="center"><%#Eval("ModuleName") %></td>
                                                                                        <td align="center"><%#Eval("WorkType") %></td>
                                                                                        <td align="center"><%#Eval("JobStatus") %>
                                                                                        <asp:HiddenField ID="hd" runat="server" Value='<%#Eval("AddOnDate") %>' />
                                                                                        </td>
                                                                                        <td align="center"><asp:LinkButton ID="lnkEdit" Text="Edit" runat="server" CommandName="edit" CssClass="lnk" style="font-weight:600"></asp:LinkButton></td>
                                                                                        <td align="center"><asp:LinkButton ID="lnkDelete" Text="Delete" CommandName="delete" runat="server" CssClass="lnk" OnClientClick="return confirm('Are you sure you want to delete this record ?');" style="font-weight:600"></asp:LinkButton></td>
                                                                                    </tr>
                                                                                </ItemTemplate>
                                                                                <AlternatingItemTemplate>
                                                                                    <tr style="background-color:white" align="center">
                                                                                        <td align="center"><%#Eval("JobId") %></td>
                                                                                        <td align="center"><%#Eval("JobName") %></td>
                                                                                        <td align="center"><%#Eval("FirmName") %></td>
                                                                                        <td align="center"><%#Eval("AddOnDate") %></td>
                                                                                        <td align="center"><%#Eval("StartTime") %></td>
                                                                                        <td align="center"><%#Eval("EndTime") %></td>
                                                                                        <td align="center"><%#Eval("ModuleName") %></td>
                                                                                        <td align="center"><%#Eval("WorkType") %></td>
                                                                                        <td align="center"><%#Eval("JobStatus") %>
                                                                                        <asp:HiddenField ID="hd" runat="server" Value='<%#Eval("AddOnDate") %>' />
                                                                                        </td>
                                                                                        <td align="center"><asp:LinkButton ID="lnkEdit" Text="Edit" runat="server" CommandName="edit" CssClass="lnk" style="font-weight:600"></asp:LinkButton></td>
                                                                                        <td align="center"><asp:LinkButton ID="lnkDelete" Text="Delete" CommandName="delete" runat="server" CssClass="lnk" OnClientClick="return confirm('Are you sure you want to delete this record ?');" style="font-weight:600"></asp:LinkButton></td>
                                                                                    </tr>
                                                                                </AlternatingItemTemplate>
                                                                                
                                                                                <FooterTemplate>
                                                                                    </table>
                                                                                </FooterTemplate>
                                                                            </asp:DataList>
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                            </fieldset>
                                                    </ContentTemplate>
                                         
                                                    </asp:UpdatePanel>
                                                    </td>
                                                </tr>
                                                
                                            </table>
                                        </td>
                                        <td style="width:8%">&nbsp;</td>
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

