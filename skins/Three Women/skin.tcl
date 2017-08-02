
##############################################################################################################################################################################################################################################################################
# DECENT ESPRESSO EXAMPLE SKIN FOR NEW SKIN DEVELOPERS
##############################################################################################################################################################################################################################################################################

# you should replace the JPG graphics in the 2560x1600/ directory with your own graphics. 
source "[homedir]/skins/default/standard_includes.tcl"

# example of loading a custom font (you need to indicate the TTF file and the font size)
#load_font "Northwood High" "[skin_directory]/sample.ttf" 60
#add_de1_text "off" 1280 500 -text "An important message" -font {Northwood High} -fill "#2d3046" -anchor "center"


##############################################################################################################################################################################################################################################################################
# text and buttons to display when the DE1 is idle

load_font "painthand" "[skin_directory]/painthand.ttf" 28

# these 3 text labels are for the three main DE1 functions, and they X,Y coordinates need to be adjusted for your skin graphics
add_de1_text "off" 490 1180  -text [translate "ESPRESSO"] -font {painthand} -fill "#000000" -anchor "center" 
add_de1_text "espresso" 490 1180  -text [translate "ESPRESSO"] -font {painthand} -fill "#000000" -anchor "center" 



add_de1_text "off" 1311 1180  -text [translate "STEAM"] -font {painthand} -fill "#000000" -anchor "center" 
add_de1_text "steam" 1311 1180  -text [translate "STEAM"] -font {painthand} -fill "#000000" -anchor "center" 



add_de1_text "off" 2147 1180 -text [translate "HOT WATER"] -font {painthand} -fill "#000000" -anchor "center" 
add_de1_text "hot water" 2147 1180 -text [translate "HOT WATER"] -font {painthand} -fill "#000000" -anchor "center" 



# these 3 buttons are rectangular areas, where tapping the rectangle causes a major DE1 action (steam/espresso/water)
add_de1_button "off" "say [translate {espresso}] $::settings(sound_button_in);start_espresso" 225 450 730 1250
add_de1_button "off" "say [translate {steam}] $::settings(sound_button_in);start_steam" 1050 450 1600 1250
add_de1_button "off" "say [translate {water}] $::settings(sound_button_in);start_water" 1800 450 2400 1250


# these 2 buttons are rectangular areas for putting the machine to sleep or starting settings.  Traditionally, tapping one of the corners of the screen puts it to sleep.
add_de1_button "off" "say [translate {sleep}] $::settings(sound_button_in);start_sleep" 11 15 250 250
add_de1_button "off" {backup_settings; page_to_show_when_off settings_1} 2300 15 2555 250

##############################################################################################################################################################################################################################################################################

# the standard behavior when the DE1 is doing something is for tapping anywhere on the screen to stop that. This "source" command does that.
source "[homedir]/skins/default/standard_stop_buttons.tcl"

