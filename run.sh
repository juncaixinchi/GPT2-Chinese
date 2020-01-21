cd cache
bash make_vocab.sh
cd ..
python train.py \
  --raw \
  --min_length 4

python ./generate.py \
  --fast_pattern \
  --length=64 \
  --nsamples=5 \
  --prefix="年年"