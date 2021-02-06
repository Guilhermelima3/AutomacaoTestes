#config tamanho da tela
# Before do
#   page.current_window.resize_to(1440, 900)
# end

After do
  screen = page.save_screenshot("logs/temp_screen.png")

  Allure.add_attachment(
    name: "Screenshot",
    type: Allure::ContentType::PNG,
    source: File.open(screen),
  )
end
