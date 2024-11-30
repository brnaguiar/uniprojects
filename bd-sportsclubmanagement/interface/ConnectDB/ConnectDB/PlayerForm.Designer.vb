<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class PlayerForm
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
        Me.components = New System.ComponentModel.Container()
        Me.add_player = New System.Windows.Forms.Button()
        Me.name_list = New System.Windows.Forms.Button()
        Me.delete_player = New System.Windows.Forms.Button()
        Me.ListBox1 = New System.Windows.Forms.ListBox()
        Me.ListBox2 = New System.Windows.Forms.ListBox()
        Me.ListBox3 = New System.Windows.Forms.ListBox()
        Me.ContextMenuStrip1 = New System.Windows.Forms.ContextMenuStrip(Me.components)
        Me.fname_title = New System.Windows.Forms.Label()
        Me.lname_title = New System.Windows.Forms.Label()
        Me.id_title = New System.Windows.Forms.Label()
        Me.lplayersby = New System.Windows.Forms.Label()
        Me.salary_list = New System.Windows.Forms.Button()
        Me.ListBox4 = New System.Windows.Forms.ListBox()
        Me.salary_title = New System.Windows.Forms.Label()
        Me.SuspendLayout()
        '
        'add_player
        '
        Me.add_player.Location = New System.Drawing.Point(13, 23)
        Me.add_player.Name = "add_player"
        Me.add_player.Size = New System.Drawing.Size(75, 23)
        Me.add_player.TabIndex = 0
        Me.add_player.Text = "Add Player"
        Me.add_player.UseVisualStyleBackColor = True
        '
        'name_list
        '
        Me.name_list.Location = New System.Drawing.Point(105, 210)
        Me.name_list.Name = "name_list"
        Me.name_list.Size = New System.Drawing.Size(75, 23)
        Me.name_list.TabIndex = 1
        Me.name_list.Text = "First Name"
        Me.name_list.UseVisualStyleBackColor = True
        '
        'delete_player
        '
        Me.delete_player.Location = New System.Drawing.Point(12, 52)
        Me.delete_player.Name = "delete_player"
        Me.delete_player.Size = New System.Drawing.Size(75, 23)
        Me.delete_player.TabIndex = 2
        Me.delete_player.Text = "Del Player"
        Me.delete_player.UseVisualStyleBackColor = True
        '
        'ListBox1
        '
        Me.ListBox1.FormattingEnabled = True
        Me.ListBox1.Location = New System.Drawing.Point(123, 23)
        Me.ListBox1.Name = "ListBox1"
        Me.ListBox1.Size = New System.Drawing.Size(122, 173)
        Me.ListBox1.TabIndex = 3
        '
        'ListBox2
        '
        Me.ListBox2.FormattingEnabled = True
        Me.ListBox2.Location = New System.Drawing.Point(270, 23)
        Me.ListBox2.Name = "ListBox2"
        Me.ListBox2.Size = New System.Drawing.Size(122, 173)
        Me.ListBox2.TabIndex = 4
        '
        'ListBox3
        '
        Me.ListBox3.FormattingEnabled = True
        Me.ListBox3.Location = New System.Drawing.Point(593, 23)
        Me.ListBox3.Name = "ListBox3"
        Me.ListBox3.Size = New System.Drawing.Size(122, 173)
        Me.ListBox3.TabIndex = 5
        '
        'ContextMenuStrip1
        '
        Me.ContextMenuStrip1.Name = "ContextMenuStrip1"
        Me.ContextMenuStrip1.Size = New System.Drawing.Size(61, 4)
        '
        'fname_title
        '
        Me.fname_title.AutoSize = True
        Me.fname_title.Location = New System.Drawing.Point(120, 7)
        Me.fname_title.Name = "fname_title"
        Me.fname_title.Size = New System.Drawing.Size(60, 13)
        Me.fname_title.TabIndex = 7
        Me.fname_title.Text = "First Name:"
        '
        'lname_title
        '
        Me.lname_title.AutoSize = True
        Me.lname_title.Location = New System.Drawing.Point(267, 7)
        Me.lname_title.Name = "lname_title"
        Me.lname_title.Size = New System.Drawing.Size(61, 13)
        Me.lname_title.TabIndex = 8
        Me.lname_title.Text = "Last Name:"
        '
        'id_title
        '
        Me.id_title.AutoSize = True
        Me.id_title.Location = New System.Drawing.Point(590, 7)
        Me.id_title.Name = "id_title"
        Me.id_title.Size = New System.Drawing.Size(59, 13)
        Me.id_title.TabIndex = 9
        Me.id_title.Text = "Internal ID:"
        '
        'lplayersby
        '
        Me.lplayersby.AutoSize = True
        Me.lplayersby.Location = New System.Drawing.Point(12, 215)
        Me.lplayersby.Name = "lplayersby"
        Me.lplayersby.Size = New System.Drawing.Size(78, 13)
        Me.lplayersby.TabIndex = 10
        Me.lplayersby.Text = "List Players By:"
        '
        'salary_list
        '
        Me.salary_list.Location = New System.Drawing.Point(195, 210)
        Me.salary_list.Name = "salary_list"
        Me.salary_list.Size = New System.Drawing.Size(75, 23)
        Me.salary_list.TabIndex = 11
        Me.salary_list.Text = "Salary"
        Me.salary_list.UseVisualStyleBackColor = True
        '
        'ListBox4
        '
        Me.ListBox4.FormattingEnabled = True
        Me.ListBox4.Location = New System.Drawing.Point(429, 23)
        Me.ListBox4.Name = "ListBox4"
        Me.ListBox4.Size = New System.Drawing.Size(122, 173)
        Me.ListBox4.TabIndex = 12
        '
        'salary_title
        '
        Me.salary_title.AutoSize = True
        Me.salary_title.Location = New System.Drawing.Point(426, 7)
        Me.salary_title.Name = "salary_title"
        Me.salary_title.Size = New System.Drawing.Size(39, 13)
        Me.salary_title.TabIndex = 13
        Me.salary_title.Text = "Salary:"
        '
        'PlayerForm
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(748, 239)
        Me.Controls.Add(Me.salary_title)
        Me.Controls.Add(Me.ListBox4)
        Me.Controls.Add(Me.salary_list)
        Me.Controls.Add(Me.lplayersby)
        Me.Controls.Add(Me.id_title)
        Me.Controls.Add(Me.lname_title)
        Me.Controls.Add(Me.fname_title)
        Me.Controls.Add(Me.ListBox3)
        Me.Controls.Add(Me.ListBox2)
        Me.Controls.Add(Me.ListBox1)
        Me.Controls.Add(Me.delete_player)
        Me.Controls.Add(Me.name_list)
        Me.Controls.Add(Me.add_player)
        Me.Name = "PlayerForm"
        Me.Text = "PlayerForm"
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub

    Friend WithEvents add_player As Button
    Friend WithEvents name_list As Button
    Friend WithEvents delete_player As Button
    Friend WithEvents ListBox1 As ListBox
    Friend WithEvents ListBox2 As ListBox
    Friend WithEvents ListBox3 As ListBox
    Friend WithEvents ContextMenuStrip1 As ContextMenuStrip
    Friend WithEvents fname_title As Label
    Friend WithEvents lname_title As Label
    Friend WithEvents id_title As Label
    Friend WithEvents lplayersby As Label
    Friend WithEvents salary_list As Button
    Friend WithEvents ListBox4 As ListBox
    Friend WithEvents salary_title As Label
End Class
