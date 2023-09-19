<%@ Page Language="C#" MasterPageFile="~/teamleader/MasterPage.master" AutoEventWireup="true" CodeFile="View_Jobs.aspx.cs" Inherits="teamleader_Default" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <table border="0" cellpadding="0" cellspacing="0" width="100%">
        <tr style="height:50px">
                   <td style="width:100%">
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
                                <td style="width:12%">&nbsp;</td>
                                <td style="width:76%" align="center">
                                     <fieldset id="userdetail" style="height:100%">
                                         <legend class="fontForOuterLegend">View Jobs</legend>
                                            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                                <tr>
                                                    <td style="width:2%">&nbsp;</td>
                                                    <td style="width:94%" align="center">
                                                        <table border="0" cellpadding="0" cellspacing="0" width="100%"> 
                                                            <tr>
                                                                <td align="center">
                                                                    <asp:DataList ID="datalist_for_ViewJobs" runat="server" DataKeyField="JobId" 
                                                                        ondeletecommand="datalist_for_ViewJobs_DeleteCommand" 
                                                                        oneditcommand="datalist_for_ViewJobs_EditCommand">
                                                                            <HeaderTemplate>
                                                                                 <table cellpadding="2" cellspacing="1" border="0">
                                                                                        <tr  style="background-color:White" align="center">
                                                                                            <th>Job Id</th>
                                                                                            <th>Job Name</th>
                                                                                            <th>Frim Name</th>
                                                                                            <th>Cilent Name</th>
                                                                                            <th>Allocted To</th>
                                                                                            <th>Traget date</th>
                                                                                            <th>Status</th>
                                                                                            <th>Assign To</th>
                                                                                            <th>Change Status</th>
                                                                                            
                                                                                        </tr>
                                                                            </HeaderTemplate>
                                                                               <ItemTemplate>
                                                                                        <tr style="background-color:#99CCFF" align="center">
                                                                                            <td align="center"><%#Eval("JobId") %></td>
                                                                                            <td align="center"><%#Eval("JobName") %></td>
                                                                                            <td align="center"><%#Eval("FirmName") %></td>
                                                                                            <td align="center"><%#Eval("JobMainContact")%></td>
                                                                                            <td align="center"><%#Eval("UsrName")%></td>
                                                                                            <td align="center"><%#Eval("JobTrgtdate") %></td>
                                                                                            <td align="center"><%#Eval("JobStatus") %></td>
                                                                                            <td align="center"><asp:LinkButton ID="third" runat="server" CommandName="edit" CssClass="lnk"><b>Assign 
                                                                                                To</b></asp:LinkButton>
                                                                                             <asp:HiddenField ID="aid" Value='<%#Eval("AllocateId") %>' runat="server" />
                                                                                            </td>
                                                                                            <td align="center"><asp:LinkButton ID="fordel" runat="server" CommandName="delete" CssClass="lnk"><b>Change 
                                                                                                Status</b></asp:LinkButton></td>
                                                                                        </tr>
                                                                                    </ItemTemplate>  
                                                                                     <AlternatingItemTemplate>
                                                                                         <tr style="background-color:white" align="center">
                                                                                           <td align="center"><%#Eval("JobId") %></td>
                                                                                            <td align="center"><%#Eval("JobName") %></td>
                                                                                            <td align="center"><%#Eval("FirmName") %></td>
                                                                                            <td align="center"><%#Eval("JobMainContact")%></td>
                                                                                            <td align="center"><%#Eval("UsrName")%></td>
                                                                                            <td align="center"><%#Eval("JobTrgtdate") %></td>
                                                                                            <td align="center"><%#Eval("JobStatus") %></td>
                                                                                            <td align="center"><asp:LinkButton ID="third" runat="server" CommandName="edit" CssClass="lnk"><b>Assign 
                                                                                                To</b></asp:LinkButton>
                                                                                                <asp:HiddenField ID="aid" Value='<%#Eval("AllocateId") %>' runat="server" />
                                                                                                </td>
                                                                                            <td align="center"><asp:LinkButton ID="fordel" runat="server" CommandName="delete" CssClass="lnk"><b>Change 
                                                                                                Status</b></asp:LinkButton></td>
                                                                                          </tr>
                                                                                     </AlternatingItemTemplate>
                                                                            <FooterTemplate>
                                                                               </table>
                                                                            </FooterTemplate>
                                                                        </asp:DataList>
                                                                </td>
                                                            </tr>
                                                         </table>
                                                     </td>
                                                     <td style="width:2%">&nbsp;</td>
                                                 </tr>
                                             </table>
                                     </fieldset>
                                </td>
                                <td style="width:12%">&nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
   </table>        
</asp:Content>

