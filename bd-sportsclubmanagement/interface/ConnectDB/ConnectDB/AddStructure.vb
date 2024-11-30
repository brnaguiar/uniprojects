Imports System.Data.SqlClient


Public Class AddStructure
    Dim connection As New SqlConnection("Data Source=p4g8;Initial Catalog=GESTAO_DESPORTIVA;Integrated Security = True")
    Private Sub supp_add_Click(sender As Object, e As EventArgs) Handles supp_add.Click
        Dim params(9) As SqlParameter
        params(0) = New SqlParameter("@operation", SqlDbType.VarChar)
        params(0).Value = "insert"

        params(1) = New SqlParameter("@delValue", SqlDbType.Int)
        params(1).Value = vbNull

        params(2) = New SqlParameter("@iname", SqlDbType.VarChar)
        params(2).Value = TextBox1.Text

        params(3) = New SqlParameter("@inau_date", SqlDbType.Int)
        params(3).Value = TextBox2.Text

        params(4) = New SqlParameter("@c_cost", SqlDbType.Int)
        params(4).Value = TextBox3.Text

        params(5) = New SqlParameter("@m_cost", SqlDbType.Int)
        params(5).Value = TextBox4.Text

        params(6) = New SqlParameter("@infra_id", SqlDbType.Int)
        params(6).Value = TextBox5.Text

        params(7) = New SqlParameter("@capacity", SqlDbType.Int)
        params(7).Value = TextBox6.Text

        params(8) = New SqlParameter("@sf_type", SqlDbType.VarChar)
        params(8).Value = TextBox7.Text

        params(9) = New SqlParameter("@surface", SqlDbType.VarChar)
        params(9).Value = TextBox8.Text
        Dim command As New SqlCommand()
        command.Connection = connection
        command.CommandType = CommandType.StoredProcedure
        command.CommandText = "MY_TEAM.SportFacility_StoredProcedure"
        command.Parameters.AddRange(params)

        connection.Open()
        command.ExecuteNonQuery()
        connection.Close()
        Me.Close()
    End Sub
End Class