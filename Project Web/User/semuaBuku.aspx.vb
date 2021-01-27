Imports System.Data
Imports System.Configuration
Imports System.Data.SqlClient
Imports System.Data.Sql
Imports MySql.Data.MySqlClient

Public Class semuaBuku
    Inherits System.Web.UI.Page
    Public ListBuku As List(Of BukuModul) = New List(Of BukuModul)
    Dim conn As ConnectionDB = New ConnectionDB()
    Dim sqlConnection As SqlConnection = conn.DbConnect

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If Session("nama") = "" Then Response.Redirect("masuk.aspx")

        Dim kelas As String

        If String.IsNullOrEmpty(Request.QueryString("kelas")) Then
            sqlConnection.Open()
            Dim comm As New SqlCommand("select * from BukuModul", sqlConnection)
            Dim reader As SqlDataReader = comm.ExecuteReader
            While reader.Read
                Dim data4 As Byte() = reader(4)
                Dim data5 As Byte() = reader(5)
                ListBuku.Add(New BukuModul(reader.GetInt32(0), reader.GetString(1), reader.GetString(2), data4))
            End While
            reader.Close()
            sqlConnection.Close()
        Else
            kelas = Request.QueryString("kelas")
            sqlConnection.Open()
            Dim comm As New SqlCommand("select * from BukuModul where kelas=" + kelas, sqlConnection)
            Dim reader As SqlDataReader = comm.ExecuteReader
            While reader.Read
                Dim data4 As Byte() = reader(4)
                Dim data5 As Byte() = reader(5)
                ListBuku.Add(New BukuModul(reader.GetInt32(0), reader.GetString(1), reader.GetString(2), reader.GetDateTime(3), data4, data5,
                                           reader.GetInt32(6), reader.GetString(7), reader.GetInt32(8), reader.GetInt32(9)))
            End While
            reader.Close()
            sqlConnection.Close()
        End If
    End Sub

    Protected Sub TextBox1_TextChanged(sender As Object, e As EventArgs) Handles TextBox1.TextChanged
        ListBuku.Clear()
        Dim text As String = TextBox1.Text
        sqlConnection.Open()
        Dim comm As New SqlCommand("select * from BukuModul where nama_buku LIKE '%" + text + "%'", sqlConnection)
        Dim reader As SqlDataReader = comm.ExecuteReader
        While reader.Read
            Dim data4 As Byte() = reader(4)
            Dim data5 As Byte() = reader(5)
            ListBuku.Add(New BukuModul(reader.GetInt32(0), reader.GetString(1), reader.GetString(2), reader.GetDateTime(3), data4, data5,
                                       reader.GetInt32(6), reader.GetString(7), reader.GetInt32(8), reader.GetInt32(9)))
        End While
        reader.Close()
        sqlConnection.Close()
    End Sub

End Class