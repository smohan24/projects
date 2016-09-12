VERSION 5.00
Begin VB.Form startup 
   BackColor       =   &H00000000&
   Caption         =   "Form1"
   ClientHeight    =   3090
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   4680
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   ScaleHeight     =   11010
   ScaleWidth      =   15240
   WindowState     =   2  'Maximized
   Begin VB.Image Image1 
      Height          =   8775
      Left            =   240
      Picture         =   "Startup.frx":0000
      Stretch         =   -1  'True
      Top             =   240
      Width           =   14655
   End
   Begin VB.Label lbl_user 
      Alignment       =   2  'Center
      BackColor       =   &H00404080&
      Caption         =   "User"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   375
      Left            =   9000
      TabIndex        =   1
      Top             =   9600
      Width           =   1455
   End
   Begin VB.Shape shp_user 
      FillColor       =   &H00404080&
      FillStyle       =   0  'Solid
      Height          =   615
      Left            =   8880
      Shape           =   4  'Rounded Rectangle
      Top             =   9480
      Width           =   1695
   End
   Begin VB.Label lbl_admin 
      Alignment       =   2  'Center
      BackColor       =   &H00404080&
      Caption         =   "Admin"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   375
      Left            =   5400
      TabIndex        =   0
      Top             =   9600
      Width           =   1575
   End
   Begin VB.Shape shp_admin 
      FillColor       =   &H00404080&
      FillStyle       =   0  'Solid
      Height          =   615
      Left            =   5280
      Shape           =   4  'Rounded Rectangle
      Top             =   9480
      Width           =   1815
   End
End
Attribute VB_Name = "startup"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub lbl_admin_Click()
    adminlogin.Show
End Sub

Private Sub lbl_user_Click()
    home.Show
End Sub
