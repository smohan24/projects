VERSION 5.00
Begin VB.Form search 
   BackColor       =   &H00C0E0FF&
   Caption         =   "Form1"
   ClientHeight    =   3030
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   4560
   ForeColor       =   &H00000000&
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
      TabIndex        =   16
      Top             =   1920
      Width           =   15255
      Begin VB.Label Label1 
         BackColor       =   &H00404080&
         Caption         =   "Back"
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
         Index           =   1
         Left            =   6360
         TabIndex        =   25
         Top             =   120
         Width           =   855
      End
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
         TabIndex        =   19
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
         TabIndex        =   18
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
         TabIndex        =   17
         Top             =   120
         Width           =   1335
      End
   End
   Begin VB.Frame Frame2 
      BackColor       =   &H00C0E0FF&
      BorderStyle     =   0  'None
      Height          =   7455
      Left            =   480
      TabIndex        =   0
      Top             =   3120
      Width           =   14295
      Begin VB.TextBox txt_cat 
         BackColor       =   &H00C0E0FF&
         BeginProperty Font 
            Name            =   "Courier New"
            Size            =   14.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   405
         Left            =   2760
         Locked          =   -1  'True
         TabIndex        =   22
         Top             =   2760
         Width           =   1695
      End
      Begin VB.TextBox txt_desc 
         BackColor       =   &H00C0E0FF&
         BeginProperty Font 
            Name            =   "Courier New"
            Size            =   14.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   1095
         Left            =   2760
         Locked          =   -1  'True
         MultiLine       =   -1  'True
         ScrollBars      =   2  'Vertical
         TabIndex        =   15
         Top             =   6120
         Width           =   4455
      End
      Begin VB.TextBox txt_copies 
         BackColor       =   &H00C0E0FF&
         BeginProperty Font 
            Name            =   "Courier New"
            Size            =   14.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   2760
         Locked          =   -1  'True
         TabIndex        =   12
         Top             =   5280
         Width           =   1695
      End
      Begin VB.TextBox txt_discount 
         BackColor       =   &H00C0E0FF&
         BeginProperty Font 
            Name            =   "Courier New"
            Size            =   14.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   2760
         Locked          =   -1  'True
         TabIndex        =   10
         Top             =   4440
         Width           =   1695
      End
      Begin VB.TextBox txt_unitp 
         BackColor       =   &H00C0E0FF&
         BeginProperty Font 
            Name            =   "Courier New"
            Size            =   14.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   2760
         Locked          =   -1  'True
         TabIndex        =   8
         Top             =   3600
         Width           =   1695
      End
      Begin VB.TextBox txt_author 
         BackColor       =   &H00C0E0FF&
         BeginProperty Font 
            Name            =   "Courier New"
            Size            =   14.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   2760
         Locked          =   -1  'True
         TabIndex        =   6
         Top             =   1920
         Width           =   4455
      End
      Begin VB.TextBox txt_bkname 
         BackColor       =   &H00FFFFFF&
         BeginProperty Font 
            Name            =   "Courier New"
            Size            =   14.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   2760
         TabIndex        =   4
         Top             =   1080
         Width           =   4455
      End
      Begin VB.TextBox txt_bkid 
         BackColor       =   &H00C0E0FF&
         BeginProperty Font 
            Name            =   "Courier New"
            Size            =   14.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   2760
         Locked          =   -1  'True
         TabIndex        =   2
         Top             =   240
         Width           =   1695
      End
      Begin VB.Label lbl_clear 
         Alignment       =   2  'Center
         BackColor       =   &H00404080&
         Caption         =   "Clear"
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
         Left            =   9840
         TabIndex        =   24
         Top             =   4440
         Width           =   1575
      End
      Begin VB.Shape Shape3 
         FillColor       =   &H00404080&
         FillStyle       =   0  'Solid
         Height          =   615
         Left            =   9720
         Shape           =   4  'Rounded Rectangle
         Top             =   4320
         Width           =   1815
      End
      Begin VB.Label lbl_showbkdet 
         Alignment       =   2  'Center
         BackColor       =   &H00404080&
         Caption         =   "Show book details"
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
         Left            =   9240
         TabIndex        =   23
         Top             =   3120
         Width           =   2775
      End
      Begin VB.Shape Shape2 
         FillColor       =   &H00404080&
         FillStyle       =   0  'Solid
         Height          =   615
         Left            =   9000
         Shape           =   4  'Rounded Rectangle
         Top             =   3000
         Width           =   3255
      End
      Begin VB.Label Label3 
         BackColor       =   &H00C0E0FF&
         Caption         =   "Category :"
         BeginProperty Font 
            Name            =   "Georgia"
            Size            =   14.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   495
         Left            =   120
         TabIndex        =   21
         Top             =   2760
         Width           =   1935
      End
      Begin VB.Image Image1 
         Height          =   1935
         Left            =   9600
         Top             =   480
         Width           =   1935
      End
      Begin VB.Label Label12 
         BackStyle       =   0  'Transparent
         Caption         =   "Description :"
         BeginProperty Font 
            Name            =   "Georgia"
            Size            =   14.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00004000&
         Height          =   495
         Left            =   120
         TabIndex        =   13
         Top             =   6000
         Width           =   2295
      End
      Begin VB.Label Label11 
         BackStyle       =   0  'Transparent
         Caption         =   "No. of copies :"
         BeginProperty Font 
            Name            =   "Georgia"
            Size            =   14.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00004000&
         Height          =   375
         Left            =   120
         TabIndex        =   11
         Top             =   5280
         Width           =   2415
      End
      Begin VB.Label Label10 
         BackColor       =   &H00C0FFC0&
         BackStyle       =   0  'Transparent
         Caption         =   "Discount :"
         BeginProperty Font 
            Name            =   "Georgia"
            Size            =   14.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00004000&
         Height          =   495
         Left            =   120
         TabIndex        =   9
         Top             =   4440
         Width           =   2295
      End
      Begin VB.Label Label9 
         BackColor       =   &H00C0FFC0&
         BackStyle       =   0  'Transparent
         Caption         =   "Unit Price :"
         BeginProperty Font 
            Name            =   "Georgia"
            Size            =   14.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00004000&
         Height          =   615
         Left            =   120
         TabIndex        =   7
         Top             =   3600
         Width           =   2055
      End
      Begin VB.Label Label8 
         BackColor       =   &H00C0FFC0&
         BackStyle       =   0  'Transparent
         Caption         =   "Author :"
         BeginProperty Font 
            Name            =   "Georgia"
            Size            =   14.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00004000&
         Height          =   495
         Left            =   120
         TabIndex        =   5
         Top             =   1920
         Width           =   2415
      End
      Begin VB.Label Label7 
         BackStyle       =   0  'Transparent
         Caption         =   "Book Name :"
         BeginProperty Font 
            Name            =   "Georgia"
            Size            =   14.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00004000&
         Height          =   495
         Left            =   120
         TabIndex        =   3
         Top             =   1080
         Width           =   2295
      End
      Begin VB.Label Label6 
         BackStyle       =   0  'Transparent
         Caption         =   "Book code :"
         BeginProperty Font 
            Name            =   "Georgia"
            Size            =   14.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00004000&
         Height          =   495
         Left            =   120
         TabIndex        =   1
         Top             =   240
         Width           =   2175
      End
   End
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
      Caption         =   "Enter the name of the book whose details are to be updated"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   480
      TabIndex        =   20
      Top             =   2640
      Width           =   10575
   End
   Begin VB.Image Image7 
      Height          =   1965
      Left            =   0
      Picture         =   "Search.frx":0000
      Top             =   0
      Width           =   17250
   End
   Begin VB.Label Label14 
      Alignment       =   2  'Center
      BackColor       =   &H00808000&
      Caption         =   "Refresh"
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
      Height          =   615
      Left            =   15480
      TabIndex        =   14
      Top             =   10200
      Width           =   2055
   End
