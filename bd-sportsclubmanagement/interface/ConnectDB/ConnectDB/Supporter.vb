Imports System.Data.SqlClient

Public Class Supporter
    Dim connection As New SqlConnection("Data Source=p4g8;Initial Catalog=GESTAO_DESPORTIVA;Integrated Security = True")
    Private Sub add_supp_Click(sender As Object, e As EventArgs) Handles add_supp.Click
        Dim add
        add = AddSupp
        add.show()
    End Sub

    Private Sub list_name_Click(sender As Object, e As EventArgs) Handles list_name.Click
        Dim params(0) As SqlParameter
        params(0) = New SqlParameter("@arg", SqlDbType.VarChar)
        params(0).Value = "name"
        Dim command As New SqlCommand()
        command.Connection = connection
        command.CommandType = CommandType.StoredProcedure
        command.CommandText = "MY_TEAM.ListSupporters_Query"
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
        ListBox3.DisplayMember = "reserved_seat"
        ListBox4.DisplayMember = "supporter_id"

    End Sub

    Private Sub list_seat_Click(sender As Object, e As EventArgs) Handles list_seat.Click
        Dim params(0) As SqlParameter
        params(0) = New SqlParameter("@arg", SqlDbType.VarChar)
        params(0).Value = "seat"
        Dim command As New SqlCommand()
        command.Connection = connection
        command.CommandType = CommandType.StoredProcedure
        command.CommandText = "MY_TEAM.ListSupporters_Query"
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
        ListBox3.DisplayMember = "reserved_seat"
        ListBox4.DisplayMember = "supporter_id"
    End Sub

    Private Sub del_supp_Click(sender As Object, e As EventArgs) Handles del_supp.Click
        Dim add1
        add1 = DeleteSupp
        add1.show()
    End Sub
End Class