<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="detailBuku.aspx.vb" MasterPageFile="~/User/User.Master" Inherits="Project_Web.detailBuku" %>

<asp:Content ID="detailBuku" ContentPlaceHolderID="CP1" runat="server">
    <main id="main">

        <!-- ======= Breadcrumbs ======= -->
        <section id="breadcrumbs" class="breadcrumbs">
            <div class="container">

                <div class="d-flex justify-content-between align-items-center">
                    <h2>Detail Item yang dipilih</h2>
                    <ol>
                        <li><a href="index.html">Home</a></li>
                        <li>Details</li>
                    </ol>
                </div>

            </div>
        </section>
        <!-- End Breadcrumbs -->

        <!-- ======= Portfolio Details Section ======= -->
        <section id="portfolio-details" class="portfolio-details">
            <div class="container">

                <div class="row">

                    <div class="col-lg-8">
                        <h2 class="portfolio-title"><%=Buku.nama_buku %></h2>
                        <%Dim imageUrl As String = "data:image/jpg;base64," & Convert.ToBase64String(CType(Buku.cover_buku, Byte()))
                            CType(Image1, Image).ImageUrl = imageUrl %>
                        <center>
                            <asp:Image ID="Image1" runat="server" cssClass="img-fluid" Width="400" ImageAlign="Middle"/>
                            </center>
                    </div>
                    <div class="col-lg-4 portfolio-info">
                        <h3>Detail</h3>
                        <ul>
                            <li><strong>Nama Modul</strong>: <%=Buku.nama_buku %></li>
                            <li><strong>Penerbit</strong>: <%=Buku.penerbit_buku %></li>
                            <li><strong>Tanggal Upload</strong>: <%=Buku.tanggal_upload.ToString.Substring(0, 10) %></li>
                            <li><strong>Tahun Terbit</strong>: <%=Buku.tahun_terbit %></li>
                            <li><strong>Jumlah Download</strong>: <%=Buku.jumlah_download %></li>
                        </ul>
                        <p><%=Buku.deskripsi_buku %> </p>
                        <asp:Button CssClass="btn btn-success" Text="Unduh" ID="btnDownload" OnClick="btnDownload_Click" runat="server" />
                    </div>
                </div>
                <br />
                <br />
                <div class="container">
                    <div class="post-comments">
                        <div class="form-group">
                            <label for="comment">Your Comment</label><asp:TextBox CssClass="form-control" Rows="5" ID="txtKomentar" TextMode="MultiLine" runat="server"></asp:TextBox>
                        </div>
                        <asp:Button ID="kirimKomentar" CssClass="btn btn-success" runat="server" Text="Kirim" OnClick="kirimKomentar_Click" />

                        <div class="row">
                            <br />
                            <%For Each komentar In Comments %>
                            <div class="media">
                                <!-- first comment -->

                                <div class="media-heading">
                                    <span class="label label-info"><%= komentar.nama%></span> <%=komentar.waktuKomentar %>
                                </div>
                                <div class="media-body">
                                    <p><%=komentar.komentar %></p>
                                    <div class="comment-meta">
                                        <%If Session("id") = komentar.idAkun Then %>      
                                        <span><a href="deleteKomentar.aspx?id=<%=komentar.idKomentar %>&idBuku=<%=komentar.idBuku %>">delete</a></span>
                                        <%End If %>
                                    </div>

                                </div>
                            </div>
                            <%Next %>
                        </div>
                    </div>
                </div>
                </div>
        </section>
        <!-- End Portfolio Details Section -->

    </main>
    <!-- End #main -->
</asp:Content>
