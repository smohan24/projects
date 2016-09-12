VERSION 5.00
Begin VB.Form mycart 
   BackColor       =   &H00C0E0FF&
   Caption         =   "Form1"
   ClientHeight    =   10950
   ClientLeft      =   165
   ClientTop       =   555
   ClientWidth     =   15240
   BeginProperty Font 
      Name            =   "Arial"
      Size            =   14.25
      Charset         =   0
      Weight          =   700
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   ForeColor       =   &H00FFFFFF&
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   ScaleHeight     =   10950
   ScaleWidth      =   15240
   WindowState     =   2  'Maximized
   Begin VB.Frame fra_menu 
      BackColor       =   &H00404080&
      BorderStyle     =   0  'None
      Caption         =   "Frame2"
      Height          =   495
      Left            =   0
      TabIndex        =   10
      Top             =   1920
      Width           =   15255
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
         TabIndex        =   18
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
         TabIndex        =   17
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
         TabIndex        =   16
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
         TabIndex        =   15
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
         TabIndex        =   14
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
         TabIndex        =   13
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
         TabIndex        =   12
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
         TabIndex        =   11
         Top             =   120
         Width           =   1095
      End
   End
   Begin VB.Frame Frame1 
      BackColor       =   &H00C0E0FF&
      Caption         =   "MY CART"
      BeginProperty Font 
         Name            =   "Palatino Linotype"
         Size            =   15.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      Height          =   8535
      Left            =   0
      TabIndex        =   0
      Top             =   2400
      Width           =   15255
      Begin VB.CommandButton Command1 
         Caption         =   "Refresh"
         Height          =   495
         Left            =   12960
         TabIndex        =   35
         Top             =   1320
         Width           =   1455
      End
      Begin VB.CommandButton cmd_next 
         Caption         =   ">>"
         Height          =   495
         Left            =   13440
         TabIndex        =   33
         Top             =   3240
         Width           =   615
      End
      Begin VB.TextBox Text3 
         BackColor       =   &H00C0E0FF&
         BorderStyle     =   0  'None
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   10440
         TabIndex        =   9
         Top             =   9720
         Width           =   2295
      End
      Begin VB.Label Label8 
         BackColor       =   &H00C0E0FF&
         Caption         =   "Rs"
         Height          =   375
         Left            =   9000
         TabIndex        =   34
         Top             =   6600
         Width           =   615
      End
      Begin VB.Label lbl_nettotal 
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
         Left            =   9600
         TabIndex        =   32
         Top             =   6600
         Width           =   1335
      End
      Begin VB.Label lbl_carttotal 
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
         Index           =   2
         Left            =   9840
         TabIndex        =   31
         Top             =   5040
         Width           =   1095
      End
      Begin VB.Label lbl_carttotal 
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
         Index           =   1
         Left            =   9840
         TabIndex        =   30
         Top             =   3240
         Width           =   1095
      End
      Begin VB.Label lbl_carttotal 
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
         Index           =   0
         Left            =   9840
         TabIndex        =   29
         Top             =   1560
         Width           =   1095
      End
      Begin VB.Label lbl_cartqty 
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
         Index           =   2
         Left            =   8040
         TabIndex        =   28
         Top             =   5040
         Width           =   975
      End
      Begin VB.Label lbl_cartqty 
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
         Index           =   1
         Left            =   8040
         TabIndex        =   27
         Top             =   3240
         Width           =   975
      End
      Begin VB.Label lbl_cartqty 
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
         Index           =   0
         Left            =   8040
         TabIndex        =   26
         Top             =   1560
         Width           =   975
      End
      Begin VB.Label lbl_cartunitp 
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
         Index           =   2
         Left            =   5760
         TabIndex        =   25
         Top             =   5040
         Width           =   1575
      End
      Begin VB.Label lbl_cartunitp 
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
         Index           =   1
         Left            =   5760
         TabIndex        =   24
         Top             =   3240
         Width           =   1575
      End
      Begin VB.Label lbl_confirm 
         Alignment       =   2  'Center
         BackColor       =   &H00404080&
         Caption         =   "Confirm"
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
         Left            =   720
         TabIndex        =   23
         Top             =   6600
         Width           =   1695
      End
      Begin VB.Shape Shape1 
         BackColor       =   &H00404080&
         BackStyle       =   1  'Opaque
         Height          =   615
         Left            =   480
         Shape           =   4  'Rounded Rectangle
         Top             =   6480
         Width           =   2175
      End
      Begin VB.Label lbl_cartunitp 
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
         Index           =   0
         Left            =   5640
         TabIndex        =   22
         Top             =   1560
         Width           =   1575
      End
      Begin VB.Label lbl_cartbk 
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
         Index           =   2
         Left            =   2160
         TabIndex        =   21
         Top             =   5040
         Width           =   2415
      End
      Begin VB.Label lbl_cartbk 
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
         Index           =   1
         Left            =   2160
         TabIndex        =   20
         Top             =   3240
         Width           =   2415
      End
      Begin VB.Label lbl_cartbk 
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
         Index           =   0
         Left            =   2160
         TabIndex        =   19
         Top             =   1560
         Width           =   2415
      End
      Begin VB.Image img_pic 
         Height          =   1335
         Index           =   2
         Left            =   360
         Stretch         =   -1  'True
         Top             =   4440
         Width           =   1095
      End
      Begin VB.Image img_pic 
         Height          =   1335
         Index           =   1
         Left            =   360
         Stretch         =   -1  'True
         Top             =   2760
         Width           =   1095
      End
      Begin VB.Image img_pic 
         Height          =   1335
         Index           =   0
         Left            =   360
         Stretch         =   -1  'True
         Top             =   1080
         Width           =   1095
      End
      Begin VB.Label Label9 
         BackStyle       =   0  'Transparent
         Caption         =   "NET TOTAL:"
         BeginProperty Font 
            Name            =   "MS Serif"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   7560
         TabIndex        =   8
         Top             =   9840
         Width           =   2775
      End
      Begin VB.Label Label7 
         BackStyle       =   0  'Transparent
         Caption         =   "TOTAL:"
         BeginProperty Font 
            Name            =   "MS Serif"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   7680
         TabIndex        =   7
         Top             =   6600
         Width           =   1095
      End
      Begin VB.Line Line1 
         BorderColor     =   &H00004080&
         X1              =   120
         X2              =   12960
         Y1              =   6360
         Y2              =   6360
      End
      Begin VB.Label Label6 
         BackColor       =   &H00C0E0FF&
         Caption         =   "Check, if any book you want to remove from your cart."
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   360
         TabIndex        =   6
         Top             =   6000
         Width           =   7335
      End
      Begin VB.Label Label5 
         BackStyle       =   0  'Transparent
         Caption         =   "TOTAL"
         BeginProperty Font 
            Name            =   "MS Serif"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   9960
         TabIndex        =   5
         Top             =   600
         Width           =   1095
      End
      Begin VB.Label Label4 
         BackStyle       =   0  'Transparent
         Caption         =   "QTY"
         BeginProperty Font 
            Name            =   "MS Serif"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   8160
         TabIndex        =   4
         Top             =   600
         Width           =   735
      End
      Begin VB.Label Label1 
         BackStyle       =   0  'Transparent
         Caption         =   "UNIT PRICE"
         BeginProperty Font 
            Name            =   "MS Serif"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   5640
         TabIndex        =   3
         Top             =   600
         Width           =   1815
      End
      Begin VB.Label Label3 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         Caption         =   "BOOK NAME"
         BeginProperty Font 
            Name            =   "MS Serif"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   2520
         TabIndex        =   2
         Top             =   600
         Width           =   1695
      End
      Begin VB.Label Label2 
         BackStyle       =   0  'Transparent
         Caption         =   "ITEM PIC"
         BeginProperty Font 
            Name            =   "MS Serif"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   360
         TabIndex        =   1
         Top             =   600
         Width           =   1215
      End
   End
   Begin VB.Image Image8 
      Height          =   1965
      Left            =   0
      Picture         =   "Mycart.frx":0000
      Top             =   0
      Width           =   17250
   End
