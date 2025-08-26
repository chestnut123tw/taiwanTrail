1. 以政府資料開放平臺 (https://data.gov.tw/) 林道分布圖 (version:林道分布圖1101_SHP.zip) 為基礎，建立81條林業及自然保育署轄管林道多邊形(polygon)圖層。
2. 每條林道以200公尺做緩衝區(buffer)，端點以圓角連接，並設定以25公尺為容許值(tolerance)簡化(simplify)多邊形輸出kml，相關code參考`buildLoggingTrainBuffer.R`。
3. 輸出kml用於iNaturalist平臺之中。
