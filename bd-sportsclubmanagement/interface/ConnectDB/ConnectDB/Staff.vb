Imports System.Data.SqlClient

Public Class Staff
    Dim connection As New SqlConnection("Data Source=p4g8;Initial Catalog=GESTAO_DESPORTIVA;Integrated Security = True")
    Private Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim add
        add = AddStaff
        add.show()
    End Sub

    Private Sub Button3_Click(sender As Object, e As EventArgs) Handles Button3.Click
        Dim params(0) As SqlParameter
        params(0) = New SqlParameter("@arg", SqlDbType.VarChar)
        params(0).Value = "name"
        Dim command As New SqlCommand()
        command.Connection = connection
        command.CommandType = CommandType.StoredProcedure
        command.CommandText = "MY_TEAM.ListStaff_Query"
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
        ListBox1.DisplayMember = "fnome"
        ListBox2.DisplayMember = "lname"
        ListBox3.DisplayMember = "staff_role"
        ListBox4.DisplayMember = "Internal_ID"
    End Sub

    Private Sub Button4_Click(sender As Object, e As EventArgs) Handles Button4.Click
        Dim params(0) As SqlParameter
        params(0) = New SqlParameter("@arg", SqlDbType.VarChar)
        params(0).Value = "role"
        Dim command As New SqlCommand()
        command.Connection = connection
        command.CommandType = CommandType.StoredProcedure
        command.CommandText = "MY_TEAM.ListStaff_Query"
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
        ListBox1.DisplayMember = "fnome"
        ListBox2.DisplayMember = "lname"
        ListBox3.DisplayMember = "staff_role"
        ListBox4.DisplayMember = "Internal_ID"
    End Sub

    Private Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Dim add1
        add1 = DeleteMatch
        add1.show()
    End Sub

    Private Sub ListBox2_SelectedIndexChanged(sender As Object, e As EventArgs) Handles ListBox2.SelectedIndexChanged

    End Sub

    Private Sub ListBox1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles ListBox1.SelectedIndexChanged

    End Sub

    Private Sub Label4_Click(sender As Object, e As EventArgs) Handles Label4.Click

    End Sub

    Private Sub Label3_Click(sender As Object, e As EventArgs) Handles Label3.Click

    End Sub

    Private Sub Label2_Click(sender As Object, e As EventArgs) Handles Label2.Click

    End Sub

    Private Sub Label1_Click(sender As Object, e As EventArgs) Handles Label1.Click

    End Sub

    Private Sub ListBox3_SelectedIndexChanged(sender As Object, e As EventArgs) Handles ListBox3.SelectedIndexChanged

    End Sub
End Class