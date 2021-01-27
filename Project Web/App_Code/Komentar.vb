Public Class Komentar


    Public Property idKomentar As Integer
    Public Property idAkun As Integer
    Public Property idBuku As Integer
    Public Property nama As String
    Public Property komentar As String
    Public Property waktuKomentar As DateTime

    Public Sub New(idKomentar As Integer, idAkun As Integer, idBuku As Integer, komentar As String, waktuKomentar As Date, nama As String)
        Me.idKomentar = idKomentar
        Me.idAkun = idAkun
        Me.idBuku = idBuku
        Me.komentar = komentar
        Me.waktuKomentar = waktuKomentar
        Me.nama = nama
    End Sub
End Class
