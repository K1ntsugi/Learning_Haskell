type Name = String
type Adresse = String
type Adressbuch = [(Name, Adresse)]

eintrag :: Name -> Adressbuch -> Adresse
eintrag name ((n,a):r)
    | eintrag == n = a
    | otherwise = eintrag name r
eintrag _ [] = error "nicht enthalten"


main :: IO()
main = print(eintrag("Max", ("Max", "91235 Hartenstein")))