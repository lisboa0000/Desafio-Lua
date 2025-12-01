--[[ 

    Nome da criatura
    Decrição
    Som que faz
    Atributos
        Ataques
        Defesa
        Vitalidade
        Velocidade
        Inteligência
    Habilidades
        Furtividade
        Explosão

==================================================
/
/ CREEPER
/ Um monstro muito sagaz que explode na sua cara.
/
    Som: Tssssss

/ Atributos:
/   Ataques: ########00
/   Defesa:  ###0000000
/   ...
/
===================================================


]]

--  Habilitar UTF-8 no console do Windows
os.execute("chcp 65001")

-- Criatura
local monsterName = "CREEPER"
local description = "Um monstro furtivo com um temperamento explosivo."
local emoji = "💥"
local sound = "Tssssss"
local favoriteTime = "Noturno"
local items = {"Pólvora", "Cabeça de Creeper", "Olho de Ender"}

-- Atributos
local attackAttribute = 10
local defenseAttribute = 1
local lifeAttribute = 5
local speedAttribute = 7
local inteligenceAttribute = 2

-- função para receber um atributo e retornar uma barra de progresso em string / texto
local function getProgressBar(attribute)
    local fullChar = "⬜"      -- variaveis locais     --Char: caractere
    local emptyChar = "⬛"     -- variaveis locais

    local result = ""
    for i = 1, 10, 1 do
        if i <= attribute then
          result = result .. fullChar
        else
            result = result .. emptyChar
        end
    end
    return result
end
-- Cartão de apresentação
print("============================================")
print("|    ")
print("|    " .. monsterName)
print("|    " .. description) --PONTOS FINAIS
print("|")
print("|   Itens Favoritos: " .. table.concat(items, ", "))
print("|   Som: " .. sound)
print("|   Horário Favorito: " .. favoriteTime)
print("|   Emoji Favorito: " .. emoji)
print("| ") 
print("| Atributos")
print("|   Ataques:      " .. getProgressBar(attackAttribute))
print("|   Defesa:       " .. getProgressBar(defenseAttribute))
print("|   Vitalidade:   " .. getProgressBar(lifeAttribute))
print("|   Velocidade:   " .. getProgressBar(speedAttribute))
print("|   Inteligência: " .. getProgressBar(inteligenceAttribute))
print("| ")
print("============================================")

