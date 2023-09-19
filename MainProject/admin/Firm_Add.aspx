<%@ Page Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="Firm_Add.aspx.cs" Inherits="admin_Default" Title="Untitled Page" %>



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
                                    <td width="17%">
                                       
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
        
        <div id="seconddiv" style=" position:relative; float:left; width:100%; height:auto;border:0px solid black">
                 <table border="0" cellpadding="0" cellspacing="0" width="100%">
                        <tr>
                            <td style="width:10%">&nbsp;</td>
                            <td style="width:80%">
                                         <fieldset id="fsAddFirm">
                                                <legend class="fontForOuterLegend">Add Firm</legend>
                                                    <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                                        <tr><td style="width:100%">&nbsp;</td></tr>
                                                        <tr>
                                                            <td>
                                                                <table width="100%">
                                                                    <tr>
                                                                        <td style="width:2%">&nbsp;</td>
                                                            <td style="width:46%">
                                                                    <fieldset id="fsAccountingFirmDetail">
                                                    <legend class="fontForInnerLegend">Accounting Firm Detail</legend>
                                                    <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                                        <tr><td>&nbsp;</td></tr>
                                                        <tr>
                                                            <td width="100%">
                                                                <table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
                                                                    <tr>
                                                                        <td width="5%">&nbsp;</td>
                                                                        <td class="font_size" width="33%">Accounting&nbsp;Firm</td>
                                                                        <td width="2%">&nbsp;</td>
                                                                        <td width="60%"><asp:TextBox ID="txtAccountingFirm" CssClass="txt" runat="server"></asp:TextBox></td>
                                                                    </tr>
                                                                </table>
                                                            </td>
                                                        </tr>
                                                        <tr><td>&nbsp;</td></tr>
                                                        <tr>
                                                            <td width="100%">
                                                                <table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
                                                                    <tr>
                                                                        <td width="5%">&nbsp;</td>
                                                                        <td class="font_size" width="33%">Contact&nbsp;Person</td>
                                                                        <td width="2%">&nbsp;</td>
                                                                        <td width="60%"><asp:TextBox ID="txtContactPerson" CssClass="txt" runat="server"></asp:TextBox></td>
                                                                    </tr>
                                                                </table>
                                                            </td>
                                                        </tr>
                                                        <tr><td>&nbsp;</td></tr>
                                                        <tr>
                                                            <td width="100%">
                                                                <table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
                                                                    <tr>
                                                                        <td width="5%">&nbsp;</td>
                                                                        <td class="font_size" width="33%">Email&nbsp;Address</td>
                                                                        <td width="2%">&nbsp;</td>
                                                                        <td width="60%"><asp:TextBox ID="txtEmailAddress" CssClass="txt" runat="server"></asp:TextBox></td>
                                                                    </tr>
                                                                </table>
                                                            </td>
                                                        </tr>
                                                        <tr><td>&nbsp;</td></tr>
                                                    </table>        
                                                </fieldset>    
                                                            </td>
                                                            <td style="width:2%">&nbsp;</td>
                                                            <td style="width:46%">
                                                                <fieldset id="fsPrimaryServices">
                                                <legend class="fontForInnerLegend">Primary Services</legend>
                                                 <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                                        
                                                        <tr>
                                                            <td width="100%">
                                                                <table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
                                                                    <tr>
                                                                        <th><b>Service</b></th>
                                                                        <th>Type</th>
                                                                        <th>Fee</th>
                                                                    </tr>
                                                                    <tr align="center">
                                                                        <td width="30%">Accounts</td>
                                                                        <td class="font_size" width="50%"><asp:DropDownList ID="drpAccounts" CssClass="fordrp" runat="server" >
                                                                            <asp:ListItem Value="1">Please Select the Account Type</asp:ListItem>
                                                                            <asp:ListItem Value="2">%ge</asp:ListItem>
                                                                            <asp:ListItem Value="3">Unit</asp:ListItem>
                                                                            </asp:DropDownList></td>
                                                                        <td width="20%" align="left"><asp:TextBox ID="txtAccounts" CssClass="txtShort" Text="0.00" runat="server"></asp:TextBox></td>
                                                                    </tr>
                                                                </table>
                                                            </td>
                                                        </tr>
                                                        <tr><td>&nbsp;</td></tr>
                                                        <tr align="center">
                                                            <td width="100%">
                                                                <table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
                                                                    <tr align="center">
                                                                        <td width="30%">Tax&nbsp;Return</td>
                                                                        <td class="font_size" width="50%"><asp:DropDownList ID="drpTaxReturn" CssClass="fordrp" runat="server" >
                                                                            <asp:ListItem Value="1">Please Select Tax Return Type</asp:ListItem>
                                                                            <asp:ListItem Value="2">%ge</asp:ListItem>
                                                                            <asp:ListItem Value="3">Unit</asp:ListItem>
                                                                            </asp:DropDownList></td>
                                                                        <td width="20%" align="left"><asp:TextBox ID="txtTaxReturn" CssClass="txtShort" Text="0.00" runat="server"></asp:TextBox></td>
                                                                    </tr>
                                                                </table>
                                                            </td>
                                                        </tr>
                                                        <tr><td>&nbsp;</td></tr>
                                                        <tr>
                                                            <td width="100%">
                                                                <table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
                                                                    <tr align="center"><td width="30%">GST&nbsp;Return</td>
                                                                        <td class="font_size" width="50%"><asp:DropDownList ID="drpGSTReturn" CssClass="fordrp" runat="server" >
                                                                            <asp:ListItem>Please Select GST Return Type</asp:ListItem>
                                                                            <asp:ListItem>%ge</asp:ListItem>
                                                                            <asp:ListItem>Unit</asp:ListItem>
                                                                            </asp:DropDownList></td>
                                                                        <td width="20%" align="left"><asp:TextBox ID="txtGSTReturn" Text="0.00"  CssClass="txtShort" runat="server"></asp:TextBox></td>
                                                                    </tr>
                                                                </table>
                                                            </td>
                                                        </tr>
                                                        <tr><td>&nbsp;</td></tr>
                                                        </table>
                                                   
                                            
                                                        </fieldset>
                                                            </td>
                                                            <td style="width:2%">&nbsp;</td>
                                                                    </tr>
                                                                </table>
                                                            </td>
                                                        </tr>
                                                        <tr><td style="width:100%">&nbsp;</td></tr>
                                                        <tr>
                                                            <td>
                                                                <table width="100%">
                                                                    <tr>
                                                                        <td style="width:2%">&nbsp;</td>
                                                            <td style="width:46%">
                                                                     <fieldset id="Fieldset1" style="height:250px">
                                                    <legend class="fontForInnerLegend">Default Address</legend>
                                                    <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                                        <tr><td>&nbsp;</td></tr>
                                                        <tr>
                                                            <td width="100%">
                                                                <table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
                                                                    <tr>
                                                                        <td width="5%">&nbsp;</td>
                                                                        <td class="font_size" width="33%">Address</td>
                                                                        <td width="2%">&nbsp;</td>
                                                                        <td width="60%"><asp:TextBox ID="txtAddress" CssClass="txt" runat="server" TextMode="MultiLine"></asp:TextBox></td>
                                                                    </tr>
                                                                </table>
                                                            </td>
                                                        </tr>
                                                        <tr><td>&nbsp;</td></tr>
                                                        <tr>
                                                            <td width="100%">
                                                                <table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
                                                                    <tr>
                                                                        <td width="5%">&nbsp;</td>
                                                                        <td class="font_size" width="33%">City/Town</td>
                                                                        <td width="2%">&nbsp;</td>
                                                                        <td width="60%"><asp:TextBox ID="txtCityTown" CssClass="txt" runat="server"></asp:TextBox></td>
                                                                    </tr>
                                                                </table>
                                                            </td>
                                                        </tr>
                                                        <tr><td>&nbsp;</td></tr>
                                                        <tr>
                                                            <td width="100%">
                                                                <table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
                                                                    <tr>
                                                                        <td width="5%">&nbsp;</td>
                                                                        <td class="font_size" width="33%">Country</td>
                                                                        <td width="2%">&nbsp;</td>
                                                                        <td width="60%"><asp:TextBox ID="txtCountry" CssClass="txt" runat="server"></asp:TextBox></td>
                                                                    </tr>
                                                                </table>
                                                            </td>
                                                        </tr>
                                                        <tr><td>&nbsp;</td></tr>
                                                        <tr>
                                                            <td width="100%">
                                                                <table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
                                                                    <tr>
                                                                        <td width="5%">&nbsp;</td>
                                                                        <td class="font_size" width="33%">Postal&nbsp;Code</td>
                                                                        <td width="2%">&nbsp;</td>
                                                                        <td width="60%"><asp:TextBox ID="txtPostalCode" CssClass="txt" runat="server"></asp:TextBox></td>
                                                                    </tr>
                                                                </table>
                                                            </td>
                                                        </tr>
                                                    </table>        
                                                </fieldset>
                                                            </td>
                                                            <td style="width:2%">&nbsp;</td>
                                                            <td style="width:46%">
                                                                
                                    <fieldset id="Fieldset2" style="height:250px">
                                                    <legend class="fontForInnerLegend">Communications</legend>
                                                    <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                                        <tr><td>&nbsp;</td></tr>
                                                        <tr>
                                                            <td width="100%">
                                                                <table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
                                                                    <tr>
                                                                        <td width="5%">&nbsp;</td>
                                                                        <td class="font_size" width="33%">Work&nbsp;Phone</td>
                                                                        <td width="2%">&nbsp;</td>
                                                                        <td width="60%"><asp:TextBox ID="txtWorkPhone" CssClass="txt" runat="server" ></asp:TextBox></td>
                                                                    </tr>
                                                                </table>
                                                            </td>
                                                        </tr>
                                                        <tr><td>&nbsp;</td></tr>
                                                        <tr>
                                                            <td width="100%">
                                                                <table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
                                                                    <tr>
                                                                        <td width="5%">&nbsp;</td>
                                                                        <td class="font_size" width="33%">Facsimle</td>
                                                                        <td width="2%">&nbsp;</td>
                                                                        <td width="60%"><asp:TextBox ID="txtFacsimle" CssClass="txt" runat="server"></asp:TextBox></td>
                                                                    </tr>
                                                                </table>
                                                            </td>
                                                        </tr>
                                                        <tr><td>&nbsp;</td></tr>
                                                        <tr>
                                                            <td width="100%">
                                                                <table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
                                                                    <tr>
                                                                        <td width="5%">&nbsp;</td>
                                                                        <td class="font_size" width="33%">Web&nbsp;Address</td>
                                                                        <td width="2%">&nbsp;</td>
                                                                        <td width="60%"><asp:TextBox ID="txtWebAddress" CssClass="txt" runat="server"></asp:TextBox></td>
                                                                    </tr>
                                                                </table>
                                                            </td>
                                                        </tr>
                                                        <tr><td>&nbsp;</td></tr>
                                                        
                                                    </table>        
                                                </fieldset>
                                                            </td>
                                                            <td style="width:2%">&nbsp;</td>
                                                                    </tr>
                                                                </table>
                                                            </td>
                                                        </tr>
                                                         <tr><td style="width:100%">&nbsp;</td></tr>
                                                         <tr>
                                                            <td>
                                                                <table width="100%">
                                                                    <tr>
                                                                        <td style="width:2%">&nbsp;</td>
                                                            <td style="width:46%">
                                                                 <fieldset id="Fieldset3" style="height:360px">
                                                    <legend class="fontForInnerLegend">Additional Services</legend>
                                                    <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                                        <tr><td>&nbsp;</td></tr>
                                                        <tr>
                                                            <td width="100%">
                                                                <table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
                                                                    <tr>
                                                                        <td width="5%">&nbsp;</td>
                                                                        <td class="font_size" width="33%">Benchmarking</td>
                                                                        <td width="2%">&nbsp;</td>
                                                                        <td width="60%"><asp:TextBox ID="txtBenchmarking" Text="0.00" CssClass="txt" runat="server"></asp:TextBox></td>
                                                                    </tr>
                                                                </table>
                                                            </td>
                                                        </tr>
                                                        <tr><td>&nbsp;</td></tr>
                                                        <tr>
                                                            <td width="100%">
                                                                <table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
                                                                    <tr>
                                                                        <td width="5%">&nbsp;</td>
                                                                        <td class="font_size" width="33%">CashFlwForcst</td>
                                                                        <td width="2%">&nbsp;</td>
                                                                        <td width="60%"><asp:TextBox ID="txtCashFlowForecast" CssClass="txt" Text="0.00" runat="server"></asp:TextBox></td>
                                                                    </tr>
                                                                </table>
                                                            </td>
                                                        </tr>
                                                        <tr><td>&nbsp;</td></tr>
                                                        <tr>
                                                            <td width="100%">
                                                                <table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
                                                                    <tr>
                                                                        <td width="5%">&nbsp;</td>
                                                                        <td class="font_size" width="33%">Prft&nbsp;Optmzr</td>
                                                                        <td width="2%">&nbsp;</td>
                                                                        <td width="60%"><asp:TextBox ID="txtProfitOptimizer"  CssClass="txt" 
                                                                                runat="server" style="margin-bottom: 0px"></asp:TextBox></td>
                                                                    </tr>
                                                                </table>
                                                            </td>
                                                        </tr>
                                                        <tr><td>&nbsp;</td></tr>
                                                        <tr>
                                                            <td width="100%">
                                                                <table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
                                                                    <tr>
                                                                        <td width="5%">&nbsp;</td>
                                                                        <td class="font_size" width="33%">Ann&nbsp;Co.&nbsp;Ret.</td>
                                                                        <td width="2%">&nbsp;</td>
                                                                        <td width="60%"><asp:TextBox ID="txtAnnualCompanyReturn" Text="0.00" CssClass="txt" runat="server"></asp:TextBox></td>
                                                                    </tr>
                                                                </table>
                                                                </td>
                                                            </tr>
                                                                    <tr><td>&nbsp;</td></tr>
                                                        <tr>
                                                            <td width="100%">
                                                                <table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
                                                                    <tr>
                                                                        <td width="5%">&nbsp;</td>
                                                                        <td class="font_size" width="33%">Hourly&nbsp;Fee</td>
                                                                        <td width="2%">&nbsp;</td>
                                                                        <td width="60%"><asp:TextBox ID="txtHourlyFee" Text="0.00" CssClass="txt" runat="server"></asp:TextBox></td>
                                                                    </tr>
                                                               
                                                                 </table>
                                                             </td>
                                                             </tr>
                                                                     <tr><td>&nbsp;</td></tr>
                                                        <tr>
                                                            <td width="100%">
                                                                <table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
                                                                    <tr>
                                                                        <td width="5%">&nbsp;</td>
                                                                        <td class="font_size" width="33%">Other&nbsp;Fee</td>
                                                                        <td width="2%">&nbsp;</td>
                                                                        <td width="60%"><asp:TextBox ID="txtOtherFee" Text="0.00" CssClass="txt" runat="server"></asp:TextBox></td>
                                                                    </tr>
                                                                </table>
                                                            </td>
                                                        </tr>
                                                    </table>        
                                                </fieldset>
                                                            </td>
                                                            <td style="width:2%">&nbsp;</td>
                                                            <td style="width:46%">
                                                                 <fieldset id="fsDescription" style="height:360px">
                                                    <legend class="fontForInnerLegend">Firm Description</legend>
                                                    <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                                        <tr><td>&nbsp;</td></tr>
                                                        <tr>
                                                            <td width="100%">
                                                                <table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
                                                                    <tr>
                                                                         <td width="10%">&nbsp;</td>
                                                                        <td width="80%">
                                                                            <asp:TextBox ID="txtDescription" TextMode="MultiLine" CssClass="size_dsc_txt" runat="server"></asp:TextBox>
                                                                        </td>
                                                                        <td width="10%">&nbsp;</td>
                                                                    </tr>
                                                                </table>
                                                            </td>
                                                        </tr>
                                                        <tr><td>&nbsp;</td></tr>
                                                        
                                                    </table>        
                                                </fieldset>
                                                            </td>
                                                            <td style="width:2%">&nbsp;</td>
                                                                    </tr>
                                                                </table>
                                                            </td>
                                                         </tr>
                                                         <tr><td style="width:100%">&nbsp;</td></tr>
                                                         <tr><td style="width:100%">
                                                              <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                <tr>
                                    <td style=" width:100%">
                                        <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                            <tr>
                                                <td width="42%" align="right">
                                                 <asp:Button ID="btnSave" Text="Save" runat="server" CssClass="btn" onclick="btnSave_Click" 
                                                 />
                                                 </td>
                                                 <td align="center" style="width: 4%">
                                                      <asp:Button ID="btnCancel" Text="Cancel" CssClass="btn" runat="server" 
                                                          onclick="btnCancel_Click" />
                                                 </td>
                                                 <td width="48%" align="left">
                                                     <asp:Button ID="btnReset" Text="Reset" runat="server" CssClass="btn" 
                                                         onclick="btnReset_Click" />
                                                 </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td style=" width:100%">
                                        <table width="100%" cellpadding="0" cellspacing="0" border="0">
                                            <tr>
                                                <td  align="center">
                                                    <asp:Label ID="lblerr" runat="server" ForeColor="Red"></asp:Label>
                                                    <asp:Label ID="lblmailerr" runat="server" ForeColor="Red"></asp:Label>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                               </table>
                                                         </td></tr>
                                                         <tr><td style="width:100%">&nbsp;</td></tr>
                                                        
                                                        
                                                        
                                                        
                                                        
                                                        
                                                        
                                                        
                                                        
                                                    </table>
                                         </fieldset>
                            </td>
                            <td style="width:10%"></td>
                        </tr>
                 </table>
        </div>
  </div>
    
</asp:Content>

