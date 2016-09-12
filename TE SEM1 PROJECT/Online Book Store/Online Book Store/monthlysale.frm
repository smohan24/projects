VERSION 5.00
Begin VB.Form monthlysale 
   BackColor       =   &H00C0FFC0&
   Caption         =   "Form1"
   ClientHeight    =   3030
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   4560
   FillColor       =   &H00FFFFFF&
   ForeColor       =   &H00FFFFFF&
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   ScaleHeight     =   11010
   ScaleWidth      =   15240
   WindowState     =   2  'Maximized
   Begin VB.Frame Frame1 
      BackColor       =   &H00C0FFC0&
      Height          =   9135
      Left            =   1440
      TabIndex        =   4
      Top             =   1440
      Width           =   9855
      Begin VB.TextBox Text2 
         BackColor       =   &H00C0FFC0&
         BorderStyle     =   0  'None
         Height          =   615
         Index           =   0
         Left            =   360
         TabIndex        =   20
         Top             =   1440
         Width           =   4575
      End
      Begin VB.TextBox Text3 
         BackColor       =   &H00C0FFC0&
         BorderStyle     =   0  'None
         Height          =   495
         Index           =   0
         Left            =   6480
         TabIndex        =   19
         Top             =   1560
         Width           =   1215
      End
      Begin VB.TextBox Text3 
         BackColor       =   &H00C0FFC0&
         BorderStyle     =   0  'None
         Height          =   495
         Index           =   1
         Left            =   6480
         TabIndex        =   18
         Top             =   2520
         Width           =   1215
      End
      Begin VB.TextBox Text3 
         BackColor       =   &H00C0FFC0&
         BorderStyle     =   0  'None
         Height          =   495
         Index           =   2
         Left            =   6480
         TabIndex        =   17
         Top             =   3480
         Width           =   1215
      End
      Begin VB.TextBox Text3 
         BackColor       =   &H00C0FFC0&
         BorderStyle     =   0  'None
         Height          =   495
         Index           =   3
         Left            =   6480
         TabIndex        =   16
         Top             =   4440
         Width           =   1215
      End
      Begin VB.TextBox Text3 
         BackColor       =   &H00C0FFC0&
         BorderStyle     =   0  'None
         Height          =   495
         Index           =   4
         Left            =   6480
         TabIndex        =   15
         Top             =   5400
         Width           =   1215
      End
      Begin VB.TextBox Text3 
         BackColor       =   &H00C0FFC0&
         BorderStyle     =   0  'None
         Height          =   495
         Index           =   5
         Left            =   6480
         TabIndex        =   14
         Top             =   6360
         Width           =   1215
      End
      Begin VB.TextBox Text3 
         BackColor       =   &H00C0FFC0&
         BorderStyle     =   0  'None
         Height          =   495
         Index           =   6
         Left            =   6480
         TabIndex        =   13
         Top             =   7320
         Width           =   1215
      End
      Begin VB.TextBox Text2 
         BackColor       =   &H00C0FFC0&
         BorderStyle     =   0  'None
         Height          =   615
         Index           =   1
         Left            =   360
         TabIndex        =   12
         Top             =   2400
         Width           =   4575
      End
      Begin VB.TextBox Text2 
         BackColor       =   &H00C0FFC0&
         BorderStyle     =   0  'None
         Height          =   615
         Index           =   2
         Left            =   360
         TabIndex        =   11
         Top             =   3360
         Width           =   4575
      End
      Begin VB.TextBox Text2 
         BackColor       =   &H00C0FFC0&
         BorderStyle     =   0  'None
         Height          =   615
         Index           =   3
         Left            =   360
         TabIndex        =   10
         Top             =   4320
         Width           =   4575
      End
      Begin VB.TextBox Text2 
         BackColor       =   &H00C0FFC0&
         BorderStyle     =   0  'None
         Height          =   615
         Index           =   4
         Left            =   360
         TabIndex        =   9
         Top             =   5280
         Width           =   4575
      End
      Begin VB.TextBox Text2 
         BackColor       =   &H00C0FFC0&
         BorderStyle     =   0  'None
         Height          =   615
         Index           =   5
         Left            =   360
         TabIndex        =   8
         Top             =   6240
         Width           =   4575
      End
      Begin VB.TextBox Text2 
         BackColor       =   &H00C0FFC0&
         BorderStyle     =   0  'None
         Height          =   615
         Index           =   6
         Left            =   360
         TabIndex        =   7
         Top             =   7320
         Width           =   4575
      End
      Begin VB.TextBox Text2 
         BackColor       =   &H00C0FFC0&
         BorderStyle     =   0  'None
         Height          =   615
         Index           =   7
         Left            =   360
         TabIndex        =   6
         Top             =   8280
         Width           =   4575
      End
      Begin VB.TextBox Text3 
         BackColor       =   &H00C0FFC0&
         BorderStyle     =   0  'None
         Height          =   495
         Index           =   7
         Left            =   6480
         TabIndex        =   5
         Top             =   8280
         Width           =   1215
      End
      Begin VB.Label Label2 
         Alignment       =   2  'Center
         BackColor       =   &H00C0FFC0&
         Caption         =   "Book Name"
         BeginProperty Font 
            Name            =   "Terminal"
            Size            =   13.5
            Charset         =   255
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   480
         TabIndex        =   22
         Top             =   360
         Width           =   2295
      End
      Begin VB.Line Line1 
         X1              =   5520
         X2              =   5520
         Y1              =   120
         Y2              =   9120
      End
      Begin VB.Label Label3 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         Caption         =   "Sold Copies"
         BeginProperty Font 
            Name            =   "Terminal"
            Size            =   13.5
            Charset         =   255
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   6240
         TabIndex        =   21
         Top             =   360
         Width           =   2295
      End
      Begin VB.Line Line2 
         X1              =   0
         X2              =   9840
         Y1              =   1200
         Y2              =   1200
      End
      Begin VB.Line Line3 
         X1              =   0
         X2              =   9840
         Y1              =   120
         Y2              =   120
      End
      Begin VB.Line Line4 
         X1              =   9840
         X2              =   9840
         Y1              =   120
         Y2              =   9120
      End
      Begin VB.Line Line5 
         X1              =   0
         X2              =   9840
         Y1              =   9120
         Y2              =   9120
      End
      Begin VB.Line Line6 
         X1              =   0
         X2              =   0
         Y1              =   120
         Y2              =   9120
      End
   End
   Begin VB.CommandButton cmd_back 
      Appearance      =   0  'Flat
      BackColor       =   &H00C0C000&
      Caption         =   "<<Back"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   480
      Style           =   1  'Graphical
      TabIndex        =   3
      Top             =   360
      Width           =   1455
   End
   Begin VB.CommandButton Command1 
      BackColor       =   &H00C0C0C0&
      Caption         =   "GO"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   6960
      Style           =   1  'Graphical
      TabIndex        =   2
      Top             =   840
      Width           =   735
   End
   Begin VB.TextBox Text1 
      Height          =   495
      Left            =   4080
      TabIndex        =   1
      Top             =   840
      Width           =   2295
   End
   Begin VB.Shape Shape1 
      BackColor       =   &H00C0C000&
      BackStyle       =   1  'Opaque
      Height          =   615
      Left            =   360
      Shape           =   4  'Rounded Rectangle
      Top             =   240
      Width           =   1695
   End
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   "Month:"
      BeginProperty Font 
         Name            =   "Palatino Linotype"
         Size            =   15.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   2160
      TabIndex        =   0
      Top             =   840
      Width           =   1215
   End
End
Attribute VB_Name = "monthlysale"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmd_back_Click()
Unload Me
End Sub

