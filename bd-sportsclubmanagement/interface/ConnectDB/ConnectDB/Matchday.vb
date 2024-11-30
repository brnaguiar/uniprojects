Imports System.Data.SqlClient

Public Class Matchday
    Dim connection As New SqlConnection("Data Source=p4g8;Initial Catalog=GESTAO_DESPORTIVA;Integrated Security = True")
    Private Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim add
        add = AddMatch
        add.show()
    End Sub

    Private Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Dim add1
        add1 = DeleteMatch
        add1.show()
    End Sub

    Private Sub Button3_Click(sender As Object, e As EventArgs) Handles Button3.Click
        Dim params(0) As SqlParameter
        params(0) = New SqlParameter("@arg", SqlDbType.VarChar)
        params(0).Value = "date"
        Dim command As New SqlCommand()
        command.Connection = connection
        command.CommandType = CommandType.StoredProcedure
        command.CommandText = "MY_TEAM.ListMatchesPlayed_Query"
        command.Parameters.AddRange(params)

        connection.Open()
        command.ExecuteNonQuery()
        connection.Close()
        Dim adapter As New SqlDataAdapter()
        Dim table As New DataTable()
        adapter.SelectCommand = command
        adapter.Fill(table)
        ListBox1.DataSource = table
        ListBox2.DataSource = table
        ListBox3.DataSource = table
        ListBox4.DataSource = table
        ListBox5.DataSource = table
        ListBox1.DisplayMember = "matchday_no"
        ListBox2.DisplayMember = "matchday_date"
        ListBox3.DisplayMember = "scored"
        ListBox4.DisplayMember = "conceded"
        ListBox5.DisplayMember = "matchday_id"
    End Sub

    Private Sub Button4_Click(sender As Object, e As EventArgs) Handles Button4.Click
        Dim params(0) As SqlParameter
        params(0) = New SqlParameter("@arg", SqlDbType.VarChar)
        params(0).Value = "nmatch"
        Dim command As New SqlCommand()
        command.Connection = connection
        command.CommandType = CommandType.StoredProcedure
        command.CommandText = "MY_TEAM.ListMatchesPlayed_Query"
        command.Parameters.AddRange(params)

        connection.Open()
        command.ExecuteNonQuery()
        connection.Close()
        Dim adapter As New SqlDataAdapter()
        Dim table As New DataTable()
        adapter.SelectCommand = command
        adapter.Fill(table)
        ListBox1.DataSource = table
        ListBox2.DataSource = table
        ListBox3.DataSource = table
        ListBox4.DataSource = table
        ListBox5.DataSource = table
        ListBox1.DisplayMember = "matchday_no"
        ListBox2.DisplayMember = "matchday_date"
        ListBox3.DisplayMember = "scored"
        ListBox4.DisplayMember = "conceded"
        ListBox5.DisplayMember = "matchday_id"
    End Sub
End Class