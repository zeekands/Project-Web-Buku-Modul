Imports System.Data.SqlClient

Public Class profile
    Inherits System.Web.UI.Page

    Dim conn As SqlConnection = New ConnectionDB().DbConnect

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("nama") = "" Then Response.Redirect("masuk.aspx")
        conn.Open()
        Dim query As String = "select * from Akun where id_akun=" + Session("id").ToString
        Dim comm As New SqlCommand(query, conn)
        Dim reader As SqlDataReader = comm.ExecuteReader
        If reader.HasRows Then
            While reader.Read
                Session("id") = reader.GetInt32(0)
                Session("nama") = reader.GetString(1)
                Session("email") = reader.GetString(2)
                Session("password") = reader.GetString(3)
                Session("jenjang") = reader.GetString(4)
            End While
        End If
        reader.Close()
        conn.Close()
    End Sub

    Protected Sub btnUbah_Click(sender As Object, e As EventArgs)
        Dim nama As String = txtNama.Text
        Dim email As String = txtEmail.Text
        Dim password As String = txtPassword.Text
        Dim jenjang As String = txtJenjang.Text

        Dim query As String = "UPDATE Akun SET username = @username, email=@email, password=@password,jenjang=@jenjang where id_akun=@idakun"
        Using cmd As New SqlCommand(query)
            cmd.Connection = conn
            cmd.Parameters.Add("@idakun", SqlDbType.Int).Value = Int32.Parse(Session("id"))
            cmd.Parameters.Add("@username", SqlDbType.VarChar).Value = nama
            cmd.Parameters.Add("@email", SqlDbType.VarChar).Value = email
            cmd.Parameters.Add("@password", SqlDbType.VarChar).Value = password
            cmd.Parameters.Add("@jenjang", SqlDbType.VarChar).Value = jenjang
            conn.Open()
            cmd.ExecuteNonQuery()
            conn.Close()
        End Using
        Response.Redirect("profile.aspx")
    End Sub
End Class