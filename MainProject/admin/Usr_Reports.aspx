<%@ Page Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="Usr_Reports.aspx.cs" Inherits="admin_Default" Title="Untitled Page" %>

<%@ Register src="../user_control/reports.ascx" tagname="reports" tagprefix="uc1" %>

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
                                                            <td width="27%">
                                                                                             
                                                                
                                                                <uc1:reports ID="reports1" runat="server" />
                                                                                                                             
                                                                
                                                            </td>
                                                            <td width="60%" align="right">
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
                                        <td style="width:3%">&nbsp;</td>
                                        <td style="width:94%" align="center">
                                                <table width="100%" border="0">
                                                    <tr>
                                                        <td style="width:100%">
                                                            <table width="100%">
                                                                <tr>
                                                                    <td style="width:15%">&nbsp;</td>
                                                                    <td style="width:15%"><b>Please Select User:</b></td>
                                                                    <td style="width:70%">
                                                                    <asp:UpdatePanel ID="fordpp" runat="server"><ContentTemplate>
                                                                        <asp:DropDownList ID="drp" runat="server" CssClass="fordrp" AutoPostBack="true" 
                                                                            onselectedindexchanged="drp_SelectedIndexChanged"></asp:DropDownList>
                                                                        </ContentTemplate></asp:UpdatePanel>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td style="width:100%">
                                                                <table width="100%">
                                                                    <tr>
                                                                        <td style="width:100%" align="center">
                                                                                    <asp:UpdatePanel ID="upd_for_datalist" runat="server"><ContentTemplate>
                                            <fieldset id="userdetail" style="height:100%">
                                                <legend class="fontForOuterLegend">User Detail</legend>
                                                    <asp:DataList ID="datalist_for_UserReports" runat="server" DataKeyField="JobId">
                                                                              <HeaderTemplate>
                                                                                     <table cellpadding="2" cellspacing="1" border="0" width="100%">
                                                                                            <tr  style="background-color:White" align="center">
                                                                                                <th>Job&nbsp;Id</th>
                                                                                                <th>Cnt&nbsp;Person</th>
                                                                                                <th>Firm&nbsp;Name</th>
                                                                                                <th>Designation</th>
                                                                                                <th>Tot&nbsp;Hrs</th>
                                                                                                <th>Non&nbsp;Pro&nbsp;Hrs</th>
                                                                                                <th>Devel&nbsp;Fee</th>
                                                                                                <th>Job&nbsp;Fee</th>
                                                                                                <th>Job&nbsp;Cost</th>
                                                                                                <th>Output</th>
                                                                                                <th>End&nbsp;Date</th>
                                                                                                <th>Assign&nbsp;On</th>
                                                                                                <th>Tgt&nbsp;Date</th>
                                                                                            </tr>
                                                                                </HeaderTemplate>
                                                                                   <ItemTemplate>
                                                                                            <tr style="background-color:#99CCFF" align="center">
                                                                                                <td align="center"><%#Eval("JobId") %></td>
                                                                                                <td align="center"><%#Eval("JobMainContact") %></td>
                                                                                                <td align="center"><%#Eval("Firmname") %></td>
                                                                                                <td align="center"><%#Eval("DesignationLevel") %></td>
                                                                                                <td align="center"><%#Eval("totalHours") %></td>
                                                                                                <td align="center"><%#Eval("nonProductiveHrs")%></td>
                                                                                                <td align="center"><%#Eval("accountantFee") %></td>
                                                                                                <td align="center"><%#Eval("jobFees") %></td>
                                                                                                <td align="center"><%#Eval("jobCost") %></td>
                                                                                                <td align="center"><%#Eval("overRated") %></td>
                                                                                                <td align="center"><%#Eval("JobEndDate") %></td>
                                                                                                <td align="center"><%#Eval("AssignOn") %></td>
                                                                                                <td align="center"><%#Eval("JobTrgtdate") %></td>
                                                                                                
                                                                                            </tr>
                                                                                        </ItemTemplate>  
                                                                                         <AlternatingItemTemplate>
                                                                                             <tr style="background-color:white" align="center">
                                                                                               <td align="center"><%#Eval("JobId") %></td>
                                                                                                <td align="center"><%#Eval("JobMainContact") %></td>
                                                                                                <td align="center"><%#Eval("Firmname") %></td>
                                                                                                <td align="center"><%#Eval("DesignationLevel") %></td>
                                                                                                <td align="center"><%#Eval("totalHours") %></td>
                                                                                                <td align="center"><%#Eval("nonProductiveHrs")%></td>
                                                                                                <td align="center"><%#Eval("accountantFee") %></td>
                                                                                                <td align="center"><%#Eval("jobFees") %></td>
                                                                                                <td align="center"><%#Eval("jobCost") %></td>
                                                                                                <td align="center"><%#Eval("overRated") %></td>
                                                                                                <td align="center"><%#Eval("JobEndDate") %></td>
                                                                                                <td align="center"><%#Eval("AssignOn") %></td>
                                                                                                <td align="center"><%#Eval("JobTrgtdate") %></td>
                                                                                              </tr>
                                                                                         </AlternatingItemTemplate>
                                                                                <FooterTemplate>
                                                                                   </table>
                                                                                </FooterTemplate>
                                                                               
                                                            </asp:DataList>
                                                                    </fieldset>
                                         </ContentTemplate></asp:UpdatePanel>
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                        </td>
                                                    </tr>
                                                </table>
                                        </td>
                                        <td style="width:3%">&nbsp;</td>
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

