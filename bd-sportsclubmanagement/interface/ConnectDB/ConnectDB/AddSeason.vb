Imports System.Data.SqlClient

Public Class AddSeason
    Dim connection As New SqlConnection("Data Source=p4g8;Initial Catalog=GESTAO_DESPORTIVA;Integrated Security = True")
    Private Sub supp_add_Click(sender As Object, e As EventArgs) Handles supp_add.Click
        Dim params(8) As SqlParameter
        params(0) = New SqlParameter("@operation", SqlDbType.VarChar)
        params(0).Value = "insert"

        params(1) = New SqlParameter("@delValue", SqlDbType.Int)
        params(1).Value = vbNull

        params(2) = New SqlParameter("@sport_type", SqlDbType.VarChar)
        params(2).Value = TextBox1.Text

        params(3) = New SqlParameter("season_year", SqlDbType.Int)
        params(3).Value = TextBox2.Text

        params(4) = New SqlParameter("@n_of_matches", SqlDbType.Int)
        params(4).Value = TextBox3.Text

        params(5) = New SqlParameter("@total_scored", SqlDbType.Int)
        params(5).Value = TextBox4.Text

        params(6) = New SqlParameter("@total_conceded", SqlDbType.Int)
        params(6).Value = TextBox5.Text

        params(7) = New SqlParameter("@season_mvp", SqlDbType.Int)
        params(7).Value = TextBox6.Text

        params(8) = New SqlParameter("@season_id", SqlDbType.Int)
        params(8).Value = TextBox7.Text

        Dim command As New SqlCommand()
        command.Connection = connection
        command.CommandType = CommandType.StoredProcedure
        command.CommandText = "MY_TEAM.TeamSeason_StoredProcedure"
        command.Parameters.AddRange(params)

        connection.Open()
        command.ExecuteNonQuery()
        connection.Close()
        Me.Close()
    End Sub

    Private Sub TextBox4_TextChanged(sender As Object, e As EventArgs) Handles TextBox4.TextChanged

    End Sub

    Private Sub TextBox3_TextChanged(sender As Object, e As EventArgs) Handles TextBox3.TextChanged

    End Sub

    Private Sub TextBox2_TextChanged(sender As Object, e As EventArgs) Handles TextBox2.TextChanged

    End Sub

    Private Sub TextBox1_TextChanged(sender As Object, e As EventArgs) Handles TextBox1.TextChanged

    End Sub

    Private Sub Label7_Click(sender As Object, e As EventArgs) Handles Label7.Click

    End Sub

    Private Sub Label6_Click(sender As Object, e As EventArgs) Handles Label6.Click

    End Sub

    Private Sub Label5_Click(sender As Object, e As EventArgs) Handles Label5.Click

    End Sub

    Private Sub Label4_Click(sender As Object, e As EventArgs) Handles Label4.Click

    End Sub

    Private Sub Label3_Click(sender As Object, e As EventArgs) Handles Label3.Click

    End Sub

    Private Sub Label2_Click(sender As Object, e As EventArgs) Handles Label2.Click

    End Sub

    Private Sub Label1_Click(sender As Object, e As EventArgs) Handles Label1.Click

    End Sub
End Class