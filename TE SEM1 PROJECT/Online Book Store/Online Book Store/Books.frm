VERSION 5.00
Begin VB.Form books 
   BackColor       =   &H00C0E0FF&
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
   Begin VB.Frame fra_promotions 
      BackColor       =   &H00E0E0E0&
      Height          =   7815
      Left            =   8520
      TabIndex        =   29
      Top             =   2400
      Width           =   6735
      Begin VB.CommandButton cmd_romance 
         BackColor       =   &H00E0E0E0&
         Caption         =   ">>  Romance  "
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   14.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   480
         Style           =   1  'Graphical
         TabIndex        =   34
         Top             =   6720
         Width           =   2175
      End
      Begin VB.CommandButton cmd_humor 
         BackColor       =   &H00E0E0E0&
         Caption         =   ">>  Humor"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   14.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   3960
         Style           =   1  'Graphical
         TabIndex        =   33
         Top             =   5880
         Width           =   1935
      End
      Begin VB.CommandButton cmd_mystery 
         BackColor       =   &H00E0E0E0&
         Caption         =   ">>  Mystery"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   14.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   480
         Style           =   1  'Graphical
         TabIndex        =   32
         Top             =   5880
         Width           =   2175
      End
      Begin VB.CommandButton cmd_cooking 
         BackColor       =   &H00E0E0E0&
         Caption         =   ">>  Cooking"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   14.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   3960
         Style           =   1  'Graphical
         TabIndex        =   31
         Top             =   5040
         Width           =   1935
      End
      Begin VB.CommandButton cmd_scifi 
         BackColor       =   &H00E0E0E0&
         Caption         =   ">>  Sci-Fiction"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   14.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   480
         Style           =   1  'Graphical
         TabIndex        =   30
         Top             =   5040
         Width           =   2175
      End
      Begin VB.Image img_bkp 
         Height          =   1815
         Index           =   2
         Left            =   4800
         Stretch         =   -1  'True
         Top             =   840
         Width           =   1575
      End
      Begin VB.Image img_bkp 
         Height          =   1815
         Index           =   1
         Left            =   2640
         Stretch         =   -1  'True
         Top             =   840
         Width           =   1455
      End
      Begin VB.Image img_bkp 
         Height          =   1815
         Index           =   0
         Left            =   360
         Stretch         =   -1  'True
         Top             =   840
         Width           =   1575
      End
      Begin VB.Label lbl_bkp 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   855
         Index           =   2
         Left            =   4800
         TabIndex        =   39
         Top             =   3000
         Width           =   1695
      End
      Begin VB.Label lbl_bkp 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   855
         Index           =   1
         Left            =   2520
         TabIndex        =   38
         Top             =   3000
         Width           =   1695
      End
      Begin VB.Label lbl_bkp 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   855
         Index           =   0
         Left            =   360
         TabIndex        =   37
         Top             =   3000
         Width           =   1575
      End
      Begin VB.Label Label3 
         BackColor       =   &H00E0E0E0&
         Caption         =   "Promotions"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   14.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00404080&
         Height          =   375
         Left            =   360
         TabIndex        =   36
         Top             =   240
         Width           =   1935
      End
      Begin VB.Label Label4 
         BackColor       =   &H00E0E0E0&
         Caption         =   "Categories"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   14.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00404080&
         Height          =   375
         Left            =   480
         TabIndex        =   35
         Top             =   4320
         Width           =   2055
      End
      Begin VB.Line Line1 
         BorderColor     =   &H00C0C0C0&
         X1              =   0
         X2              =   6720
         Y1              =   4080
         Y2              =   4080
      End
   End
   Begin VB.CommandButton cmd_next 
      Caption         =   ">>"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   20.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   7320
      TabIndex        =   19
      Top             =   6360
      Width           =   735
   End
   Begin VB.Timer Timer1 
      Interval        =   1000
      Left            =   0
      Top             =   2400
   End
   Begin VB.Frame fra_menu 
      BackColor       =   &H00404080&
      BorderStyle     =   0  'None
      Caption         =   "Frame2"
      Height          =   495
      Left            =   0
      TabIndex        =   10
      Top             =   1920
      Width           =   15255
      Begin VB.Label lbl_menuhome 
         Alignment       =   2  'Center
         BackColor       =   &H00404080&
         Caption         =   "Home"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   15
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00E0E0E0&
         Height          =   375
         Left            =   240
         TabIndex        =   18
         Top             =   120
         Width           =   1095
      End
      Begin VB.Label lbl_menuabtus 
         Alignment       =   2  'Center
         BackColor       =   &H00404080&
         Caption         =   "About Us"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   14.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00E0E0E0&
         Height          =   375
         Left            =   1680
         TabIndex        =   17
         Top             =   120
         Width           =   1455
      End
      Begin VB.Label lbl_menubks 
         Alignment       =   2  'Center
         BackColor       =   &H00404080&
         Caption         =   "Books"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   14.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00E0E0E0&
         Height          =   375
         Left            =   3480
         TabIndex        =   16
         Top             =   120
         Width           =   1215
      End
      Begin VB.Label lbl_menusearch 
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
         ForeColor       =   &H00E0E0E0&
         Height          =   375
         Left            =   5040
         TabIndex        =   15
         Top             =   120
         Width           =   1215
      End
      Begin VB.Label lbl_menulogin 
         Alignment       =   2  'Center
         BackColor       =   &H00404080&
         Caption         =   "Login"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   14.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00E0E0E0&
         Height          =   375
         Left            =   6480
         TabIndex        =   14
         Top             =   120
         Width           =   1215
      End
      Begin VB.Label lbl_menureg 
         Alignment       =   2  'Center
         BackColor       =   &H00404080&
         Caption         =   "Register"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   14.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00E0E0E0&
         Height          =   375
         Left            =   7920
         TabIndex        =   13
         Top             =   120
         Width           =   1335
      End
      Begin VB.Label lbl_menuviewcart 
         Alignment       =   2  'Center
         BackColor       =   &H00404080&
         Caption         =   "View Cart"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   14.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00E0E0E0&
         Height          =   375
         Left            =   9600
         TabIndex        =   12
         Top             =   120
         Width           =   1575
      End
      Begin VB.Label lbl_menucontact 
         Alignment       =   2  'Center
         BackColor       =   &H00404080&
         Caption         =   "Contact"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   14.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00E0E0E0&
         Height          =   375
         Left            =   11520
         TabIndex        =   11
         Top             =   120
         Width           =   1215
      End
   End
   Begin VB.Frame Frame10 
      BackColor       =   &H00C0E0FF&
      Height          =   1935
      Left            =   4920
      TabIndex        =   9
      Top             =   8040
      Width           =   1935
      Begin VB.Image Image1 
         Height          =   1455
         Index           =   8
         Left            =   120
         Stretch         =   -1  'True
         Top             =   240
         Width           =   1695
      End
   End
   Begin VB.Frame Frame9 
      BackColor       =   &H00C0E0FF&
      Height          =   1935
      Left            =   2640
      TabIndex        =   8
      Top             =   8040
      Width           =   1935
      Begin VB.Image Image1 
         Height          =   1455
         Index           =   7
         Left            =   120
         Stretch         =   -1  'True
         Top             =   240
         Width           =   1695
      End
   End
   Begin VB.Frame Frame8 
      BackColor       =   &H00C0E0FF&
      Height          =   1935
      Left            =   360
      TabIndex        =   7
      Top             =   8040
      Width           =   1935
      Begin VB.Image Image1 
         Height          =   1455
         Index           =   6
         Left            =   120
         Stretch         =   -1  'True
         Top             =   240
         Width           =   1695
      End
   End
   Begin VB.Frame Frame7 
      BackColor       =   &H00C0E0FF&
      Height          =   1935
      Left            =   4920
      TabIndex        =   6
      Top             =   5640
      Width           =   1935
      Begin VB.Image Image1 
         Height          =   1455
         Index           =   5
         Left            =   120
         Stretch         =   -1  'True
         Top             =   240
         Width           =   1695
      End
   End
   Begin VB.Frame Frame6 
      BackColor       =   &H00C0E0FF&
      Height          =   1935
      Left            =   4920
      TabIndex        =   5
      Top             =   3240
      Width           =   1935
      Begin VB.Image Image1 
         Height          =   1455
         Index           =   2
         Left            =   120
         Stretch         =   -1  'True
         Top             =   240
         Width           =   1695
      End
   End
   Begin VB.Frame Frame5 
      BackColor       =   &H00C0E0FF&
      Height          =   1935
      Left            =   2640
      TabIndex        =   4
      Top             =   5640
      Width           =   1935
      Begin VB.Image Image1 
         Height          =   1455
         Index           =   4
         Left            =   120
         Stretch         =   -1  'True
         Top             =   240
         Width           =   1695
      End
   End
   Begin VB.Frame Frame4 
      BackColor       =   &H00C0E0FF&
      Height          =   1935
      Left            =   360
      TabIndex        =   3
      Top             =   5640
      Width           =   1935
      Begin VB.Image Image1 
         Height          =   1455
         Index           =   3
         Left            =   120
         Stretch         =   -1  'True
         Top             =   240
         Width           =   1695
      End
   End
   Begin VB.Frame Frame2 
      BackColor       =   &H00C0E0FF&
      Height          =   1935
      Left            =   2640
      TabIndex        =   2
      Top             =   3240
      Width           =   1935
      Begin VB.Image Image1 
         Height          =   1455
         Index           =   1
         Left            =   120
         Stretch         =   -1  'True
         Top             =   240
         Width           =   1695
      End
   End
   Begin VB.Frame Frame1 
      BackColor       =   &H00C0E0FF&
      Height          =   1935
      Left            =   360
      TabIndex        =   1
      Top             =   3240
      Width           =   1935
      Begin VB.Image Image1 
         Height          =   1455
         Index           =   0
         Left            =   120
         Stretch         =   -1  'True
         Top             =   240
         Width           =   1695
      End
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Index           =   8
      Left            =   4920
      TabIndex        =   28
      Top             =   9960
      Width           =   1935
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Index           =   7
      Left            =   2640
      TabIndex        =   27
      Top             =   9960
      Width           =   1935
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Index           =   6
      Left            =   360
      TabIndex        =   26
      Top             =   9960
      Width           =   1935
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Index           =   5
      Left            =   4920
      TabIndex        =   25
      Top             =   7560
      Width           =   1935
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Index           =   4
      Left            =   2640
      TabIndex        =   24
      Top             =   7560
      Width           =   1935
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Index           =   3
      Left            =   360
      TabIndex        =   23
      Top             =   7560
      Width           =   1935
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Index           =   2
      Left            =   4920
      TabIndex        =   22
      Top             =   5160
      Width           =   1935
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Index           =   1
      Left            =   2640
      TabIndex        =   21
      Top             =   5160
      Width           =   1935
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      BackColor       =   &H00C0E0FF&
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Index           =   0
      Left            =   360
      TabIndex        =   20
      Top             =   5160
      Width           =   1935
   End
   Begin VB.Image Image2 
      Height          =   1965
      Left            =   0
      Picture         =   "Books.frx":0000
      Top             =   0
      Width           =   17250
   End
   Begin VB.Label lbl_catbks 
      Alignment       =   2  'Center
      BackColor       =   &H00C0E0FF&
      Caption         =   "CATEGORY BOOKS"
      BeginProperty Font 
         Name            =   "Perpetua"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   1920
      TabIndex        =   0
      Top             =   2760
      Width           =   3135
   End
