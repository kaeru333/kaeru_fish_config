abbr -a vi nvim
abbr -a :q exit
abbr -a shut shutdown now
abbr -a ls eza --icons --color
abbr -a lsd eza --icons --color -D
abbr -a la eza --color -all
abbr -a df duf
abbr -a tree eza -T
abbr -a treed eza -T -D
abbr -a cat bat
abbr -a op xdg-open
abbr -a top gotop
abbr -a python python3
abbr -a py python3
abbr -a pyt oj t -c '"python3 main.py" -d ./tests/'
# abbr -a submit acc s main.py -- --guess-python-interpreter pypy
abbr -a trn tr -d "\n"
abbr -a pc xsel --clipboard --input
abbr -a pp xsel --clipboard --output
abbr -a pwdy 'pwd | tr -d "\n" | xsel --clipboard --input'
abbr -a vol pactl set-sink-volume @DEFAULT_SINK@

abbr -a earbuds "bluetoothctl connect \$EARBUDS_MAC"

abbr -a "..." --position anywhere "../.."
abbr -a "...." --position anywhere "../../.."
abbr -a "....." --position anywhere "../../../.."
abbr -a "......" --position anywhere "../../../../.."

abbr -a C --position anywhere "| xsel --clipboard --input"
abbr -a G --position anywhere "| grep"
abbr -a Trn --position anywhere "| tr -d '\n'"
