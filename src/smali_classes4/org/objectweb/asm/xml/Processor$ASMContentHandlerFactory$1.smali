.class Lorg/objectweb/asm/xml/Processor$ASMContentHandlerFactory$1;
.super Lorg/objectweb/asm/xml/ASMContentHandler;


# instance fields
.field final this$0:Lorg/objectweb/asm/xml/Processor$ASMContentHandlerFactory;

.field final val$cw:Lorg/objectweb/asm/ClassWriter;


# direct methods
.method constructor <init>(Lorg/objectweb/asm/xml/Processor$ASMContentHandlerFactory;Lorg/objectweb/asm/ClassVisitor;Lorg/objectweb/asm/ClassWriter;)V
    .registers 4

    iput-object p1, p0, Lorg/objectweb/asm/xml/Processor$ASMContentHandlerFactory$1;->this$0:Lorg/objectweb/asm/xml/Processor$ASMContentHandlerFactory;

    iput-object p3, p0, Lorg/objectweb/asm/xml/Processor$ASMContentHandlerFactory$1;->val$cw:Lorg/objectweb/asm/ClassWriter;

    invoke-direct {p0, p2}, Lorg/objectweb/asm/xml/ASMContentHandler;-><init>(Lorg/objectweb/asm/ClassVisitor;)V

    return-void
.end method


# virtual methods
.method public endDocument()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lorg/objectweb/asm/xml/Processor$ASMContentHandlerFactory$1;->this$0:Lorg/objectweb/asm/xml/Processor$ASMContentHandlerFactory;

    iget-object v0, v0, Lorg/objectweb/asm/xml/Processor$ASMContentHandlerFactory;->os:Ljava/io/OutputStream;

    iget-object v1, p0, Lorg/objectweb/asm/xml/Processor$ASMContentHandlerFactory$1;->val$cw:Lorg/objectweb/asm/ClassWriter;

    invoke-virtual {v1}, Lorg/objectweb/asm/ClassWriter;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_d} :catch_e

    return-void

    :catch_e
    move-exception v0

    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method
