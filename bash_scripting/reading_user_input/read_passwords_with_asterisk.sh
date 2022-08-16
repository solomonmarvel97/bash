unset username
unset password
 
# read username
read -p 'Username : ' username
 
 
echo -n "Enter password : "
stty -echo
 
#read password
charcount=0
while IFS= read -p "$prompt" -r -s -n 1 ch
do
    # Enter - accept password
    if [[ $ch == $'\0' ]] ; then
        break
    fi
    # Backspace
    if [[ $ch == $'\177' ]] ; then
        if [ $charcount -gt 0 ] ; then
            charcount=$((charcount-1))
            prompt=$'\b \b'
            password="${password%?}"
        else
            PROMPT=''
        fi
    else
        charcount=$((charcount+1))
        prompt='*'
        password+="$ch"
    fi
done
 
stty echo
 
echo
echo "Thank you $username for showing interest in learning with www.tutorialkart.com"
 
## this echo is for demo purpose only, never echo password
echo "Your password is $password"