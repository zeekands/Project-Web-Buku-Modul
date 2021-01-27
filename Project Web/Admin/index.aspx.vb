Imports System.Data.SqlClient
Imports System.IO

Public Class index1
    Inherits System.Web.UI.Page
    ReadOnly sqlConnection As SqlConnection = New ConnectionDB().DbConnect
    Public Property jumlahAkun As Integer
    Public Property jumlahBuku As Integer
    Public Property jumlahKomentar As Integer
    Public Property jumlahDownload As Integer

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("namaAdmin") = "" Then Response.Redirect("~/User/masuk.aspx")
        jumlahAkun = New ConnectionDB().GetData("SELECT COUNT(*) FROM Akun", sqlConnection)
        jumlahBuku = New ConnectionDB().GetData("SELECT COUNT(*) FROM BukuModul", sqlConnection)
        jumlahKomentar = New ConnectionDB().GetData("SELECT COUNT(*) FROM Komentar", sqlConnection)
        jumlahDownload = New ConnectionDB().GetData("SELECT SUM(jumlah_download) FROM BukuModul", sqlConnection)
        GridView2.Visible = False
    End Sub

    Protected Sub OnRowDataBound(ByVal sender As Object, ByVal e As GridViewRowEventArgs)
        If e.Row.RowType = DataControlRowType.DataRow Then
            Dim dr As DataRowView = CType(e.Row.DataItem, DataRowView)
            Dim imageUrl As String = "data:image/jpg;base64," & Convert.ToBase64String(CType(dr("cover_buku"), Byte()))
            CType(e.Row.FindControl("Image1"), Image).ImageUrl = imageUrl
        End If
    End Sub

    Protected Sub btnAddData_Click(sender As Object, e As EventArgs)
        Upload()
        Response.Redirect(Request.Url.AbsoluteUri)
    End Sub

    Protected Sub Upload()
        Dim namaBuku As String = txtNama.Text
        Dim deskripsiBuku As String = txtDeskripsi.Text
        Dim penerbitBuku As String = txtPenerbit.Text
        Dim tahunTerbit As Integer = txtTahun.Text
        Dim kelas As Integer = txtKelas.SelectedValue

        Dim fileStreamCover As Stream = coverBuku.PostedFile.InputStream
        Dim fileStreamBuku As Stream = FileBuku.PostedFile.InputStream

        Dim binaryReaderCover As New BinaryReader(fileStreamCover)
        Dim binaryReaderBuku As New BinaryReader(fileStreamBuku)

        Dim bytesCover As Byte() = binaryReaderCover.ReadBytes(fileStreamCover.Length)
        Dim bytesBuku As Byte() = binaryReaderBuku.ReadBytes(fileStreamBuku.Length)

        Dim constString As String = "Data Source=ZEEKANDS\SQLEXPRESS;Initial Catalog=DB_EbookModule;Integrated Security=True"
        Using con As New SqlConnection(constString)
            Dim query As String = "insert into BukuModul values (@nama_buku,@deskripsi_buku,@tanggal_upload,@cover_buku,@file_buku,@jumlah_download,@penerbit_buku,@tahun_terbit,@kelas)"
            Using cmd As New SqlCommand(query)
                cmd.Connection = con
                cmd.Parameters.Add("@nama_buku", SqlDbType.VarChar).Value = namaBuku
                cmd.Parameters.Add("@deskripsi_buku", SqlDbType.VarChar).Value = deskripsiBuku
                cmd.Parameters.Add("@tanggal_upload", SqlDbType.Date).Value = Date.Now
                cmd.Parameters.Add("@cover_buku", SqlDbType.Binary).Value = bytesCover
                cmd.Parameters.Add("@file_buku", SqlDbType.Binary).Value = bytesBuku
                cmd.Parameters.Add("@jumlah_download", SqlDbType.Int).Value = 0
                cmd.Parameters.Add("@penerbit_buku", SqlDbType.VarChar).Value = penerbitBuku
                cmd.Parameters.Add("@tahun_terbit", SqlDbType.Int).Value = tahunTerbit
                cmd.Parameters.Add("@kelas", SqlDbType.Int).Value = kelas

                con.Open()
                cmd.ExecuteNonQuery()
                con.Close()
            End Using
        End Using
    End Sub


    Protected Sub btnCari_Click(sender As Object, e As EventArgs)
        Dim search As String = txtCari.Text
        Dim data As New ConnectionDB()

        GridView1.Visible = False
        GridView2.Visible = True
        GridView2.DataSource = data.GetDataSet("Select * From BukuModul WHERE nama_buku LIKE '%" + search + "%'", sqlConnection)
        GridView2.DataBind()
    End Sub
End Class