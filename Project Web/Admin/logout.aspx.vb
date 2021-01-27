Public Class logout1
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Session().Clear()
        Response.Redirect("~/User/masuk.aspx")
    End Sub

End Class