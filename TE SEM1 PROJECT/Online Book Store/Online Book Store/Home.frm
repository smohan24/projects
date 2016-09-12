VERSION 5.00
Begin VB.Form home 
   BackColor       =   &H00C0E0FF&
   Caption         =   "Form1"
   ClientHeight    =   3090
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   4680
   BeginProperty Font 
      Name            =   "Arial"
      Size            =   14.25
      Charset         =   0
      Weight          =   700
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   ForeColor       =   &H0080C0FF&
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   Picture         =   "Home.frx":0000
   ScaleHeight     =   11010
   ScaleWidth      =   15240
   WindowState     =   2  'Maximized
   Begin VB.TextBox txt_desc 
      BackColor       =   &H00C0E0FF&
      BorderStyle     =   0  'None
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1335
      Index           =   1
      Left            =   2520
      MultiLine       =   -1  'True
      TabIndex        =   26
      Top             =   7560
      Width           =   4935
   End
   Begin VB.TextBox txt_desc 
      BackColor       =   &H00C0E0FF&
      BorderStyle     =   0  'None
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1335
      Index           =   0
      Left            =   2520
      MultiLine       =   -1  'True
      TabIndex        =   25
      Top             =   4200
      Width           =   4935
   End
   Begin VB.Timer Timer1 
      Interval        =   1000
      Left            =   120
      Top             =   10440
   End
   Begin VB.Frame fra_promotions 
      BackColor       =   &H00E0E0E0&
      Height          =   7815
      Left            =   8520
      TabIndex        =   12
      Top             =   2400
      Width           =   6735
      Begin VB.CommandButton Command5 
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
         TabIndex        =   19
         Top             =   6720
         Width           =   2175
      End
      Begin VB.CommandButton Command4 
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
         TabIndex        =   18
         Top             =   5880
         Width           =   1935
      End
      Begin VB.CommandButton Command3 
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
         TabIndex        =   17
         Top             =   5880
         Width           =   2175
      End
      Begin VB.CommandButton Command2 
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
         TabIndex        =   16
         Top             =   5040
         Width           =   1935
      End
      Begin VB.CommandButton Command1 
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
         TabIndex        =   15
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
         TabIndex        =   22
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
         TabIndex        =   21
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
         TabIndex        =   20
         Top             =   3000
         Width           =   1575
      End
      Begin VB.Label Label3 
         BackColor       =   &H00E0E0E0&
         Caption         =   "Promotions"
         ForeColor       =   &H00404080&
         Height          =   375
         Left            =   360
         TabIndex        =   14
         Top             =   240
         Width           =   1935
      End
      Begin VB.Label Label4 
         BackColor       =   &H00E0E0E0&
         Caption         =   "Categories"
         ForeColor       =   &H00404080&
         Height          =   375
         Left            =   480
         TabIndex        =   13
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
   Begin VB.Frame fra_menu 
      BackColor       =   &H00404080&
      BorderStyle     =   0  'None
      Caption         =   "Frame2"
      Height          =   495
      Left            =   0
      TabIndex        =   1
      Top             =   1920
      Width           =   15375
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
         ForeColor       =   &H00E0E0E0&
         Height          =   375
         Index           =   1
         Left            =   14520
         TabIndex        =   24
         Top             =   120
         Width           =   855
      End
      Begin VB.Label Label2 
         BackColor       =   &H00404080&
         Caption         =   "Log out"
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
         Left            =   13080
         TabIndex        =   23
         Top             =   120
         Width           =   1095
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
         TabIndex        =   9
         Top             =   120
         Width           =   1215
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
         TabIndex        =   8
         Top             =   120
         Width           =   1575
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
         TabIndex        =   7
         Top             =   120
         Width           =   1335
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
         TabIndex        =   6
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
         TabIndex        =   5
         Top             =   120
         Width           =   1215
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
         TabIndex        =   4
         Top             =   120
         Width           =   1215
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
         TabIndex        =   3
         Top             =   120
         Width           =   1455
      End
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
         TabIndex        =   2
         Top             =   120
         Width           =   1095
      End
   End
   Begin VB.Label lbl_bk 
      BackColor       =   &H00C0E0FF&
      ForeColor       =   &H00000000&
      Height          =   375
      Index           =   1
      Left            =   2520
      TabIndex        =   11
      Top             =   6960
      Width           =   4935
   End
   Begin VB.Label lbl_bk 
      BackColor       =   &H00C0E0FF&
      ForeColor       =   &H00000000&
      Height          =   375
      Index           =   0
      Left            =   2520
      TabIndex        =   10
      Top             =   3600
      Width           =   4935
   End
   Begin VB.Image img_bk 
      Height          =   1935
      Index           =   1
      Left            =   240
      Stretch         =   -1  'True
      Top             =   6960
      Width           =   1575
   End
   Begin VB.Image img_bk 
      Height          =   1935
      Index           =   0
      Left            =   240
      Stretch         =   -1  'True
      Top             =   3600
      Width           =   1575
   End
   Begin VB.Image Image1 
      Height          =   1965
      Left            =   0
      Picture         =   "Home.frx":45A1A
      Top             =   0
      Width           =   17250
   End
   Begin VB.Shape Shape1 
      FillColor       =   &H00C0E0FF&
      FillStyle       =   0  'Solid
      Height          =   2655
      Left            =   -120
      Top             =   -720
      Width           =   15255
   End
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   "Featured book"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00404080&
      Height          =   375
      Index           =   0
      Left            =   240
      TabIndex        =   0
      Top             =   2640
      Width           =   2295
   End
End
Attribute VB_Name = "home"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Dim rs, rs1 As ADODB.Recordset
Dim cn As ADODB.Connection
Dim i, j As Integer
Dim bkname As String


Private Sub Form_Load()
    Set cn = New ADODB.Connection
    cn.Open "dsn=connect;uid=b70;pwd=cummins"
    i = 0
    j = 0
    Set rs1 = New ADODB.Recordset
    rs1.Open "(select * from books)", cn, adOpenDynamic, adLockOptimistic
    rs1.MoveFirst
    
    lbl_menuhome.ForeColor = &H80C0FF
    lbl_menuabtus.ForeColor = &HE0E0E0
    lbl_menubks.ForeColor = &HE0E0E0
    lbl_menusearch.ForeColor = &HE0E0E0
    lbl_menuviewcart.ForeColor = &HE0E0E0
    lbl_menulogin.ForeColor = &HE0E0E0
    lbl_menureg.ForeColor = &HE0E0E0
    lbl_menucontact.ForeColor = &HE0E0E0
    
    Set rs = New ADODB.Recordset
    rs.Open "(select * from books)", cn, adOpenDynamic, adLockOptimistic
    rs.MoveLast
    While (Not rs.BOF)
        If (i <= 1) Then
            img_bk(i).Picture = LoadPicture(rs(6))
            lbl_bk(i).Caption = rs(1)
            txt_desc(i).Text = rs(8)
            i = i + 1
            rs.MovePrevious
        Else
            Exit Sub
        End If
    Wend
    rs.Close
End Sub

Private Sub img_bk_Click(Index As Integer)
    bk_det.bookdet (lbl_bk(Index).Caption)
End Sub


Private Sub Label1_Click(Index As Integer)
    Unload Me
End Sub

Private Sub Label2_Click()
     Set cn = New ADODB.Connection
     cn.Open "dsn=connect;uid=b70;pwd=cummins"
     cn.Execute "delete from temp"
     cn.Close
    End
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
