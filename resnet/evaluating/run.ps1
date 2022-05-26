Clear-Host
mkdir log | Out-Null
python -u evaluate.py --batch_size=128 --workers=2 | Tee-Object -Append log\training.txt