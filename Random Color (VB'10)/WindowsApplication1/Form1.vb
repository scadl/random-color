Public Class ColorerForm

    Private Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button1.Click
        GenColor()
    End Sub

    Private Sub GenColor()
        Randomize()
        Dim r As Integer = CInt(Int((255 * Rnd()) + 0))
        Dim g As Integer = CInt(Int((255 * Rnd()) + 0))
        Dim b As Integer = CInt(Int((255 * Rnd()) + 0))

        Me.BackColor = Color.FromArgb(r, g, b)
    End Sub

    Private Sub ColorerForm_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Click
        GenColor()
    End Sub
End Class
