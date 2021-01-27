<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="index.aspx.vb" MasterPageFile="~/Admin/Admin.Master" Inherits="Project_Web.index1" %>

<asp:Content ID="Index" ContentPlaceHolderID="Content" runat="server">
    <form id="form1" runat="server">
        <div id="content">

            <!-- Topbar -->
            <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

                <!-- Sidebar Toggle (Topbar) -->
                <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
                    <i class="fa fa-bars"></i>
                </button>


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
                            <span class="mr-2 d-none d-lg-inline text-gray-600 small">Admin</span>
                            <img class="img-profile rounded-circle"
                                src="img/undraw_profile.svg">
                        </a>
                        <!-- Dropdown - User Information -->
                        <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
                            aria-labelledby="userDropdown">
                            <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">
                                <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                                Logout
                            </a>
                        </div>
                    </li>

                </ul>

            </nav>
            <!-- End of Topbar -->

            <!-- Begin Page Content -->
            <div class="container-fluid">

                <!-- Page Heading -->
                <div class="d-sm-flex align-items-center justify-content-between mb-4">
                    <h1 class="h3 mb-0 text-gray-800">Dashboard</h1>
                </div>

                <!-- Content Row -->
                <div class="row">

                    <!-- Earnings (Monthly) Card Example -->
                    <div class="col-xl-3 col-md-6 mb-4">
                        <div class="card border-left-primary shadow h-100 py-2">
                            <div class="card-body">
                                <div class="row no-gutters align-items-center">
                                    <div class="col mr-2">
                                        <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">
                                            Jumlah Buku
                                        </div>
                                        <div class="h5 mb-0 font-weight-bold text-gray-800"><%=jumlahBuku %></div>
                                    </div>
                                    <div class="col-auto">
                                        <i class="fas fa-book fa-2x text-gray-300"></i>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Earnings (Monthly) Card Example -->
                    <div class="col-xl-3 col-md-6 mb-4">
                        <div class="card border-left-danger shadow h-100 py-2">
                            <div class="card-body">
                                <div class="row no-gutters align-items-center">
                                    <div class="col mr-2">
                                        <div class="text-xs font-weight-bold text-danger text-uppercase mb-1">
                                            Jumlah User
                                        </div>
                                        <div class="h5 mb-0 font-weight-bold text-gray-800"><%=jumlahAkun%></div>
                                    </div>
                                    <div class="col-auto">
                                        <i class="fas fa-user fa-2x text-gray-300"></i>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Earnings (Monthly) Card Example -->
                    <div class="col-xl-3 col-md-6 mb-4">
                        <div class="card border-left-success shadow h-100 py-2">
                            <div class="card-body">
                                <div class="row no-gutters align-items-center">
                                    <div class="col mr-2">
                                        <div class="text-xs font-weight-bold text-success text-uppercase mb-1">
                                            Jumlah Download
                                        </div>
                                        <div class="h5 mb-0 font-weight-bold text-gray-800"><%=jumlahDownload %></div>
                                    </div>
                                    <div class="col-auto">
                                        <i class="fas fa-download fa-2x text-gray-300"></i>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Pending Requests Card Example -->
                    <div class="col-xl-3 col-md-6 mb-4">
                        <div class="card border-left-warning shadow h-100 py-2">
                            <div class="card-body">
                                <div class="row no-gutters align-items-center">
                                    <div class="col mr-2">
                                        <div class="text-xs font-weight-bold text-warning text-uppercase mb-1">
                                            Jumlah Download
                                        </div>
                                        <div class="h5 mb-0 font-weight-bold text-gray-800"><%=jumlahDownload %></div>
                                    </div>
                                    <div class="col-auto">
                                        <i class="fas fa-comment fa-2x text-gray-300"></i>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Content Row -->

                <div class="row">

                    <!-- Area Chart -->
                    <div class="col-xl-12 col-lg-7">
                        <div class="card shadow mb-4">
                            <!-- Card Header - Dropdown -->
                            <div
                                class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                                <h6 class="m-0 font-weight-bold text-primary">Semua Buku</h6>
                            </div>
                            <!-- Card Body -->
                            <div class="card-body">
                                <div class="input-group">
                                    <asp:TextBox ID="txtCari" runat="server" class="form-control bg-light border-0 small"></asp:TextBox>
                                    <div class="input-group-append">
                                        <asp:Button CssClass="btn btn-primary" runat="server" Text="Cari" ID="btnCari" OnClick="btnCari_Click">
                                        </asp:button>
                                    </div>
                                </div>
                                <br />
                                <br />
                                <a href="#" data-toggle="modal" data-target="#modalSubscriptionForm" class="btn btn-success">Tambah Data</a>
                                <br />
                                <br />
                                <asp:GridView CssClass="table " ID="GridView2" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
                                    <AlternatingRowStyle BackColor="White"></AlternatingRowStyle>

                                    <EditRowStyle BackColor="#2461BF"></EditRowStyle>

                                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White"></FooterStyle>

                                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White"></HeaderStyle>

                                    <PagerStyle HorizontalAlign="Center" BackColor="#2461BF" ForeColor="White"></PagerStyle>

                                    <RowStyle BackColor="#EFF3FB"></RowStyle>

                                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333"></SelectedRowStyle>

                                    <SortedAscendingCellStyle BackColor="#F5F7FB"></SortedAscendingCellStyle>

                                    <SortedAscendingHeaderStyle BackColor="#6D95E1"></SortedAscendingHeaderStyle>

                                    <SortedDescendingCellStyle BackColor="#E9EBEF"></SortedDescendingCellStyle>

                                    <SortedDescendingHeaderStyle BackColor="#4870BE"></SortedDescendingHeaderStyle>
                                </asp:GridView>
                                <asp:GridView CssClass="table " ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id_buku" DataSourceID="DataBuku" OnRowDataBound="OnRowDataBound" CellPadding="4" ForeColor="#333333" GridLines="None" AllowPaging="True">
                                    <AlternatingRowStyle BackColor="White"></AlternatingRowStyle>
                                    <Columns>

                                        <asp:BoundField DataField="id_buku" HeaderText="ID" ReadOnly="True" InsertVisible="False" SortExpression="id_buku"></asp:BoundField>
                                        <asp:BoundField DataField="nama_buku" HeaderText="Nama Buku" SortExpression="nama_buku"></asp:BoundField>
                                        <asp:BoundField DataField="deskripsi_buku" HeaderText="Deskripsi Buku" SortExpression="deskripsi_buku"></asp:BoundField>
                                        <asp:BoundField DataField="tanggal_upload" HeaderText="Tanggal Upload" SortExpression="tanggal_upload"></asp:BoundField>
                                        <asp:BoundField DataField="jumlah_download" HeaderText="Jumlah Download" SortExpression="jumlah_download"></asp:BoundField>
                                        <asp:BoundField DataField="penerbit_buku" HeaderText="Penerbit Buku" SortExpression="penerbit_buku"></asp:BoundField>
                                        <asp:BoundField DataField="tahun_terbit" HeaderText="Tahun Terbit" SortExpression="tahun_terbit"></asp:BoundField>
                                        <asp:BoundField DataField="kelas" HeaderText="Kelas" SortExpression="kelas"></asp:BoundField>
                                        <asp:TemplateField HeaderText="Cover">
                                            <ItemTemplate>
                                                <asp:Image ID="Image1" runat="server" Width="50" />
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:CommandField ShowDeleteButton="True" ControlStyle-CssClass="btn btn-danger" ControlStyle-ForeColor="White"></asp:CommandField>

                                    </Columns>
                                    <EditRowStyle BackColor="#2461BF"></EditRowStyle>

                                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White"></FooterStyle>

                                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White"></HeaderStyle>

                                    <PagerStyle HorizontalAlign="Center" BackColor="#2461BF" ForeColor="White"></PagerStyle>

                                    <RowStyle BackColor="#EFF3FB"></RowStyle>

                                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333"></SelectedRowStyle>

                                    <SortedAscendingCellStyle BackColor="#F5F7FB"></SortedAscendingCellStyle>

                                    <SortedAscendingHeaderStyle BackColor="#6D95E1"></SortedAscendingHeaderStyle>

                                    <SortedDescendingCellStyle BackColor="#E9EBEF"></SortedDescendingCellStyle>

                                    <SortedDescendingHeaderStyle BackColor="#4870BE"></SortedDescendingHeaderStyle>
                                </asp:GridView>
                                <asp:SqlDataSource runat="server" ID="DataBuku" ConnectionString='<%$ ConnectionStrings:DB_EbookModuleConnectionString %>' SelectCommand="SELECT * FROM [BukuModul]" DeleteCommand="DELETE FROM [BukuModul] WHERE [id_buku] = @id_buku" InsertCommand="INSERT INTO [BukuModul] ([nama_buku], [deskripsi_buku], [tanggal_upload], [cover_buku], [file_buku], [jumlah_download], [penerbit_buku], [tahun_terbit], [kelas]) VALUES (@nama_buku, @deskripsi_buku, @tanggal_upload, @cover_buku, @file_buku, @jumlah_download, @penerbit_buku, @tahun_terbit, @kelas)" UpdateCommand="UPDATE [BukuModul] SET [nama_buku] = @nama_buku, [deskripsi_buku] = @deskripsi_buku, [tanggal_upload] = @tanggal_upload, [cover_buku] = @cover_buku, [file_buku] = @file_buku, [jumlah_download] = @jumlah_download, [penerbit_buku] = @penerbit_buku, [tahun_terbit] = @tahun_terbit, [kelas] = @kelas WHERE [id_buku] = @id_buku">
                                    <DeleteParameters>
                                        <asp:Parameter Name="id_buku" Type="Int32"></asp:Parameter>
                                    </DeleteParameters>
                                    <InsertParameters>
                                        <asp:Parameter Name="nama_buku" Type="String"></asp:Parameter>
                                        <asp:Parameter Name="deskripsi_buku" Type="String"></asp:Parameter>
                                        <asp:Parameter DbType="Date" Name="tanggal_upload"></asp:Parameter>
                                        <asp:Parameter Name="cover_buku" Type="Object"></asp:Parameter>
                                        <asp:Parameter Name="file_buku" Type="Object"></asp:Parameter>
                                        <asp:Parameter Name="jumlah_download" Type="Int32"></asp:Parameter>
                                        <asp:Parameter Name="penerbit_buku" Type="String"></asp:Parameter>
                                        <asp:Parameter Name="tahun_terbit" Type="Int32"></asp:Parameter>
                                        <asp:Parameter Name="kelas" Type="Int32"></asp:Parameter>
                                    </InsertParameters>
                                </asp:SqlDataSource>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Pie Chart -->
                <!-- modal tambah buku -->

                <div class="modal fade" id="modalSubscriptionForm" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
                    aria-hidden="true">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header text-center">
                                <h4 class="modal-title w-100 font-weight-bold">Tambah Data Buku Baru</h4>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body mx-3">
                                <div class="md-form mb-2">
                                    <label data-error="wrong" data-success="right" for="form3">Nama Buku</label>
                                    <asp:TextBox ID="txtNama" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>

                                <div class="md-form mb-2">
                                    <label data-error="wrong" data-success="right" for="form2">Deskripsi</label>
                                    <asp:TextBox ID="txtDeskripsi" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="5" ></asp:TextBox>
                                </div>
                                <div class="md-form mb-2">
                                    <label data-error="wrong" data-success="right" for="form2">Cover Buku</label><br />
                                    <asp:FileUpload ID="coverBuku" runat="server" AllowMultiple="true" />
                                </div>
                                <div class="md-form mb-2">
                                    <label data-error="wrong" data-success="right" for="form2">File Buku</label><br />
                                    <asp:FileUpload ID="FileBuku" runat="server" AllowMultiple="true" /><br />
                                    <asp:Label runat="server" Text="File tidak boleh lebih dari 2 MB" ForeColor="red"></asp:Label>
                                </div>
                                <div class="md-form mb-2">
                                    <label data-error="wrong" data-success="right" for="form2">Penerbit</label>
                                    <asp:TextBox ID="txtPenerbit" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                                <div class="md-form mb-2">
                                    <label data-error="wrong" data-success="right" for="form2">Tahun Terbit</label>
                                    <asp:TextBox ID="txtTahun" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                                <div class="md-form mb-2">
                                    <label data-error="wrong" data-success="right" for="form2">Kelas/Semester</label>
                                    <asp:DropDownList ID="txtKelas" CssClass="form-control" runat="server">
                                        <asp:ListItem>7</asp:ListItem>
                                        <asp:ListItem>8</asp:ListItem>
                                        <asp:ListItem>9</asp:ListItem>
                                        <asp:ListItem>10</asp:ListItem>
                                        <asp:ListItem>11</asp:ListItem>
                                        <asp:ListItem>12</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="modal-footer d-flex justify-content-center">
                                <asp:Button ID="btnAddData" runat="server" Text="Tambah" CssClass="btn btn-success" OnClick="btnAddData_Click" />
                            </div>
                        </div>
                    </div>
                </div>

                <!-- end of modal tambah buku -->
    </form>


</asp:Content>
