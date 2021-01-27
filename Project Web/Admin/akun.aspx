<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Admin/Admin.Master" CodeBehind="akun.aspx.vb" Inherits="Project_Web.akun" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Content" runat="server">
    <form id="form1" runat="server">
        <div id="content">

            <!-- Topbar -->
            <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

                <!-- Sidebar Toggle (Topbar) -->
                <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
                    <i class="fa fa-bars"></i>
                </button>

                <!-- Topbar Search -->
                <div class="input-group">
                    <input type="text" class="form-control bg-light border-0 small" placeholder="Search for..."
                        aria-label="Search" aria-describedby="basic-addon2">
                    <div class="input-group-append">
                        <button class="btn btn-primary" type="button">
                            <i class="fas fa-search fa-sm"></i>
                        </button>
                    </div>
                </div>

                <!-- Topbar Navbar -->
                <ul class="navbar-nav ml-auto">

                    <!-- Nav Item - Search Dropdown (Visible Only XS) -->
                    <li class="nav-item dropdown no-arrow d-sm-none">
                        <a class="nav-link dropdown-toggle" href="#" id="searchDropdown" role="button"
                            data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <i class="fas fa-search fa-fw"></i>
                        </a>
                        <!-- Dropdown - Messages -->
                        <div class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in"
                            aria-labelledby="searchDropdown">
                            <div class="input-group">
                                <input type="text" class="form-control bg-light border-0 small"
                                    placeholder="Search for..." aria-label="Search"
                                    aria-describedby="basic-addon2">
                                <div class="input-group-append">
                                    <button class="btn btn-primary" type="button">
                                        <i class="fas fa-search fa-sm"></i>
                                    </button>
                                </div>
                            </div>
                        </div>
                    </li>

                    <!-- Nav Item - User Information -->
                    <li class="nav-item dropdown no-arrow">
                        <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button"
                            data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <span class="mr-2 d-none d-lg-inline text-gray-600 small">Douglas McGee</span>
                            <img class="img-profile rounded-circle"
                                src="img/undraw_profile.svg">
                        </a>
                        <!-- Dropdown - User Information -->
                        <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
                            aria-labelledby="userDropdown">
                            <a class="dropdown-item" href="#">
                                <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
                                Profile
                            </a>
                            <a class="dropdown-item" href="#">
                                <i class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-400"></i>
                                Settings
                            </a>
                            <a class="dropdown-item" href="#">
                                <i class="fas fa-list fa-sm fa-fw mr-2 text-gray-400"></i>
                                Activity Log
                            </a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">
                                <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                                Logout
                            </a>
                        </div>
                    </li>

                </ul>

            </nav>

            <!-- Content Row -->

            <div class="row">


                <!-- Card Body -->
                <div class="card-body">

                    <div class="col-xl-12 col-lg-7">
                        <div class="card shadow mb-4">
                            <!-- Card Header - Dropdown -->
                            <div
                                class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                                <h6 class="m-0 font-weight-bold text-primary">Semua Akun</h6>
                            </div>
                            <div class="card-body">
                                <asp:GridView ID="GridView1" runat="server" CssClass="table" AutoGenerateColumns="False" DataKeyNames="id_akun" DataSourceID="dataAkun" CellPadding="4" ForeColor="#333333" GridLines="None">
                                    <AlternatingRowStyle BackColor="White"></AlternatingRowStyle>
                                    <Columns>

                                        <asp:BoundField DataField="id_akun" HeaderText="id_akun" ReadOnly="True" InsertVisible="False" SortExpression="id_akun"></asp:BoundField>
                                        <asp:BoundField DataField="username" HeaderText="username" SortExpression="username"></asp:BoundField>
                                        <asp:BoundField DataField="email" HeaderText="email" SortExpression="email"></asp:BoundField>
                                        <asp:BoundField DataField="password" HeaderText="password" SortExpression="password"></asp:BoundField>
                                        <asp:BoundField DataField="jenjang" HeaderText="jenjang" SortExpression="jenjang"></asp:BoundField>
                                        <asp:CommandField ShowEditButton="True" ShowDeleteButton="True" ControlStyle-CssClass="btn btn-success"></asp:CommandField>
                                    </Columns>
                                    <EditRowStyle BackColor="#7C6F57"></EditRowStyle>

                                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White"></FooterStyle>

                                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White"></HeaderStyle>

                                    <PagerStyle HorizontalAlign="Center" BackColor="#666666" ForeColor="White"></PagerStyle>

                                    <RowStyle BackColor="#E3EAEB"></RowStyle>

                                    <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333"></SelectedRowStyle>

                                    <SortedAscendingCellStyle BackColor="#F8FAFA"></SortedAscendingCellStyle>

                                    <SortedAscendingHeaderStyle BackColor="#246B61"></SortedAscendingHeaderStyle>

                                    <SortedDescendingCellStyle BackColor="#D4DFE1"></SortedDescendingCellStyle>

                                    <SortedDescendingHeaderStyle BackColor="#15524A"></SortedDescendingHeaderStyle>
                                </asp:GridView>
                                <asp:SqlDataSource runat="server" ID="dataAkun" ConflictDetection="CompareAllValues" ConnectionString='<%$ ConnectionStrings:DB_EbookModuleConnectionString %>' DeleteCommand="DELETE FROM [Akun] WHERE [id_akun] = @original_id_akun AND (([username] = @original_username) OR ([username] IS NULL AND @original_username IS NULL)) AND (([email] = @original_email) OR ([email] IS NULL AND @original_email IS NULL)) AND (([password] = @original_password) OR ([password] IS NULL AND @original_password IS NULL)) AND (([jenjang] = @original_jenjang) OR ([jenjang] IS NULL AND @original_jenjang IS NULL))" InsertCommand="INSERT INTO [Akun] ([username], [email], [password], [jenjang]) VALUES (@username, @email, @password, @jenjang)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Akun]" UpdateCommand="UPDATE [Akun] SET [username] = @username, [email] = @email, [password] = @password, [jenjang] = @jenjang WHERE [id_akun] = @original_id_akun AND (([username] = @original_username) OR ([username] IS NULL AND @original_username IS NULL)) AND (([email] = @original_email) OR ([email] IS NULL AND @original_email IS NULL)) AND (([password] = @original_password) OR ([password] IS NULL AND @original_password IS NULL)) AND (([jenjang] = @original_jenjang) OR ([jenjang] IS NULL AND @original_jenjang IS NULL))">
                                    <DeleteParameters>
                                        <asp:Parameter Name="original_id_akun" Type="Int32"></asp:Parameter>
                                        <asp:Parameter Name="original_username" Type="String"></asp:Parameter>
                                        <asp:Parameter Name="original_email" Type="String"></asp:Parameter>
                                        <asp:Parameter Name="original_password" Type="String"></asp:Parameter>
                                        <asp:Parameter Name="original_jenjang" Type="String"></asp:Parameter>
                                    </DeleteParameters>
                                    <InsertParameters>
                                        <asp:Parameter Name="username" Type="String"></asp:Parameter>
                                        <asp:Parameter Name="email" Type="String"></asp:Parameter>
                                        <asp:Parameter Name="password" Type="String"></asp:Parameter>
                                        <asp:Parameter Name="jenjang" Type="String"></asp:Parameter>
                                    </InsertParameters>
                                    <UpdateParameters>
                                        <asp:Parameter Name="username" Type="String"></asp:Parameter>
                                        <asp:Parameter Name="email" Type="String"></asp:Parameter>
                                        <asp:Parameter Name="password" Type="String"></asp:Parameter>
                                        <asp:Parameter Name="jenjang" Type="String"></asp:Parameter>
                                        <asp:Parameter Name="original_id_akun" Type="Int32"></asp:Parameter>
                                        <asp:Parameter Name="original_username" Type="String"></asp:Parameter>
                                        <asp:Parameter Name="original_email" Type="String"></asp:Parameter>
                                        <asp:Parameter Name="original_password" Type="String"></asp:Parameter>
                                        <asp:Parameter Name="original_jenjang" Type="String"></asp:Parameter>
                                    </UpdateParameters>
                                </asp:SqlDataSource>
                            </div>
                        </div>
                    </div>
                    <!-- Pie Chart -->
                    <!-- modal tambah buku -->
    </form>
</asp:Content>
