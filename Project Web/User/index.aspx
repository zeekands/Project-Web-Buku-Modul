<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="index.aspx.vb" MasterPageFile="~/User/User.Master" Inherits="Project_Web.index" %>

<asp:Content ID="Index" ContentPlaceHolderID="CP1" runat="server">

  <!-- ======= Hero Section ======= -->
  <section id="hero" class="d-flex align-items-center">

    <div class="container">
      <div class="row">
        <div class="col-lg-6 pt-5 pt-lg-0 order-2 order-lg-1 d-flex flex-column justify-content-center">
          <h1 data-aos="fade-up">Temukan buku yang anda butuhkan</h1>
          <h2 data-aos="fade-up" data-aos-delay="400">Buku modul dan Ebook gratis untuk keperluan pembelajaran online</h2>
          <div data-aos="fade-up" data-aos-delay="800">
            <a href="#portfolio" class="btn-get-started scrollto">Lihat 3 buku teratas</a>
          </div>
        </div>
        <div class="col-lg-6 order-1 order-lg-2 hero-img" data-aos="fade-left" data-aos-delay="200">
          <img src="assets/img/banner1.jpg" class="img-fluid animated" alt="">
        </div>
      </div>
    </div>

  </section><!-- End Hero -->


  <main id="main">
          <!-- ======= Portfolio Section ======= -->
              <!-- ======= Portfolio Section ======= -->
        <section id="portfolio" class="portfolio">
            <div class="container">

                <div class="section-title" data-aos="fade-up">
                    <h2>TOP 3 BOOKS</h2>
                    <p>Buku pilihan yang paling populer untuk anda</p>
                </div>

                <div class="row portfolio-container" data-aos="fade-up" data-aos-delay="400">
                    <%For Each modul In ListModule %>
                    <div class="col-lg-4 col-md-6 portfolio-item">
                        <div class="portfolio-wrap">
                           <%Dim imageUrl As String = "data:image/jpg;base64," & Convert.ToBase64String(CType(modul.cover_buku, Byte()))
                               CType(Image1, Image).ImageUrl = imageUrl %>
                            <asp:Image ID="Image1" runat="server" cssClass="img-fluid" Width="1000"/>
                            <div class="portfolio-info">
                                <h4><%=modul.nama_buku %></h4>
                                <p><%=modul.deskripsi_buku %></p>
                                <div class="portfolio-links">
                                    <a href="assets/img/module/portfolio-1.jpg" data-gall="portfolioGallery" class="venobox" title="App 1"><i class="bx bx-plus"></i></a>
                                    <a href="detailBuku.aspx?id=<%=modul.id_buku %>"><i class="bx bx-download"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <%Next %>
                </div>
            </div>
        </section>
      <!-- End Portfolio Section -->
      
    <!-- ======= Features Section ======= -->
    <section id="features" class="features">
      <div class="container">

        <div class="section-title" data-aos="fade-up">
          <h2>Kelas</h2>
          <p>Cari Berdasarkan Kelas</p>
        </div>

        <div class="row" data-aos="fade-up" data-aos-delay="300">
          <div class="col-lg-3 col-md-4">
            <div class="icon-box">
              <i class="ri-store-line" style="color: #ffbb2c;"></i>
              <h3><a href="semuaBuku.aspx?kelas=7">Kelas 7</a></h3>
            </div>
          </div>
          <div class="col-lg-3 col-md-4 mt-4 mt-md-0">
            <div class="icon-box">
              <i class="ri-bar-chart-box-line" style="color: #5578ff;"></i>
              <h3><a href="semuaBuku.aspx?kelas=8">Kelas 8</a></h3>
            </div>
          </div>
          <div class="col-lg-3 col-md-4 mt-4 mt-md-0">
            <div class="icon-box">
              <i class="ri-calendar-todo-line" style="color: #e80368;"></i>
              <h3><a href="semuaBuku.aspx?kelas=9">Kelas 9</a></h3>
            </div>
          </div>
          <div class="col-lg-3 col-md-4 mt-4 mt-lg-0">
            <div class="icon-box">
              <i class="ri-paint-brush-line" style="color: #e361ff;"></i>
              <h3><a href="semuaBuku.aspx?kelas=10">Kelas 10</a></h3>
            </div>
          </div>
          <div class="col-lg-3 col-md-4 mt-4">
            <div class="icon-box">
              <i class="ri-database-2-line" style="color: #47aeff;"></i>
              <h3><a href="semuaBuku.aspx?kelas=11">Kelas 11</a></h3>
            </div>
          </div>
          <div class="col-lg-3 col-md-4 mt-4">
            <div class="icon-box">
              <i class="ri-gradienter-line" style="color: #ffa76e;"></i>
              <h3><a href="semuaBuku.aspx?kelas=12">Kelas 12</a></h3>
            </div>
          </div>
      </div>
    </section><!-- End Features Section -->

       <div class="modal fade" id="tambahModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Edit Product</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <div class="form-group">
                            <label>Nama Pupuk</label>
                            <input type="text" class="form-control" name="pupuk_nama" placeholder="Nama Pupuk">
                        </div>
                        <div class="form-group">
                            <label>Harga</label>
                            <input type="text" class="form-control" name="pupuk_harga" placeholder="Harga Pupuk">
                        </div>
                        <div class="form-group">
                            <label>Jumlah Pupuk</label>
                            <input type="text" class="form-control" name="pupuk_jumlah" placeholder="Nama Pupuk">
                        </div>
                        <div class="form-group">
                            <label>Deskripsi</label>
                            <input type="text" class="form-control" name="pupuk_deskripsi" placeholder="deskripsi Pupuk">
                        </div>
                        <div class="form-group">
                            <label>Foto</label>
                            <input type="file" class="form-control" name="pupuk_foto" placeholder="foto Pupuk">
                        </div>
                    </div>
                    <div class="modal-footer">
                        <input type="hidden" name="product_id" class="product_id">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        <button type="submit" class="btn btn-primary">Tambah</button>
                    </div>
                </div>
            </div>
        </div>
  </main><!-- End #main -->
</asp:Content>