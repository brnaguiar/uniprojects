<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class Supporter
    Inherits System.Windows.Forms.Form

    'Descartar substituições de formulário para limpar a lista de componentes.
    <System.Diagnostics.DebuggerNonUserCode()> _
    Protected Overrides Sub Dispose(ByVal disposing As Boolean)
        Try
            If disposing AndAlso components IsNot Nothing Then
                components.Dispose()
            End If
        Finally
            MyBase.Dispose(disposing)
        End Try
    End Sub

    'Exigido pelo Windows Form Designer
    Private components As System.ComponentModel.IContainer

    'OBSERVAÇÃO: o procedimento a seguir é exigido pelo Windows Form Designer
    'Pode ser modificado usando o Windows Form Designer.  
    'Não o modifique usando o editor de códigos.
    <System.Diagnostics.DebuggerStepThrough()> _
    Private Sub InitializeComponent()
        Me.add_supp = New System.Windows.Forms.Button()
        Me.del_supp = New System.Windows.Forms.Button()
        Me.list_name = New System.Windows.Forms.Button()
        Me.list_seat = New System.Windows.Forms.Button()
        Me.sup_label = New System.Windows.Forms.Label()
        Me.ListBox1 = New System.Windows.Forms.ListBox()
        Me.ListBox2 = New System.Windows.Forms.ListBox()
        Me.ListBox3 = New System.Windows.Forms.ListBox()
        Me.fname_title = New System.Windows.Forms.Label()
        Me.lname_title = New System.Windows.Forms.Label()
        Me.seat_title = New System.Windows.Forms.Label()
        Me.id_title = New System.Windows.Forms.Label()
        Me.ListBox4 = New System.Windows.Forms.ListBox()
        Me.SuspendLayout()
        '
        'add_supp
        '
        Me.add_supp.Location = New System.Drawing.Point(23, 32)
        Me.add_supp.Name = "add_supp"
        Me.add_supp.Size = New System.Drawing.Size(75, 23)
        Me.add_supp.TabIndex = 0
        Me.add_supp.Text = "Add Supp"
        Me.add_supp.UseVisualStyleBackColor = True
        '
        'del_supp
        '
        Me.del_supp.Location = New System.Drawing.Point(23, 72)
        Me.del_supp.Name = "del_supp"
        Me.del_supp.Size = New System.Drawing.Size(75, 23)
        Me.del_supp.TabIndex = 1
        Me.del_supp.Text = "Del Supp"
        Me.del_supp.UseVisualStyleBackColor = True
        '
        'list_name
        '
        Me.list_name.Location = New System.Drawing.Point(116, 226)
        Me.list_name.Name = "list_name"
        Me.list_name.Size = New System.Drawing.Size(75, 23)
        Me.list_name.TabIndex = 2
        Me.list_name.Text = "Name"
        Me.list_name.UseVisualStyleBackColor = True
        '
        'list_seat
        '
        Me.list_seat.Location = New System.Drawing.Point(197, 226)
        Me.list_seat.Name = "list_seat"
        Me.list_seat.Size = New System.Drawing.Size(75, 23)
        Me.list_seat.TabIndex = 3
        Me.list_seat.Text = "Seat"
        Me.list_seat.UseVisualStyleBackColor = True
        '
        'sup_label
        '
        Me.sup_label.AutoSize = True
        Me.sup_label.Location = New System.Drawing.Point(20, 231)
        Me.sup_label.Name = "sup_label"
        Me.sup_label.Size = New System.Drawing.Size(95, 13)
        Me.sup_label.TabIndex = 4
        Me.sup_label.Text = "List Supporters By:"
        '
        'ListBox1
        '
        Me.ListBox1.FormattingEnabled = True
        Me.ListBox1.Location = New System.Drawing.Point(116, 32)
        Me.ListBox1.Name = "ListBox1"
        Me.ListBox1.Size = New System.Drawing.Size(124, 173)
        Me.ListBox1.TabIndex = 5
        '
        'ListBox2
        '
        Me.ListBox2.FormattingEnabled = True
        Me.ListBox2.Location = New System.Drawing.Point(267, 32)
        Me.ListBox2.Name = "ListBox2"
        Me.ListBox2.Size = New System.Drawing.Size(124, 173)
        Me.ListBox2.TabIndex = 6
        '
        'ListBox3
        '
        Me.ListBox3.FormattingEnabled = True
        Me.ListBox3.Location = New System.Drawing.Point(418, 32)
        Me.ListBox3.Name = "ListBox3"
        Me.ListBox3.Size = New System.Drawing.Size(124, 173)
        Me.ListBox3.TabIndex = 7
        '
        'fname_title
        '
        Me.fname_title.AutoSize = True
        Me.fname_title.Location = New System.Drawing.Point(116, 13)
        Me.fname_title.Name = "fname_title"
        Me.fname_title.Size = New System.Drawing.Size(60, 13)
        Me.fname_title.TabIndex = 8
        Me.fname_title.Text = "First Name:"
        '
        'lname_title
        '
        Me.lname_title.AutoSize = True
        Me.lname_title.Location = New System.Drawing.Point(267, 13)
        Me.lname_title.Name = "lname_title"
        Me.lname_title.Size = New System.Drawing.Size(61, 13)
        Me.lname_title.TabIndex = 9
        Me.lname_title.Text = "Last Name:"
        '
        'seat_title
        '
        Me.seat_title.AutoSize = True
        Me.seat_title.Location = New System.Drawing.Point(418, 13)
        Me.seat_title.Name = "seat_title"
        Me.seat_title.Size = New System.Drawing.Size(32, 13)
        Me.seat_title.TabIndex = 10
        Me.seat_title.Text = "Seat:"
        '
        'id_title
        '
        Me.id_title.AutoSize = True
        Me.id_title.Location = New System.Drawing.Point(571, 13)
        Me.id_title.Name = "id_title"
        Me.id_title.Size = New System.Drawing.Size(70, 13)
        Me.id_title.TabIndex = 11
        Me.id_title.Text = "Supporter ID:"
        '
        'ListBox4
        '
        Me.ListBox4.FormattingEnabled = True
        Me.ListBox4.Location = New System.Drawing.Point(574, 32)
        Me.ListBox4.Name = "ListBox4"
        Me.ListBox4.Size = New System.Drawing.Size(124, 173)
        Me.ListBox4.TabIndex = 12
        '
        'Supporter
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(727, 261)
        Me.Controls.Add(Me.ListBox4)
        Me.Controls.Add(Me.id_title)
        Me.Controls.Add(Me.seat_title)
        Me.Controls.Add(Me.lname_title)
        Me.Controls.Add(Me.fname_title)
        Me.Controls.Add(Me.ListBox3)
        Me.Controls.Add(Me.ListBox2)
        Me.Controls.Add(Me.ListBox1)
        Me.Controls.Add(Me.sup_label)
        Me.Controls.Add(Me.list_seat)
        Me.Controls.Add(Me.list_name)
        Me.Controls.Add(Me.del_supp)
        Me.Controls.Add(Me.add_supp)
        Me.Name = "Supporter"
        Me.Text = "Supporter"
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub

    Friend WithEvents add_supp As Button
    Friend WithEvents del_supp As Button
    Friend WithEvents list_name As Button
    Friend WithEvents list_seat As Button
    Friend WithEvents sup_label As Label
    Friend WithEvents ListBox1 As ListBox
    Friend WithEvents ListBox2 As ListBox
    Friend WithEvents ListBox3 As ListBox
    Friend WithEvents fname_title As Label
    Friend WithEvents lname_title As Label
    Friend WithEvents seat_title As Label
    Friend WithEvents id_title As Label
    Friend WithEvents ListBox4 As ListBox
End Class
