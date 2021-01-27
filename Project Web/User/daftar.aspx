<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="daftar.aspx.vb" MasterPageFile="~/User/User.Master" Inherits="Project_Web.daftar" %>

<asp:Content ID="daftar" ContentPlaceHolderID="CP1" runat="server">
    <!-- ======= Hero Section ======= -->
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <main id="main">
        <section id="hero" class="d-flex align-items-center">

            <div class="container">
                <div class="row">
                    <div class="col-lg-6 pt-5 pt-lg-0 order-2 order-lg-1 d-flex flex-column justify-content-center">
                        <h1 data-aos="fade-up">Masuk dan Buka Akses</h1>
                        <h2 data-aos="fade-up" data-aos-delay="400">Masuk untuk dapat melihat koleksi buku modul dan Ebook gratis untuk keperluan pembelajaran online</h2>
                        <div data-aos="fade-up" data-aos-delay="600">
                            <form class="col-lg-6 pt-5 pt-lg-0 order-2 order-lg-1 d-flex flex-column justify-content-center" data-aos="fade-up" data-aos-delay="600">
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Nama</label>
                                    <asp:TextBox CssClass="form-control" ID="txtNama" runat="server"></asp:TextBox>
                                </div>
                                <br />
                                <div class="form-group">
                                    <label for="exampleInputPassword1">Email</label>
                                    <asp:TextBox CssClass="form-control" ID="txtEmail" runat="server"></asp:TextBox>
                                </div>
                                <br />
                                <div class="form-group">
                                    <label for="exampleInputPassword1">Password</label>
                                    <asp:TextBox CssClass="form-control" TextMode="Password" ID="txtPassword" runat="server"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputPassword1">Jenjang</label>
                                    <asp:TextBox CssClass="form-control" ID="txtJenjang" runat="server"></asp:TextBox>
                                </div>
                                <br />                                
                            </form>
                        </div>

                        <table>
                            <tr>
                                <td>
                                    <div data-aos="fade-up" data-aos-delay="800">
                                        <asp:button ID="btnDaftar" OnClick="btnDaftar_Click" CssClass="btn-get-started scrollto" runat="server" Text="Daftar"/>
                                    </div>
                                </td>
                            </tr>
                        </table>
                    </div>
                    <div class="col-lg-6 order-1 order-lg-2 hero-img" data-aos="fade-left" data-aos-delay="200">
                        <img src="assets/img/daftar.jpg" class="img-fluid animated" alt="">
                    </div>
                </div>
            </div>

        </section>
        <!-- End Hero -->
    </main>
</asp:Content>
<asp:Content ID="Footer" ContentPlaceHolderID="FooterCP" runat="server" Visible="false"></asp:Content>
