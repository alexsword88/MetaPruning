clear
mkdir log
python3 -u evaluate.py --epochs=128 --batch_size=128 --workers=2 | tee -a log/training.txt