End
Attribute VB_Name = "mycart"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim rs, rs1, rs2 As ADODB.Recordset
Dim cn As ADODB.Connection
Dim id As String
Dim bkid As String
Dim qty As String
Dim flag As Boolean

Private Sub cmd_next_Click()
    display
End Sub

Private Sub Form_Load()
    Set cn = New ADODB.Connection
    cn.Open "dsn=connect;uid=b70;pwd=cummins"
    i = 0
    j = 0
    flag = False
    lbl_menuhome.ForeColor = &HE0E0E0
    lbl_menuabtus.ForeColor = &HE0E0E0
    lbl_menubks.ForeColor = &HE0E0E0
    lbl_menusearch.ForeColor = &HE0E0E0
    lbl_menulogin.ForeColor = &HE0E0E0
    lbl_menureg.ForeColor = &HE0E0E0
    lbl_menuviewcart.ForeColor = &H80C0FF
    lbl_menucontact.ForeColor = &HE0E0E0
    cn.Close
End Sub
    
Private Sub Command1_Click()
    j = 0
    Set cn = New ADODB.Connection
    cn.Open "dsn=connect;uid=b70;pwd=cummins"
    Set rs = New ADODB.Recordset
    rs.Open "(select * from temp)", cn, adOpenDynamic, adLockOptimistic
    If (Not rs.EOF) Then
        rs.MoveFirst
    Else
        Exit Sub
    End If
    display
    End Sub
    