End
Attribute VB_Name = "books"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Dim rs, rs1 As ADODB.Recordset
Dim cn As ADODB.Connection
Dim i, j, k, no1 As Integer
Dim cat As String

Private Sub cmd_cooking_Click()
    i = 0
    no1 = 0
    cat = "cooking"
    Set rs = New ADODB.Recordset
    If (cat = "All") Then
        rs.Open "(select * from books)", cn, adOpenDynamic, adLockOptimistic
    Else
        rs.Open "(select * from books where category='" + cat + "')", cn, adOpenDynamic, adLockOptimistic
    End If
    display (cat)
End Sub

Private Sub cmd_humor_Click()
    i = 0
    no1 = 0
    cat = "humor"
    Set rs = New ADODB.Recordset
    If (cat = "All") Then
        rs.Open "(select * from books)", cn, adOpenDynamic, adLockOptimistic
    Else
        rs.Open "(select * from books where category='" + cat + "')", cn, adOpenDynamic, adLockOptimistic
    End If
    display (cat)
End Sub

Private Sub cmd_mystery_Click()
    i = 0
    no1 = 0
    cat = "mystery"
    Set rs = New ADODB.Recordset
    If (cat = "All") Then
        rs.Open "(select * from books)", cn, adOpenDynamic, adLockOptimistic
    Else
        rs.Open "(select * from books where category='" + cat + "')", cn, adOpenDynamic, adLockOptimistic
    End If
    display (cat)
