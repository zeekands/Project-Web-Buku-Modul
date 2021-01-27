Imports System.Data.SqlClient

Public Class masuk
    Inherits System.Web.UI.Page

    ReadOnly sqlConnection As SqlConnection = New ConnectionDB().DbConnect
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim email As String = emaill.Text
        Dim pwd As String = password.Text
        Dim auth As Boolean = False
        Dim isAdmin As Boolean = False
        sqlConnection.Open()
        Dim comm As New SqlCommand("select * from Akun where email='" + email + "' and password='" + pwd + "'", sqlConnection)
        Dim reader As SqlDataReader = comm.ExecuteReader
        If reader.HasRows Then
            auth = True
            While reader.Read
                Session("id") = reader.GetInt32(0)
                Session("nama") = reader.GetString(1)
                Session("email") = reader.GetString(2)
                Session("password") = reader.GetString(3)
                Session("jenjang") = reader.GetString(4)
            End While
        End If
        reader.Close()
        sqlConnection.Close()

        If Session("nama") = "admin" Then
            isAdmin = True
            Session("namaAdmin") = Session("nama")
        End If

        If auth And isAdmin Then
            Response.Redirect("../Admin/index.aspx")
        ElseIf auth And isAdmin = False Then
            Response.Redirect("index.aspx")
        Else
            Response.Redirect("masuk.aspx")
        End If
    End Sub
End Class