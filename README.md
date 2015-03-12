# bioinformaticianad
Hiring a genomicist


`./setup.sh`

`ruby ad.rb`



Run in Cathode.app with Viti Green and eyelashes. Quicktime screen recording, then trimming. 


Conversion to gif for twitter: For some reason, the first 2 frames of the gif include things no longer present in the trimmed .mov. So we trim an additional second with ffmpeg. 

`ffmpeg -i final.mov -ss 00:00:01 -vf  "crop=1660:680:50:15" -pix_fmt rgb8  -s 790x340 -r 4 -f gif - | gifsicle --optimize=3 --dither --delay=10 > final.gif     ; convert final.gif \( +clone -set delay 200 \) +swap +delete  final_pause.gif `

Twitter has 3mb limit for animated gifs.