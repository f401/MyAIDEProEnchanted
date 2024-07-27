.class final Lorg/objectweb/asm/xml/Processor$TransformerHandlerFactory;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/objectweb/asm/xml/Processor$ContentHandlerFactory;


# instance fields
.field private outputHandler:Lorg/xml/sax/ContentHandler;

.field private saxtf:Ljavax/xml/transform/sax/SAXTransformerFactory;

.field private final templates:Ljavax/xml/transform/Templates;


# direct methods
.method constructor <init>(Ljavax/xml/transform/sax/SAXTransformerFactory;Ljavax/xml/transform/Templates;Lorg/xml/sax/ContentHandler;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/objectweb/asm/xml/Processor$TransformerHandlerFactory;->saxtf:Ljavax/xml/transform/sax/SAXTransformerFactory;

    iput-object p2, p0, Lorg/objectweb/asm/xml/Processor$TransformerHandlerFactory;->templates:Ljavax/xml/transform/Templates;

    iput-object p3, p0, Lorg/objectweb/asm/xml/Processor$TransformerHandlerFactory;->outputHandler:Lorg/xml/sax/ContentHandler;

    return-void
.end method


# virtual methods
.method public final createContentHandler()Lorg/xml/sax/ContentHandler;
    .registers 4

    :try_start_0
    iget-object v0, p0, Lorg/objectweb/asm/xml/Processor$TransformerHandlerFactory;->saxtf:Ljavax/xml/transform/sax/SAXTransformerFactory;

    iget-object v1, p0, Lorg/objectweb/asm/xml/Processor$TransformerHandlerFactory;->templates:Ljavax/xml/transform/Templates;

    invoke-virtual {v0, v1}, Ljavax/xml/transform/sax/SAXTransformerFactory;->newTransformerHandler(Ljavax/xml/transform/Templates;)Ljavax/xml/transform/sax/TransformerHandler;

    move-result-object v0

    new-instance v1, Ljavax/xml/transform/sax/SAXResult;

    iget-object v2, p0, Lorg/objectweb/asm/xml/Processor$TransformerHandlerFactory;->outputHandler:Lorg/xml/sax/ContentHandler;

    invoke-direct {v1, v2}, Ljavax/xml/transform/sax/SAXResult;-><init>(Lorg/xml/sax/ContentHandler;)V

    invoke-interface {v0, v1}, Ljavax/xml/transform/sax/TransformerHandler;->setResult(Ljavax/xml/transform/Result;)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljavax/xml/transform/TransformerConfigurationException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
