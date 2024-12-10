_G.V3 = true  -- Đặt _G.V3 là true để tự động kích hoạt

spawn(function()
    while true do
        pcall(function()
            if _G.V3 then
                -- Gọi hàm kích hoạt tính năng mà không cần nhấn phím, giả sử là kích hoạt tộc V3
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Race", "Activate")
            end
        end)
        wait(0.1)  -- Kiểm tra mỗi 0.1 giây
    end
end)