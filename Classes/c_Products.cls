VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
END
Attribute VB_Name = "c_Products"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
'c_Products
Private mcol As Collection

Public Function Add(Nom As String, _
            Optional Produit As Product = Nothing, _
            Optional Parent As String = "") As c_Product
    
    Dim objNewMember As c_Product
    Set objNewMember = New c_Product
    
    objNewMember.Nom = Nom
    objNewMember.Produit = Produit
    objNewMember.Parent = Parent

    mcol.Add objNewMember, Nom

    Set Add = objNewMember
    Set objNewMember = Nothing

End Function

Public Property Get Item(vntIndexKey As Variant) As c_Product
  Set Item = mcol(vntIndexKey)
End Property

Public Property Get Count() As Long
    Count = mcol.Count
End Property

Public Property Get Items() As Collection
    Set Items = mcol
End Property

Public Sub Remove(vntIndexKey As Variant)
    mcol.Remove vntIndexKey
End Sub

Private Sub Class_initialize()
    Set mcol = New Collection
End Sub

Private Sub Class_Terminate()
    Set mcol = Nothing
End Sub






