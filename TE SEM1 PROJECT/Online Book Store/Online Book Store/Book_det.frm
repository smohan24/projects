VERSION 5.00
Begin VB.Form bk_det 
   BackColor       =   &H00C0E0FF&
   ClientHeight    =   3090
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   4680
   BeginProperty Font 
      Name            =   "Courier New"
      Size            =   15.75
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
   Begin VB.TextBox txt_desc 
      BackColor       =   &H00C2E8FC&
      BorderStyle     =   0  'None
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   2535
      Left            =   10560
      MultiLine       =   -1  'True
      TabIndex        =   20
      Top             =   6360
      Width           =   3735
   End
   Begin VB.TextBox txt_bkid 
      BackColor       =   &H00C0E0FF&
      BorderStyle     =   0  'None
      Height          =   465
      Left            =   480
      TabIndex        =   18
      Top             =   7800
      Visible         =   0   'False
      Width           =   1815
   End
   Begin VB.Frame fra_menu 
      BackColor       =   &H00404080&
      BorderStyle     =   0  'None
      Caption         =   "Frame2"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   0
      TabIndex        =   6
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
         TabIndex        =   14
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
         TabIndex        =   13
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
         TabIndex        =   12
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
         TabIndex        =   11
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
         TabIndex        =   10
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
         TabIndex        =   9
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
         TabIndex        =   8
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
         TabIndex        =   7
         Top             =   120
         Width           =   1215
      End
   End
   Begin VB.TextBox txt_qty 
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   405
      Left            =   5160
      TabIndex        =   4
      Top             =   7560
      Width           =   1095
   End
   Begin VB.Label Label5 
      BackColor       =   &H00C2E8FC&
      Caption         =   "Description"
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
      Left            =   10560
      TabIndex        =   19
      Top             =   5640
      Width           =   2175
   End
   Begin VB.Shape Shape1 
      FillColor       =   &H00C2E8FC&
      FillStyle       =   0  'Solid
      Height          =   4095
      Left            =   10080
      Shape           =   4  'Rounded Rectangle
      Top             =   5280
      Width           =   4695
   End
   Begin VB.Label lbl_price 
      BackColor       =   &H00C2E8FC&
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
      Left            =   5040
      TabIndex        =   17
      Top             =   6720
      Width           =   2055
   End
   Begin VB.Label lbl_author 
      BackColor       =   &H00C2E8FC&
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
      Left            =   5040
      TabIndex        =   16
      Top             =   5880
      Width           =   3975
   End
   Begin VB.Label lbl_bkname 
      BackColor       =   &H00C0E0FF&
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
      TabIndex        =   15
      Top             =   4440
      Width           =   6255
   End
   Begin VB.Image Image2 
      Height          =   1965
      Left            =   0
      Picture         =   "Book_det.frx":0000
      Top             =   0
      Width           =   17250
   End
   Begin VB.Label lbl_order 
      Alignment       =   2  'Center
      BackColor       =   &H00004080&
      Caption         =   "Order"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00E0E0E0&
      Height          =   375
      Left            =   5160
      TabIndex        =   5
      Top             =   8520
      Width           =   1215
   End
   Begin VB.Shape Shape4 
      BackColor       =   &H00004080&
      BackStyle       =   1  'Opaque
      Height          =   615
      Left            =   5040
      Shape           =   4  'Rounded Rectangle
      Top             =   8400
      Width           =   1455
   End
   Begin VB.Label Label4 
      BackStyle       =   0  'Transparent
      Caption         =   "Qty : "
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   3720
      TabIndex        =   3
      Top             =   7560
      Width           =   735
   End
   Begin VB.Label Label3 
      BackStyle       =   0  'Transparent
      Caption         =   "Price :"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   3720
      TabIndex        =   2
      Top             =   6720
      Width           =   855
   End
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
      Caption         =   "Author : "
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   3720
      TabIndex        =   1
      Top             =   5880
      Width           =   1095
   End
   Begin VB.Shape Shape3 
      BackColor       =   &H00C2E8FC&
      BackStyle       =   1  'Opaque
      Height          =   4095
      Left            =   3360
      Shape           =   4  'Rounded Rectangle
      Top             =   5280
      Width           =   6255
   End
   Begin VB.Image Image1 
      Height          =   2175
      Left            =   480
      Stretch         =   -1  'True
      Top             =   5280
      Width           =   1815
   End
   Begin VB.Label Label1 
      BackColor       =   &H00004080&
      Caption         =   "<< Back"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00E0E0E0&
      Height          =   375
      Left            =   480
      TabIndex        =   0
      Top             =   3360
      Width           =   1095
   End
   Begin VB.Shape Shape2 
      BackColor       =   &H00004080&
      BackStyle       =   1  'Opaque
      Height          =   495
      Left            =   360
      Shape           =   4  'Rounded Rectangle
      Top             =   3240
      Width           =   1335
   End
End
Attribute VB_Name = "bk_det"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim rs As ADODB.Recordset
Dim cn As ADODB.Connection
Dim bkname, unitp, totalp As String


Private Sub Form_Load()
   
    lbl_menuhome.ForeColor = &HE0E0E0
    lbl_menuabtus.ForeColor = &HE0E0E0
    lbl_menubks.ForeColor = &H80C0FF
    lbl_menusearch.ForeColor = &HE0E0E0
    lbl_menulogin.ForeColor = &HE0E0E0
    lbl_menureg.ForeColor = &HE0E0E0
    lbl_menuviewcart.ForeColor = &HE0E0E0
    lbl_menucontact.ForeColor = &HE0E0E0
End Sub

Public Sub bookdet(bkname)
    bk_det.Show
    Set cn = New ADODB.Connection
    cn.Open "dsn=connect;uid=b70;pwd=cummins"
    Set rs = New ADODB.Recordset
    rs.Open "(select * from books where bookname='" + bkname + "')", cn, adOpenDynamic, adLockOptimistic
    lbl_bkname.Caption = rs(1)
    Image1.Picture = LoadPicture(rs(6))
    lbl_author.Caption = rs(2)
    lbl_price.Caption = rs(4)
    txt_bkid.Text = rs(0)
    unitp = rs(4)
    txt_desc.Text = rs(8)
    rs.Close
    cn.Close
End Sub

Private Sub Label1_Click()
    Unload Me
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


Private Sub lbl_order_Click()
    Set cn = New ADODB.Connection
    cn.Open "dsn=connect;uid=b70;pwd=cummins"
    If (txt_qty.Text = "") Then
        MsgBox "Enter the no of books you want to order !", , "Error"
        Exit Sub
    Else
        If (myaccount.txt_uid.Text <> "") Then
            totalp = Val(unitp) * Val(txt_qty.Text)
            cn.Execute "insert into temp values('" + myaccount.txt_uid.Text + "','" + txt_bkid.Text + "','" + txt_qty.Text + "',sysdate,'" + totalp + "')"
            cn.Close
            MsgBox "Item has been added to cart !"
            txt_qty.Text = ""
        Else
            MsgBox "You can add an item to the cart only if you login !", , "Error"
        End If
    End If
End Sub


Private Sub txt_qty_KeyPress(KeyAscii As Integer)
If (KeyAscii < 48 Or KeyAscii > 57) Then
    If (KeyAscii <> 8) Then
        KeyAscii = 0
        MsgBox "Enter only positive no.", vbOKOnly
    End If
End If
End Sub
