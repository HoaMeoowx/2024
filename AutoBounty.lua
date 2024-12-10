task.spawn(function()
    while task.wait() do
        if RaceNguLon then
            local player = game.Players.LocalPlayer
            local character = player.Character
            if character then
                -- Kiểm tra nếu RaceEnergy có giá trị >= 1 và chưa biến hình
                if character:FindFirstChild("RaceEnergy") and
                character.RaceEnergy.Value >= 1 and
                not character.RaceTransformed.Value then
                    -- Thực hiện hành động thay vì nhấn phím
                    -- Giả sử có một hàm hoặc sự kiện kích hoạt biến hình tộc
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Race", "Transform") -- Thay đổi tên hàm và tham số phù hợp
                end
            end
        end
    end
end)