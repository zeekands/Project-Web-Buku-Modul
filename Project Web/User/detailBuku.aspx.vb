Imports System.Data.SqlClient

Public Class detailBuku
    Inherits System.Web.UI.Page
    'create a new connection to connect to database
    Dim conn As ConnectionDB = New ConnectionDB()
    Dim sqlConnection As SqlConnection = conn.DbConnect
    Public idKomentar As String
    'create buku class for store the data that we get from database
    Public Buku As BukuModul
    Public Comments As List(Of Komentar) = New List(Of Komentar)
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        'session to make sure that user has been loged in
        If Session("nama") = "" Then Response.Redirect("masuk.aspx")
        getBookData()
        getAllComment(Request.QueryString("id"))

    End Sub

    Protected Sub btnDownload_Click(sender As Object, e As EventArgs)
        ID = Request.QueryString("id").ToString()
        UpdateInfoDownload(ID)

        Response.Buffer = True
        Response.Charset = ""
        Response.Cache.SetCacheability(HttpCacheability.NoCache)
        Response.ContentType = ContentType
        Response.AddHeader("Cache-Control", "no-cache, must-revalidate, post-check=0, pre-check=0")
        Response.AddHeader("Pragma", "no-cache")
        Response.AddHeader("Content-Description", "File Download")
        Response.AddHeader("Content-Type", "application/force-download")
        Response.AddHeader("Content-Transfer-Encoding", "binary\n")
        'Response.AddHeader("content-disposition", "attachment;filename=" + Buku.nama_buku + ".docx")
        Response.AppendHeader("Content-Disposition", "attachment; filename=" + Buku.nama_buku + ".pdf")
        Response.BinaryWrite(Buku.file_buku)
        Response.Flush()
        Response.End()

    End Sub
    Sub UpdateInfoDownload(id As String)
        Using cmd As New SqlCommand("UPDATE BukuModul SET jumlah_download=jumlah_download+1 WHERE id_buku=@id")
            cmd.Connection = sqlConnection
            cmd.Parameters.AddWithValue("@id", id)
            sqlConnection.Open()
            cmd.ExecuteNonQuery()
            sqlConnection.Close()
        End Using
    End Sub
    Sub AddComment(idAkun As String, idBuku As String, komentar As String, waktu As DateTime)
        Dim query As String = "Insert into Komentar values(@id_akun,@id_buku,@komentar,@waktu_komentar)"
        Using cmd As New SqlCommand(query)
            cmd.Connection = sqlConnection
            cmd.Parameters.Add("@id_akun", SqlDbType.VarChar).Value = idAkun
            cmd.Parameters.Add("@id_Buku", SqlDbType.VarChar).Value = idBuku
            cmd.Parameters.Add("@komentar", SqlDbType.VarChar).Value = komentar
            cmd.Parameters.Add("@waktu_komentar", SqlDbType.DateTime).Value = waktu
            sqlConnection.Open()
            cmd.ExecuteNonQuery()
            sqlConnection.Close()
        End Using

    End Sub

    Protected Sub kirimKomentar_Click(sender As Object, e As EventArgs)
        Dim idBuku As String = Request.QueryString("id")
        Dim idAkun As String = Session("id")
        Dim komentar As String = txtKomentar.Text
        Dim waktu As DateTime = DateTime.Now
        AddComment(idAkun, idBuku, komentar, waktu)
        Response.Redirect("detailBuku.aspx?id=" + idBuku)
    End Sub

    Sub getBookData()
        sqlConnection.Open()
        Dim comm As New SqlCommand("select * from BukuModul where id_buku=@id", sqlConnection)
        comm.Parameters.AddWithValue("@Id", Request.QueryString("id"))
        Dim reader As SqlDataReader = comm.ExecuteReader
        'writing data that has been read from db
        While reader.Read
            'special case for data with varbinary type, we need to convert it to Byte() remember that Byte!=Byte() in vb so we cannot use getByte to get this kind of data from database directly
            Dim data4 As Byte() = reader(4)
            Dim data5 As Byte() = reader(5)
            Buku = New BukuModul(reader.GetInt32(0), reader.GetString(1), reader.GetString(2), reader.GetDateTime(3), data4, data5,
                                       reader.GetInt32(6), reader.GetString(7), reader.GetInt32(8), reader.GetInt32(9))
        End While
        reader.Close()
        sqlConnection.Close()
    End Sub

    Sub getAllComment(idBuku As String)
        Dim query As String = "select k.id_komentar,k.id_akun,k.id_buku,k.komentar,k.waktu_komentar, a.username 
                                from BukuModul b ,Akun a, Komentar k 
                                where b.id_buku=k.id_buku and a.id_akun=k.id_akun and b.id_buku=" + idBuku
        sqlConnection.Open()
        Dim comm As New SqlCommand(query, sqlConnection)
        Dim reader As SqlDataReader = comm.ExecuteReader
        'writing data that has been read from db
        If reader.HasRows Then
            While reader.Read
                Comments.Add(New Komentar(reader.GetInt32(0), reader.GetInt32(1), reader.GetInt32(2), reader.GetString(3),
                                            reader.GetDateTime(4), reader.GetString(5)))
            End While
        End If
        reader.Close()
        sqlConnection.Close()
    End Sub

End Class