Public Sub display()
    no = 0
    While (Not rs.EOF)
        If (no <= 2) Then
            id = rs(1)
            Set rs1 = New ADODB.Recordset
            rs1.Open "(select * from books where bookid='" + id + "')", cn, adOpenDynamic, adLockOptimistic
            If (Not rs1.EOF) Then
            
                rs1.MoveFirst
            Else
                Exit Sub
            End If
            img_pic(j Mod 3).Picture = LoadPicture(rs1(6))
            lbl_cartbk(j Mod 3).Caption = rs1(1)
            lbl_cartunitp(j Mod 3).Caption = rs1(4)
            lbl_cartqty(j Mod 3).Caption = rs(2)
            lbl_carttotal(j Mod 3).Caption = rs(4)
            j = j + 1
            no = no + 1
            rs.MoveNext
            rs1.Close
        Else
            Exit Sub
        End If
    Wend
            While (no <= 2)
            img_pic(no).Picture = LoadPicture("")
            lbl_cartbk(no).Caption = ""
            lbl_cartunitp(no).Caption = ""
            lbl_cartqty(no).Caption = ""
            lbl_carttotal(no).Caption = ""
            no = no + 1
            j = j + 1
    Wend
    If (rs.EOF) Then
        rs.MoveFirst
    End If
    
End Sub

Private Sub lbl_confirm_Click()
    If (myaccount.txt_uid.Text <> "") Then
        net_total = 0

        Set rs2 = New ADODB.Recordset
        
        rs2.Open "(select * from temp)", cn, adOpenDynamic, adLockOptimistic
        If (Not rs2.EOF) Then
            rs2.MoveFirst
        Else
            MsgBox "First place the order !", , "Error"
            Exit Sub
        End If
        cn.Execute "insert into cart select * from temp"
        MsgBox "Order has been placed !"
        
        While (Not rs2.EOF)
            net_total = net_total + rs2(4)
            rs2.MoveNext
        Wend
        rs2.Close
        rs2.Open "(select * from temp)", cn, adOpenDynamic, adLockOptimistic
        While (Not rs2.EOF)
            bkid = rs2(1)
            qty = rs2(2)
            cn.Execute "update books set copies=copies-'" + qty + "' where bookid='" + bkid + "'"
            rs2.MoveNext
        Wend
        lbl_nettotal.Caption = net_total
        cn.Execute "insert into bill values('" + myaccount.txt_uid.Text + "',sysdate,'" + lbl_nettotal.Caption + "')"
        cn.Execute "delete from temp"
    Else
        MsgBox "You can place an order only if you login !", , "Error"
    End If
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

