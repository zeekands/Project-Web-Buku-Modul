Imports System.Data
Imports System.Configuration
Imports System.Data.SqlClient
Imports System.Data.Sql
Imports MySql.Data.MySqlClient

Public Class index
    Inherits System.Web.UI.Page
    Public ListModule As List(Of BukuModul) = New List(Of BukuModul)

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("nama") = "" Then
            Response.Redirect("masuk.aspx")
        End If

        Dim connectionString As String = "Data Source=ZEEKANDS\SQLEXPRESS;Initial Catalog=DB_EbookModule;Integrated Security=True"
        Dim conn As New SqlConnection(connectionString)
        Dim query As String = "select top(3) [id_buku]
      ,[nama_buku]
      ,[deskripsi_buku]
      ,[tanggal_upload]
      ,[cover_buku]
      ,[file_buku]
      ,[jumlah_download]
      ,[penerbit_buku]
      ,[tahun_terbit]
      ,[kelas] 
	  from BukuModul where jumlah_download In (select  top(3) with ties jumlah_download from BukuModul order by jumlah_download desc)"
        conn.Open()
        Dim comm As New SqlCommand(query, conn)
        Dim reader As SqlDataReader = comm.ExecuteReader
        While reader.Read
            Dim data4 As Byte() = reader(4)
            Dim data5 As Byte() = reader(5)
            ListModule.Add(New BukuModul(reader.GetInt32(0), reader.GetString(1), reader.GetString(2), reader.GetDateTime(3), data4, data5,
                                       reader.GetInt32(6), reader.GetString(7), reader.GetInt32(8), reader.GetInt32(9)))
        End While
        reader.Close()
        conn.Close()
    End Sub

End Class