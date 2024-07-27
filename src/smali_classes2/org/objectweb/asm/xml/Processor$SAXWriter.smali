.class final Lorg/objectweb/asm/xml/Processor$SAXWriter;
.super Lorg/xml/sax/helpers/DefaultHandler;

# interfaces
.implements Lorg/xml/sax/ext/LexicalHandler;


# static fields
.field private static final OFF:[C


# instance fields
.field private ident:I

.field private openElement:Z

.field private final optimizeEmptyElements:Z

.field private w:Ljava/io/Writer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lorg/objectweb/asm/xml/Processor$SAXWriter;->_clinit_()V

    const-string v0, "                                                                                                        "

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/objectweb/asm/xml/Processor$SAXWriter;->OFF:[C

    return-void
.end method

.method constructor <init>(Ljava/io/Writer;Z)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    iput-boolean v0, p0, Lorg/objectweb/asm/xml/Processor$SAXWriter;->openElement:Z

    iput v0, p0, Lorg/objectweb/asm/xml/Processor$SAXWriter;->ident:I

    iput-object p1, p0, Lorg/objectweb/asm/xml/Processor$SAXWriter;->w:Ljava/io/Writer;

    iput-boolean p2, p0, Lorg/objectweb/asm/xml/Processor$SAXWriter;->optimizeEmptyElements:Z

    return-void
.end method

.method static _clinit_()V
    .registers 0

    return-void
.end method

.method private final closeElement()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/objectweb/asm/xml/Processor$SAXWriter;->openElement:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/objectweb/asm/xml/Processor$SAXWriter;->w:Ljava/io/Writer;

    const-string v1, ">\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/objectweb/asm/xml/Processor$SAXWriter;->openElement:Z

    return-void
.end method

.method private static final esc(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    sparse-switch v2, :sswitch_data_0

    const/16 v3, 0x7f

    if-le v2, v3, :cond_0

    const-string v3, "&#"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const/16 v3, 0x3b

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :sswitch_0
    const-string v2, "&amp;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :sswitch_1
    const-string v2, "&lt;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :sswitch_2
    const-string v2, "&gt;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :sswitch_3
    const-string v2, "&quot;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_3
        0x26 -> :sswitch_0
        0x3c -> :sswitch_1
        0x3e -> :sswitch_2
    .end sparse-switch
.end method

.method private final writeAttributes(Lorg/xml/sax/Attributes;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-interface {p1}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    const/16 v3, 0x20

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/objectweb/asm/xml/Processor$SAXWriter;->esc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const/16 v4, 0x22

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/objectweb/asm/xml/Processor$SAXWriter;->w:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method

.method private final writeIdent()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    iget v0, p0, Lorg/objectweb/asm/xml/Processor$SAXWriter;->ident:I

    :goto_0
    if-lez v0, :cond_1

    sget-object v2, Lorg/objectweb/asm/xml/Processor$SAXWriter;->OFF:[C

    array-length v2, v2

    if-le v0, v2, :cond_0

    iget-object v2, p0, Lorg/objectweb/asm/xml/Processor$SAXWriter;->w:Ljava/io/Writer;

    sget-object v3, Lorg/objectweb/asm/xml/Processor$SAXWriter;->OFF:[C

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write([C)V

    sget-object v2, Lorg/objectweb/asm/xml/Processor$SAXWriter;->OFF:[C

    array-length v2, v2

    sub-int/2addr v0, v2

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lorg/objectweb/asm/xml/Processor$SAXWriter;->w:Ljava/io/Writer;

    sget-object v3, Lorg/objectweb/asm/xml/Processor$SAXWriter;->OFF:[C

    invoke-virtual {v2, v3, v1, v0}, Ljava/io/Writer;->write([CII)V

    move v0, v1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final comment([CII)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Lorg/objectweb/asm/xml/Processor$SAXWriter;->closeElement()V

    invoke-direct {p0}, Lorg/objectweb/asm/xml/Processor$SAXWriter;->writeIdent()V

    iget-object v0, p0, Lorg/objectweb/asm/xml/Processor$SAXWriter;->w:Ljava/io/Writer;

    const-string v1, "<!-- "

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/objectweb/asm/xml/Processor$SAXWriter;->w:Ljava/io/Writer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/Writer;->write([CII)V

    iget-object v0, p0, Lorg/objectweb/asm/xml/Processor$SAXWriter;->w:Ljava/io/Writer;

    const-string v1, " -->\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public final endCDATA()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public final endDTD()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public final endDocument()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lorg/objectweb/asm/xml/Processor$SAXWriter;->w:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public final endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget v0, p0, Lorg/objectweb/asm/xml/Processor$SAXWriter;->ident:I

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/objectweb/asm/xml/Processor$SAXWriter;->ident:I

    :try_start_0
    iget-boolean v0, p0, Lorg/objectweb/asm/xml/Processor$SAXWriter;->openElement:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/objectweb/asm/xml/Processor$SAXWriter;->w:Ljava/io/Writer;

    const-string v1, "/>\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/objectweb/asm/xml/Processor$SAXWriter;->openElement:Z

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lorg/objectweb/asm/xml/Processor$SAXWriter;->writeIdent()V

    iget-object v0, p0, Lorg/objectweb/asm/xml/Processor$SAXWriter;->w:Ljava/io/Writer;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "</"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ">\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public final endEntity(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public final startCDATA()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public final startDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public final startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Lorg/objectweb/asm/xml/Processor$SAXWriter;->closeElement()V

    invoke-direct {p0}, Lorg/objectweb/asm/xml/Processor$SAXWriter;->writeIdent()V

    iget-object v0, p0, Lorg/objectweb/asm/xml/Processor$SAXWriter;->w:Ljava/io/Writer;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v2, 0x3c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    if-eqz p4, :cond_0

    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v0

    if-lez v0, :cond_0

    invoke-direct {p0, p4}, Lorg/objectweb/asm/xml/Processor$SAXWriter;->writeAttributes(Lorg/xml/sax/Attributes;)V

    :cond_0
    iget-boolean v0, p0, Lorg/objectweb/asm/xml/Processor$SAXWriter;->optimizeEmptyElements:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/objectweb/asm/xml/Processor$SAXWriter;->openElement:Z

    :goto_0
    iget v0, p0, Lorg/objectweb/asm/xml/Processor$SAXWriter;->ident:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/objectweb/asm/xml/Processor$SAXWriter;->ident:I

    return-void

    :cond_1
    iget-object v0, p0, Lorg/objectweb/asm/xml/Processor$SAXWriter;->w:Ljava/io/Writer;

    const-string v1, ">\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public final startEntity(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method
