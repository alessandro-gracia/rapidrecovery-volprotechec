# rapidrecovery-volprotechec
## Monitor for Unprotected Volumes in Quest Rapid Recovery

This is just a simple Powershell script you can run on a Rapid Recovery Core server to check all protected machines for any unprotected volumes and report them.  This is most likely to be helpful in the event that someone adds a drive to a protected machine and fails to alert the tech(s) responsible for managing the backup infrastructure.  Useful little tool as Rapid Recovery has not had a built-in notification for unprotected volumes, at least as of 2019-12-31 when I last managed an RR deployment.  I recommend scheduling it to run daily, and to customize it with your preference for automated reporting.
