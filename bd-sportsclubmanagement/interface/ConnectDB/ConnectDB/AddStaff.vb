Imports System.Data.SqlClient

Public Class AddStaff
    Dim connection As New SqlConnection("Data Source=p4g8;Initial Catalog=GESTAO_DESPORTIVA;Integrated Security = True")
    Private Sub supp_add_Click(sender As Object, e As EventArgs) Handles supp_add.Click
        Dim params(11) As SqlParameter
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

        params(8) = New SqlParameter("@internal_id", SqlDbType.Int)
        params(8).Value = TextBox7.Text

        params(9) = New SqlParameter("@internal_role", SqlDbType.VarChar)
        params(9).Value = TextBox8.Text

        params(10) = New SqlParameter("@salary", SqlDbType.Int)
        params(10).Value = TextBox9.Text

        params(11) = New SqlParameter("@staff_role", SqlDbType.VarChar)
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

    Private Sub TextBox9_TextChanged(sender As Object, e As EventArgs) Handles TextBox9.TextChanged

    End Sub

    Private Sub Label10_Click(sender As Object, e As EventArgs) Handles Label10.Click

    End Sub

    Private Sub Label9_Click(sender As Object, e As EventArgs) Handles Label9.Click

    End Sub

    Private Sub TextBox10_TextChanged(sender As Object, e As EventArgs) Handles TextBox10.TextChanged

    End Sub

    Private Sub TextBox8_TextChanged(sender As Object, e As EventArgs) Handles TextBox8.TextChanged

    End Sub

    Private Sub TextBox7_TextChanged(sender As Object, e As EventArgs) Handles TextBox7.TextChanged

    End Sub

    Private Sub TextBox6_TextChanged(sender As Object, e As EventArgs) Handles TextBox6.TextChanged

    End Sub

    Private Sub TextBox5_TextChanged(sender As Object, e As EventArgs) Handles TextBox5.TextChanged

    End Sub

    Private Sub TextBox4_TextChanged(sender As Object, e As EventArgs) Handles TextBox4.TextChanged

    End Sub

    Private Sub TextBox3_TextChanged(sender As Object, e As EventArgs) Handles TextBox3.TextChanged

    End Sub

    Private Sub TextBox2_TextChanged(sender As Object, e As EventArgs) Handles TextBox2.TextChanged

    End Sub

    Private Sub TextBox1_TextChanged(sender As Object, e As EventArgs) Handles TextBox1.TextChanged

    End Sub

    Private Sub Label8_Click(sender As Object, e As EventArgs) Handles Label8.Click

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