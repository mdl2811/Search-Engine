require 'pry'

@arr = []

def cheat_sheet
  puts "command line"
  command_line
end

def command_sheet_menu
  puts "---CHEATSHEET---
  1) Command Line
  2) Search
  3) Quit
    ****Please Choose****"
  imput_menu = gets.chomp.to_i
  main_menu(imput_menu)
end



def list_command_line
  puts "Command Line
  1) cp
  2) mv
  3) cd
  4) main_menu"
  user_choice = gets.chomp.to_i
  man_sheet(user_choice)
end

def main_menu(imput_menu)
  case imput_menu
  when 1
    list_command_line
  when 2
    list_command_line
  when 3
    exit
  end
end

def man_sheet(user_choice)
  case user_choice
    when 1
      puts `man cp`
      command_sheet_menu
    when 2
      puts `man mv`
      command_sheet_menu
    when 3
      puts `man cd`
      command_sheet_menu
    when 4
      command_sheet_menu
    else
      command_sheet_menu
  end
end

command_sheet_menu
