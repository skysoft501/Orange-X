add-type -assemblyname system.speech
$speaker = new-object System.Speech.Synthesis.SpeechSynthesizer
$speaker.SelectVoice("Microsoft Zira Desktop");

do {

$t=get-volume | where drivetype -eq removable | select -expand driveletter

$t = $t + ':'
$i = test-path $t
if ($i -eq ("true")) {

[console]::beep(500,500)
[console]::beep(800,900)

$speaker.speak("Removable Drive $t is Detected.")
}
else {

[console]::beep(400,900)
[console]::beep(300,900)

$speaker.speak("Initialization failed. Couldnt detect an external storage source. Insert a valid hard drive or flashdrive to Launch Orange X")
}
}
while ($i -ne "true")


function images {
cd ~
write-host All Pictures BackUp In Progress Please Wait -foregroundcolor green
$folderName = (Get-Date).tostring("dd-MM-yyyy-hh-mm-ss")
New-Item -Path $t/Pictures/$foldername -ItemType Directory

get-childitem ./*.jpg,*.jpeg,*.png,*.ico,*.gif,*.bmp,*.png,*.webp,*.bpg,*.svg,*.tiff,*.heif,*.pns -recurse | copy-item -destination $t/Pictures/$foldername -erroraction silentlycontinue -warningaction silentlycontinue

[console]::beep(500,500)
[console]::beep(800,900)



$speak.speak("All Picture BackUp Completed Successfully")

write-host Picture BackUp Completed Successfully -foregroundcolor magenta

}

function videos {

cd ~
write-host All Videos BackUp In Progress Please Wait -foregroundcolor green
$folderName = (Get-Date).tostring("dd-MM-yyyy-hh-mm-ss")
New-Item -Path $t/videos/$foldername -ItemType Directory
get-childitem ./*.mp4,*.3gp,*.avi,*.vob,*.mkv,*.webm,*.flv,*.mpeg,*.ogg,*.wmv,*.wma,*.m4a,*.3gp2,*.3gpp,*.3g2,*.3gpp2,*.mov,*.hdv -recurse | copy-item -destination $t/videos/$foldername -erroraction silentlycontinue -warningaction silentlycontinue


[console]::beep(500,500)
[console]::beep(800,900)

$speak.speak("All Video BackUp Completed Successfully")
write-host Video BackUp Completed Successfully -foregroundcolor magenta


}

function music {

cd ~
write-host All Audio Files BackUp In Progress Please Wait -foregroundcolor green
$folderName = (Get-Date).tostring("dd-MM-yyyy-hh-mm-ss")
New-Item -Path $t/Music/$foldername -ItemType Directory
get-childitem ./*.mp3,*.wma,*.wav,*.aac,*.ac3,*.eac3,*.pcm,*.vorbis -recurse | copy-item -destination $t/Music/$foldername -erroraction silentlycontinue -warningaction silentlycontinue

[console]::beep(500,500)
[console]::beep(800,900)

$speak.speak("All Music BackUp Completed Successfully")
write-host All Music BackUp Completed Successfully -foregroundcolor magenta


}

function docs {

cd ~
write-host All Documents BackUp In Progress Please Wait -foregroundcolor green
$folderName = (Get-Date).tostring("dd-MM-yyyy-hh-mm-ss")
New-Item -Path $t/Documents/$foldername -ItemType Directory
get-childitem ./*.doc,*.docx,*.pdf,*.txt,*.ppt,*.pptx,*.html,*.htm,*.odt,*.rtf,*.xls,*.xlsx,*.xml,*.xltx,*.xltm,*.xlmx,*.xmlt -recurse | copy-item -destination $t/Documents/$foldername -erroraction silentlycontinue -warningaction silentlycontinue


[console]::beep(500,500)
[console]::beep(800,900)

$speak.speak("All Document BackUp Completed Successfully")
write-host All Document BackUp Completed Successfully -foregroundcolor magenta


}

function all {

cd ~
write-host All Files BackUp In Progress Please Wait -foregroundcolor green
$folderName = (Get-Date).tostring("dd-MM-yyyy-hh-mm-ss")
New-Item -Path $t/ALLFILES/$foldername -ItemType Directory
get-childitem ./*.* -recurse | copy-item -destination $t/ALLFILES/$foldername -erroraction silentlycontinue -warningaction silentlycontinue

[console]::beep(500,500)
[console]::beep(800,900)

$speak.speak("All Personal File BackUp Completed Successfully")
write-host All Personal Files BackUp Completed Successfully -foregroundcolor magenta


}



function imagerestore {

cd $t
write-host All Pictures Restore In Progress Please Wait -foregroundcolor green
$folderName = (Get-Date).tostring("dd-MM-yyyy-hh-mm-ss")
New-Item -Path ~/Pictures/Restored-Pictures/$foldername -ItemType Directory

get-childitem *.jpg,*.jpeg,*.png,*.ico,*.gif,*.bmp,*.png,*.webp,*.bpg,*.svg,*.tiff,*.heif,*.pns -recurse | copy-item -destination ~/Pictures/Restored-Pictures/$foldername -erroraction silentlycontinue -warningaction silentlycontinue

[console]::beep(500,500)
[console]::beep(800,900)



$speak.speak("All Images Restored Successfully")

write-host Picture Restored Successfully -foregroundcolor magenta



}

function movies {

cd $t
write-host All Video Restore In Progress Please Wait -foregroundcolor green
$folderName = (Get-Date).tostring("dd-MM-yyyy-hh-mm-ss")
New-Item -Path ~/Videos/Restored-Videos/$foldername -ItemType Directory
get-childitem *.mp4,*.3gp,*.avi,*.vob,*.mkv,*.webm,*.flv,*.mpeg,*.ogg,*.wmv,*.wma,*.m4a,*.3gp2,*.3gpp,*.3g2,*.3gpp2,*.mov,*.hdv -recurse | copy-item -destination ~/Videos/Restored-Videos/$foldername -erroraction silentlycontinue -warningaction silentlycontinue


[console]::beep(500,500)
[console]::beep(800,900)

$speak.speak("All Videos Restored Successfully")
write-host Video Restored Successfully -foregroundcolor magenta


}

function audiofiles {

cd $t
write-host All Audio Files Restore In Progress Please Wait -foregroundcolor green
$folderName = (Get-Date).tostring("dd-MM-yyyy-hh-mm-ss")
New-Item -Path ~/Music/Restored-Music/$foldername -ItemType Directory
get-childitem *.mp3,*.wma,*.wav,*.aac,*.ac3,*.eac3,*.pcm,*.vorbis -recurse | copy-item -destination ~/Music/Restored-Music/$foldername -erroraction silentlycontinue -warningaction silentlycontinue

[console]::beep(500,500)
[console]::beep(800,900)

$speak.speak("All Music Restored Successfully")
write-host All Music Restored Successfully -foregroundcolor magenta



}


function test {

cd $t
write-host All Documents BackUp In Progress Please Wait -foregroundcolor green
$folderName = (Get-Date).tostring("dd-MM-yyyy-hh-mm-ss")
New-Item -Path ~/Documents/Restored-Docs/$foldername -ItemType Directory
get-childitem *.doc,*.docx,*.pdf,*.txt,*.ppt,*.pptx,*.html,*.htm,*.odt,*.rtf,*.xls,*.xlsx,*.xml,*.xltx,*.xltm,*.xlmx,*.xmlt -recurse | copy-item -destination ~/Documents/Restored-Docs/$foldername -erroraction silentlycontinue -warningaction silentlycontinue


[console]::beep(500,500)
[console]::beep(800,900)

$speak.speak("All Restored Completed Successfully")
write-host All Document Restored Successfully -foregroundcolor magenta



}


function drive {

cd $t
write-host All Files BackUp In Progress Please Wait -foregroundcolor green
$folderName = (Get-Date).tostring("dd-MM-yyyy-hh-mm-ss")
New-Item -Path ~/Documents/ALLFILES/$foldername -ItemType Directory
get-childitem *.* -recurse | copy-item -destination ~/Documents/ALLFILES/$foldername -erroraction silentlycontinue -warningaction silentlycontinue

[console]::beep(500,500)
[console]::beep(800,900)

$speak.speak("All Personal File Restored Successfully")
write-host All Personal Files Restored Successfully -foregroundcolor magenta


}


function recycle {
cd ~
write-host All Files BackUp In Progress Please Wait -foregroundcolor green
$folderName = (Get-Date).tostring("dd-MM-yyyy-hh-mm-ss")
New-Item -Path $t/ALLFILES/$foldername -ItemType Directory
get-childitem ./*.* -recurse | move-item -destination $t/ALLFILES/$foldername -erroraction silentlycontinue -warningaction silentlycontinue

[console]::beep(500,500)
[console]::beep(800,900)

$speak.speak("All Personal File BackUp For Recycle Completed Successfully. Now follow the prompt on your screen to recycle your PC")
write-host All Personal Files BackUp For Recycle Completed Successfully -foregroundcolor magenta
write-host Resetting PC.. -foregroundcolor green
systemreset


}


$speechRecogEng = new-object System.Speech.Recognition.SpeechRecognitionEngine

$cmd = @("hello","exit", "images", "vidios", "music", "docs", "all", "imagerestore", "movies", "audiofiles", "text", "drive", "recycle", "instructions")

write-host "Loading Memory..." -foreground "yellow"
$i=0;
foreach($key in $cmd) {
  $i = new-object System.Speech.Recognition.GrammarBuilder
  $i.Append($key);
  $speechRecogEng.LoadGrammar($i);
  $i = $i + 1
}

$speechRecogEng.InitialSilenceTimeout = 0
$speechRecogEng.SetInputToDefaultAudioDevice();
$cmdBoolean = $false;

write-host "I'm All Ears..." -foreground "green"
$speaker.Speak("Hello. I'm Orange X, and alternate version of Orange. You can Speak to me directly
 and if you need help, just say instructions")

while (!$cmdBoolean) {
  $speechRecognize = $speechRecogEng.Recognize();
  $fid = $speechRecognize.Confidence;
  $Words = $speechRecognize.text;
  if ($Words -match "hello" -and [double]$fid -gt 0.85) {
    $speaker.Speak("Hi, how do you do?")
  }



  if ($Words -match "exit" -and [double]$fid -gt 0.85) {
    $speaker.Speak("Bye. See you soon")
    $cmdBoolean = $true;
  }
  

if ($Words -match "images" -and [double]$fid -gt 0.85) {
    $speaker.Speak("backing up all your pictures to drive $t. This may take a while.")
    images
  }


if ($Words -match "vidio" -and [double]$fid -gt 0.85) {
    $speaker.Speak("backing up all your Videos to drive $t. This may take a while.")
    videos
  }


if ($Words -match "music" -and [double]$fid -gt 0.85) {
    $speaker.Speak("backing up all your music and audio files to drive $t. This may take a while.")
    music
  }



if ($Words -match "docs" -and [double]$fid -gt 0.85) {
    $speaker.Speak("backing up all your documents to drive $t. This may take a while.")
    docs
  }




  if ($Words -match "all" -and [double]$fid -gt 0.85) {
    $speaker.Speak("backing up all files to drive $t. This may take a while.")
    all
  }



  if ($Words -match "imagerestore" -and [double]$fid -gt 0.85) {
    $speaker.Speak("restoring all your pictures from drive $t to your PC. This may take a while.")
    imagerestore
  }



if ($Words -match "movies" -and [double]$fid -gt 0.85) {
    $speaker.Speak("restoring all your videos from drive $t to your PC. This may take a while.")
    movies
  }


  if ($Words -match "audiofiles" -and [double]$fid -gt 0.85) {
    $speaker.Speak("restoring all your music and audio files from drive $t to your PC. This may take a while.")
    audiofiles
  }


  if ($Words -match "text" -and [double]$fid -gt 0.85) {
    $speaker.Speak("restoring all your documents from drive $t to your PC. This may take a while.")
    text
  }


  if ($Words -match "drive" -and [double]$fid -gt 0.85) {
    $speaker.Speak("restoring all files from drive $t to your PC. This may take a while.")
    drive
  }



  if ($Words -match "recycle" -and [double]$fid -gt 0.85) {
    $speaker.Speak("recycle")
    recycle
  }



  if ($Words -match "instructions" -and [double]$fid -gt 0.85) {
    $speaker.Speak("These are the instructions for orange x. You can interact with this program without a keyboard.
 Just speak to me and i will understand. I work best using predefined keywords loaded in my grammer builder.
 You will need to know these keywords to get me to carry out instructions. These are the predefined keywords loaded
 hello,exit, to backup images, say images, for videos, vidios, music, music, documents, docs, to backup everything, say all, 
 to restore images from $t drive, say imagerestore, movies, movies, music, audiofiles, documents, text, to restore entire drive, drive,
to recycle, recycle, for help, instructions")
  }


}


