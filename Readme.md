## 提出前に
- [ ] VMの環境構築
  - [ ] volumeをマウントする
  - [ ] https://ocaml.org/install#linux_mac_bsd


## 開発環境
- [x] formatterを入れたい

```find . -name "*.ml" -o -name "*.mli" | xargs ocamlformat --inplace```

see manual https://ocaml.org/p/ocamlformat/0.26.0/doc/manpage_ocamlformat.html

- [ ] debuggerを日常的に使用したい
- [x] CI


## ほげ〜
- [ ] test用にfileを分けてコンパイルしたい
- [x] pipe |> や assertがある
```sh
cd ../ex$(printf "%02d" $(( 10#${PWD##*ex} + 1 )))
```
