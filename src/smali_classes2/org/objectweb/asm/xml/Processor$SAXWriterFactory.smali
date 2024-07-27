.class final Lorg/objectweb/asm/xml/Processor$SAXWriterFactory;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/objectweb/asm/xml/Processor$ContentHandlerFactory;


# instance fields
.field private final optimizeEmptyElements:Z

.field private final w:Ljava/io/Writer;


# direct methods
.method constructor <init>(Ljava/io/Writer;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/objectweb/asm/xml/Processor$SAXWriterFactory;->w:Ljava/io/Writer;

    iput-boolean p2, p0, Lorg/objectweb/asm/xml/Processor$SAXWriterFactory;->optimizeEmptyElements:Z

    return-void
.end method


# virtual methods
.method public final createContentHandler()Lorg/xml/sax/ContentHandler;
    .registers 4

    new-instance v0, Lorg/objectweb/asm/xml/Processor$SAXWriter;

    iget-object v1, p0, Lorg/objectweb/asm/xml/Processor$SAXWriterFactory;->w:Ljava/io/Writer;

    iget-boolean v2, p0, Lorg/objectweb/asm/xml/Processor$SAXWriterFactory;->optimizeEmptyElements:Z

    invoke-direct {v0, v1, v2}, Lorg/objectweb/asm/xml/Processor$SAXWriter;-><init>(Ljava/io/Writer;Z)V

    return-object v0
.end method
