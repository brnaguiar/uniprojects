Imports System.Data.SqlClient

Public Class AddOp
    Dim connection As New SqlConnection("Data Source=p4g8;Initial Catalog=GESTAO_DESPORTIVA;Integrated Security = True")
    Private Sub supp_add_Click(sender As Object, e As EventArgs) Handles supp_add.Click
        Dim params(4) As SqlParameter
        params(0) = New SqlParameter("@arg", SqlDbType.VarChar)
        params(0).Value = "insert"

        params(1) = New SqlParameter("@delValue", SqlDbType.Int)
        params(1).Value = vbNull

        params(2) = New SqlParameter("@market_v", SqlDbType.Int)
        params(2).Value = TextBox1.Text

        params(3) = New SqlParameter("@oteam_id", SqlDbType.Int)
        params(3).Value = TextBox2.Text

        params(4) = New SqlParameter("@oteam_name", SqlDbType.VarChar)
        params(4).Value = TextBox3.Text

        Dim command As New SqlCommand()
        command.Connection = connection
        command.CommandType = CommandType.StoredProcedure
        command.CommandText = "MY_TEAM.Oponents_StoredProcedure"
        command.Parameters.AddRange(params)

        connection.Open()
        command.ExecuteNonQuery()
        connection.Close()
        Me.Close()

    End Sub
End Class