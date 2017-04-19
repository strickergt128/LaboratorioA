VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   7935
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   9945
   LinkTopic       =   "Form1"
   ScaleHeight     =   7935
   ScaleWidth      =   9945
   StartUpPosition =   3  'Windows Default
   Begin VB.Timer Timer2 
      Enabled         =   0   'False
      Interval        =   10
      Left            =   4920
      Top             =   3240
   End
   Begin VB.Timer Timer1 
      Enabled         =   0   'False
      Interval        =   10
      Left            =   4560
      Top             =   3240
   End
   Begin VB.CommandButton Command2 
      Caption         =   "DETENER"
      Height          =   615
      Left            =   5280
      TabIndex        =   1
      Top             =   4080
      Width           =   2175
   End
   Begin VB.CommandButton Command1 
      Caption         =   "INICIAR"
      Height          =   615
      Left            =   2640
      TabIndex        =   0
      Top             =   4080
      Width           =   2175
   End
   Begin VB.Line Line4 
      X1              =   9600
      X2              =   9600
      Y1              =   1560
      Y2              =   7680
   End
   Begin VB.Line Line3 
      X1              =   480
      X2              =   9600
      Y1              =   7680
      Y2              =   7680
   End
   Begin VB.Line Line2 
      X1              =   480
      X2              =   480
      Y1              =   1560
      Y2              =   7680
   End
   Begin VB.Line Line1 
      X1              =   480
      X2              =   9600
      Y1              =   1560
      Y2              =   1560
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      Caption         =   "Movimiento"
      BeginProperty Font 
         Name            =   "Ravie"
         Size            =   27.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   1680
      TabIndex        =   2
      Top             =   240
      Width           =   6855
   End
   Begin VB.Shape Shape1 
      BackColor       =   &H000000FF&
      BackStyle       =   1  'Opaque
      Height          =   1575
      Left            =   480
      Shape           =   3  'Circle
      Top             =   1560
      Width           =   1815
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub Command1_Click()
If Shape1.Left = 480 Then
Timer1.Enabled = True
ElseIf Shape1.Top = 6120 Then
Timer1.Enabled = True
ElseIf Shape1.Left = 7920 Then
Timer2.Enabled = True
ElseIf Shape1.Top = 1560 Then
Timer2.Enabled = True
End If
End Sub

Private Sub Command2_Click()
Timer1.Enabled = False
Timer2.Enabled = False
End Sub

Private Sub Timer1_Timer()
x = Shape1.Top
x = x + 50
Shape1.Top = x
If Shape1.Top > 6120 Then
Shape1.Top = 6120
x = Shape1.Left
x = x + 50
Shape1.Left = x
End If
If Shape1.Left > 7920 Then
Shape1.Left = 7920
Timer1.Enabled = False
Timer2.Enabled = True
End If
End Sub

Private Sub Timer2_Timer()
x = Shape1.Top
x = x - 50
Shape1.Top = x
If Shape1.Top < 1560 Then
Shape1.Top = 1560
x = Shape1.Left
x = x - 50
Shape1.Left = x
End If
If Shape1.Left < 480 Then
Shape1.Left = 480
Timer2.Enabled = False
Timer1.Enabled = True
End If
End Sub
