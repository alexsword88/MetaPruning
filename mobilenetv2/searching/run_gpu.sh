clear
datename=$(date +%Y%m%d-%H%M%S)
train_log=('genetic_iters_20_'$datename)
mkdir log
python3 -u search_gpu.py --max_iters=20 --batch_size=128 --workers=2 --net_cache='../training/models/checkpoint.pth.tar' | tee log/$train_log.search.log

