.class public Lorg/dom4j/io/SAXWriter;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/xml/sax/XMLReader;


# static fields
.field protected static final FEATURE_NAMESPACES:Ljava/lang/String; = "http://xml.org/sax/features/namespaces"

.field protected static final FEATURE_NAMESPACE_PREFIXES:Ljava/lang/String; = "http://xml.org/sax/features/namespace-prefixes"

.field protected static final LEXICAL_HANDLER_NAMES:[Ljava/lang/String;


# instance fields
.field private attributes:Lorg/xml/sax/helpers/AttributesImpl;

.field private contentHandler:Lorg/xml/sax/ContentHandler;

.field private declareNamespaceAttributes:Z

.field private dtdHandler:Lorg/xml/sax/DTDHandler;

.field private entityResolver:Lorg/xml/sax/EntityResolver;

.field private errorHandler:Lorg/xml/sax/ErrorHandler;

.field private features:Ljava/util/Map;

.field private lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

.field private properties:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "http://xml.org/sax/properties/lexical-handler"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "http://xml.org/sax/handlers/LexicalHandler"

    aput-object v2, v0, v1

    sput-object v0, Lorg/dom4j/io/SAXWriter;->LEXICAL_HANDLER_NAMES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {v0}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    iput-object v0, p0, Lorg/dom4j/io/SAXWriter;->attributes:Lorg/xml/sax/helpers/AttributesImpl;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/dom4j/io/SAXWriter;->features:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/dom4j/io/SAXWriter;->properties:Ljava/util/Map;

    iget-object v0, p0, Lorg/dom4j/io/SAXWriter;->properties:Ljava/util/Map;

    const-string v1, "http://xml.org/sax/features/namespace-prefixes"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/dom4j/io/SAXWriter;->properties:Ljava/util/Map;

    const-string v1, "http://xml.org/sax/features/namespace-prefixes"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/ContentHandler;)V
    .registers 2

    invoke-direct {p0}, Lorg/dom4j/io/SAXWriter;-><init>()V

    iput-object p1, p0, Lorg/dom4j/io/SAXWriter;->contentHandler:Lorg/xml/sax/ContentHandler;

    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/ContentHandler;Lorg/xml/sax/ext/LexicalHandler;)V
    .registers 3

    invoke-direct {p0}, Lorg/dom4j/io/SAXWriter;-><init>()V

    iput-object p1, p0, Lorg/dom4j/io/SAXWriter;->contentHandler:Lorg/xml/sax/ContentHandler;

    iput-object p2, p0, Lorg/dom4j/io/SAXWriter;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/ContentHandler;Lorg/xml/sax/ext/LexicalHandler;Lorg/xml/sax/EntityResolver;)V
    .registers 4

    invoke-direct {p0}, Lorg/dom4j/io/SAXWriter;-><init>()V

    iput-object p1, p0, Lorg/dom4j/io/SAXWriter;->contentHandler:Lorg/xml/sax/ContentHandler;

    iput-object p2, p0, Lorg/dom4j/io/SAXWriter;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    iput-object p3, p0, Lorg/dom4j/io/SAXWriter;->entityResolver:Lorg/xml/sax/EntityResolver;

    return-void
.end method


# virtual methods
.method protected addNamespaceAttribute(Lorg/xml/sax/helpers/AttributesImpl;Lorg/dom4j/Namespace;)Lorg/xml/sax/helpers/AttributesImpl;
    .registers 9

    iget-boolean v0, p0, Lorg/dom4j/io/SAXWriter;->declareNamespaceAttributes:Z

    if-eqz v0, :cond_3a

    if-nez p1, :cond_38

    new-instance v0, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {v0}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    :goto_b
    invoke-virtual {p2}, Lorg/dom4j/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v2

    const-string v3, "xmlns"

    if-eqz v2, :cond_2c

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2c

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "xmlns:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_2c
    const-string v1, ""

    const-string v4, "CDATA"

    invoke-virtual {p2}, Lorg/dom4j/Namespace;->getURI()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_37
    return-object v0

    :cond_38
    move-object v0, p1

    goto :goto_b

    :cond_3a
    move-object v0, p1

    goto :goto_37
