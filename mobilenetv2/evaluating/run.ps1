Clear-Host
mkdir log | Out-Null
python -u evaluate.py --batch_size=32 --workers=2 | Tee-Object -Append log\training.txt