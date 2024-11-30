Imports System.Data.SqlClient

Public Class AddMatch
    Dim connection As New SqlConnection("Data Source=p4g8;Initial Catalog=GESTAO_DESPORTIVA;Integrated Security = True")
    Private Sub supp_add_Click(sender As Object, e As EventArgs) Handles supp_add.Click
        Dim params(11) As SqlParameter
        params(0) = New SqlParameter("@arg", SqlDbType.VarChar)
        params(0).Value = "insert"

        params(1) = New SqlParameter("@delValue", SqlDbType.Int)
        params(1).Value = vbNull

        params(2) = New SqlParameter("@mvp_id", SqlDbType.Int)
        params(2).Value = TextBox1.Text

        params(3) = New SqlParameter("@matchday_no", SqlDbType.Int)
        params(3).Value = TextBox2.Text

        params(4) = New SqlParameter("@matchday_id", SqlDbType.Int)
        params(4).Value = TextBox3.Text

        params(5) = New SqlParameter("@matchday_date", SqlDbType.Int)
        params(5).Value = TextBox4.Text

        params(6) = New SqlParameter("@scored", SqlDbType.Int)
        params(6).Value = TextBox5.Text

        params(7) = New SqlParameter("@conceded", SqlDbType.Int)
        params(7).Value = TextBox6.Text

        params(8) = New SqlParameter("@season_id", SqlDbType.Int)
        params(8).Value = TextBox7.Text

        params(9) = New SqlParameter("@oteam_id", SqlDbType.Int)
        params(9).Value = TextBox8.Text

        params(10) = New SqlParameter("@infra_id", SqlDbType.Int)
        params(10).Value = TextBox9.Text

        params(11) = New SqlParameter("@player_id", SqlDbType.Int)
        params(11).Value = TextBox10.Text
        Dim command As New SqlCommand()
        command.Connection = connection
        command.CommandType = CommandType.StoredProcedure
        command.CommandText = "MY_TEAM.Matchday_StoredProcedure"
        command.Parameters.AddRange(params)

        connection.Open()
        command.ExecuteNonQuery()
        connection.Close()
        Me.Close()
    End Sub
End Class