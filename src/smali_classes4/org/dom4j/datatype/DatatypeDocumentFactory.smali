.class public Lorg/dom4j/datatype/DatatypeDocumentFactory;
.super Lorg/dom4j/DocumentFactory;


# static fields
.field private static final DO_INTERN_QNAME:Z

.field private static final XSI_NAMESPACE:Lorg/dom4j/Namespace;

.field private static final XSI_NO_SCHEMA_LOCATION:Lorg/dom4j/QName;

.field private static final XSI_SCHEMA_LOCATION:Lorg/dom4j/QName;

.field protected static transient singleton:Lorg/dom4j/datatype/DatatypeDocumentFactory;


# instance fields
.field private autoLoadSchema:Z

.field private schemaBuilder:Lorg/dom4j/datatype/SchemaParser;

.field private xmlSchemaReader:Lorg/dom4j/io/SAXReader;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lorg/dom4j/datatype/DatatypeDocumentFactory;

    invoke-direct {v0}, Lorg/dom4j/datatype/DatatypeDocumentFactory;-><init>()V

    sput-object v0, Lorg/dom4j/datatype/DatatypeDocumentFactory;->singleton:Lorg/dom4j/datatype/DatatypeDocumentFactory;

    const-string v0, "xsi"

    const-string v1, "http://www.w3.org/2001/XMLSchema-instance"

    invoke-static {v0, v1}, Lorg/dom4j/Namespace;->get(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Namespace;

    move-result-object v0

    sput-object v0, Lorg/dom4j/datatype/DatatypeDocumentFactory;->XSI_NAMESPACE:Lorg/dom4j/Namespace;

    const-string v0, "schemaLocation"

    sget-object v1, Lorg/dom4j/datatype/DatatypeDocumentFactory;->XSI_NAMESPACE:Lorg/dom4j/Namespace;

    invoke-static {v0, v1}, Lorg/dom4j/QName;->get(Ljava/lang/String;Lorg/dom4j/Namespace;)Lorg/dom4j/QName;

    move-result-object v0

    sput-object v0, Lorg/dom4j/datatype/DatatypeDocumentFactory;->XSI_SCHEMA_LOCATION:Lorg/dom4j/QName;

    const-string v0, "noNamespaceSchemaLocation"

    sget-object v1, Lorg/dom4j/datatype/DatatypeDocumentFactory;->XSI_NAMESPACE:Lorg/dom4j/Namespace;

    invoke-static {v0, v1}, Lorg/dom4j/QName;->get(Ljava/lang/String;Lorg/dom4j/Namespace;)Lorg/dom4j/QName;

    move-result-object v0

    sput-object v0, Lorg/dom4j/datatype/DatatypeDocumentFactory;->XSI_NO_SCHEMA_LOCATION:Lorg/dom4j/QName;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lorg/dom4j/DocumentFactory;-><init>()V

    new-instance v0, Lorg/dom4j/io/SAXReader;

    invoke-direct {v0}, Lorg/dom4j/io/SAXReader;-><init>()V

    iput-object v0, p0, Lorg/dom4j/datatype/DatatypeDocumentFactory;->xmlSchemaReader:Lorg/dom4j/io/SAXReader;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/dom4j/datatype/DatatypeDocumentFactory;->autoLoadSchema:Z

    new-instance v0, Lorg/dom4j/datatype/SchemaParser;

    invoke-direct {v0, p0}, Lorg/dom4j/datatype/SchemaParser;-><init>(Lorg/dom4j/datatype/DatatypeDocumentFactory;)V

    iput-object v0, p0, Lorg/dom4j/datatype/DatatypeDocumentFactory;->schemaBuilder:Lorg/dom4j/datatype/SchemaParser;

    return-void
.end method

.method public static getInstance()Lorg/dom4j/DocumentFactory;
    .registers 1

    sget-object v0, Lorg/dom4j/datatype/DatatypeDocumentFactory;->singleton:Lorg/dom4j/datatype/DatatypeDocumentFactory;

    return-object v0
.end method


# virtual methods
.method public createAttribute(Lorg/dom4j/Element;Lorg/dom4j/QName;Ljava/lang/String;)Lorg/dom4j/Attribute;
    .registers 8

    const/16 v3, 0x20

    const/4 v0, 0x0

    iget-boolean v1, p0, Lorg/dom4j/datatype/DatatypeDocumentFactory;->autoLoadSchema:Z

    if-eqz v1, :cond_1d

    sget-object v1, Lorg/dom4j/datatype/DatatypeDocumentFactory;->XSI_NO_SCHEMA_LOCATION:Lorg/dom4j/QName;

    invoke-virtual {p2, v1}, Lorg/dom4j/QName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    if-eqz p1, :cond_15

    invoke-interface {p1}, Lorg/dom4j/Element;->getDocument()Lorg/dom4j/Document;

    move-result-object v0

    :cond_15
    invoke-virtual {p0, v0, p3}, Lorg/dom4j/datatype/DatatypeDocumentFactory;->loadSchema(Lorg/dom4j/Document;Ljava/lang/String;)V

    :cond_18
    :goto_18
    invoke-super {p0, p1, p2, p3}, Lorg/dom4j/DocumentFactory;->createAttribute(Lorg/dom4j/Element;Lorg/dom4j/QName;Ljava/lang/String;)Lorg/dom4j/Attribute;

    move-result-object v0

    return-object v0

    :cond_1d
    iget-boolean v1, p0, Lorg/dom4j/datatype/DatatypeDocumentFactory;->autoLoadSchema:Z

    if-eqz v1, :cond_18

    sget-object v1, Lorg/dom4j/datatype/DatatypeDocumentFactory;->XSI_SCHEMA_LOCATION:Lorg/dom4j/QName;

    invoke-virtual {p2, v1}, Lorg/dom4j/QName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    if-eqz p1, :cond_2f

    invoke-interface {p1}, Lorg/dom4j/Element;->getDocument()Lorg/dom4j/Document;

    move-result-object v0

    :cond_2f
    const/4 v1, 0x0

    invoke-virtual {p3, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    invoke-virtual {p3, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/dom4j/Element;->getNamespaceForURI(Ljava/lang/String;)Lorg/dom4j/Namespace;

    move-result-object v1

    invoke-virtual {p3, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2, v1}, Lorg/dom4j/datatype/DatatypeDocumentFactory;->loadSchema(Lorg/dom4j/Document;Ljava/lang/String;Lorg/dom4j/Namespace;)V

    goto :goto_18
.end method

.method public getElementFactory(Lorg/dom4j/QName;)Lorg/dom4j/datatype/DatatypeElementFactory;
    .registers 4

    invoke-virtual {p1}, Lorg/dom4j/QName;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    instance-of v1, v0, Lorg/dom4j/datatype/DatatypeElementFactory;

    if-eqz v1, :cond_b

    check-cast v0, Lorg/dom4j/datatype/DatatypeElementFactory;

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public loadSchema(Lorg/dom4j/Document;)V
    .registers 3

    iget-object v0, p0, Lorg/dom4j/datatype/DatatypeDocumentFactory;->schemaBuilder:Lorg/dom4j/datatype/SchemaParser;

    invoke-virtual {v0, p1}, Lorg/dom4j/datatype/SchemaParser;->build(Lorg/dom4j/Document;)V

    return-void
.end method

.method protected loadSchema(Lorg/dom4j/Document;Ljava/lang/String;)V
    .registers 7

    :try_start_0
    invoke-interface {p1}, Lorg/dom4j/Document;->getEntityResolver()Lorg/xml/sax/EntityResolver;

    move-result-object v0

    if-nez v0, :cond_6c

    new-instance v0, Lorg/dom4j/datatype/InvalidSchemaException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "No EntityResolver available for resolving URI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/dom4j/datatype/InvalidSchemaException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1f} :catch_1f

    :catch_1f
    move-exception v0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Failed to load schema: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Caught: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v0, Lorg/dom4j/datatype/InvalidSchemaException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Failed to load schema: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/dom4j/datatype/InvalidSchemaException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6c
    const/4 v1, 0x0

    :try_start_6d
    invoke-interface {v0, v1, p2}, Lorg/xml/sax/EntityResolver;->resolveEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;

    move-result-object v1

    if-nez v0, :cond_8c

    new-instance v0, Lorg/dom4j/datatype/InvalidSchemaException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Could not resolve the URI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/dom4j/datatype/InvalidSchemaException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8c
    iget-object v0, p0, Lorg/dom4j/datatype/DatatypeDocumentFactory;->xmlSchemaReader:Lorg/dom4j/io/SAXReader;

    invoke-virtual {v0, v1}, Lorg/dom4j/io/SAXReader;->read(Lorg/xml/sax/InputSource;)Lorg/dom4j/Document;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/dom4j/datatype/DatatypeDocumentFactory;->loadSchema(Lorg/dom4j/Document;)V
    :try_end_95
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_95} :catch_1f

    return-void
.end method

.method protected loadSchema(Lorg/dom4j/Document;Ljava/lang/String;Lorg/dom4j/Namespace;)V
    .registers 8

    :try_start_0
    invoke-interface {p1}, Lorg/dom4j/Document;->getEntityResolver()Lorg/xml/sax/EntityResolver;

    move-result-object v0

    if-nez v0, :cond_6c

    new-instance v0, Lorg/dom4j/datatype/InvalidSchemaException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "No EntityResolver available for resolving URI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/dom4j/datatype/InvalidSchemaException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1f} :catch_1f

    :catch_1f
    move-exception v0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Failed to load schema: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Caught: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v0, Lorg/dom4j/datatype/InvalidSchemaException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Failed to load schema: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/dom4j/datatype/InvalidSchemaException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6c
    const/4 v1, 0x0

    :try_start_6d
    invoke-interface {v0, v1, p2}, Lorg/xml/sax/EntityResolver;->resolveEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;

    move-result-object v1

    if-nez v0, :cond_8c

    new-instance v0, Lorg/dom4j/datatype/InvalidSchemaException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Could not resolve the URI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/dom4j/datatype/InvalidSchemaException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8c
    iget-object v0, p0, Lorg/dom4j/datatype/DatatypeDocumentFactory;->xmlSchemaReader:Lorg/dom4j/io/SAXReader;

    invoke-virtual {v0, v1}, Lorg/dom4j/io/SAXReader;->read(Lorg/xml/sax/InputSource;)Lorg/dom4j/Document;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Lorg/dom4j/datatype/DatatypeDocumentFactory;->loadSchema(Lorg/dom4j/Document;Lorg/dom4j/Namespace;)V
    :try_end_95
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_95} :catch_1f

    return-void
.end method

.method public loadSchema(Lorg/dom4j/Document;Lorg/dom4j/Namespace;)V
    .registers 4

    iget-object v0, p0, Lorg/dom4j/datatype/DatatypeDocumentFactory;->schemaBuilder:Lorg/dom4j/datatype/SchemaParser;

    invoke-virtual {v0, p1, p2}, Lorg/dom4j/datatype/SchemaParser;->build(Lorg/dom4j/Document;Lorg/dom4j/Namespace;)V

    return-void
.end method
