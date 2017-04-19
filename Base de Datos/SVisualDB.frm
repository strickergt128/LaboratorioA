VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   8310
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   7380
   LinkTopic       =   "Form1"
   ScaleHeight     =   8310
   ScaleWidth      =   7380
   StartUpPosition =   3  'Windows Default
   Begin VB.Data Data1 
      Caption         =   "Data1"
      Connect         =   "Access"
      DatabaseName    =   "C:\Users\estudiante\Desktop\Base de Datos\Universidad Galileo.mdb"
      DefaultCursorType=   0  'DefaultCursor
      DefaultType     =   2  'UseODBC
      Exclusive       =   0   'False
      Height          =   495
      Left            =   480
      Options         =   0
      ReadOnly        =   0   'False
      RecordsetType   =   1  'Dynaset
      RecordSource    =   "Estudiantes"
      Top             =   7560
      Visible         =   0   'False
      Width           =   3615
   End
   Begin VB.CommandButton Command5 
      Caption         =   "Guardar Registro"
      Height          =   375
      Left            =   5280
      TabIndex        =   19
      Top             =   6960
      Width           =   1575
   End
   Begin VB.CommandButton Command4 
      Caption         =   "Eliminar Registro"
      Height          =   375
      Left            =   3240
      TabIndex        =   18
      Top             =   6960
      Width           =   1575
   End
   Begin VB.CommandButton Command3 
      Caption         =   "Agregar Registro"
      Height          =   375
      Left            =   1080
      TabIndex        =   17
      Top             =   6960
      Width           =   1575
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Anterior"
      Height          =   375
      Left            =   4440
      TabIndex        =   16
      Top             =   7680
      Width           =   1215
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Siguiente"
      Height          =   375
      Left            =   5880
      TabIndex        =   15
      Top             =   7680
      Width           =   1215
   End
   Begin VB.TextBox Text7 
      DataField       =   "Foto"
      DataSource      =   "Data1"
      Height          =   375
      Left            =   3360
      TabIndex        =   13
      Top             =   6240
      Width           =   1935
   End
   Begin VB.TextBox Text6 
      DataField       =   "Semestre"
      DataSource      =   "Data1"
      Height          =   375
      Left            =   3360
      TabIndex        =   12
      Top             =   5400
      Width           =   1935
   End
   Begin VB.TextBox Text5 
      DataField       =   "Facultad"
      DataSource      =   "Data1"
      Height          =   375
      Left            =   3360
      TabIndex        =   11
      Top             =   4560
      Width           =   1935
   End
   Begin VB.TextBox Text4 
      DataField       =   "Edad"
      DataSource      =   "Data1"
      Height          =   375
      Left            =   3360
      TabIndex        =   10
      Top             =   3720
      Width           =   1935
   End
   Begin VB.TextBox Text3 
      DataField       =   "Apellidos"
      DataSource      =   "Data1"
      Height          =   375
      Left            =   3360
      TabIndex        =   9
      Top             =   2880
      Width           =   1935
   End
   Begin VB.TextBox Text2 
      DataField       =   "Nombres"
      DataSource      =   "Data1"
      Height          =   375
      Left            =   3360
      TabIndex        =   8
      Top             =   2040
      Width           =   1935
   End
   Begin VB.TextBox Text1 
      DataField       =   "Carne"
      DataSource      =   "Data1"
      Height          =   375
      Left            =   3360
      TabIndex        =   7
      Top             =   1200
      Width           =   1935
   End
   Begin VB.Label Label8 
      Alignment       =   2  'Center
      Caption         =   "Universidad Galileo"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   18
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   1320
      TabIndex        =   14
      Top             =   240
      Width           =   4575
   End
   Begin VB.Label Label7 
      Caption         =   "Foto:"
      BeginProperty Font 
         Name            =   "Maiandra GD"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   1560
      TabIndex        =   6
      Top             =   6240
      Width           =   1095
   End
   Begin VB.Label Label6 
      Caption         =   "Semestre:"
      BeginProperty Font 
         Name            =   "Maiandra GD"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   1560
      TabIndex        =   5
      Top             =   5400
      Width           =   1095
   End
   Begin VB.Label Label5 
      Caption         =   "Facultad:"
      BeginProperty Font 
         Name            =   "Maiandra GD"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   1560
      TabIndex        =   4
      Top             =   4560
      Width           =   1095
   End
   Begin VB.Label Label4 
      Caption         =   "Edad:"
      BeginProperty Font 
         Name            =   "Maiandra GD"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   1560
      TabIndex        =   3
      Top             =   3720
      Width           =   1095
   End
   Begin VB.Label Label3 
      Caption         =   "Apellidos:"
      BeginProperty Font 
         Name            =   "Maiandra GD"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   1560
      TabIndex        =   2
      Top             =   2880
      Width           =   1215
   End
   Begin VB.Label Label2 
      Caption         =   "Nombres:"
      BeginProperty Font 
         Name            =   "Maiandra GD"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   1560
      TabIndex        =   1
      Top             =   2040
      Width           =   1335
   End
   Begin VB.Label Label1 
      Caption         =   "Carne:"
      BeginProperty Font 
         Name            =   "Maiandra GD"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   1560
      TabIndex        =   0
      Top             =   1200
      Width           =   1095
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Data1.Recordset.MoveNext
If Data1.Recordset.EOF Then
Data1.Recordset.MoveFirst
End If
End Sub

Private Sub Command2_Click()
Data1.Recordset.MovePrevious
If Data1.Recordset.BOF Then
Data1.Recordset.MoveLast
End If
End Sub

Private Sub Command3_Click()
Data1.Recordset.AddNew
End Sub

Private Sub Command4_Click()
Data1.Recordset.Delete
End Sub

Private Sub Command5_Click()
Data1.Recordset.Update
Data1.Recordset.MovePrevious
End Sub
