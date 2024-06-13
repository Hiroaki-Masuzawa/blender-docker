# blender docker

Blenderをdockerで動かす環境

## build
```
./build.sh
```


## fbxからdaeへの変換
userdir内にに変換したいfbxファイルを置き，以下コマンドを実行する．
```
# dockerを起動する
./run.sh
```
```
# パイソンスクリプトを実行する
/blender-git/build_linux/bin/blender --background --python export_fbx2dae.py 
```