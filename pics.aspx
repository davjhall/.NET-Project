<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="default.aspx.vb" Inherits="RSSFeedReader._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <title></title>
    </head>
    <body>
        <h3>Read RSS Feeds</h3>

        <form id="Form1" runat="server" >

            <!-- Where XYZ refers to the publication from where you wish to fetch the RSS feed from -->
            <div style="max-height:350px; overflow:auto">
                <asp:GridView ID="gvRss" runat="server" AutoGenerateColumns="false" ShowHeader="false" Width="90%">
                    <Columns>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <table width="100%" border="0" cellpadding="0" cellspacing="5">
                                    <tr>
                                        <td>
                                            <h3 style="color:#3E7CFF"><%#Eval("Title") %></h3>
                                        </td>
                                        <td width="200px">
                                            <%#Eval("PublishDate") %>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            <hr />
                                            <%#Eval("Description") %>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td> </td>
                                        <td align="right">
                                            <a href='<%#Eval("Link") %>' target="_blank">Read More...</a>
                                        </td>
                                    </tr>
                                </table>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </div>    
        </form>
    </body>
</html>