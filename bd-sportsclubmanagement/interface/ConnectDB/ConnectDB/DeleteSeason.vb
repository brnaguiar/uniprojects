Imports System.Data.SqlClient

Public Class DeleteSeason
    Dim connection As New SqlConnection("Data Source=p4g8;Initial Catalog=GESTAO_DESPORTIVA;Integrated Security = True")
    Private Sub delete_button_Click(sender As Object, e As EventArgs) Handles delete_button.Click
        Dim params(1) As SqlParameter
        params(0) = New SqlParameter("@operation", SqlDbType.VarChar)
        params(0).Value = "delete"
        params(1) = New SqlParameter("delValue", SqlDbType.Int)
        params(1).Value = Integer.Parse(deleteid.Text)
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
End Class