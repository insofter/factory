#!/bin/bash

endconde=0
col=32

cd /home/insofter/projects
for x in * 
do
  if [ -d "${x}/.git" ]
  then 
    cd ${x}
    echo 
    echo -ne "\033[1;${col}m"
    echo ">>> ${x} <<<"
    echo -ne "\033[0;37m"
    case "$1" in

      push)
        if git status | grep  -q "nothing to commit"
        then
          git push
        else
          echo "--Commit ${x}!"
        fi

        ;;
      pull)
        if git status | grep  -q "nothing to commit"
        then
          git pull
        else
          echo "--Commit ${x}!"
        fi

        ;;

      *)
        git status

        ;;

    esac
    cd ..
    if [ $col -ge 36 ]
    then
      col=32
    else
      col=$[ $col+1 ]
    fi

  fi
done

