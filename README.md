# Orange-X
orange x is a copier/backup/restore utility program written in powershell. Unlike orange, its predecessor which I wrote previously, orange-x is written to be used entirely without the keyboard. It implements Microsoft Speech Recognition Engine and System.Speech.Synthesis.SpeechSynthesizer API to run commands. You can backup/restore all kinds of files and media files from your PC to an external storage device, simply by speaking to orange-x : a feature that can be of help to the physically challenged simply by issuing vocal commands.

*** Room for Improvement

*Before program launch, it scans your computer for an external storage peripheral before initialization. Program launches when a storage device is detected. 
*If more than 1 storage device is connected to PC, it sees nothing. You are welcome to fix that if you can.

*Because of susceptibility to noise, program can trigger undesirable commands on its own. I know they are better speech engines like the FreeTTS - A speech synthesizer written entirely in Java and developed at Carnegie Mellon University. Working with the API at the moment
*Microsoft Speech Synthesis isn't the best, even with training and hasn't improved, and remained so for decades.
*Accents affects  speech recognition, to my notice, which explains why some grammar keywords in the program were spelt unconventionally, to accommodate
most users. you can say instructions while program is listening, for detailed information or better still, read the grammar builder code in the program to see what i mean.
