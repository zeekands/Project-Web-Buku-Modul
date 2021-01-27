Imports System.Data.SqlClient
Imports System.Data.DataSet
Imports System.Data

Public Class ConnectionDB
    Function DbConnect() As SqlConnection
        Dim connectionString As String = "Data Source=ZEEKANDS\SQLEXPRESS;Initial Catalog=DB_EbookModule;Integrated Security=True"
        Dim conn As New SqlConnection(connectionString)

        Return conn
    End Function

    Function GetData(query As String, conn As SqlConnection) As Integer
        Dim result As Integer
        Dim comm As New SqlCommand(query, conn)
        conn.Open()
        Dim reader As SqlDataReader = comm.ExecuteReader
        If reader.HasRows Then
            While reader.Read
                result = reader.getInt32(0)
            End While
        End If
        reader.Close()
        conn.Close()
        Return result
    End Function

    Public Function GetDataSet(query As String, conn As SqlConnection) As DataSet
        Dim result As DataSet = New DataSet()
        conn.Open()
        Dim adapter As SqlDataAdapter

        adapter = New SqlDataAdapter(query, conn)
        adapter.Fill(result)
        conn.Close()
        Return result
    End Function
End Class