End Sub

Private Sub cmd_next_Click()
    no1 = 0
    display (cat)
End Sub

Private Sub cmd_romance_Click()
    i = 0
    no1 = 0
    cat = "romance"
    Set rs = New ADODB.Recordset
    If (cat = "All") Then
        rs.Open "(select * from books)", cn, adOpenDynamic, adLockOptimistic
    Else
        rs.Open "(select * from books where category='" + cat + "')", cn, adOpenDynamic, adLockOptimistic
    End If
    display (cat)
End Sub

Private Sub cmd_scifi_Click()
    i = 0
    no1 = 0
    cat = "scifi"
    Set rs = New ADODB.Recordset
    If (cat = "All") Then
        rs.Open "(select * from books)", cn, adOpenDynamic, adLockOptimistic
    Else
        rs.Open "(select * from books where category='" + cat + "')", cn, adOpenDynamic, adLockOptimistic
    End If
    display (cat)
End Sub

Private Sub Form_Load()
   
    Set cn = New ADODB.Connection
    cn.Open "dsn=connect;uid=b70;pwd=cummins"
    i = 0
    no1 = 0
    flag = 1
    j = 0
    cat = "All"
    Set rs1 = New ADODB.Recordset
    rs1.Open "(select * from books)", cn, adOpenDynamic, adLockOptimistic
    rs1.MoveFirst
    
    lbl_menuhome.ForeColor = &HE0E0E0
    lbl_menuabtus.ForeColor = &HE0E0E0
    lbl_menubks.ForeColor = &H80C0FF
    lbl_menusearch.ForeColor = &HE0E0E0
    lbl_menulogin.ForeColor = &HE0E0E0
    lbl_menureg.ForeColor = &HE0E0E0
    lbl_menuviewcart.ForeColor = &HE0E0E0
    lbl_menucontact.ForeColor = &HE0E0E0
    Set rs = New ADODB.Recordset
    If (cat = "All") Then
        rs.Open "(select * from books)", cn, adOpenDynamic, adLockOptimistic
    Else
        rs.Open "(select * from books where category='" + cat + "')", cn, adOpenDynamic, adLockOptimistic
    End If
    display (cat)
