# Orange-X
orange-x is a copier/backup/restore utility program written in powershell. Unlike orange, its predecessor which I wrote previously, orange-x is written to be used entirely without the keyboard. It implements Microsoft Speech Recognition Engine and System.Speech.Synthesis.SpeechSynthesizer API to run commands. You can backup/restore all kinds of files and media files from your PC to an external storage device and vice versa, simply by speaking to orange-x : a feature that can be of help to the physically challenged simply by issuing vocal commands.

# *Execution & Observation*

* Before program launch, orange-x scans your computer to check for external storage peripheral before initialization. Program launches when a storage device is detected. 

* If more than 1 storage device is connected to PC, it sees nothing. You are welcome to fix that if you can.

* After initialization, all keywords (commands) will be added to the grammar builder, which loads up before orange-x loops in a continuous listening mode. Say exit to dismiss orange-x

* Because of susceptibility to noise, program can trigger undesirable commands on its own. I know they are better speech engines like the FreeTTS - A speech synthesizer written entirely in Java and developed at Carnegie Mellon University. Working with the API at the moment

* Microsoft Speech Synthesis isn't the best, even with training and hasn't improved, and remained so for decades.

* orange-x is only as good as its grammar builder. So feel free to add more keywords and corresponding code of event. 

* Accents affects  speech recognition, to my notice, which explains why some grammar keywords in the program were spelt unconventionally, to accommodate
most users. you can say instructions while program is listening, for detailed information or better still, read the grammar builder code in the program to see what i mean.
