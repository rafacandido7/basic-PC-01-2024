Dim isPrime(100) As Integer
Dim i As Integer, j As Integer
Dim userNumber As Integer

' Inicializa todos os numeros como primos
For i = 2 To 100
    isPrime(i) = 1
Next i

' Crivo de Eratostenes
For i = 2 To Sqr(100) ' Checa ate a raiz quadrada de 100
    If isPrime(i) = 1 Then
        For j = i * i To 100 Step i ' Marca os multiplos de i como nao primos
            isPrime(j) = 0
        Next j
    End If
Next i

Print "Digite um numero entre 1 e 100:"
Input userNumber

If userNumber < 2 Or userNumber > 100 Then
    Print "Por favor, insira um numero válido entre 2 e 100."
Else
    If isPrime(userNumber) = 1 Then
        Print userNumber; " eh um numero primo."
    Else
        Print userNumber; " nao eh um numero primo."
        Print "Numeros primos ate "; userNumber; ":"

        ' Exibir os numeros primos ate o numero informado
        For i = 2 To userNumber
            If isPrime(i) = 1 Then
                Print i;
            End If
        Next i
    End If
End If

Print