.end method

.method protected checkForNullHandlers()V
    .registers 1

    return-void
.end method

.method protected createAttributes(Lorg/dom4j/Element;Lorg/xml/sax/Attributes;)Lorg/xml/sax/Attributes;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lorg/dom4j/io/SAXWriter;->attributes:Lorg/xml/sax/helpers/AttributesImpl;

    invoke-virtual {v0}, Lorg/xml/sax/helpers/AttributesImpl;->clear()V

    if-eqz p2, :cond_c

    iget-object v0, p0, Lorg/dom4j/io/SAXWriter;->attributes:Lorg/xml/sax/helpers/AttributesImpl;

    invoke-virtual {v0, p2}, Lorg/xml/sax/helpers/AttributesImpl;->setAttributes(Lorg/xml/sax/Attributes;)V

    :cond_c
    invoke-interface {p1}, Lorg/dom4j/Element;->attributeIterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_10
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lorg/dom4j/Attribute;

    iget-object v0, p0, Lorg/dom4j/io/SAXWriter;->attributes:Lorg/xml/sax/helpers/AttributesImpl;

    invoke-interface {v5}, Lorg/dom4j/Attribute;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5}, Lorg/dom4j/Attribute;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5}, Lorg/dom4j/Attribute;->getQualifiedName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CDATA"

    invoke-interface {v5}, Lorg/dom4j/Attribute;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10

    :cond_35
    iget-object v0, p0, Lorg/dom4j/io/SAXWriter;->attributes:Lorg/xml/sax/helpers/AttributesImpl;

    return-object v0
.end method

.method protected documentLocator(Lorg/dom4j/Document;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v4, -0x1

    const/4 v1, 0x0

    new-instance v3, Lorg/xml/sax/helpers/LocatorImpl;

    invoke-direct {v3}, Lorg/xml/sax/helpers/LocatorImpl;-><init>()V

    invoke-interface {p1}, Lorg/dom4j/Document;->getDocType()Lorg/dom4j/DocumentType;

    move-result-object v0

    if-eqz v0, :cond_2c

    invoke-interface {v0}, Lorg/dom4j/DocumentType;->getPublicID()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Lorg/dom4j/DocumentType;->getSystemID()Ljava/lang/String;

    move-result-object v0

    move-object v2, v1

    :goto_16
    if-eqz v2, :cond_1b

    invoke-virtual {v3, v2}, Lorg/xml/sax/helpers/LocatorImpl;->setPublicId(Ljava/lang/String;)V

    :cond_1b
    if-eqz v0, :cond_20

    invoke-virtual {v3, v0}, Lorg/xml/sax/helpers/LocatorImpl;->setSystemId(Ljava/lang/String;)V

    :cond_20
    invoke-virtual {v3, v4}, Lorg/xml/sax/helpers/LocatorImpl;->setLineNumber(I)V

    invoke-virtual {v3, v4}, Lorg/xml/sax/helpers/LocatorImpl;->setColumnNumber(I)V

    iget-object v0, p0, Lorg/dom4j/io/SAXWriter;->contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, v3}, Lorg/xml/sax/ContentHandler;->setDocumentLocator(Lorg/xml/sax/Locator;)V

    return-void

    :cond_2c
    move-object v0, v1

    move-object v2, v1

    goto :goto_16
.end method

.method protected dtdHandler(Lorg/dom4j/Document;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method protected endDocument()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lorg/dom4j/io/SAXWriter;->contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0}, Lorg/xml/sax/ContentHandler;->endDocument()V

    return-void
.end method

