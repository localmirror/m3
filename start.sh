if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/localmirror/m3
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /m3
fi
cd /m3
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
