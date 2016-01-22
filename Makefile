JAVA=			java
JAVAC=			javac
MVN=			mvn

.SUFFIXES: .java .class

.java.class:
	$(JAVAC) $<

Hello: Hello.class
	$(JAVA) $@
	$(JAVA) -Duser.home=/foo/bar $@

properties:
	$(MVN) help:system

clean:
	rm -r *.class

