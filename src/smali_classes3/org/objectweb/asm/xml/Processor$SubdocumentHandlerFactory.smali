.class final Lorg/objectweb/asm/xml/Processor$SubdocumentHandlerFactory;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/objectweb/asm/xml/Processor$ContentHandlerFactory;


# instance fields
.field private final subdocumentHandler:Lorg/xml/sax/ContentHandler;


# direct methods
.method constructor <init>(Lorg/xml/sax/ContentHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/objectweb/asm/xml/Processor$SubdocumentHandlerFactory;->subdocumentHandler:Lorg/xml/sax/ContentHandler;

    return-void
.end method


# virtual methods
.method public final createContentHandler()Lorg/xml/sax/ContentHandler;
    .locals 1

    iget-object v0, p0, Lorg/objectweb/asm/xml/Processor$SubdocumentHandlerFactory;->subdocumentHandler:Lorg/xml/sax/ContentHandler;

    return-object v0
.end method