End
Attribute VB_Name = "search"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim rs As ADODB.Recordset
Dim cn As ADODB.Connection

Private Sub Form_Load()
    Set cn = New ADODB.Connection
    Set rs = New ADODB.Recordset
    cn.Open "dsn=connect;uid=b70;pwd=cummins"
    txt_desc.Locked = True
End Sub

Private Sub lbl_add_Click()
    search.Hide
    adminlogin.Hide
    modify.Hide
    addbooks.WindowState = 2
    addbooks.Show
End Sub

Private Sub lbl_modify_Click()
    addbooks.Hide
    search.Hide
    adminlogin.Hide
    modify.WindowState = 2
    modify.Show
End Sub
Private Sub Label1_Click(Index As Integer)
    startup.Show
End Sub

Private Sub lbl_search_Click()
    modify.Hide
    adminlogin.Hide
    addbooks.Hide
    search.WindowState = 2
    search.Show
End Sub

Private Sub lbl_showbkdet_Click()
    If (txt_bkname = "") Then
        MsgBox "Enter the name of the book !", , "Error"
    Else
        rs.Open "(select * from books where bookname='" + txt_bkname.Text + "')", cn, adOpenDynamic, adLockOptimistic
        If (rs.EOF) Then
            MsgBox "No match found !", , "Error"
        Else
            txt_bkid.Text = rs(0)
            txt_author.Text = rs(2)
            txt_cat.Text = rs(3)
            txt_unitp.Text = rs(4)
            txt_discount.Text = rs(5)
            txt_copies.Text = rs(7)
            txt_desc.Text = rs(8)
        End If
    End If
    rs.Close
End Sub

Private Sub lbl_clear_Click()
    txt_bkid.Text = ""
    txt_bkname.Text = ""
    txt_author.Text = ""
    txt_unitp.Text = ""
    txt_discount.Text = ""
    txt_copies.Text = ""
    txt_desc.Text = ""
    txt_cat.Text = ""
End Sub


