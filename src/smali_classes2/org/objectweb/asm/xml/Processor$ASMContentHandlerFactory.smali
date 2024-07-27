.class final Lorg/objectweb/asm/xml/Processor$ASMContentHandlerFactory;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/objectweb/asm/xml/Processor$ContentHandlerFactory;


# instance fields
.field final os:Ljava/io/OutputStream;


# direct methods
.method constructor <init>(Ljava/io/OutputStream;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/objectweb/asm/xml/Processor$ASMContentHandlerFactory;->os:Ljava/io/OutputStream;

    return-void
.end method


# virtual methods
.method public final createContentHandler()Lorg/xml/sax/ContentHandler;
    .registers 3

    new-instance v0, Lorg/objectweb/asm/ClassWriter;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/objectweb/asm/ClassWriter;-><init>(I)V

    new-instance v1, Lorg/objectweb/asm/xml/Processor$ASMContentHandlerFactory$1;

    invoke-direct {v1, p0, v0, v0}, Lorg/objectweb/asm/xml/Processor$ASMContentHandlerFactory$1;-><init>(Lorg/objectweb/asm/xml/Processor$ASMContentHandlerFactory;Lorg/objectweb/asm/ClassVisitor;Lorg/objectweb/asm/ClassWriter;)V

    return-object v1
.end method
