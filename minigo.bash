pip install gdown

gdown --id 1d6ZWhyLOVEh3WqcotjwTtu_bNGef3Ksl
tar zxf lz0.16_colab.tgz
mv *.so.* /usr/lib/x86_64-linux-gnu
echo -e "\n==========从google drive下载elf 权重=========="
gdown --id '1kHXLDpdillw6UPJ9KHF93KVa2fG7HPoh' -O 'v2'
echo -e "\n==========从google drive下载 "202"号 权重=========="
gdown --id '1xSjAiLwG8PD8PLzXDRCWRTDDovS_3rnU' -O 'ffe8ba44feb8eb8ec8ff6d9b17ac075e4d708beadbfa68fee5506d431bbde68e.gz'
echo -e "\n==========从google drive下载MINIGO 权重=========="
gdown --id '1jldbQYIfA6jZhFn2QQ6SZGnr9iIzlY8y' -O 'minigo'
echo -e "\n==========从google drive下载MINIGO40B 权重=========="
gdown --id '129dnj1xGQfdXGyEZMxA08HC6npl1aQ5o' -O 'minigo40'
mkdir networks && mv *.gz networks
mkdir ~/.local/share/leela-zero
mv leelaz_opencl_tuning  ~/.local/share/leela-zero
chmod +x *
./autogtp -k sgf
