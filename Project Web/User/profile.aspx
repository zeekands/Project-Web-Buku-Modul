<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/User/User.Master" CodeBehind="profile.aspx.vb" Inherits="Project_Web.profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="CP1" runat="server">
    
  <!-- ======= Hero Section ======= -->
    <br />
    <br />
    <main id="main">
        <section id="hero" class="d-flex align-items-center">

            <div class="container">
                <div class="row">
                    <div class="col-lg-6 pt-5 pt-lg-0 order-2 order-lg-1 d-flex flex-column justify-content-center">
                        <h1 data-aos="fade-up">Profile <%=Session("nama") %></h1>
                        <div data-aos="fade-up" data-aos-delay="600">
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Nama</label>
                                    <%txtNama.Text = Session("nama")
                                        txtEmail.Text = Session("email")
                                        txtPassword.Text = Session("password")
                                        txtJenjang.Text = Session("jenjang")
                                        %>
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
                        </div>

                        <table>
                            <tr>
                                <td>
                                    <div data-aos="fade-up" data-aos-delay="800">
                                        <asp:button ID="btnUbah" CssClass="btn-get-started scrollto" runat="server" Text="Simpan" OnClick="btnUbah_Click"/>
                                    </div>
                                </td>
                            </tr>
                        </table>
                    </div>
                    <div class="col-lg-6 order-1 order-lg-2 hero-img" data-aos="fade-left" data-aos-delay="200">
                        <img src="assets/img/profile.jpg" class="img-fluid animated" alt="">
                    </div>
                </div>
            </div>

        </section>
        <!-- End Hero -->
</asp:Content>
