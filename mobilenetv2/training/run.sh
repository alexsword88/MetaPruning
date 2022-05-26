clear
mkdir log
python3 -u train.py --batch_size=32 --workers=2 | tee -a log/training.txt