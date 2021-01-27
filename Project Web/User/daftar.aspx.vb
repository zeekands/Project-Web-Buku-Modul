Imports System.Data.SqlClient

Public Class daftar
    Inherits System.Web.UI.Page
    Dim sqlConnection As SqlConnection = New ConnectionDB().DbConnect

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btnDaftar_Click(sender As Object, e As EventArgs)
        Dim nama As String = txtNama.Text
        Dim email As String = txtEmail.Text
        Dim password As String = txtPassword.Text
        Dim jenjang As String = txtJenjang.Text

        Dim query As String = "Insert into Akun values(@username,@email,@password,@jenjang)"

        Using cmd As New SqlCommand(query)
            cmd.Connection = sqlConnection
            cmd.Parameters.Add("@username", SqlDbType.VarChar).Value = nama
            cmd.Parameters.Add("@email", SqlDbType.VarChar).Value = email
            cmd.Parameters.Add("@password", SqlDbType.VarChar).Value = password
            cmd.Parameters.Add("@jenjang", SqlDbType.VarChar).Value = jenjang

            sqlConnection.Open()
            cmd.ExecuteNonQuery()
            sqlConnection.Close()
        End Using
        Response.Redirect("succesPage.aspx")
    End Sub
End Class