.method protected endElement(Lorg/dom4j/Element;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lorg/dom4j/io/SAXWriter;->contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {p1}, Lorg/dom4j/Element;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lorg/dom4j/Element;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lorg/dom4j/Element;->getQualifiedName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected endPrefixMapping(Lorg/dom4j/tree/NamespaceStack;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lorg/dom4j/tree/NamespaceStack;->size()I

    move-result v0

    if-le v0, p2, :cond_16

    invoke-virtual {p1}, Lorg/dom4j/tree/NamespaceStack;->pop()Lorg/dom4j/Namespace;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/dom4j/io/SAXWriter;->contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-virtual {v0}, Lorg/dom4j/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/xml/sax/ContentHandler;->endPrefixMapping(Ljava/lang/String;)V

    goto :goto_0

    :cond_16
    return-void
.end method

.method protected entityResolver(Lorg/dom4j/Document;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lorg/dom4j/io/SAXWriter;->entityResolver:Lorg/xml/sax/EntityResolver;

    if-eqz v0, :cond_1b

    invoke-interface {p1}, Lorg/dom4j/Document;->getDocType()Lorg/dom4j/DocumentType;

    move-result-object v0

    if-eqz v0, :cond_1b

    invoke-interface {v0}, Lorg/dom4j/DocumentType;->getPublicID()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Lorg/dom4j/DocumentType;->getSystemID()Ljava/lang/String;

    move-result-object v2

    if-nez v1, :cond_16

    if-eqz v2, :cond_1b

    :cond_16
    :try_start_16
    iget-object v0, p0, Lorg/dom4j/io/SAXWriter;->entityResolver:Lorg/xml/sax/EntityResolver;

    invoke-interface {v0, v1, v2}, Lorg/xml/sax/EntityResolver;->resolveEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_1b} :catch_1c

    :cond_1b
    return-void

    :catch_1c
    move-exception v0

    new-instance v3, Lorg/xml/sax/SAXException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Could not resolve publicID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v4, " systemID: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3
.end method

.method public getContentHandler()Lorg/xml/sax/ContentHandler;
    .registers 2

    iget-object v0, p0, Lorg/dom4j/io/SAXWriter;->contentHandler:Lorg/xml/sax/ContentHandler;

    return-object v0
.end method

.method public getDTDHandler()Lorg/xml/sax/DTDHandler;
    .registers 2

    iget-object v0, p0, Lorg/dom4j/io/SAXWriter;->dtdHandler:Lorg/xml/sax/DTDHandler;

    return-object v0
.end method

.method public getEntityResolver()Lorg/xml/sax/EntityResolver;
    .registers 2

    iget-object v0, p0, Lorg/dom4j/io/SAXWriter;->entityResolver:Lorg/xml/sax/EntityResolver;

    return-object v0
.end method

.method public getErrorHandler()Lorg/xml/sax/ErrorHandler;
    .registers 2

    iget-object v0, p0, Lorg/dom4j/io/SAXWriter;->errorHandler:Lorg/xml/sax/ErrorHandler;

    return-object v0
.end method

.method public getFeature(Ljava/lang/String;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    iget-object v0, p0, Lorg/dom4j/io/SAXWriter;->features:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public getLexicalHandler()Lorg/xml/sax/ext/LexicalHandler;
    .registers 2

    iget-object v0, p0, Lorg/dom4j/io/SAXWriter;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    sget-object v1, Lorg/dom4j/io/SAXWriter;->LEXICAL_HANDLER_NAMES:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_18

    sget-object v1, Lorg/dom4j/io/SAXWriter;->LEXICAL_HANDLER_NAMES:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-virtual {p0}, Lorg/dom4j/io/SAXWriter;->getLexicalHandler()Lorg/xml/sax/ext/LexicalHandler;

    move-result-object v0

    :goto_14
    return-object v0

    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_18
    iget-object v0, p0, Lorg/dom4j/io/SAXWriter;->properties:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_14
.end method

.method public isDeclareNamespaceAttributes()Z
    .registers 2

    iget-boolean v0, p0, Lorg/dom4j/io/SAXWriter;->declareNamespaceAttributes:Z

    return v0
.end method

.method protected isIgnoreableNamespace(Lorg/dom4j/Namespace;Lorg/dom4j/tree/NamespaceStack;)Z
    .registers 5

    const/4 v0, 0x1

    sget-object v1, Lorg/dom4j/Namespace;->NO_NAMESPACE:Lorg/dom4j/Namespace;

    invoke-virtual {p1, v1}, Lorg/dom4j/Namespace;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    sget-object v1, Lorg/dom4j/Namespace;->XML_NAMESPACE:Lorg/dom4j/Namespace;

    invoke-virtual {p1, v1}, Lorg/dom4j/Namespace;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    :cond_11
    :goto_11
    return v0

    :cond_12
    invoke-virtual {p1}, Lorg/dom4j/Namespace;->getURI()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_11

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_11

    invoke-virtual {p2, p1}, Lorg/dom4j/tree/NamespaceStack;->contains(Lorg/dom4j/Namespace;)Z

    move-result v0

    goto :goto_11
.end method

.method public parse(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    new-instance v0, Lorg/xml/sax/SAXNotSupportedException;

    const-string v1, "This XMLReader can only accept <dom4j> InputSource objects"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public parse(Lorg/xml/sax/InputSource;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    instance-of v0, p1, Lorg/dom4j/io/DocumentInputSource;

    if-eqz v0, :cond_e

    check-cast p1, Lorg/dom4j/io/DocumentInputSource;

    invoke-virtual {p1}, Lorg/dom4j/io/DocumentInputSource;->getDocument()Lorg/dom4j/Document;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/dom4j/io/SAXWriter;->write(Lorg/dom4j/Document;)V

    return-void

    :cond_e
    new-instance v0, Lorg/xml/sax/SAXNotSupportedException;

    const-string v1, "This XMLReader can only accept <dom4j> InputSource objects"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setContentHandler(Lorg/xml/sax/ContentHandler;)V
    .registers 2

    iput-object p1, p0, Lorg/dom4j/io/SAXWriter;->contentHandler:Lorg/xml/sax/ContentHandler;

    return-void
.end method

.method public setDTDHandler(Lorg/xml/sax/DTDHandler;)V
    .registers 2

    iput-object p1, p0, Lorg/dom4j/io/SAXWriter;->dtdHandler:Lorg/xml/sax/DTDHandler;

    return-void
.end method

.method public setDeclareNamespaceAttributes(Z)V
    .registers 2

    iput-boolean p1, p0, Lorg/dom4j/io/SAXWriter;->declareNamespaceAttributes:Z

    return-void
.end method

.method public setEntityResolver(Lorg/xml/sax/EntityResolver;)V
    .registers 2

    iput-object p1, p0, Lorg/dom4j/io/SAXWriter;->entityResolver:Lorg/xml/sax/EntityResolver;

    return-void
.end method

.method public setErrorHandler(Lorg/xml/sax/ErrorHandler;)V
    .registers 2

    iput-object p1, p0, Lorg/dom4j/io/SAXWriter;->errorHandler:Lorg/xml/sax/ErrorHandler;

    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    const-string v0, "http://xml.org/sax/features/namespace-prefixes"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {p0, p2}, Lorg/dom4j/io/SAXWriter;->setDeclareNamespaceAttributes(Z)V

    :cond_b
    iget-object v1, p0, Lorg/dom4j/io/SAXWriter;->features:Ljava/util/Map;

    if-eqz p2, :cond_27

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_11
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_15
    const-string v0, "http://xml.org/sax/features/namespace-prefixes"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    if-nez p2, :cond_b

    new-instance v0, Lorg/xml/sax/SAXNotSupportedException;

    const-string v1, "Namespace feature is always supported in dom4j"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_27
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_11
.end method

.method public setLexicalHandler(Lorg/xml/sax/ext/LexicalHandler;)V
    .registers 2

    iput-object p1, p0, Lorg/dom4j/io/SAXWriter;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5

    const/4 v0, 0x0

    :goto_1
    sget-object v1, Lorg/dom4j/io/SAXWriter;->LEXICAL_HANDLER_NAMES:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_19

    sget-object v1, Lorg/dom4j/io/SAXWriter;->LEXICAL_HANDLER_NAMES:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    check-cast p2, Lorg/xml/sax/ext/LexicalHandler;

    invoke-virtual {p0, p2}, Lorg/dom4j/io/SAXWriter;->setLexicalHandler(Lorg/xml/sax/ext/LexicalHandler;)V

    :goto_15
    return-void

    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_19
    iget-object v0, p0, Lorg/dom4j/io/SAXWriter;->properties:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_15
.end method

.method public setXMLReader(Lorg/xml/sax/XMLReader;)V
    .registers 3

    invoke-interface {p1}, Lorg/xml/sax/XMLReader;->getContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/dom4j/io/SAXWriter;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    invoke-interface {p1}, Lorg/xml/sax/XMLReader;->getDTDHandler()Lorg/xml/sax/DTDHandler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/dom4j/io/SAXWriter;->setDTDHandler(Lorg/xml/sax/DTDHandler;)V

    invoke-interface {p1}, Lorg/xml/sax/XMLReader;->getEntityResolver()Lorg/xml/sax/EntityResolver;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/dom4j/io/SAXWriter;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    invoke-interface {p1}, Lorg/xml/sax/XMLReader;->getErrorHandler()Lorg/xml/sax/ErrorHandler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/dom4j/io/SAXWriter;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    return-void
.end method

.method protected startDocument()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lorg/dom4j/io/SAXWriter;->contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0}, Lorg/xml/sax/ContentHandler;->startDocument()V

    return-void
.end method

.method protected startElement(Lorg/dom4j/Element;Lorg/xml/sax/helpers/AttributesImpl;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lorg/dom4j/io/SAXWriter;->contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {p1}, Lorg/dom4j/Element;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lorg/dom4j/Element;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lorg/dom4j/Element;->getQualifiedName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p1, p2}, Lorg/dom4j/io/SAXWriter;->createAttributes(Lorg/dom4j/Element;Lorg/xml/sax/Attributes;)Lorg/xml/sax/Attributes;

    move-result-object v4

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    return-void
.end method

.method protected startPrefixMapping(Lorg/dom4j/Element;Lorg/dom4j/tree/NamespaceStack;)Lorg/xml/sax/helpers/AttributesImpl;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p1}, Lorg/dom4j/Element;->getNamespace()Lorg/dom4j/Namespace;

    move-result-object v1

    if-eqz v1, :cond_21

    invoke-virtual {p0, v1, p2}, Lorg/dom4j/io/SAXWriter;->isIgnoreableNamespace(Lorg/dom4j/Namespace;Lorg/dom4j/tree/NamespaceStack;)Z

    move-result v2

    if-nez v2, :cond_21

    invoke-virtual {p2, v1}, Lorg/dom4j/tree/NamespaceStack;->push(Lorg/dom4j/Namespace;)V

    iget-object v2, p0, Lorg/dom4j/io/SAXWriter;->contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-virtual {v1}, Lorg/dom4j/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lorg/dom4j/Namespace;->getURI()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lorg/xml/sax/ContentHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lorg/dom4j/io/SAXWriter;->addNamespaceAttribute(Lorg/xml/sax/helpers/AttributesImpl;Lorg/dom4j/Namespace;)Lorg/xml/sax/helpers/AttributesImpl;

    move-result-object v0

    :cond_21
    invoke-interface {p1}, Lorg/dom4j/Element;->declaredNamespaces()Ljava/util/List;

    move-result-object v3

    const/4 v2, 0x0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    move-object v1, v0

    :goto_2b
    if-ge v2, v4, :cond_53

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/Namespace;

    invoke-virtual {p0, v0, p2}, Lorg/dom4j/io/SAXWriter;->isIgnoreableNamespace(Lorg/dom4j/Namespace;Lorg/dom4j/tree/NamespaceStack;)Z

    move-result v5

    if-nez v5, :cond_51

    invoke-virtual {p2, v0}, Lorg/dom4j/tree/NamespaceStack;->push(Lorg/dom4j/Namespace;)V

    iget-object v5, p0, Lorg/dom4j/io/SAXWriter;->contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-virtual {v0}, Lorg/dom4j/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lorg/dom4j/Namespace;->getURI()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lorg/xml/sax/ContentHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1, v0}, Lorg/dom4j/io/SAXWriter;->addNamespaceAttribute(Lorg/xml/sax/helpers/AttributesImpl;Lorg/dom4j/Namespace;)Lorg/xml/sax/helpers/AttributesImpl;

    move-result-object v0

    :goto_4d
    add-int/lit8 v2, v2, 0x1

    move-object v1, v0

    goto :goto_2b

    :cond_51
    move-object v0, v1

    goto :goto_4d

    :cond_53
    return-object v1
.end method

.method public write(Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iget-object v1, p0, Lorg/dom4j/io/SAXWriter;->contentHandler:Lorg/xml/sax/ContentHandler;

    const/4 v2, 0x0

    array-length v3, v0

    invoke-interface {v1, v0, v2, v3}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    :cond_d
    return-void
.end method

.method public write(Lorg/dom4j/CDATA;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/dom4j/CDATA;->getText()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/dom4j/io/SAXWriter;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v1, :cond_16

    iget-object v1, p0, Lorg/dom4j/io/SAXWriter;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {v1}, Lorg/xml/sax/ext/LexicalHandler;->startCDATA()V

    invoke-virtual {p0, v0}, Lorg/dom4j/io/SAXWriter;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/dom4j/io/SAXWriter;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {v0}, Lorg/xml/sax/ext/LexicalHandler;->endCDATA()V

    :goto_15
    return-void

    :cond_16
    invoke-virtual {p0, v0}, Lorg/dom4j/io/SAXWriter;->write(Ljava/lang/String;)V

    goto :goto_15
.end method

.method public write(Lorg/dom4j/Comment;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lorg/dom4j/io/SAXWriter;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v0, :cond_13

    invoke-interface {p1}, Lorg/dom4j/Comment;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iget-object v1, p0, Lorg/dom4j/io/SAXWriter;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    const/4 v2, 0x0

    array-length v3, v0

    invoke-interface {v1, v0, v2, v3}, Lorg/xml/sax/ext/LexicalHandler;->comment([CII)V

    :cond_13
    return-void
.end method

.method public write(Lorg/dom4j/Document;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    if-eqz p1, :cond_1c

    invoke-virtual {p0}, Lorg/dom4j/io/SAXWriter;->checkForNullHandlers()V

    invoke-virtual {p0, p1}, Lorg/dom4j/io/SAXWriter;->documentLocator(Lorg/dom4j/Document;)V

    invoke-virtual {p0}, Lorg/dom4j/io/SAXWriter;->startDocument()V

    invoke-virtual {p0, p1}, Lorg/dom4j/io/SAXWriter;->entityResolver(Lorg/dom4j/Document;)V

    invoke-virtual {p0, p1}, Lorg/dom4j/io/SAXWriter;->dtdHandler(Lorg/dom4j/Document;)V

    new-instance v0, Lorg/dom4j/tree/NamespaceStack;

    invoke-direct {v0}, Lorg/dom4j/tree/NamespaceStack;-><init>()V

    invoke-virtual {p0, p1, v0}, Lorg/dom4j/io/SAXWriter;->writeContent(Lorg/dom4j/Branch;Lorg/dom4j/tree/NamespaceStack;)V

    invoke-virtual {p0}, Lorg/dom4j/io/SAXWriter;->endDocument()V

    :cond_1c
    return-void
.end method

.method public write(Lorg/dom4j/Element;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    new-instance v0, Lorg/dom4j/tree/NamespaceStack;

    invoke-direct {v0}, Lorg/dom4j/tree/NamespaceStack;-><init>()V

    invoke-virtual {p0, p1, v0}, Lorg/dom4j/io/SAXWriter;->write(Lorg/dom4j/Element;Lorg/dom4j/tree/NamespaceStack;)V

    return-void
.end method

.method protected write(Lorg/dom4j/Element;Lorg/dom4j/tree/NamespaceStack;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p2}, Lorg/dom4j/tree/NamespaceStack;->size()I

    move-result v0

    invoke-virtual {p0, p1, p2}, Lorg/dom4j/io/SAXWriter;->startPrefixMapping(Lorg/dom4j/Element;Lorg/dom4j/tree/NamespaceStack;)Lorg/xml/sax/helpers/AttributesImpl;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lorg/dom4j/io/SAXWriter;->startElement(Lorg/dom4j/Element;Lorg/xml/sax/helpers/AttributesImpl;)V

    invoke-virtual {p0, p1, p2}, Lorg/dom4j/io/SAXWriter;->writeContent(Lorg/dom4j/Branch;Lorg/dom4j/tree/NamespaceStack;)V

    invoke-virtual {p0, p1}, Lorg/dom4j/io/SAXWriter;->endElement(Lorg/dom4j/Element;)V

    invoke-virtual {p0, p2, v0}, Lorg/dom4j/io/SAXWriter;->endPrefixMapping(Lorg/dom4j/tree/NamespaceStack;I)V

    return-void
.end method

.method public write(Lorg/dom4j/Entity;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/dom4j/Entity;->getText()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/dom4j/io/SAXWriter;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v1, :cond_1a

    invoke-interface {p1}, Lorg/dom4j/Entity;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/dom4j/io/SAXWriter;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {v2, v1}, Lorg/xml/sax/ext/LexicalHandler;->startEntity(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/dom4j/io/SAXWriter;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/dom4j/io/SAXWriter;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {v0, v1}, Lorg/xml/sax/ext/LexicalHandler;->endEntity(Ljava/lang/String;)V

    :goto_19
    return-void

    :cond_1a
    invoke-virtual {p0, v0}, Lorg/dom4j/io/SAXWriter;->write(Ljava/lang/String;)V

    goto :goto_19
.end method

.method public write(Lorg/dom4j/Node;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/dom4j/Node;->getNodeType()S

    move-result v0

    packed-switch v0, :pswitch_data_58

    :pswitch_7  #0x6, 0xb, 0xc
    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Invalid node type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_20  #0x1
    check-cast p1, Lorg/dom4j/Element;

    invoke-virtual {p0, p1}, Lorg/dom4j/io/SAXWriter;->write(Lorg/dom4j/Element;)V

    :goto_25
    :pswitch_25  #0xd
    return-void

    :pswitch_26  #0x2
    check-cast p1, Lorg/dom4j/Attribute;

    invoke-virtual {p0, p1}, Lorg/dom4j/io/SAXWriter;->write(Lorg/dom4j/Node;)V

    goto :goto_25

    :pswitch_2c  #0x3
    invoke-interface {p1}, Lorg/dom4j/Node;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/dom4j/io/SAXWriter;->write(Ljava/lang/String;)V

    goto :goto_25

    :pswitch_34  #0x4
    check-cast p1, Lorg/dom4j/CDATA;

    invoke-virtual {p0, p1}, Lorg/dom4j/io/SAXWriter;->write(Lorg/dom4j/CDATA;)V

    goto :goto_25

    :pswitch_3a  #0x5
    check-cast p1, Lorg/dom4j/Entity;

    invoke-virtual {p0, p1}, Lorg/dom4j/io/SAXWriter;->write(Lorg/dom4j/Entity;)V

    goto :goto_25

    :pswitch_40  #0x7
    check-cast p1, Lorg/dom4j/ProcessingInstruction;

    invoke-virtual {p0, p1}, Lorg/dom4j/io/SAXWriter;->write(Lorg/dom4j/ProcessingInstruction;)V

    goto :goto_25

    :pswitch_46  #0x8
    check-cast p1, Lorg/dom4j/Comment;

    invoke-virtual {p0, p1}, Lorg/dom4j/io/SAXWriter;->write(Lorg/dom4j/Comment;)V

    goto :goto_25

    :pswitch_4c  #0x9
    check-cast p1, Lorg/dom4j/Document;

    invoke-virtual {p0, p1}, Lorg/dom4j/io/SAXWriter;->write(Lorg/dom4j/Document;)V

    goto :goto_25

    :pswitch_52  #0xa
    check-cast p1, Lorg/dom4j/DocumentType;

    invoke-virtual {p0, p1}, Lorg/dom4j/io/SAXWriter;->write(Lorg/dom4j/Node;)V

    goto :goto_25

    :pswitch_data_58
    .packed-switch 0x1
        :pswitch_20  #00000001
        :pswitch_26  #00000002
        :pswitch_2c  #00000003
        :pswitch_34  #00000004
        :pswitch_3a  #00000005
        :pswitch_7  #00000006
        :pswitch_40  #00000007
        :pswitch_46  #00000008
        :pswitch_4c  #00000009
        :pswitch_52  #0000000a
        :pswitch_7  #0000000b
        :pswitch_7  #0000000c
        :pswitch_25  #0000000d
    .end packed-switch
.end method

.method public write(Lorg/dom4j/ProcessingInstruction;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/dom4j/ProcessingInstruction;->getTarget()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/dom4j/ProcessingInstruction;->getText()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/dom4j/io/SAXWriter;->contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v2, v0, v1}, Lorg/xml/sax/ContentHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public writeClose(Lorg/dom4j/Element;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/dom4j/io/SAXWriter;->endElement(Lorg/dom4j/Element;)V

    return-void
.end method

.method protected writeContent(Lorg/dom4j/Branch;Lorg/dom4j/tree/NamespaceStack;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/dom4j/Branch;->nodeIterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Lorg/dom4j/Element;

    if-eqz v2, :cond_18

    check-cast v0, Lorg/dom4j/Element;

    invoke-virtual {p0, v0, p2}, Lorg/dom4j/io/SAXWriter;->write(Lorg/dom4j/Element;Lorg/dom4j/tree/NamespaceStack;)V

    goto :goto_4

    :cond_18
    instance-of v2, v0, Lorg/dom4j/CharacterData;

    if-eqz v2, :cond_65

    instance-of v2, v0, Lorg/dom4j/Text;

    if-eqz v2, :cond_2a

    check-cast v0, Lorg/dom4j/Text;

    invoke-interface {v0}, Lorg/dom4j/Text;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/dom4j/io/SAXWriter;->write(Ljava/lang/String;)V

    goto :goto_4

    :cond_2a
    instance-of v2, v0, Lorg/dom4j/CDATA;

    if-eqz v2, :cond_34

    check-cast v0, Lorg/dom4j/CDATA;

    invoke-virtual {p0, v0}, Lorg/dom4j/io/SAXWriter;->write(Lorg/dom4j/CDATA;)V

    goto :goto_4

    :cond_34
    instance-of v2, v0, Lorg/dom4j/Comment;

    if-eqz v2, :cond_3e

    check-cast v0, Lorg/dom4j/Comment;

    invoke-virtual {p0, v0}, Lorg/dom4j/io/SAXWriter;->write(Lorg/dom4j/Comment;)V

    goto :goto_4

    :cond_3e
    new-instance v1, Lorg/xml/sax/SAXException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Invalid Node in DOM4J content: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " of type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_65
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_6f

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/dom4j/io/SAXWriter;->write(Ljava/lang/String;)V

    goto :goto_4

    :cond_6f
    instance-of v2, v0, Lorg/dom4j/Entity;

    if-eqz v2, :cond_79

    check-cast v0, Lorg/dom4j/Entity;

    invoke-virtual {p0, v0}, Lorg/dom4j/io/SAXWriter;->write(Lorg/dom4j/Entity;)V

    goto :goto_4

    :cond_79
    instance-of v2, v0, Lorg/dom4j/ProcessingInstruction;

    if-eqz v2, :cond_83

    check-cast v0, Lorg/dom4j/ProcessingInstruction;

    invoke-virtual {p0, v0}, Lorg/dom4j/io/SAXWriter;->write(Lorg/dom4j/ProcessingInstruction;)V

    goto :goto_4

    :cond_83
    instance-of v2, v0, Lorg/dom4j/Namespace;

    if-eqz v2, :cond_8e

    check-cast v0, Lorg/dom4j/Namespace;

    invoke-virtual {p0, v0}, Lorg/dom4j/io/SAXWriter;->write(Lorg/dom4j/Node;)V

    goto/16 :goto_4

    :cond_8e
    new-instance v1, Lorg/xml/sax/SAXException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Invalid Node in DOM4J content: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_a7
    return-void
.end method

.method public writeOpen(Lorg/dom4j/Element;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/dom4j/io/SAXWriter;->startElement(Lorg/dom4j/Element;Lorg/xml/sax/helpers/AttributesImpl;)V

    return-void
.end method
