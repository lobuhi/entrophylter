# entrophylter
Take the crunch output and filter results for its entropy.

***Requirements:***
- crunch
- bc
- https://github.com/ekg/entropy

***Usage:***
```
crunch [min] [max] [characters set] | ./entropy.sh [-l|-g] [ENTROPY]

OPTIONS:
  -l Match for lower or equal entropy
  -g Match for greater or equal entropy
```
***Example:***

Wordlist with 16 characters length (uppercase+numbers) and entropy equal or greater than 3:
```
crunch 16 16 QWERTYUIOPASDFGHJKLZXCVBNM1234567890 | ./entropy.sh -g 3
```
