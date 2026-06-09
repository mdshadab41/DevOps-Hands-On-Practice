# Java

class Hello {
    public static void main(Strings[] args){
        System.out.println("Hello Pathnex")
    }
}

# Dcoker file

FROM openjfk: 17
WORKDIR /opt/pathnex/java-app
COPY Hello.java /opt/pathnex.java-app/Hello.java 
RUN javac /opt/pathnex/java-app/Hello.java 
CMD ["Java", "-cp", "/opt/pathnex/java-app", "Hello"]