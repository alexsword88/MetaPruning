clear
datename=$(date +%Y%m%d-%H%M%S)
train_log=('genetic_iters_20_'$datename)
mkdir log
python3 search.py --max_iters=20 --batch_size=256 --workers=4 --net_cache='../training/models/checkpoint.pth.tar' --data=/mnt/local0/imagenet_dataset | tee log/$train_log.search.log

