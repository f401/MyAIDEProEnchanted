.class abstract Lorg/dom4j/jaxb/JAXBSupport;
.super Ljava/lang/Object;


# instance fields
.field private classloader:Ljava/lang/ClassLoader;

.field private contextPath:Ljava/lang/String;

.field private jaxbContext:Ljavax/xml/bind/JAXBContext;

.field private marshaller:Ljavax/xml/bind/Marshaller;

.field private unmarshaller:Ljavax/xml/bind/Unmarshaller;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/dom4j/jaxb/JAXBSupport;->contextPath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/dom4j/jaxb/JAXBSupport;->contextPath:Ljava/lang/String;

    iput-object p2, p0, Lorg/dom4j/jaxb/JAXBSupport;->classloader:Ljava/lang/ClassLoader;

    return-void
.end method

.method private getContext()Ljavax/xml/bind/JAXBContext;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/bind/JAXBException;
        }
    .end annotation

    iget-object v0, p0, Lorg/dom4j/jaxb/JAXBSupport;->jaxbContext:Ljavax/xml/bind/JAXBContext;

    if-nez v0, :cond_10

    iget-object v0, p0, Lorg/dom4j/jaxb/JAXBSupport;->classloader:Ljava/lang/ClassLoader;

    if-nez v0, :cond_13

    iget-object v0, p0, Lorg/dom4j/jaxb/JAXBSupport;->contextPath:Ljava/lang/String;

    invoke-static {v0}, Ljavax/xml/bind/JAXBContext;->newInstance(Ljava/lang/String;)Ljavax/xml/bind/JAXBContext;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/jaxb/JAXBSupport;->jaxbContext:Ljavax/xml/bind/JAXBContext;

    :cond_10
    :goto_10
    iget-object v0, p0, Lorg/dom4j/jaxb/JAXBSupport;->jaxbContext:Ljavax/xml/bind/JAXBContext;

    return-object v0

    :cond_13
    iget-object v0, p0, Lorg/dom4j/jaxb/JAXBSupport;->contextPath:Ljava/lang/String;

    iget-object v1, p0, Lorg/dom4j/jaxb/JAXBSupport;->classloader:Ljava/lang/ClassLoader;

    invoke-static {v0, v1}, Ljavax/xml/bind/JAXBContext;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljavax/xml/bind/JAXBContext;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/jaxb/JAXBSupport;->jaxbContext:Ljavax/xml/bind/JAXBContext;

    goto :goto_10
.end method

.method private getMarshaller()Ljavax/xml/bind/Marshaller;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/bind/JAXBException;
        }
    .end annotation

    iget-object v0, p0, Lorg/dom4j/jaxb/JAXBSupport;->marshaller:Ljavax/xml/bind/Marshaller;

    if-nez v0, :cond_e

    invoke-direct {p0}, Lorg/dom4j/jaxb/JAXBSupport;->getContext()Ljavax/xml/bind/JAXBContext;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/bind/JAXBContext;->createMarshaller()Ljavax/xml/bind/Marshaller;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/jaxb/JAXBSupport;->marshaller:Ljavax/xml/bind/Marshaller;

    :cond_e
    iget-object v0, p0, Lorg/dom4j/jaxb/JAXBSupport;->marshaller:Ljavax/xml/bind/Marshaller;

    return-object v0
.end method

.method private getUnmarshaller()Ljavax/xml/bind/Unmarshaller;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/bind/JAXBException;
        }
    .end annotation

    iget-object v0, p0, Lorg/dom4j/jaxb/JAXBSupport;->unmarshaller:Ljavax/xml/bind/Unmarshaller;

    if-nez v0, :cond_e

    invoke-direct {p0}, Lorg/dom4j/jaxb/JAXBSupport;->getContext()Ljavax/xml/bind/JAXBContext;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/bind/JAXBContext;->createUnmarshaller()Ljavax/xml/bind/Unmarshaller;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/jaxb/JAXBSupport;->unmarshaller:Ljavax/xml/bind/Unmarshaller;

    :cond_e
    iget-object v0, p0, Lorg/dom4j/jaxb/JAXBSupport;->unmarshaller:Ljavax/xml/bind/Unmarshaller;

    return-object v0
.end method


# virtual methods
.method protected marshal(Ljavax/xml/bind/Element;)Lorg/dom4j/Element;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/bind/JAXBException;
        }
    .end annotation

    new-instance v0, Lorg/dom4j/dom/DOMDocument;

    invoke-direct {v0}, Lorg/dom4j/dom/DOMDocument;-><init>()V

    invoke-direct {p0}, Lorg/dom4j/jaxb/JAXBSupport;->getMarshaller()Ljavax/xml/bind/Marshaller;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Ljavax/xml/bind/Marshaller;->marshal(Ljava/lang/Object;Lorg/w3c/dom/Node;)V

    invoke-virtual {v0}, Lorg/dom4j/dom/DOMDocument;->getRootElement()Lorg/dom4j/Element;

    move-result-object v0

    return-object v0
.end method

.method protected unmarshal(Lorg/dom4j/Element;)Ljavax/xml/bind/Element;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/bind/JAXBException;
        }
    .end annotation

    new-instance v0, Ljavax/xml/transform/stream/StreamSource;

    new-instance v1, Ljava/io/StringReader;

    invoke-interface {p1}, Lorg/dom4j/Element;->asXML()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljavax/xml/transform/stream/StreamSource;-><init>(Ljava/io/Reader;)V

    invoke-direct {p0}, Lorg/dom4j/jaxb/JAXBSupport;->getUnmarshaller()Ljavax/xml/bind/Unmarshaller;

    move-result-object v1

    invoke-interface {v1, v0}, Ljavax/xml/bind/Unmarshaller;->unmarshal(Ljavax/xml/transform/Source;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/xml/bind/Element;

    return-object v0
.end method
