<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="masuk.aspx.vb" MasterPageFile="~/User/User.Master" Inherits="Project_Web.masuk" %>

<asp:Content ID="masuk" ContentPlaceHolderID="CP1" runat="server">
    <!-- ======= Hero Section ======= -->
    <main id="main">

        <section id="hero" class="d-flex align-items-center">

            <div class="container">
                <div class="row">
                    <div class="col-lg-6 pt-5 pt-lg-0 order-2 order-lg-1 d-flex flex-column justify-content-center">
                        <h1 data-aos="fade-up">Masuk dan Buka Akses</h1>
                        <h2 data-aos="fade-up" data-aos-delay="400">Masuk untuk dapat melihat koleksi buku modul dan Ebook gratis untuk keperluan pembelajaran online</h2>
                        <div data-aos="fade-up" data-aos-delay="600">
                            <form class="col-lg-6 pt-5 pt-lg-0 order-2 order-lg-1 d-flex flex-column justify-content-center">
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Email address</label>
                                    <asp:TextBox CssClass="form-control" ID="emaill" runat="server"></asp:TextBox>
                                </div>
                                <br />
                                <div class="form-group">
                                    <label for="exampleInputPassword1">Password</label>
                                    <asp:TextBox CssClass="form-control" ID="password" TextMode="Password" runat="server"></asp:TextBox>
                                </div>
                            </form>
                        </div>
                        <br />
                        <div data-aos="fade-up" data-aos-delay="800">
                            <asp:Button ID="Button1" CssClass="btn-get-started scrollto" Text="Masuk" runat="server"/>
                        </div>
                        <br />
                        <div class="row">
                            <a class="col-md-5" data-aos="fade-up" data-aos-delay="1000" href="daftar.aspx">Atau Daftar Disini!</a>
                        </div>
                    </div>
                    <div class="col-lg-6 order-1 order-lg-2 hero-img" data-aos="fade-left" data-aos-delay="200">
                        <img src="assets/img/banner_login.png" class="img-fluid animated" alt="">
                    </div>
                </div>
            </div>
        </section>
        <!-- End Hero -->
    </main>
</asp:Content>
<asp:Content ID="Footer" ContentPlaceHolderID="FooterCP" runat="server" Visible="false"></asp:Content>
