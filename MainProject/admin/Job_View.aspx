<%@ Page Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="Job_View.aspx.cs" Inherits="admin_Default" Title="Untitled Page" %>

<%@ Register src="../user_control/control_for_job.ascx" tagname="control_for_job" tagprefix="uc1" %>

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
                                                                <uc1:control_for_job ID="control_for_job1" runat="server" />
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
                        <div id="firstdiv" style=" position:relative; float:left; width:100%; height:auto; border:0px solid black">
                               <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                    <tr>
                                        <td style="width:5%">&nbsp;</td>
                                        <td style="width:90%" align="center">
                                        <asp:UpdatePanel ID="upd_for_datalist" runat="server"><ContentTemplate>
                                            <fieldset id="userdetail" style="height:100%">
                                                <legend class="fontForOuterLegend">Job Detail</legend>
                                                    <asp:DataList ID="datalist_for_JobDetail" runat="server" 
                                                    DataKeyField="JobId" 
                                                    oncancelcommand="datalist_for_JobDetail_CancelCommand" 
                                                    oneditcommand="datalist_for_JobDetail_EditCommand" 
                                                    ondeletecommand="datalist_for_JobDetail_DeleteCommand">
                                                        <HeaderTemplate>
                                                             <table cellpadding="2" cellspacing="1" border="0">
                                                                    <tr  style="background-color:White" align="center">
                                                                        <th>Job&nbsp;Id</th>
                                                                        <th>Job&nbsp;Name</th>
                                                                        <th>Contact&nbsp;Person</th>
                                                                        <th>Firm&nbsp;Name</th>
                                                                        <th>Allocated&nbsp;To</th>
                                                                        <th>Job&nbsp;Target&nbsp;Date</th>
                                                                        <th>Job&nbsp;Status</th>
                                                                        <th>Edit</th>
                                                                        <th>Allocate&nbsp;Job</th>
                                                                        <th>Delete</th>
                                                                    </tr>
                                                        </HeaderTemplate>
                                                           <ItemTemplate>
                                                                    <tr style="background-color:#99CCFF" align="center">
                                                                        <td align="center"><%#Eval("JobId")%></td>
                                                                        <td align="center"><%#Eval("JobName")%></td>
                                                                        <td align="center"><%#Eval("JobMainContact")%></td>
                                                                        <td align="center"><%#Eval("FirmName")%></td>
                                                                        <td align="center"><%#Eval("UsrName")%></td>
                                                                        <td align="center"><%#Eval("JobTrgtdate")%></td>
                                                                        <td align="center"><%#Eval("JobStatus")%></td>
                                                                        <td align="center"><asp:LinkButton ID="lnkEdit" runat="server" CommandName="edit" CssClass="lnk"><b>Edit</b></asp:LinkButton></td>
                                                                        <td align="center"><asp:LinkButton ID="lnkAllocateJob" runat="server" CommandName="cancel" CssClass="lnk"><b>Allocate&#160;Job</b></asp:LinkButton></td>
                                                                        <td align="center"><asp:LinkButton ID="lnkDelete" runat="server" CommandName="delete" CssClass="lnk"  OnClientClick="return confirm('Are you sure you want to delete this record ?');"><b>Delete</b></asp:LinkButton></td>
                                                                    </tr>
                                                                </ItemTemplate>  
                                                                 <AlternatingItemTemplate>
                                                                     <tr style="background-color:white" align="center">
                                                                        <td align="center"><%#Eval("JobId")%></td>
                                                                        <td align="center"><%#Eval("JobName")%></td>
                                                                        <td align="center"><%#Eval("JobMainContact")%></td>
                                                                        <td align="center"><%#Eval("FirmName")%></td>
                                                                        <td align="center"><%#Eval("UsrName")%></td>
                                                                        <td align="center"><%#Eval("JobTrgtdate")%></td>
                                                                        <td align="center"><%#Eval("JobStatus")%></td>
                                                                        <td align="center"><asp:LinkButton ID="lnkEdit" runat="server" CommandName="edit" CssClass="lnk"><b>Edit</b></asp:LinkButton></td>
                                                                        <td align="center"><asp:LinkButton ID="lnkAllocateJob" runat="server" CommandName="cancel" CssClass="lnk"><b>Allocate&#160;Job</b></asp:LinkButton></td>
                                                                        <td align="center"><asp:LinkButton ID="lnkDelete" runat="server" CommandName="delete" CssClass="lnk"  OnClientClick="return confirm('Are you sure you want to delete this record ?');"><b>Delete</b></asp:LinkButton></td>
                                                                      </tr>
                                                                 </AlternatingItemTemplate>
                                                        <FooterTemplate>
                                                           </table>
                                                        </FooterTemplate>
                                                     </asp:DataList>
                                            </fieldset>
                                         </ContentTemplate></asp:UpdatePanel>
                                        </td>
                                        <td style="width:5%">&nbsp;</td>
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

