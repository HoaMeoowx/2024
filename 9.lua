task.spawn(function()
    while task.wait(1) do
        if RaceNguLon then
            local player = game.Players.LocalPlayer
            local character = player.Character
            if character then
                -- Kiểm tra nếu RaceEnergy >= 1 và chưa biến hình
                local raceEnergy = character:FindFirstChild("RaceEnergy")
                local raceTransformed = character:FindFirstChild("RaceTransformed")
                if raceEnergy and raceEnergy.Value >= 1 and raceTransformed and not raceTransformed.Value then
                    -- Gọi trực tiếp sự kiện để kích hoạt Race Transformation (có thể thay đổi tùy theo game)
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Race", "Transform")  -- Thay đổi "Race" và "Transform" theo yêu cầu
                end
            end
        end
    end
end)