# Makefile Installation Path Collection #

Raccolta di makefile con la definizione dei percorsi di installazione per ogni os


## Architettura ##

__In pratica__  
Su ogni sistema c'è una directory per gli eseguibili. La sua posizione però non è 
costante, quindi ci si deve riferire ad essa con una variabile se si vuole che
un makefile possa funzionare ovunque.  

In questo repository ci sono dei makefile per vari sistemi, che contengono 
l'implementazione di questa ed altre variabili.

__In teoria__  
Questo progetto è diviso in due componenti:

 - Una definizione delle variabili che devono essere implementate
 - Dei makefile specifici con l'implementazione delle variabili definite


### Variabili implementate ###

Attualmente, le variabili implementate sono quelle [consigliate dal progetto 
GNU](https://www.gnu.org/prep/standards/html_node/Directory-Variables.html).   
Leggere il makefile generico ["template.mk"](src/template.mk) per saperne di più.


### Implementazione delle variabili ###

Nella directory src vi è il file ["template.mk"](src/template.mk), che definisce
e descrive le variabili che __devono__ essere implementate per ogni os.  
Poi vi sono delle directory per ogni sistema operativo; al loro interno  si trova 
una copia del file template.mk personalizzato per una certa versione, e rinominato
con il nome della versione.

Struttura di esempio:  

src  
├── template.mk  
├── ubuntu  
│   ├── 14.04.mk  
│   ├── 14.10.mk  
│   ├── 15.04.mk  
│   ├── 15.10.mk  
│   └── 16.04.mk  
└── windows  
│   ├── 10.mk  
│   ├── 7.mk  
│   ├── 8.1.mk  
│   ├── 8.mk  
│   ├── vista.mk  
│   └── xp.mk  


## A cosa serve? ##

L'obbiettivo è chiaramente fornire un livello di astrazione per certe directory,
in modo da poter scrivere makefile indipendenti dalla piattaforma.  

In pratica, questo è il back-end di [makew](https://github.com/matteoalessiocarrara/makew), 
che installa uno  di questi makefile nel sistema e lo rende disponibile 
ai makefile di installazione.  
Volendo possono essere utilizzati anche in altri modi, vedete un po' che dice la 
licenza :)


## Altre informazioni ##

> This is the Unix philosophy: Write programs that do one thing and do it well.
  Write programs to work together. Write programs to handle text streams, because
  that is a universal interface.

Aggiornamenti: [GitHub](https://github.com/matteoalessiocarrara/makefile-installation-path-collection)  
Email: sw.matteoac@gmail.com
