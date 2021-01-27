Public Class BukuModul

	Public Property id_buku As Integer
	Public Property nama_buku As String
	Public Property deskripsi_buku As String
	Public Property tanggal_upload As DateTime
	Public Property cover_buku As Byte()
	Public Property file_buku As Byte()
	Public Property jumlah_download As Integer
	Public Property penerbit_buku As String
	Public Property tahun_terbit As Integer
	Public Property kelas As Integer

	Sub New(ByVal id_buku_ As Integer, ByVal nama_buku_ As String, ByVal deskripsi_buku_ As String, ByVal tanggal_upload_ As DateTime, ByVal cover_buku_ As Byte(), ByVal file_buku_ As Byte(), ByVal jumlah_download_ As Integer, ByVal penerbit_buku_ As String, ByVal tahun_terbit_ As Integer, ByVal kelas_ As Integer)
		Me.id_buku = id_buku_
		Me.nama_buku = nama_buku_
		Me.deskripsi_buku = deskripsi_buku_
		Me.tanggal_upload = tanggal_upload_
		Me.cover_buku = cover_buku_
		Me.file_buku = file_buku_
		Me.jumlah_download = jumlah_download_
		Me.penerbit_buku = penerbit_buku_
		Me.tahun_terbit = tahun_terbit_
		Me.kelas = kelas_
	End Sub
	Sub New(ByVal id_buku_ As Integer, ByVal nama_buku_ As String, ByVal deskripsi_buku_ As String, ByVal cover_buku_ As Byte())
		Me.id_buku = id_buku_
		Me.nama_buku = nama_buku_
		Me.deskripsi_buku = deskripsi_buku_
		Me.cover_buku = cover_buku_
	End Sub
End Class
