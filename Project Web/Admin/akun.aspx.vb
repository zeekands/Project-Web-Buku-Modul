Public Class akun
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("namaAdmin") = "" Then Response.Redirect("~/User/masuk.aspx")
    End Sub

End Class