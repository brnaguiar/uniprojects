Imports System.Data.SqlClient

Public Class AddSupp
    Dim connection As New SqlConnection("Data Source=p4g8;Initial Catalog=GESTAO_DESPORTIVA;Integrated Security = True")
    Private Sub supp_add_Click(sender As Object, e As EventArgs) Handles supp_add.Click
        Dim params(9) As SqlParameter
        params(0) = New SqlParameter("@operation", SqlDbType.VarChar)
        params(0).Value = "insert"

        params(1) = New SqlParameter("@delValue", SqlDbType.Int)
        params(1).Value = vbNull

        params(2) = New SqlParameter("@fname", SqlDbType.VarChar)
        params(2).Value = TextBox1.Text

        params(3) = New SqlParameter("@lname", SqlDbType.VarChar)
        params(3).Value = TextBox2.Text

        params(4) = New SqlParameter("@nationality", SqlDbType.VarChar)
        params(4).Value = TextBox3.Text

        params(5) = New SqlParameter("@age", SqlDbType.TinyInt)
        params(5).Value = TextBox4.Text

        params(6) = New SqlParameter("@citizen_card", SqlDbType.Int)
        params(6).Value = TextBox5.Text

        params(7) = New SqlParameter("@gender", SqlDbType.VarChar)
        params(7).Value = TextBox6.Text

        params(8) = New SqlParameter("@supporter_id", SqlDbType.Int)
        params(8).Value = TextBox7.Text

        params(9) = New SqlParameter("@reserved_seat", SqlDbType.Int)
        params(9).Value = TextBox8.Text

        Dim command As New SqlCommand()
        command.Connection = connection
        command.CommandType = CommandType.StoredProcedure
        command.CommandText = "MY_TEAM.Supporter_StoredProcedure"
        command.Parameters.AddRange(params)

        connection.Open()
        command.ExecuteNonQuery()
        connection.Close()
        Me.Close()






    End Sub
End Class