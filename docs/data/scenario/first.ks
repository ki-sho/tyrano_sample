*start

[title name="バンドメンバーを集めて最高のライブをしよう"]
[hidemenubutton]
[wait time=200]
[freeimage layer="base"]

;====================================================
; 1. 導入
;====================================================

[bg storage=bgimage.jpg band2]
「最高のバンドメンバーを集めて、ライブを成功させよう！」[l][r]

[p]

; メンバーの加入状況を初期化
; 0 = 初心者、1 = 本物
[eval exp="f.drum=0"]
[eval exp="f.bass=0"]
[eval exp="f.guitar=0"]

[cm]
;====================================================
; 2. 人気ドラマー RANMARU を誘う
;====================================================

*drum_scout
[bg storage=filename.jpg drum]
あなた「まずは人気ドラマーRANMARUを誘おう!」[l][r]
[r]
RANMARU「やあ君か。何の用第だい？」[l][r]
[r]
あなた（なんて言って誘おうか...）[l][r]
[r]
[link target=*drum_success] 1「君のドラムに惚れたんだ！一緒に最高のライブをしよう！」 [endlink][r]
[link target=*drum_fail] 2「ドラムを探しているんだ、取りあえず入ってくれないか？」 [endlink][r]
[link target=*drum_fail] 3「報酬ならたくさん出す。バンドに入ってくれないか？」 [endlink][r]
[s]
[l][r]

*drum_success
[r]
RANMARU「……いいこと言うじゃないか！バンドに加入してやろう！」[l][r]

[r]
RANMARUが加入した！[l][r]
[eval exp="f.drum=1"]
[jump target=*bass_scout]

*drum_fail
[r]
RANMARU[r]
「そういう誘われ方だと入りたくないな、悪いけど加入はしないよ。」[l][r]
「代わりに知り合いの初心者ドラマーを紹介しておくよ。」[l][r]
[r]
初心者のドラマーが加入した[l][r]
[eval exp="f.drum=0"]
[jump target=*bass_scout]



;====================================================
; 3. ベーシスト MAKITAKU を誘う
;====================================================
*bass_scout
[bg storage=filename.jpg base]
[cm]
あなた「次はベーシストを探したいな．．．」[l][r]
あなた「大学同期の超絶ベーシストMAKITAKUに声をかけてみよう！」[l][r]
[r]
MAKITAKU「久しぶり！どうしたの？」[l][r]
[r]
あなた（なんて言って誘おうか...）[l][r]
[r]
[link target=*bass_fail] 1「MAKITAKUのベースでうちのバンドを支えてくれ！」 [endlink][r]
[link target=*bass_success] 2「一緒に最高の景色がみたい！バンドを組んでくれないか？」 [endlink][r]
[link target=*bass_fail] 3「報酬はたくさん出すから加入してくれないか？」 [endlink][r]
[s]
*bass_success
[l][r]
MAKITAKU「そんなアツいこと言われたら断れないな。参加する！」[l][r]
[r]
MAKITAKUが加入した！[l][r]
[eval exp="f.bass=1"]
[jump target=*guitar_scout]

*bass_fail
[l][r]
MAKITAKU[r]
「悪いけど今は勉強で忙しんだ。今回は遠慮するよ。」[l][r]
「代わりに知り合いのベーシスト紹介しておくよ。初心者だけど」[l][r]

[r]
初心者のベーシストが加入した
[eval exp="f.bass=0"]
[jump target=*guitar_scout]


;====================================================
; 4. ギタリスト OKABE を誘う
;====================================================

*guitar_scout
[cm]
[bg storage=filename.jpg guitar]
あなた「最後はギタリストだ．．．」[l][r]
あなた「最近噂のギタリスト、OKABEに声をかけてみよう！」[l][r]
[r]
OKABE「俺に何の用だ？」[l][r]
[l][r]
あなた（どう誘おう．．．）[l][r]
[r]
[link target=*guitar_success] 1「OKABEの超絶テクをライブで披露してほしい！」 [endlink][r]
[link target=*guitar_fail] 2「いま暇だろ？うちのバンドでギター弾いてくれよ！」 [endlink][r]
[link target=*guitar_fail] 3「報酬はたんまり出すからバンドに入ってくれないか？」 [endlink][r]
[s]

*guitar_success
[l][r]
OKABE「ちょうど今いたバンドが薄給で嫌気がさしてたんだ。いいよ、加入してやる。」[l][r]
[r]
OKABEが加入した！[l][r]
[eval exp="f.guitar=1"]
[jump target=*live]

*guitar_fail
[l][r]
OKABE「今はほかのバンドもあって忙しいんだ。俺はパスだ。」[l][r]
     「最近ギターをはじめたやつが知り合いにいてな、そいつを紹介しておこう。」[l][r]
[r]
初心者のギタリストが加入した[l][r]

[eval exp="f.guitar=0"]
[jump target=*live]


;====================================================
; 5. ライブ判定
;====================================================

*live
[cm]
[bg storage=filename.jpg band2]
「ついにライブ本番だ！」[l][r]
[cm]
; 以下、f.drum, f.bass, f.guitar の値（0 or 1）の組み合わせで分岐

; 100点：111
[if exp="f.drum==1 && f.bass==1 && f.guitar==1"]
[bg storage=filename.jpg band.s]
「100点！ 完璧な演奏！」


; 80点：110
[elsif exp="f.drum==1 && f.bass==1 && f.guitar==0"]
[bg storage=filename.jpg band.s]
「80点！ リズム隊のグルーブ感が最高だった！」


; 70点：101
[elsif exp="f.drum==1 && f.bass==0 && f.guitar==1"]
[bg storage=filename.jpg band.s]
「70点！ ギターソロがすごかった！ドラムが引っ張っていた！」


; 60点：011
[elsif exp="f.drum==0 && f.bass==1 && f.guitar==1"]
[bg storage=filename.jpg band.s]
「60点！ ドラムがよれてしまったが及第点！」

; 50点：100
[elsif exp="f.drum==1 && f.bass==0 && f.guitar==0"]
[bg storage=filename.jpg band.s]
「50点！ ドラムはよかったけどベースとギターは要練習！」


; 30点：010
[r]
[bg storage=filename.jpg band.f]
[elsif exp="f.drum==0 && f.bass==1 && f.guitar==0"]
「30点！ あのベースは何者だ…？スカウトしたいな」


; 20点：001
[bg storage=filename.jpg band.f]
[elsif exp="f.drum==0 && f.bass==0 && f.guitar==1"]
「20点！ もはやギターのワンマンショーだった」


; 10点：000
[elsif exp="f.drum==0 && f.bass==0 && f.guitar==0"]
[bg storage=filename.jpg band.f]
「0点！ 論外！二度と来るな！」
[endif]

