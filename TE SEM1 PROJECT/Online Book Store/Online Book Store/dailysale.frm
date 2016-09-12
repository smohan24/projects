VERSION 5.00
Begin VB.Form dailysale 
   BackColor       =   &H00C0E0FF&
   Caption         =   "Form1"
   ClientHeight    =   3030
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   4560
   ForeColor       =   &H00FFFFFF&
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   ScaleHeight     =   3030
   ScaleWidth      =   4560
   WindowState     =   2  'Maximized
   Begin VB.ComboBox cmb_month 
      Height          =   315
      ItemData        =   "dailysale.frx":0000
      Left            =   6240
      List            =   "dailysale.frx":0028
      TabIndex        =   8
      Top             =   360
      Width           =   975
   End
   Begin VB.ComboBox cmb_day 
      Height          =   315
      ItemData        =   "dailysale.frx":0068
      Left            =   3720
      List            =   "dailysale.frx":00C9
      TabIndex        =   6
      Top             =   360
      Width           =   735
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
      TabIndex        =   4
      Top             =   360
      Width           =   1455
   End
   Begin VB.Frame Frame1 
      BackColor       =   &H00C0C0FF&
      Height          =   9135
      Left            =   720
      TabIndex        =   1
      Top             =   1440
      Width           =   9855
      Begin VB.Label lbl_copies 
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Index           =   8
         Left            =   6720
         TabIndex        =   26
         Top             =   8160
         Width           =   1335
      End
      Begin VB.Label lbl_copies 
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Index           =   7
         Left            =   6720
         TabIndex        =   25
         Top             =   7320
         Width           =   1335
      End
      Begin VB.Label lbl_copies 
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Index           =   6
         Left            =   6720
         TabIndex        =   24
         Top             =   6480
         Width           =   1335
      End
      Begin VB.Label lbl_copies 
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Index           =   5
         Left            =   6720
         TabIndex        =   23
         Top             =   5640
         Width           =   1335
      End
      Begin VB.Label lbl_copies 
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Index           =   4
         Left            =   6720
         TabIndex        =   22
         Top             =   4800
         Width           =   1335
      End
      Begin VB.Label lbl_copies 
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Index           =   3
         Left            =   6720
         TabIndex        =   21
         Top             =   3960
         Width           =   1335
      End
      Begin VB.Label lbl_copies 
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Index           =   2
         Left            =   6720
         TabIndex        =   20
         Top             =   3120
         Width           =   1335
      End
      Begin VB.Label lbl_copies 
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Index           =   1
         Left            =   6720
         TabIndex        =   19
         Top             =   2280
         Width           =   1335
      End
      Begin VB.Label lbl_copies 
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Index           =   0
         Left            =   6720
         TabIndex        =   18
         Top             =   1440
         Width           =   1335
      End
      Begin VB.Label lbl_bk 
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Index           =   8
         Left            =   480
         TabIndex        =   17
         Top             =   8160
         Width           =   4575
      End
      Begin VB.Label lbl_bk 
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Index           =   7
         Left            =   480
         TabIndex        =   16
         Top             =   7320
         Width           =   4575
      End
      Begin VB.Label lbl_bk 
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Index           =   6
         Left            =   480
         TabIndex        =   15
         Top             =   6480
         Width           =   4575
      End
      Begin VB.Label lbl_bk 
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Index           =   5
         Left            =   480
         TabIndex        =   14
         Top             =   5640
         Width           =   4575
      End
      Begin VB.Label lbl_bk 
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Index           =   4
         Left            =   480
         TabIndex        =   13
         Top             =   4800
         Width           =   4575
      End
      Begin VB.Label lbl_bk 
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Index           =   3
         Left            =   480
         TabIndex        =   12
         Top             =   3960
         Width           =   4575
      End
      Begin VB.Label lbl_bk 
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Index           =   2
         Left            =   480
         TabIndex        =   11
         Top             =   3120
         Width           =   4575
      End
      Begin VB.Label lbl_bk 
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Index           =   1
         Left            =   480
         TabIndex        =   10
         Top             =   2280
         Width           =   4575
      End
      Begin VB.Label lbl_bk 
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Index           =   0
         Left            =   480
         TabIndex        =   9
         Top             =   1440
         Width           =   4575
      End
      Begin VB.Line Line6 
         X1              =   0
         X2              =   0
         Y1              =   120
         Y2              =   9120
      End
      Begin VB.Line Line5 
         X1              =   0
         X2              =   9840
         Y1              =   9120
         Y2              =   9120
      End
      Begin VB.Line Line4 
         X1              =   9840
         X2              =   9840
         Y1              =   120
         Y2              =   9120
      End
      Begin VB.Line Line3 
         X1              =   0
         X2              =   9840
         Y1              =   120
         Y2              =   120
      End
      Begin VB.Line Line2 
         X1              =   0
         X2              =   9840
         Y1              =   1200
         Y2              =   1200
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
         TabIndex        =   3
         Top             =   360
         Width           =   2295
      End
      Begin VB.Line Line1 
         X1              =   5520
         X2              =   5520
         Y1              =   120
         Y2              =   9120
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
         TabIndex        =   2
         Top             =   360
         Width           =   2295
      End
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
      Left            =   8040
      Style           =   1  'Graphical
      TabIndex        =   0
      Top             =   360
      Width           =   735
   End
   Begin VB.Label Label4 
      Caption         =   "Month :"
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
      Left            =   4920
      TabIndex        =   7
      Top             =   360
      Width           =   975
   End
   Begin VB.Label Label1 
      Caption         =   "Day : "
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
      Left            =   2640
      TabIndex        =   5
      Top             =   360
      Width           =   855
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
End
Attribute VB_Name = "dailysale"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim rs As ADODB.Recordset
Dim cn As ADODB.Connection

Private Sub Form_Load()
    Set cn = New ADODB.Connection
    cn.Open "dsn=connect;uid=b70;pwd=cummins"
    no = 0
    j = 0
End Sub

Private Sub cmd_back_Click()
Unload Me
End Sub

Private Sub Command1_Click()
    Set rs = New ADODB.Recordset
    rs.Open "(select bookno,sum(qty) from cart where tdate like '03-OCT-12' group by(bookno))", cn, adOpenDynamic, adLockOptimistic
    If (Not rs.EOF) Then
        rs.MoveFirst
    Else
        Exit Sub
    End If
    
    no = 0
    While (Not rs.EOF)
        If (no <= 8) Then
            id = rs(0)
            Set rs1 = New ADODB.Recordset
            rs1.Open "(select * from books where bookid='" + id + "')", cn, adOpenDynamic, adLockOptimistic
            rs1.MoveFirst
            lbl_bk(j Mod 9).Caption = rs1(1)
            lbl_copies(j Mod 9).Caption = rs(1)
            j = j + 1
            no = no + 1
            rs.MoveNext
            rs1.Close
        Else
            Exit Sub
        End If
    Wend
            While (no <= 8)
            lbl_bk(j Mod 9).Caption = ""
            lbl_copies(j Mod 9).Caption = ""
            no = no + 1
    Wend
    If (rs.EOF) Then
        rs.MoveFirst
    End If
    
End Sub
    


