<%@ Page Language="C#" MasterPageFile="~/teamleader/MasterPage.master" AutoEventWireup="true" CodeFile="Assign_Jobs.aspx.cs" Inherits="teamleader_Default" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
         <table border="0" cellpadding="0" style="height:auto" cellspacing="0" width="100%">
            <tr>
                <td>
                    
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
                                                                <b>TeamLeader: </b>
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
                                        <td style="width:20%">&nbsp;</td>
                                        <td style="width:60%" align="center">
                                            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                                <tr>
                                                    <td align="center" style="width:100%">
                                                                    
                                                                        <fieldset id="userdetail" >
                                                                            <legend class="fontForOuterLegend">Assign Job</legend>
                                                                            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                                                                <tr>
                                                                                    <td align="center" style="width:100%">
                                                                            								            
                                                                            <asp:DataList ID="dtlstForJobAssignment" runat="server" DataKeyField="UsrId" 
                                                                                            onitemdatabound="dtlstForJobAssignment_ItemDataBound" >
                                                                                <HeaderTemplate>
                                                                                    <table cellpadding="2" cellspacing="1" border="0">
                                                                                        <tr  style="background-color:White" align="center">
                                                                                            <th>Select</th>
                                                                                            <th>Name</th>
                                                                                            <th>User&nbsp;Name</th>
                                                                                            <th>Salary</th>
                                                                                            <th>Registration&nbsp;Date</th>
                                                                                            <th>Last&nbsp;Login&nbsp;Date</th>
                                                                                        </tr>
                                                                                </HeaderTemplate>
                                                                                
                                                                                <ItemTemplate>
                                                                                    <tr style="background-color:#99CCFF" align="center">
                                                                                        <td align="center"><asp:CheckBox ID="chkSelect" runat="server" Text=""/></td>
                                                                                        <td align="center"><%#Eval("UsrName") %></td>
                                                                                        <td align="center"><%#Eval("UsrEmailAdd") %></td>
                                                                                        <td align="center"><%#Eval("UsrSalary") %></td>
                                                                                        <td align="center"><%#Eval("UsrRegDate") %></td>
                                                                                        <td align="center"><%#Eval("UsrLstLgnDate") %>
                                                                                        <asp:HiddenField ID="hdnval" Value='<%#Eval("chk") %>' runat="server" />
                                                                                        </td>                                                                                        
                                                                                    </tr>
                                                                                </ItemTemplate>
                                                                                <AlternatingItemTemplate>
                                                                                    <tr style="background-color:white" align="center">
                                                                                        <td align="center"><asp:CheckBox ID="chkSelect" runat="server" Text=""/></td>
                                                                                        <td align="center"><%#Eval("UsrName") %></td>
                                                                                        <td align="center"><%#Eval("UsrEmailAdd") %></td>
                                                                                        <td align="center"><%#Eval("UsrSalary") %></td>
                                                                                        <td align="center"><%#Eval("UsrRegDate") %></td>
                                                                                        <td align="center"><%#Eval("UsrLstLgnDate") %>
                                                                                        <asp:HiddenField ID="hdnval" Value='<%#Eval("chk") %>' runat="server" />
                                                                                        </td>
                                                                                    </tr>
                                                                                </AlternatingItemTemplate>
                                                                                
                                                                                <FooterTemplate>
                                                                                    </table>
                                                                                </FooterTemplate>
                                                                            </asp:DataList>
                                                                        </td>
                                                                    </tr>
                                                                    <tr><td>&nbsp;</td></tr>
                                                                    <tr>
                                                                        <td style="width:100%">
                                                                            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                                                                
                                                                                <tr>
                                                                                    <td style="width:43%">
                                                                                        <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                                                                            <tr>
                                                                                                <td align="right" style="width:45%">
                                                                                                    <asp:Button ID="btnSave" runat="server" CssClass="btn" Text="Save" 
                                                                                                        onclick="btnSave_Click" />
                                                                                                </td>
                                                                                                <td style="width:5%">
                                                                                                    &nbsp;
                                                                                                </td>
                                                                                                <td align="left" style="width:47%">
                                                                                                    <asp:Button ID="btnCancel" runat="server" CssClass="btn" Text="Cancel" 
                                                                                                        onclick="btnCancel_Click" />
                                                                                                </td>
                                                                                            </tr>
                                                                                        </table>
                                                                                    </td>
                                                                                </tr>
                                                                            </table>
                                                                        </td>
                                                                    </tr>
                                                                    <tr><td>&nbsp;</td></tr>
                                                                </table>
                                                            </fieldset>
                                                   
                                                    </td>
                                                </tr>
                                                
                                            </table>
                                        </td>
                                        <td style="width:20%">&nbsp;</td>
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

