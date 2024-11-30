Imports System.Data.SqlClient


Public Class AddPlayer

    Dim connection As New SqlConnection("Data Source=p4g8;Initial Catalog=GESTAO_DESPORTIVA;Integrated Security = True")


    Private Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim params(15) As SqlParameter
        params(0) = New SqlParameter("@fname", SqlDbType.VarChar)
        params(0).Value = TextBox1.Text

        params(1) = New SqlParameter("@lname", SqlDbType.VarChar)
        params(1).Value = TextBox2.Text

        params(2) = New SqlParameter("@nationality", SqlDbType.VarChar)
        params(2).Value = TextBox3.Text

        params(3) = New SqlParameter("@age", SqlDbType.Int)
        params(3).Value = TextBox4.Text

        params(4) = New SqlParameter("@citizen_card", SqlDbType.Int)
        params(4).Value = TextBox5.Text

        params(5) = New SqlParameter("@gender", SqlDbType.VarChar)
        params(5).Value = TextBox6.Text

        params(6) = New SqlParameter("@internal_id", SqlDbType.Int)
        params(6).Value = TextBox7.Text

        params(7) = New SqlParameter("@internal_role", SqlDbType.VarChar)
        params(7).Value = TextBox8.Text

        params(8) = New SqlParameter("@salary", SqlDbType.Int)
        params(8).Value = TextBox9.Text

        params(9) = New SqlParameter("@height", SqlDbType.Int)
        params(9).Value = TextBox10.Text

        params(10) = New SqlParameter("@position", SqlDbType.VarChar)
        params(10).Value = TextBox11.Text

        params(11) = New SqlParameter("@sport", SqlDbType.VarChar)
        params(11).Value = TextBox12.Text

        params(12) = New SqlParameter("@shirt_number", SqlDbType.Int)
        params(12).Value = TextBox13.Text

        params(13) = New SqlParameter("@agent", SqlDbType.VarChar)
        params(13).Value = TextBox14.Text

        params(14) = New SqlParameter("@market_value", SqlDbType.Int)
        params(14).Value = TextBox15.Text

        params(15) = New SqlParameter("@team_status", SqlDbType.VarChar)
        params(15).Value = TextBox16.Text

        Dim command As New SqlCommand()
        command.Connection = connection
        command.CommandType = CommandType.StoredProcedure
        command.CommandText = "MY_TEAM.Player_StoredProcedure"
        command.Parameters.AddRange(params)

        connection.Open()
        command.ExecuteNonQuery()
        connection.Close()
        Me.Close()



    End Sub

End Class
