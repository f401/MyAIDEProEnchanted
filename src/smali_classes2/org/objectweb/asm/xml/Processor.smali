.class public Lorg/objectweb/asm/xml/Processor;
.super Ljava/lang/Object;


# static fields
.field public static final BYTECODE:I = 0x1

.field public static final MULTI_XML:I = 0x2

.field public static final SINGLE_XML:I = 0x3

.field private static final SINGLE_XML_NAME:Ljava/lang/String; = "classes.xml"


# instance fields
.field private final inRepresentation:I

.field private final input:Ljava/io/InputStream;

.field private n:I

.field private final outRepresentation:I

.field private final output:Ljava/io/OutputStream;

.field private final xslt:Ljavax/xml/transform/Source;


# direct methods
.method public constructor <init>(IILjava/io/InputStream;Ljava/io/OutputStream;Ljavax/xml/transform/Source;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/objectweb/asm/xml/Processor;->n:I

    iput p1, p0, Lorg/objectweb/asm/xml/Processor;->inRepresentation:I

    iput p2, p0, Lorg/objectweb/asm/xml/Processor;->outRepresentation:I

    iput-object p3, p0, Lorg/objectweb/asm/xml/Processor;->input:Ljava/io/InputStream;

    iput-object p4, p0, Lorg/objectweb/asm/xml/Processor;->output:Ljava/io/OutputStream;

    iput-object p5, p0, Lorg/objectweb/asm/xml/Processor;->xslt:Ljavax/xml/transform/Source;

    return-void
.end method

.method private copyEntry(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lorg/objectweb/asm/xml/Processor;->outRepresentation:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    return-void

    :cond_1
    const/16 v0, 0x800

    new-array v0, v0, [B

    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0
.end method

.method private getEntryElement(Ljava/util/zip/ZipOutputStream;)Lorg/objectweb/asm/xml/Processor$EntryElement;
    .registers 4

    iget v0, p0, Lorg/objectweb/asm/xml/Processor;->outRepresentation:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    new-instance v0, Lorg/objectweb/asm/xml/Processor$SingleDocElement;

    invoke-direct {v0, p1}, Lorg/objectweb/asm/xml/Processor$SingleDocElement;-><init>(Ljava/io/OutputStream;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/objectweb/asm/xml/Processor$ZipEntryElement;

    invoke-direct {v0, p1}, Lorg/objectweb/asm/xml/Processor$ZipEntryElement;-><init>(Ljava/util/zip/ZipOutputStream;)V

    goto :goto_0
.end method

.method private getName(Ljava/util/zip/ZipEntry;)Ljava/lang/String;
    .registers 5

    const/4 v2, 0x1

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1}, Lorg/objectweb/asm/xml/Processor;->isClassEntry(Ljava/util/zip/ZipEntry;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lorg/objectweb/asm/xml/Processor;->inRepresentation:I

    if-eq v1, v2, :cond_1

    iget v1, p0, Lorg/objectweb/asm/xml/Processor;->outRepresentation:I

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x4

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget v1, p0, Lorg/objectweb/asm/xml/Processor;->inRepresentation:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lorg/objectweb/asm/xml/Processor;->outRepresentation:I

    if-eq v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ".xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getRepresentation(Ljava/lang/String;)I
    .registers 2

    const-string v0, "code"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const-string v0, "xml"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const-string v0, "singlexml"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isClassEntry(Ljava/util/zip/ZipEntry;)Z
    .registers 5

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lorg/objectweb/asm/xml/Processor;->inRepresentation:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const-string v1, "classes.xml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const-string v1, ".class"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, ".class.xml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static main([Ljava/lang/String;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x2

    array-length v1, p0

    if-ge v1, v0, :cond_0

    invoke-static {}, Lorg/objectweb/asm/xml/Processor;->showUsage()V

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x0

    aget-object v1, p0, v1

    invoke-static {v1}, Lorg/objectweb/asm/xml/Processor;->getRepresentation(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    aget-object v2, p0, v2

    invoke-static {v2}, Lorg/objectweb/asm/xml/Processor;->getRepresentation(Ljava/lang/String;)I

    move-result v2

    sget-object v3, Ljava/lang/System;->in:Ljava/io/InputStream;

    new-instance v4, Ljava/io/BufferedOutputStream;

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {v4, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v5, 0x0

    :goto_1
    array-length v6, p0

    if-ge v0, v6, :cond_4

    const-string v6, "-in"

    aget-object v7, p0, v0

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    add-int/lit8 v0, v0, 0x1

    new-instance v3, Ljava/io/FileInputStream;

    aget-object v6, p0, v0

    invoke-direct {v3, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const-string v6, "-out"

    aget-object v7, p0, v0

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    add-int/lit8 v0, v0, 0x1

    new-instance v4, Ljava/io/BufferedOutputStream;

    new-instance v6, Ljava/io/FileOutputStream;

    aget-object v7, p0, v0

    invoke-direct {v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    goto :goto_2

    :cond_2
    const-string v5, "-xslt"

    aget-object v6, p0, v0

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    add-int/lit8 v0, v0, 0x1

    new-instance v5, Ljavax/xml/transform/stream/StreamSource;

    new-instance v6, Ljava/io/FileInputStream;

    aget-object v7, p0, v0

    invoke-direct {v6, v7}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljavax/xml/transform/stream/StreamSource;-><init>(Ljava/io/InputStream;)V

    goto :goto_2

    :cond_3
    invoke-static {}, Lorg/objectweb/asm/xml/Processor;->showUsage()V

    goto :goto_0

    :cond_4
    if-eqz v1, :cond_5

    if-nez v2, :cond_6

    :cond_5
    invoke-static {}, Lorg/objectweb/asm/xml/Processor;->showUsage()V

    goto :goto_0

    :cond_6
    new-instance v0, Lorg/objectweb/asm/xml/Processor;

    invoke-direct/range {v0 .. v5}, Lorg/objectweb/asm/xml/Processor;-><init>(IILjava/io/InputStream;Ljava/io/OutputStream;Ljavax/xml/transform/Source;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0}, Lorg/objectweb/asm/xml/Processor;->process()I

    move-result v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(I)V

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    sub-long v8, v4, v2

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "ms  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    int-to-float v0, v0

    const/high16 v7, 0x447a0000    # 1000.0f

    mul-float/2addr v0, v7

    sub-long v2, v4, v2

    long-to-float v2, v2

    div-float/2addr v0, v2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, " resources/sec"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private processEntry(Ljava/util/zip/ZipInputStream;Ljava/util/zip/ZipEntry;Lorg/objectweb/asm/xml/Processor$ContentHandlerFactory;)V
    .registers 9

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {p3}, Lorg/objectweb/asm/xml/Processor$ContentHandlerFactory;->createContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v3

    :try_start_0
    iget v0, p0, Lorg/objectweb/asm/xml/Processor;->inRepresentation:I

    const/4 v4, 0x3

    if-ne v0, v4, :cond_0

    move v0, v1

    :goto_0
    iget v4, p0, Lorg/objectweb/asm/xml/Processor;->inRepresentation:I

    if-ne v4, v1, :cond_1

    new-instance v1, Lorg/objectweb/asm/ClassReader;

    invoke-static {p1, p2}, Lorg/objectweb/asm/xml/Processor;->readEntry(Ljava/io/InputStream;Ljava/util/zip/ZipEntry;)[B

    move-result-object v4

    invoke-direct {v1, v4}, Lorg/objectweb/asm/ClassReader;-><init>([B)V

    new-instance v4, Lorg/objectweb/asm/xml/SAXClassAdapter;

    invoke-direct {v4, v3, v0}, Lorg/objectweb/asm/xml/SAXClassAdapter;-><init>(Lorg/xml/sax/ContentHandler;Z)V

    const/4 v0, 0x0

    invoke-virtual {v1, v4, v0}, Lorg/objectweb/asm/ClassReader;->accept(Lorg/objectweb/asm/ClassVisitor;I)V

    :goto_1
    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    invoke-static {}, Lorg/xml/sax/helpers/XMLReaderFactory;->createXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v1

    invoke-interface {v1, v3}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    new-instance v3, Lorg/xml/sax/InputSource;

    if-eqz v0, :cond_2

    new-instance v0, Lorg/objectweb/asm/xml/Processor$ProtectedInputStream;

    invoke-direct {v0, p1}, Lorg/objectweb/asm/xml/Processor$ProtectedInputStream;-><init>(Ljava/io/InputStream;)V

    :goto_2
    invoke-direct {v3, v0}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v1, v3}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {p2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v2}, Lorg/objectweb/asm/xml/Processor;->update(Ljava/lang/Object;I)V

    invoke-virtual {p0, v0, v2}, Lorg/objectweb/asm/xml/Processor;->update(Ljava/lang/Object;I)V

    goto :goto_1

    :cond_2
    :try_start_1
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-static {p1, p2}, Lorg/objectweb/asm/xml/Processor;->readEntry(Ljava/io/InputStream;Ljava/util/zip/ZipEntry;)[B

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method private static readEntry(Ljava/io/InputStream;Ljava/util/zip/ZipEntry;)[B
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    long-to-int v1, v2

    new-array v1, v1, [B

    :goto_0
    array-length v2, v1

    sub-int/2addr v2, v0

    invoke-virtual {p0, v1, v0, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-lez v2, :cond_0

    add-int/2addr v0, v2

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_1
    return-object v0

    :cond_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v2, 0x1000

    new-array v2, v2, [B

    :goto_2
    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    invoke-virtual {v1, v2, v0, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    goto :goto_1
.end method

.method private static showUsage()V
    .registers 2

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Usage: Main <in format> <out format> [-in <input jar>] [-out <output jar>] [-xslt <xslt fiel>]"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "  when -in or -out is omitted sysin and sysout would be used"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "  <in format> and <out format> - code | xml | singlexml"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public process()I
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;,
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x3

    const/4 v4, 0x0

    new-instance v5, Ljava/util/zip/ZipInputStream;

    iget-object v0, p0, Lorg/objectweb/asm/xml/Processor;->input:Ljava/io/InputStream;

    invoke-direct {v5, v0}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v6, Ljava/util/zip/ZipOutputStream;

    iget-object v0, p0, Lorg/objectweb/asm/xml/Processor;->output:Ljava/io/OutputStream;

    invoke-direct {v6, v0}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    new-instance v7, Ljava/io/OutputStreamWriter;

    invoke-direct {v7, v6}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v0

    const-string v1, "http://javax.xml.transform.sax.SAXSource/feature"

    invoke-virtual {v0, v1}, Ljavax/xml/transform/TransformerFactory;->getFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "http://javax.xml.transform.sax.SAXResult/feature"

    invoke-virtual {v0, v1}, Ljavax/xml/transform/TransformerFactory;->getFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    move v1, v4

    :goto_0
    return v1

    :cond_1
    check-cast v0, Ljavax/xml/transform/sax/SAXTransformerFactory;

    iget-object v1, p0, Lorg/objectweb/asm/xml/Processor;->xslt:Ljavax/xml/transform/Source;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lorg/objectweb/asm/xml/Processor;->xslt:Ljavax/xml/transform/Source;

    invoke-virtual {v0, v1}, Ljavax/xml/transform/sax/SAXTransformerFactory;->newTemplates(Ljavax/xml/transform/Source;)Ljavax/xml/transform/Templates;

    move-result-object v1

    :goto_1
    invoke-direct {p0, v6}, Lorg/objectweb/asm/xml/Processor;->getEntryElement(Ljava/util/zip/ZipOutputStream;)Lorg/objectweb/asm/xml/Processor$EntryElement;

    move-result-object v8

    iget v3, p0, Lorg/objectweb/asm/xml/Processor;->outRepresentation:I

    packed-switch v3, :pswitch_data_0

    move-object v3, v2

    :goto_2
    if-nez v1, :cond_3

    move-object v0, v3

    :goto_3
    new-instance v2, Lorg/objectweb/asm/xml/Processor$SubdocumentHandlerFactory;

    invoke-direct {v2, v0}, Lorg/objectweb/asm/xml/Processor$SubdocumentHandlerFactory;-><init>(Lorg/xml/sax/ContentHandler;)V

    if-eqz v0, :cond_2

    iget v1, p0, Lorg/objectweb/asm/xml/Processor;->inRepresentation:I

    if-eq v1, v10, :cond_2

    invoke-interface {v0}, Lorg/xml/sax/ContentHandler;->startDocument()V

    const-string v1, ""

    const-string v3, "classes"

    const-string v7, "classes"

    new-instance v9, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {v9}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    invoke-interface {v0, v1, v3, v7, v9}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    :cond_2
    move v1, v4

    :goto_4
    invoke-virtual {v5}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    iget v7, p0, Lorg/objectweb/asm/xml/Processor;->n:I

    add-int/lit8 v9, v7, 0x1

    iput v9, p0, Lorg/objectweb/asm/xml/Processor;->n:I

    invoke-virtual {p0, v4, v7}, Lorg/objectweb/asm/xml/Processor;->update(Ljava/lang/Object;I)V

    invoke-direct {p0, v3}, Lorg/objectweb/asm/xml/Processor;->isClassEntry(Ljava/util/zip/ZipEntry;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-direct {p0, v5, v3, v2}, Lorg/objectweb/asm/xml/Processor;->processEntry(Ljava/util/zip/ZipInputStream;Ljava/util/zip/ZipEntry;Lorg/objectweb/asm/xml/Processor$ContentHandlerFactory;)V

    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :pswitch_0
    new-instance v3, Lorg/objectweb/asm/xml/Processor$OutputSlicingHandler;

    new-instance v2, Lorg/objectweb/asm/xml/Processor$ASMContentHandlerFactory;

    invoke-direct {v2, v6}, Lorg/objectweb/asm/xml/Processor$ASMContentHandlerFactory;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v3, v2, v8, v4}, Lorg/objectweb/asm/xml/Processor$OutputSlicingHandler;-><init>(Lorg/objectweb/asm/xml/Processor$ContentHandlerFactory;Lorg/objectweb/asm/xml/Processor$EntryElement;Z)V

    goto :goto_2

    :pswitch_1
    new-instance v3, Lorg/objectweb/asm/xml/Processor$OutputSlicingHandler;

    new-instance v2, Lorg/objectweb/asm/xml/Processor$SAXWriterFactory;

    invoke-direct {v2, v7, v9}, Lorg/objectweb/asm/xml/Processor$SAXWriterFactory;-><init>(Ljava/io/Writer;Z)V

    invoke-direct {v3, v2, v8, v9}, Lorg/objectweb/asm/xml/Processor$OutputSlicingHandler;-><init>(Lorg/objectweb/asm/xml/Processor$ContentHandlerFactory;Lorg/objectweb/asm/xml/Processor$EntryElement;Z)V

    goto :goto_2

    :pswitch_2
    new-instance v2, Ljava/util/zip/ZipEntry;

    const-string v3, "classes.xml"

    invoke-direct {v2, v3}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    new-instance v3, Lorg/objectweb/asm/xml/Processor$SAXWriter;

    invoke-direct {v3, v7, v4}, Lorg/objectweb/asm/xml/Processor$SAXWriter;-><init>(Ljava/io/Writer;Z)V

    goto :goto_2

    :cond_3
    new-instance v2, Lorg/objectweb/asm/xml/Processor$InputSlicingHandler;

    const-string v7, "class"

    new-instance v9, Lorg/objectweb/asm/xml/Processor$TransformerHandlerFactory;

    invoke-direct {v9, v0, v1, v3}, Lorg/objectweb/asm/xml/Processor$TransformerHandlerFactory;-><init>(Ljavax/xml/transform/sax/SAXTransformerFactory;Ljavax/xml/transform/Templates;Lorg/xml/sax/ContentHandler;)V

    invoke-direct {v2, v7, v3, v9}, Lorg/objectweb/asm/xml/Processor$InputSlicingHandler;-><init>(Ljava/lang/String;Lorg/xml/sax/ContentHandler;Lorg/objectweb/asm/xml/Processor$ContentHandlerFactory;)V

    move-object v0, v2

    goto :goto_3

    :cond_4
    invoke-direct {p0, v3}, Lorg/objectweb/asm/xml/Processor;->getName(Ljava/util/zip/ZipEntry;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v8, v3}, Lorg/objectweb/asm/xml/Processor$EntryElement;->openEntry(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {p0, v5, v3}, Lorg/objectweb/asm/xml/Processor;->copyEntry(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-interface {v8}, Lorg/objectweb/asm/xml/Processor$EntryElement;->closeEntry()V

    goto :goto_5

    :cond_5
    if-eqz v0, :cond_6

    iget v2, p0, Lorg/objectweb/asm/xml/Processor;->inRepresentation:I

    if-eq v2, v10, :cond_6

    const-string v2, ""

    const-string v3, "classes"

    const-string v4, "classes"

    invoke-interface {v0, v2, v3, v4}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/xml/sax/ContentHandler;->endDocument()V

    :cond_6
    iget v0, p0, Lorg/objectweb/asm/xml/Processor;->outRepresentation:I

    if-ne v0, v10, :cond_7

    invoke-virtual {v6}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    :cond_7
    invoke-virtual {v6}, Ljava/util/zip/ZipOutputStream;->flush()V

    invoke-virtual {v6}, Ljava/util/zip/ZipOutputStream;->close()V

    goto/16 :goto_0

    :cond_8
    move-object v1, v2

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected update(Ljava/lang/Object;I)V
    .registers 6

    instance-of v0, p1, Ljava/lang/Throwable;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    rem-int/lit8 v0, p2, 0x64

    if-nez v0, :cond_0

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method
