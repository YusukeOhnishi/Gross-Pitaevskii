# Gross-Pitaevskii
## 実行手順
1成分系の計算をしたい場合はone_component/に、2成分系の計算を行いたい場合はtwo_component/に移動する。
### 1成分系
```
cd one_component
```
config.iniに設定を書き込む。
```
[DEFAULT]
space_div_num=(girdの数)
xi_num=(回復長の長さ)
delta_t=(微小時間の幅)
t_N=(ループの数)
vortex_num=(渦の数)
R_0=(拘束ポテンシャルの半径)
V_0=(拘束ポテンシャルの高さ)
output_wavefunction=(波動関数を出力するループ数)
filter_bin=(エネルギースペクトルをとる幅)
```
execute.shを実行する。
```
bash execute.sh
```

### 2成分系
```
cd one_component
```
config.iniに設定を書き込む。
```
[DEFAULT]
space_div_num=(girdの数)
xi_num=(回復長の長さ)
delta_t=(微小時間の幅)
t_N=(ループの数)
vortex_num=(渦の数)
R_0=(拘束ポテンシャルの半径)
V_0=(拘束ポテンシャルの高さ)
g_12=(成分間相互作用と成分内相互作用の比)
output_wavefunction=(波動関数を出力するループ数)
filter_bin=(エネルギースペクトルをとる幅)
```
execute.shを実行する。
```
bash execute.sh
```

## 出力
1成分系の場合one_component/output/に、2成分系の場合two_component/output/に出力される。
Gross-Pitaevskii方程式によって時間発展した波動関数のnumpy array配列をone_component/output/wavefunction/に出力される(2成分の場合は第1成分がtwo_component/output/wavefunction1/、第2成分がtwo_component/output/wavefunction2/に出力)。初期の波動関数はinitial.npyと出力され、以降のものは200.npyのように(番号).npyの形で出力される。
またoutput/summary/内に密度、渦の位置、渦の数の時間発展、双極子モーメントの時間発展、非圧縮運動エネルギースペクトル、圧縮運動エネルギースペクトル、運動エネルギースペクトル、非圧縮運動エネルギーの時間発展、圧縮運動エネルギーの時間発展、運動エネルギーの時間発展をまとめたものを.png形式で出力している。またこれを動画にしたものをoutput/summary.mp4に出力している。

