Imports System.Data.SqlClient


Public Class Main
    Dim connection As New SqlConnection("Data Source=p4g8;Initial Catalog=GESTAO_DESPORTIVA;Integrated Security = True")




    Private Sub players_form_Click(sender As Object, e As EventArgs) Handles players_form.Click
        Dim add
        add = PlayerForm
        add.show()
    End Sub

    Private Sub sup_form_Click(sender As Object, e As EventArgs) Handles sup_form.Click
        Dim add1
        add1 = Supporter
        add1.show()
    End Sub

    Private Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Dim add2
        add2 = Staff
        add2.show()
    End Sub

    Private Sub Button3_Click(sender As Object, e As EventArgs) Handles Button3.Click
        Dim add3
        add3 = Seasons
        add3.show()
    End Sub

    Private Sub Button4_Click(sender As Object, e As EventArgs) Handles Button4.Click
        Dim add4
        add4 = Matchday
        add4.show()
    End Sub

    Private Sub Button5_Click(sender As Object, e As EventArgs) Handles Button5.Click
        Dim add5
        add5 = Oponnents
        add5.show()
    End Sub

    Private Sub Button6_Click(sender As Object, e As EventArgs) Handles Button6.Click
        Dim add6
        add6 = Infrastructure
        add6.show()
    End Sub
End Class