VERSION 5.00
Begin VB.Form myaccount 
   BackColor       =   &H00C0E0FF&
   Caption         =   "Form1"
   ClientHeight    =   3030
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   4560
   FillStyle       =   0  'Solid
   BeginProperty Font 
      Name            =   "Microsoft Sans Serif"
      Size            =   14.25
      Charset         =   0
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   ScaleHeight     =   11010
   ScaleWidth      =   15240
   WindowState     =   2  'Maximized
   Begin VB.TextBox txt_uid 
      BackColor       =   &H00C0E0FF&
      BorderStyle     =   0  'None
      Height          =   450
      Left            =   5280
      TabIndex        =   17
      Top             =   3240
      Visible         =   0   'False
      Width           =   2175
   End
   Begin VB.Frame fra_menu 
      BackColor       =   &H00404080&
      BorderStyle     =   0  'None
      Caption         =   "Frame2"
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   0
      TabIndex        =   8
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
         TabIndex        =   16
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
         TabIndex        =   15
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
         TabIndex        =   14
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
         TabIndex        =   13
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
         TabIndex        =   12
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
         TabIndex        =   11
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
         TabIndex        =   10
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
         TabIndex        =   9
         Top             =   120
         Width           =   1215
      End
   End
   Begin VB.CheckBox Check1 
      BackColor       =   &H00C0E0FF&
      Caption         =   "   Remember   Me"
      BeginProperty Font 
         Name            =   "Century Gothic"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000C0&
      Height          =   435
      Left            =   4440
      TabIndex        =   5
      Top             =   6720
      Width           =   2535
   End
   Begin VB.TextBox txt_password 
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   435
      IMEMode         =   3  'DISABLE
      Left            =   4440
      PasswordChar    =   "*"
      TabIndex        =   4
      Top             =   5880
      Width           =   4455
   End
   Begin VB.TextBox txt_username 
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   435
      Left            =   4440
      TabIndex        =   3
      Top             =   5040
      Width           =   4455
   End
   Begin VB.Image Image1 
      Height          =   1965
      Left            =   0
      Picture         =   "MyAccount.frx":0000
      Top             =   0
      Width           =   17250
   End
   Begin VB.Line Line5 
      BorderStyle     =   3  'Dot
      X1              =   12000
      X2              =   12000
      Y1              =   8640
      Y2              =   4080
   End
   Begin VB.Label lbl_login 
      Alignment       =   2  'Center
      BackColor       =   &H00404080&
      Caption         =   "Login"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   15.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   375
      Left            =   8280
      TabIndex        =   7
      Top             =   7680
      Width           =   1575
   End
   Begin VB.Shape Shape1 
      BackColor       =   &H00FFFFFF&
      FillColor       =   &H00404080&
      FillStyle       =   0  'Solid
      Height          =   615
      Left            =   8040
      Shape           =   4  'Rounded Rectangle
      Top             =   7560
      Width           =   2055
   End
   Begin VB.Line Line4 
      BorderStyle     =   3  'Dot
      X1              =   1200
      X2              =   12000
      Y1              =   8640
      Y2              =   8640
   End
   Begin VB.Line Line3 
      BorderStyle     =   3  'Dot
      X1              =   1200
      X2              =   1200
      Y1              =   4080
      Y2              =   8640
   End
   Begin VB.Line Line2 
      BorderStyle     =   3  'Dot
      X1              =   1200
      X2              =   1680
      Y1              =   4080
      Y2              =   4080
   End
   Begin VB.Line Line1 
      BorderStyle     =   3  'Dot
      X1              =   5400
      X2              =   12000
      Y1              =   4080
      Y2              =   4080
   End
   Begin VB.Label Label4 
      Alignment       =   2  'Center
      BackColor       =   &H00404080&
      Caption         =   "Login  to  your  Account"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   15.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   495
      Left            =   1680
      TabIndex        =   6
      Top             =   3840
      Width           =   3735
   End
   Begin VB.Label Label3 
      BackColor       =   &H00C0E0FF&
      Caption         =   "Password :"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   1800
      TabIndex        =   2
      Top             =   5880
      Width           =   1815
   End
   Begin VB.Label Label2 
      BackColor       =   &H00C0E0FF&
      Caption         =   "Username :"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   1920
      TabIndex        =   1
      Top             =   5040
      Width           =   1815
   End
   Begin VB.Label Label1 
      BackColor       =   &H00C0E0FF&
      Caption         =   "My Account"
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   20.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00404080&
      Height          =   615
      Left            =   1200
      TabIndex        =   0
      Top             =   2760
      Width           =   2535
   End
End
Attribute VB_Name = "myaccount"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim rs As ADODB.Recordset
Dim cn As ADODB.Connection
Dim pswd, uname As String

Private Sub Form_Load()
  
    Set cn = New ADODB.Connection
    cn.Open "dsn=connect;uid=b70;pwd=cummins"
    lbl_menuhome.ForeColor = &HE0E0E0
    lbl_menuabtus.ForeColor = &HE0E0E0
    lbl_menubks.ForeColor = &HE0E0E0
    lbl_menusearch.ForeColor = &HE0E0E0
    lbl_menulogin.ForeColor = &H80C0FF
    lbl_menureg.ForeColor = &HE0E0E0
    lbl_menuviewcart.ForeColor = &HE0E0E0
    lbl_menucontact.ForeColor = &HE0E0E0
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


Private Sub lbl_login_Click()
    Set rs = New ADODB.Recordset
    rs.Open "(select * from user_db where role='u')", cn, adOpenDynamic, adLockOptimistic
    uname = txt_username.Text
    pswd = txt_password.Text
    If (uname = "") Then
        MsgBox "Enter username"
        Exit Sub
    End If
    If (pswd = "") Then
        MsgBox ("Enter password")
        Exit Sub
    End If
    While (Not rs.EOF)
        If (rs(6) = uname And rs(7) = pswd) Then
            MsgBox "Login successful"
            txt_uid.Visible = False
            txt_uid.Text = rs(0)
            txt_username.Text = ""
            txt_password.Text = ""
            rs.Close
            Exit Sub
        End If
        rs.MoveNext
    Wend
    If (rs.EOF) Then
        MsgBox "Invalid username or password"
    End If
End Sub



