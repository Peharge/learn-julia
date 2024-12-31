# Importiere das Testmodul
using Test

# Beispiel-Funktion, die wir testen wollen
function addiere(a, b)
    return a + b
end

# Erstellen von Tests für die Funktion
@test addiere(1, 2) == 3          # Test 1: sollte 3 zurückgeben
@test addiere(-1, 1) == 0         # Test 2: sollte 0 zurückgeben
@test addiere(0, 0) == 0          # Test 3: sollte 0 zurückgeben
@test addiere(100, 250) == 350    # Test 4: sollte 350 zurückgeben

println("Alle Tests wurden erfolgreich ausgeführt.")
