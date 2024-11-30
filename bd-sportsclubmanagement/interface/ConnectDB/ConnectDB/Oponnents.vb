Imports System.Data.SqlClient

Public Class Oponnents
    Dim connection As New SqlConnection("Data Source=p4g8;Initial Catalog=GESTAO_DESPORTIVA;Integrated Security = True")
    Private Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim add
        add = AddOp
        add.show()
    End Sub

    Private Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Dim add1
        add1 = DeleteOp
        add1.show()
    End Sub

    Private Sub Button3_Click(sender As Object, e As EventArgs) Handles Button3.Click
        Dim params(0) As SqlParameter
        params(0) = New SqlParameter("@arg", SqlDbType.VarChar)
        params(0).Value = "name"
        Dim command As New SqlCommand()
        command.Connection = connection
        command.CommandType = CommandType.StoredProcedure
        command.CommandText = "MY_TEAM.ListOponents_Query"
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
        ListBox1.DisplayMember = "oteam_name"
        ListBox2.DisplayMember = "market_v"
        ListBox3.DisplayMember = "oteam_id"

    End Sub

    Private Sub Button4_Click(sender As Object, e As EventArgs) Handles Button4.Click
        Dim params(0) As SqlParameter
        params(0) = New SqlParameter("@arg", SqlDbType.VarChar)
        params(0).Value = "market"
        Dim command As New SqlCommand()
        command.Connection = connection
        command.CommandType = CommandType.StoredProcedure
        command.CommandText = "MY_TEAM.ListOponents_Query"
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
        ListBox1.DisplayMember = "oteam_name"
        ListBox2.DisplayMember = "market_v"
        ListBox3.DisplayMember = "oteam_id"
    End Sub
End Class