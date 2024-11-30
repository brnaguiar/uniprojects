<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class Main
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
        Me.players_form = New System.Windows.Forms.Button()
        Me.PlayerBindingSource = New System.Windows.Forms.BindingSource(Me.components)
        Me.GESTAO_DESPORTIVADataSet = New ConnectDB.GESTAO_DESPORTIVADataSet()
        Me.PlayerTableAdapter = New ConnectDB.GESTAO_DESPORTIVADataSetTableAdapters.PlayerTableAdapter()
        Me.sup_form = New System.Windows.Forms.Button()
        Me.Label1 = New System.Windows.Forms.Label()
        Me.Button2 = New System.Windows.Forms.Button()
        Me.Button3 = New System.Windows.Forms.Button()
        Me.Button4 = New System.Windows.Forms.Button()
        Me.Button5 = New System.Windows.Forms.Button()
        Me.Button6 = New System.Windows.Forms.Button()
        CType(Me.PlayerBindingSource, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.GESTAO_DESPORTIVADataSet, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.SuspendLayout()
        '
        'players_form
        '
        Me.players_form.Location = New System.Drawing.Point(138, 4)
        Me.players_form.Name = "players_form"
        Me.players_form.Size = New System.Drawing.Size(75, 23)
        Me.players_form.TabIndex = 0
        Me.players_form.Text = "Players"
        Me.players_form.UseVisualStyleBackColor = True
        '
        'PlayerBindingSource
        '
        Me.PlayerBindingSource.DataMember = "Player"
        Me.PlayerBindingSource.DataSource = Me.GESTAO_DESPORTIVADataSet
        '
        'GESTAO_DESPORTIVADataSet
        '
        Me.GESTAO_DESPORTIVADataSet.DataSetName = "GESTAO_DESPORTIVADataSet"
        Me.GESTAO_DESPORTIVADataSet.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema
        '
        'PlayerTableAdapter
        '
        Me.PlayerTableAdapter.ClearBeforeFill = True
        '
        'sup_form
        '
        Me.sup_form.Location = New System.Drawing.Point(138, 48)
        Me.sup_form.Name = "sup_form"
        Me.sup_form.Size = New System.Drawing.Size(75, 23)
        Me.sup_form.TabIndex = 1
        Me.sup_form.Text = "Supporters"
        Me.sup_form.UseVisualStyleBackColor = True
        '
        'Label1
        '
        Me.Label1.AutoSize = True
        Me.Label1.Location = New System.Drawing.Point(12, 9)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(96, 13)
        Me.Label1.TabIndex = 2
        Me.Label1.Text = "Select a data type:"
        '
        'Button2
        '
        Me.Button2.Location = New System.Drawing.Point(138, 88)
        Me.Button2.Name = "Button2"
        Me.Button2.Size = New System.Drawing.Size(75, 23)
        Me.Button2.TabIndex = 3
        Me.Button2.Text = "Staff"
        Me.Button2.UseVisualStyleBackColor = True
        '
        'Button3
        '
        Me.Button3.Location = New System.Drawing.Point(241, 4)
        Me.Button3.Name = "Button3"
        Me.Button3.Size = New System.Drawing.Size(75, 23)
        Me.Button3.TabIndex = 4
        Me.Button3.Text = "Seasons"
        Me.Button3.UseVisualStyleBackColor = True
        '
        'Button4
        '
        Me.Button4.Location = New System.Drawing.Point(241, 48)
        Me.Button4.Name = "Button4"
        Me.Button4.Size = New System.Drawing.Size(75, 23)
        Me.Button4.TabIndex = 5
        Me.Button4.Text = "Matchday"
        Me.Button4.UseVisualStyleBackColor = True
        '
        'Button5
        '
        Me.Button5.Location = New System.Drawing.Point(241, 88)
        Me.Button5.Name = "Button5"
        Me.Button5.Size = New System.Drawing.Size(75, 23)
        Me.Button5.TabIndex = 6
        Me.Button5.Text = "Oponnents"
        Me.Button5.UseVisualStyleBackColor = True
        '
        'Button6
        '
        Me.Button6.Location = New System.Drawing.Point(179, 123)
        Me.Button6.Name = "Button6"
        Me.Button6.Size = New System.Drawing.Size(96, 26)
        Me.Button6.TabIndex = 7
        Me.Button6.Text = "Infrastructures"
        Me.Button6.UseVisualStyleBackColor = True
        '
        'Main
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(340, 161)
        Me.Controls.Add(Me.Button6)
        Me.Controls.Add(Me.Button5)
        Me.Controls.Add(Me.Button4)
        Me.Controls.Add(Me.Button3)
        Me.Controls.Add(Me.Button2)
        Me.Controls.Add(Me.Label1)
        Me.Controls.Add(Me.sup_form)
        Me.Controls.Add(Me.players_form)
        Me.Name = "Main"
        Me.Text = "Club Management"
        CType(Me.PlayerBindingSource, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.GESTAO_DESPORTIVADataSet, System.ComponentModel.ISupportInitialize).EndInit()
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub

    Friend WithEvents players_form As Button
    Friend WithEvents Main_listPb As Button
    Friend WithEvents ListBox1 As ListBox
    Friend WithEvents Button1 As Button
    Friend WithEvents GESTAO_DESPORTIVADataSet As GESTAO_DESPORTIVADataSet
    Friend WithEvents PlayerBindingSource As BindingSource
    Friend WithEvents PlayerTableAdapter As GESTAO_DESPORTIVADataSetTableAdapters.PlayerTableAdapter
    Friend WithEvents ListBox2 As ListBox
    Friend WithEvents sup_form As Button
    Friend WithEvents Label1 As Label
    Friend WithEvents Button2 As Button
    Friend WithEvents Button3 As Button
    Friend WithEvents Button4 As Button
    Friend WithEvents Button5 As Button
    Friend WithEvents Button6 As Button
End Class
