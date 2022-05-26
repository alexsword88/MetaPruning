Clear-Host
$datename=Get-Date -f "yyyyMMdd-HHmmss"
$train_log="genetic_iters_20_$datename"
mkdir log | Out-Null
python -u search_gpu.py --max_iters=20 --batch_size=128 --workers=2 --net_cache='../training/models/checkpoint.pth.tar' | Tee-Object -Append "log/$train_log.search.log"