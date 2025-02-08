Late Binding and Type Mismatches: VBScript's late binding can lead to runtime errors if you don't carefully check object types before using their methods or properties.  For example, trying to call a method on a variable that unexpectedly holds a null value will throw an error.  Explicit type checking or using On Error Resume Next (with caution) can help mitigate this.

Example:
```vbscript
Dim obj
Set obj = CreateObject("Some.Object") ' Object might not exist
If obj Is Nothing Then
  MsgBox "Object creation failed!"
Else
  ' Use obj safely here
  obj.SomeMethod 'Error if SomeMethod doesn't exist or obj is wrong type
End If
```