<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="semuaBuku.aspx.vb" MasterPageFile="~/User/User.Master" Inherits="Project_Web.semuaBuku" %>

<asp:Content ID="semuaBuku" ContentPlaceHolderID="CP1" runat="server">

    <!-- ======= Hero Section ======= -->
    <section id="hero" class="d-flex align-items-center">

        <div class="container">
            <div class="row">
                <div class="col-lg-6 pt-5 pt-lg-0 order-2 order-lg-1 d-flex flex-column justify-content-center">
                    <h1 data-aos="fade-up">Temukan buku yang anda butuhkan</h1>
                    <h2 data-aos="fade-up" data-aos-delay="400">Buku modul dan Ebook gratis untuk keperluan pembelajaran online</h2>
                    <div data-aos="fade-up" data-aos-delay="800">
                        <a href="#portfolio" class="btn-get-started scrollto">Lihat Koleksi</a>
                    </div>
                </div>
                <div class="col-lg-6 order-1 order-lg-2 hero-img" data-aos="fade-left" data-aos-delay="200">
                    <img src="assets/img/search.png" class="img-fluid animated" alt="">
                </div>
            </div>
        </div>

    </section>
    <!-- End Hero -->

    <main id="main">

        <!-- ======= Portfolio Section ======= -->
        <section id="portfolio" class="portfolio">
            <div class="container">

                <div class="section-title" data-aos="fade-up">
                    <h2>Cari Buku Disini</h2>
                    <p>Masukan kata kunci pencarian pada kolom di bawah</p>
                    <p></p>
                    <div class="md-form active-cyan active-cyan-2 mb-3">
                        <asp:TextBox CssClass="form-control border-0" Text="Cari Disini" ID="TextBox1" runat="server"></asp:TextBox>
                    </div>
                </div>

                <div class="row portfolio-container" data-aos="fade-up" data-aos-delay="400">
                    <%For Each modul In ListBuku %>
                    <div class="col-lg-4 col-md-6 portfolio-item">
                        <div class="portfolio-wrap">
                            <%Dim imageUrl As String = "data:image/jpg;base64," & Convert.ToBase64String(CType(modul.cover_buku, Byte()))
                                CType(Image1, Image).ImageUrl = imageUrl %>
                            <asp:Image ID="Image1" runat="server" cssClass="img-fluid" Width="400"/>
                            <div class="portfolio-info">
                                <h4><%=modul.nama_buku %></h4>
                                <p><%=modul.deskripsi_buku %></p>
                                <div class="portfolio-links">
                                    <a href="detailBuku.aspx?id=<%=modul.id_buku %>"><i class="bx bx-download"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <%Next %>
                </div>
            </div>
        </section>
    </main>
    <!-- End #main -->
</asp:Content>
