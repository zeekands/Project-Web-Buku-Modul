Imports System.Data.SqlClient

Public Class deleteKomentar
    Inherits System.Web.UI.Page
    Dim conn As ConnectionDB = New ConnectionDB()
    Dim sqlConnection As SqlConnection = conn.DbConnect
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim idKomentar As String = Request.QueryString("id")
        Dim idBuku As String = Request.QueryString("idBuku")
        deleteComment(idKomentar)
        Response.Redirect("detailBuku.aspx?id=" + idBuku)
    End Sub
    Sub deleteComment(id_komentar As String)
        Dim query As String = "DELETE FROM Komentar WHERE id_komentar=" + id_komentar
        Using cmd As New SqlCommand(query)
            cmd.Connection = SqlConnection
            SqlConnection.Open()
            cmd.ExecuteNonQuery()
            SqlConnection.Close()
        End Using
    End Sub
End Class