<%@ Page Language="C#" MaintainScrollPositionOnPostback="true" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="Firm_View.aspx.cs" Inherits="admin_Default" Title="Untitled Page" %>



<%@ Register src="../user_control/control_for_Firm.ascx" tagname="control_for_Firm" tagprefix="uc1" %>



<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  
    <asp:ScriptManager ID="scr" runat="server"></asp:ScriptManager>
    <div id="maindiv" style="position:relative; float:left; width:100%; height:100%; border:0px solid black">
       <div id="headerdiv" style=" position:relative; float:left; width:100%; height:60px; border:0px solid black">
                <table border="0" width="100%" cellpadding="0" cellspacing="0">
                    <tr>
                        <td width="100%">
                            <table width="100%" border="0" cellpadding="0" cellspacing="0">
                                <tr>
                                    <td width="3%">&nbsp;</td>
                                    <td width="11%">
                                        
                                        <uc1:control_for_Firm ID="control_for_Firm1" runat="server" />
                                        
                                    </td>
                                    <td width="70%" align="right">
                                        <b>Admin: </b><asp:Label ID="Label1" runat="server" ForeColor="Blue"></asp:Label>
                                    </td>
                                    <td width="10%">&nbsp;</td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>  
        </div>
        <div id="firstdiv" style=" position:relative; float:left; width:100%; height:auto; border:0px solid black">
            <table border="0" cellpadding="0" cellspacing="0" style="width:100%">
              <tr>
                  <td style="width:5%">&nbsp;</td>
                  <td align="center" style="width:90%">
                     <asp:UpdatePanel ID="upd_for_datalist" runat="server">
                         <ContentTemplate>
                            <fieldset id="fsFirmDetail" style="height:100%">
                               <legend class="fontForOuterLegend">Firm Detail</legend>
                               <asp:DataList ID="datalist_for_firm_detail" runat="server" DataKeyField="FirmId" 
                                    oneditcommand="datalist_for_firm_detail_EditCommand">
                           <HeaderTemplate>
                               <table cellpadding="2" cellspacing="1" border="0">
                                   <tr  style="background-color:White" align="center">
                                      <th>Firm&nbsp;ID</th>
                                      <th>Firm&nbsp;Name</th>
                                      <th>Contact&nbsp;Person</th>
                                      <th>Registry&nbsp;Date</th>
                                      <th>Status</th>
                                      <th>Postal&nbsp;Code</th>
                                      <th>Email&nbsp;Address</th>
                                      <th>Town/City</th>
                                      <th>Edit</th>
                                      
                                  </tr>
                          </HeaderTemplate>
                          <ItemTemplate>
                            <tr style="background-color:#99CCFF" align="center">
                               <td align="center"><%#Eval("FirmId") %></td>
                               <td align="center"><%#Eval("FirmName") %></td>
                               <td align="center"><%#Eval("FirmContactPerson") %></td>
                               <td align="center"><%#Eval("FirmRegnDate") %></td>
                               <td align="center"><%#Eval("StatusLevel") %></td>
                               <td align="center"><%#Eval("FirmPostalCode") %></td>
                               <td align="center"><%#Eval("FirmEmailAddress") %></td>
                               <td align="center"><%#Eval("FirmCityTown") %></td>
                                <td align="center"><asp:LinkButton ID="lnk_Edit" CommandName="edit" runat="server"><b>Edit</b></asp:LinkButton></td>
                            </tr>
                          </ItemTemplate>
                          <AlternatingItemTemplate>
                            <tr style="background-color:white" align="center">
                               <td align="center"><%#Eval("FirmId") %></td>
                               <td align="center"><%#Eval("FirmName") %></td>
                               <td align="center"><%#Eval("FirmContactPerson") %></td>
                               <td align="center"><%#Eval("FirmRegnDate") %></td>
                               <td align="center"><%#Eval("StatusLevel")%></td>
                               <td align="center"><%#Eval("FirmPostalCode") %></td>
                               <td align="center"><%#Eval("FirmEmailAddress") %></td>
                               <td align="center"><%#Eval("FirmCityTown") %></td>
                               <td align="center"><asp:LinkButton ID="lnk_Edit" CssClass="lnk" CommandName="edit" runat="server"><b>Edit</b></asp:LinkButton></td>
                                
                            </tr>
                          </AlternatingItemTemplate>
                          <FooterTemplate>
                            </table>
                          </FooterTemplate>
                               </asp:DataList>
                            </fieldset>
                         </ContentTemplate>
                     </asp:UpdatePanel>
                  </td>
                  <td style="width:5%">&nbsp;</td>
              </tr>
            </table>                    
        </div>
        
    </div>

</asp:Content>

