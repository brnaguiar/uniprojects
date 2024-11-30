Imports System.Data.SqlClient


Public Class PlayerForm
    Dim connection As New SqlConnection("Data Source=p4g8;Initial Catalog=GESTAO_DESPORTIVA;Integrated Security = True")
    Private Sub add_player_Click(sender As Object, e As EventArgs) Handles add_player.Click
        Dim add
        add = AddPlayer
        add.show()
    End Sub

    Private Sub name_list_Click(sender As Object, e As EventArgs) Handles name_list.Click
        Dim params(0) As SqlParameter
        params(0) = New SqlParameter("@arg", SqlDbType.VarChar)
        params(0).Value = "name"
        Dim command As New SqlCommand()
        command.Connection = connection
        command.CommandType = CommandType.StoredProcedure
        command.CommandText = "MY_TEAM.ListPlayersByX_Query"
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
        ListBox3.DisplayMember = "Internal_ID"
        ListBox4.DisplayMember = "Salary"


    End Sub

    Private Sub delete_player_Click(sender As Object, e As EventArgs) Handles delete_player.Click
        Dim add
        add = DeletePlayer
        add.show()
    End Sub

    Private Sub salary_list_Click(sender As Object, e As EventArgs) Handles salary_list.Click


        Dim params(0) As SqlParameter
        params(0) = New SqlParameter("@arg", SqlDbType.VarChar)
        params(0).Value = "salary"
        Dim command As New SqlCommand()
        command.Connection = connection
        command.CommandType = CommandType.StoredProcedure
        command.CommandText = "MY_TEAM.ListPlayersByX_Query"
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
        ListBox3.DisplayMember = "Internal_ID"
        ListBox4.DisplayMember = "Salary"

    End Sub
End Class