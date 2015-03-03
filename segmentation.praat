snd = Open long sound file... ../audio/voice_16khz.wav
tg = Read from file... final.TextGrid

tier = 1
counter = 1
for interval from 1 to 901
  select tg
  label$ = Get label of interval... tier interval
  if label$ <> "beep" && label$ <> "beepbeep"
    start = Get start point... tier interval
    end = Get end point... tier interval
    select snd
    part = Extract part... start end yes
    select part
    suffix$ = ""
    if counter < 10 
      suffix$ = "00"
    elsif counter <  100
      suffix$ = "0"
    endif 
    Save as WAV file... utt_'suffix$''counter'.wav
    counter = counter + 1
  endif
endfor