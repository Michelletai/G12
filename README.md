# tku_12_家具查詢網
使用nodejs express

此專案有兩個database
-blogen
-ikea
blogen為範例資料庫，裡面存放範例程式使用的資料
ikea為主要資料庫，其資料都是靠它運作

檔案在sql/self_contained.sql中，將其匯入即可使用

**請注意**
在pull專案下來執行前必須注意的幾個地方:
1. /bin/www 中 port 的號碼
2. /util/database.js /util/ikea.js 中DB的連線資訊

**2019/05/17**
因應期末專題要求
將程式改成符合期專題格式:
```
必須選一個 bootstrap template (以代號A表示)來實作前端應用
上學期所做管理後臺資料之程式(以代號B表示)必須要跟上 A 結合，並可以由A切換B，由B切換A
在A中必須要有頁面存取資料庫中的資料，在後端code中，A和B的code不能在同目錄內。A存取資料庫的動作，一律不准交php，老師上課時已經有提過。
資料庫中的測試資料必須要匯出，以組號來命名，如 G01.sql, G02.sql ~ G13.sql。
所有文件資料必須放在doc目錄中，doc下面分兩個目錄，client, admin，其中client 放A的資料，admin放B的資料。
B中資料要有上學期期末的所有說明資料，包含系統需求，ER model, Relational model, Gxx.sql (測試資料)，上學期報告的PPT檔，及其他相關資料。
A中要有本學期期末報告的PPT檔，及本學期會用到的 Relational model, Gxx.sql (測試資料)(可能和上學期的不同)
如果是本學期才修資料庫的同學，B可以考試用的blogen來替代，如有新的實作B，會給加分。
所有程式除了在E213你們自行選用的電腦外，還必須能安裝到老師上課的電腦上，老師必須統一整理並能帶走。請提早到E213安裝。
```

關於檔案位置的詳細解釋

```
在 G01目錄下建一個 doc目錄，下面在建 admin, 放上學期的文件，建 client放這學期的文件。

在 routes 下建立  admin 放上學期的後台管理檔案，建立 client 放本學期的管理檔案
在 views下建立  admin 放上學期的後台顯示檔案，建立 client 放本學期的顯示檔案
```