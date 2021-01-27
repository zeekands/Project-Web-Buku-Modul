<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Admin/Admin.Master" CodeBehind="daftarKomentar.aspx.vb" Inherits="Project_Web.daftarKomentar" %>
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
                                <asp:GridView ID="GridView1" runat="server" CssClass="table" AutoGenerateColumns="False" DataKeyNames="id_komentar" DataSourceID="Komentar" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal">
                                    <Columns>

                                        <asp:BoundField DataField="id_komentar" HeaderText="id_komentar" ReadOnly="True" InsertVisible="False" SortExpression="id_komentar"></asp:BoundField>
                                        <asp:BoundField DataField="id_akun" HeaderText="id_akun" SortExpression="id_akun"></asp:BoundField>
                                        <asp:BoundField DataField="id_buku" HeaderText="id_buku" SortExpression="id_buku"></asp:BoundField>
                                        <asp:BoundField DataField="komentar" HeaderText="komentar" SortExpression="komentar"></asp:BoundField>
                                        <asp:BoundField DataField="waktu_komentar" HeaderText="waktu_komentar" SortExpression="waktu_komentar"></asp:BoundField>
                                        <asp:CommandField ShowEditButton="True" ShowDeleteButton="True" ControlStyle-CssClass="btn btn-primary"></asp:CommandField>
                                    </Columns>
                                    <FooterStyle BackColor="White" ForeColor="#333333"></FooterStyle>

                                    <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White"></HeaderStyle>

                                    <PagerStyle HorizontalAlign="Center" BackColor="#336666" ForeColor="White"></PagerStyle>

                                    <RowStyle BackColor="White" ForeColor="#333333"></RowStyle>

                                    <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White"></SelectedRowStyle>

                                    <SortedAscendingCellStyle BackColor="#F7F7F7"></SortedAscendingCellStyle>

                                    <SortedAscendingHeaderStyle BackColor="#487575"></SortedAscendingHeaderStyle>

                                    <SortedDescendingCellStyle BackColor="#E5E5E5"></SortedDescendingCellStyle>

                                    <SortedDescendingHeaderStyle BackColor="#275353"></SortedDescendingHeaderStyle>
                                </asp:GridView>
                                <asp:SqlDataSource runat="server" ID="Komentar" ConflictDetection="CompareAllValues" ConnectionString='<%$ ConnectionStrings:DB_EbookModuleConnectionString %>' DeleteCommand="DELETE FROM [Komentar] WHERE [id_komentar] = @original_id_komentar AND (([id_akun] = @original_id_akun) OR ([id_akun] IS NULL AND @original_id_akun IS NULL)) AND (([id_buku] = @original_id_buku) OR ([id_buku] IS NULL AND @original_id_buku IS NULL)) AND (([komentar] = @original_komentar) OR ([komentar] IS NULL AND @original_komentar IS NULL)) AND (([waktu_komentar] = @original_waktu_komentar) OR ([waktu_komentar] IS NULL AND @original_waktu_komentar IS NULL))" InsertCommand="INSERT INTO [Komentar] ([id_akun], [id_buku], [komentar], [waktu_komentar]) VALUES (@id_akun, @id_buku, @komentar, @waktu_komentar)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Komentar]" UpdateCommand="UPDATE [Komentar] SET [id_akun] = @id_akun, [id_buku] = @id_buku, [komentar] = @komentar, [waktu_komentar] = @waktu_komentar WHERE [id_komentar] = @original_id_komentar AND (([id_akun] = @original_id_akun) OR ([id_akun] IS NULL AND @original_id_akun IS NULL)) AND (([id_buku] = @original_id_buku) OR ([id_buku] IS NULL AND @original_id_buku IS NULL)) AND (([komentar] = @original_komentar) OR ([komentar] IS NULL AND @original_komentar IS NULL)) AND (([waktu_komentar] = @original_waktu_komentar) OR ([waktu_komentar] IS NULL AND @original_waktu_komentar IS NULL))">
                                    <DeleteParameters>
                                        <asp:Parameter Name="original_id_komentar" Type="Int32"></asp:Parameter>
                                        <asp:Parameter Name="original_id_akun" Type="Int32"></asp:Parameter>
                                        <asp:Parameter Name="original_id_buku" Type="Int32"></asp:Parameter>
                                        <asp:Parameter Name="original_komentar" Type="String"></asp:Parameter>
                                        <asp:Parameter Name="original_waktu_komentar" Type="DateTime"></asp:Parameter>
                                    </DeleteParameters>
                                    <InsertParameters>
                                        <asp:Parameter Name="id_akun" Type="Int32"></asp:Parameter>
                                        <asp:Parameter Name="id_buku" Type="Int32"></asp:Parameter>
                                        <asp:Parameter Name="komentar" Type="String"></asp:Parameter>
                                        <asp:Parameter Name="waktu_komentar" Type="DateTime"></asp:Parameter>
                                    </InsertParameters>
                                    <UpdateParameters>
                                        <asp:Parameter Name="id_akun" Type="Int32"></asp:Parameter>
                                        <asp:Parameter Name="id_buku" Type="Int32"></asp:Parameter>
                                        <asp:Parameter Name="komentar" Type="String"></asp:Parameter>
                                        <asp:Parameter Name="waktu_komentar" Type="DateTime"></asp:Parameter>
                                        <asp:Parameter Name="original_id_komentar" Type="Int32"></asp:Parameter>
                                        <asp:Parameter Name="original_id_akun" Type="Int32"></asp:Parameter>
                                        <asp:Parameter Name="original_id_buku" Type="Int32"></asp:Parameter>
                                        <asp:Parameter Name="original_komentar" Type="String"></asp:Parameter>
                                        <asp:Parameter Name="original_waktu_komentar" Type="DateTime"></asp:Parameter>
                                    </UpdateParameters>
                                </asp:SqlDataSource>
                            </div>
                        </div>
                    </div>
                    <!-- Pie Chart -->
                    <!-- modal tambah buku -->
    </form>
</asp:Content>
