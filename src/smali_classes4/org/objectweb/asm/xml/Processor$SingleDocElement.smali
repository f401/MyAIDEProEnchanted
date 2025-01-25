.class final Lorg/objectweb/asm/xml/Processor$SingleDocElement;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/objectweb/asm/xml/Processor$EntryElement;


# instance fields
.field private final os:Ljava/io/OutputStream;


# direct methods
.method constructor <init>(Ljava/io/OutputStream;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/objectweb/asm/xml/Processor$SingleDocElement;->os:Ljava/io/OutputStream;

    return-void
.end method


# virtual methods
.method public closeEntry()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/objectweb/asm/xml/Processor$SingleDocElement;->os:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public openEntry(Ljava/lang/String;)Ljava/io/OutputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/objectweb/asm/xml/Processor$SingleDocElement;->os:Ljava/io/OutputStream;

    return-object v0
.end method
