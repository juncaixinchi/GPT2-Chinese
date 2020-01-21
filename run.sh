cd cache
bash make_vocab.sh
cd ..

# train poetry

# python train.py \
#   --raw \
#   --min_length 4

# python ./generate.py \
#   --fast_pattern \
#   --length=30 \
#   --nsamples=5 \
#   --prefix="东风"
  
# train novel

python train_single.py --raw

python ./generate.py \
  --fast_pattern \
  --length=256 \
  --nsamples=1 \
  --model_path model/model_epoch1 \
  --prefix="今天"