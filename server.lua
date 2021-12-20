ESX = nil
moderationNotification = ''

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent('Infram:BuySomething')
AddEventHandler('Infram:BuySomething', function(item, cena)
    print(item,cena)
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    print('giveitem')
    if xPlayer.getMoney() >= cena then
         xPlayer.addInventoryItem(item,1)
    elseif xPlayer.getMoney() < cena then
        print("brak wystarczającej ilości gotówki")
    end
    -- zróbcie jeszcze zabezpieczenie na wagę/limity itemów
end)