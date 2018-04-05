set ::skindebug 0

##############################################################################################################################################################################################################################################################################
# the graphics for each of the main espresso machine modes
add_de1_page "off" "nothing_on.png"
add_de1_page "espresso" "espresso_on.png"
add_de1_page "steam" "steam_on.png"
add_de1_page "water" "tea_on.png"

# most skins will not bother replacing these graphics
add_de1_page "sleep" "sleep.jpg" "default"
add_de1_page "tankfilling" "filling_tank.jpg" "default"
add_de1_page "tankempty" "fill_tank.jpg" "default"
add_de1_page "cleaning" "cleaning.jpg" "default"
add_de1_page "message calibrate" "settings_message.png" "default"
add_de1_page "descaling" "descaling.jpg" "default"
add_de1_page "cleaning" "cleaning.jpg" "default"


add_de1_text "tankempty" 1280 750 -text [translate "Out of water"] -font Helv_20_bold -fill "#AAAAAA" -justify "center" -anchor "center" -width 900
add_de1_text "cleaning" 1280 80 -text [translate "Cleaning"] -font Helv_20_bold -fill "#EEEEEE" -justify "center" -anchor "center" -width 900
add_de1_text "descaling" 1280 80 -text [translate "Descaling"] -font Helv_20_bold -fill "#CCCCCC" -justify "center" -anchor "center" -width 900

set_de1_screen_saver_directory "[homedir]/saver"

# include the generic settings features for all DE1 skins.  
source "[homedir]/skins/default/de1_skin_settings.tcl"