End Sub

Private Sub Image1_Click(Index As Integer)
    bk_det.bookdet (Label1(Index).Caption)
End Sub

Private Sub lbl_menuabtus_Click()
    contact.Hide
    register.Hide
    bk_det.Hide
    myaccount.Hide
    books.Hide
    home.Hide
    mycart.Hide
    searchbk.Hide
    aboutus.WindowState = 2
    aboutus.Show
End Sub

Private Sub lbl_menubks_Click()
    contact.Hide
    register.Hide
    myaccount.Hide
    aboutus.Hide
    bk_det.Hide
    home.Hide
    mycart.Hide
    searchbk.Hide
    books.WindowState = 2
    books.Show
End Sub

Private Sub lbl_menucontact_Click()
    register.Hide
    myaccount.Hide
    books.Hide
    aboutus.Hide
    bk_det.Hide
    home.Hide
    mycart.Hide
    searchbk.Hide
    contact.WindowState = 2
    contact.Show
End Sub

Private Sub lbl_menuhome_Click()
    contact.Hide
    register.Hide
    bk_det.Hide
    myaccount.Hide
    books.Hide
    aboutus.Hide
    mycart.Hide
    searchbk.Hide
    home.WindowState = 2
    home.Show
End Sub

Private Sub lbl_menulogin_Click()
    contact.Hide
    register.Hide
    books.Hide
    aboutus.Hide
    bk_det.Hide
    mycart.Hide
    searchbk.Hide
    home.Hide
    myaccount.WindowState = 2
    myaccount.Show
End Sub

Private Sub lbl_menureg_Click()
    contact.Hide
    myaccount.Hide
    books.Hide
    aboutus.Hide
    home.Hide
    bk_det.Hide
    mycart.Hide
    searchbk.Hide
    register.WindowState = 2
    register.Show
End Sub

Private Sub lbl_menusearch_Click()
    contact.Hide
    myaccount.Hide
    books.Hide
    aboutus.Hide
    bk_det.Hide
    home.Hide
    register.Hide
    mycart.Hide
    searchbk.WindowState = 2
    searchbk.Show
End Sub

Private Sub lbl_menuviewcart_Click()
    contact.Hide
    myaccount.Hide
    books.Hide
    aboutus.Hide
    bk_det.Hide
    home.Hide
    register.Hide
    searchbk.Hide
    mycart.WindowState = 2
    mycart.Show
End Sub


Private Sub Timer1_Timer()
    no = 0
    While (Not rs1.EOF)
        If (no <= 2) Then
            img_bkp(j Mod 3).Picture = LoadPicture(rs1(6))
            lbl_bkp(j Mod 3).Caption = rs1(1)
            j = j + 1
            no = no + 1
            rs1.MoveNext
        Else
            Exit Sub
        End If
    Wend
    If (rs1.EOF) Then
        rs1.MoveFirst
    End If
End Sub


Public Sub display(cat)
    While (Not rs.EOF)
        If (no1 <= 8) Then
            Image1(i Mod 9).Picture = LoadPicture(rs(6))
            Label1(i Mod 9).Caption = rs(1)
            i = i + 1
            no1 = no1 + 1
            rs.MoveNext
        Else
            Exit Sub
        End If
    Wend
    If (rs.EOF) Then
        rs.MoveFirst
        display (cat)
    End If
End Sub

