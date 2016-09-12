VERSION 5.00
Begin VB.Form bstsell 
   BackColor       =   &H00C0FFC0&
   Caption         =   "Form1"
   ClientHeight    =   3030
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   4560
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   ScaleHeight     =   11010
   ScaleWidth      =   15240
   WindowState     =   2  'Maximized
   Begin VB.Frame fra_adminmenu 
      BackColor       =   &H00404080&
      BorderStyle     =   0  'None
      Caption         =   "Frame1"
      Height          =   495
      Left            =   0
      TabIndex        =   2
      Top             =   1920
      Width           =   15255
      Begin VB.Label lbl_add 
         Alignment       =   2  'Center
         BackColor       =   &H00404080&
         Caption         =   "Add the new arrivals"
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
         Left            =   240
         TabIndex        =   5
         Top             =   120
         Width           =   3015
      End
      Begin VB.Label lbl_modify 
         Alignment       =   2  'Center
         BackColor       =   &H00404080&
         Caption         =   "Modify"
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
         Left            =   3360
         TabIndex        =   4
         Top             =   120
         Width           =   1335
      End
      Begin VB.Label lbl_search 
         Alignment       =   2  'Center
         BackColor       =   &H00404080&
         Caption         =   "Search"
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
         Left            =   4800
         TabIndex        =   3
         Top             =   120
         Width           =   1335
      End
   End
   Begin VB.Frame Frame2 
      BackColor       =   &H00C0FFC0&
      BorderStyle     =   0  'None
      Caption         =   "Frame2"
      Height          =   6735
      Left            =   3720
      TabIndex        =   1
      Top             =   4200
      Width           =   13455
      Begin VB.Image Image6 
         Height          =   1935
         Left            =   10800
         Top             =   4080
         Width           =   2055
      End
      Begin VB.Image Image5 
         Height          =   2055
         Left            =   5760
         Top             =   4080
         Width           =   2175
      End
      Begin VB.Image Image4 
         Height          =   1935
         Left            =   960
         Top             =   4200
         Width           =   1935
      End
      Begin VB.Image Image3 
         Height          =   1935
         Left            =   10680
         Top             =   240
         Width           =   2055
      End
      Begin VB.Image Image2 
         Height          =   1935
         Left            =   5880
         Top             =   240
         Width           =   2055
      End
      Begin VB.Image Image1 
         Height          =   1935
         Left            =   840
         Top             =   240
         Width           =   2055
      End
   End
   Begin VB.Image Image7 
      Height          =   1965
      Left            =   0
      Picture         =   "bstsell.frx":0000
      Top             =   0
      Width           =   17250
   End
   Begin VB.Label Label6 
      Alignment       =   2  'Center
      BackColor       =   &H00404000&
      BackStyle       =   0  'Transparent
      Caption         =   "Best Selling"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   15.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00004000&
      Height          =   615
      Left            =   8400
      TabIndex        =   0
      Top             =   3120
      Width           =   3495
   End
End
Attribute VB_Name = "bstsell"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False



Private Sub lbl_add_Click()
    bstsell.Hide
    search.Hide
    modify.Hide
    viewsale.Hide
    addbooks.WindowState = 2
    addbooks.Show
End Sub

Private Sub lbl_modify_Click()
    bstsell.Hide
    addbooks.Hide
    search.Hide
    viewsale.Show
    modify.WindowState = 2
    modify.Show
End Sub

Private Sub lbl_search_Click()
    bstsell.Hide
    modify.Hide
    viewsale.Show
    addbooks.Hide
    search.WindowState = 2
    search.Show
End Sub


