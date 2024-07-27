.class final Lorg/objectweb/asm/xml/Processor$ZipEntryElement;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/objectweb/asm/xml/Processor$EntryElement;


# instance fields
.field private zos:Ljava/util/zip/ZipOutputStream;


# direct methods
.method constructor <init>(Ljava/util/zip/ZipOutputStream;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/objectweb/asm/xml/Processor$ZipEntryElement;->zos:Ljava/util/zip/ZipOutputStream;

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

    iget-object v0, p0, Lorg/objectweb/asm/xml/Processor$ZipEntryElement;->zos:Ljava/util/zip/ZipOutputStream;

    invoke-virtual {v0}, Ljava/util/zip/ZipOutputStream;->flush()V

    iget-object v0, p0, Lorg/objectweb/asm/xml/Processor$ZipEntryElement;->zos:Ljava/util/zip/ZipOutputStream;

    invoke-virtual {v0}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    return-void
.end method

.method public openEntry(Ljava/lang/String;)Ljava/io/OutputStream;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/util/zip/ZipEntry;

    invoke-direct {v0, p1}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/objectweb/asm/xml/Processor$ZipEntryElement;->zos:Ljava/util/zip/ZipOutputStream;

    invoke-virtual {v1, v0}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    iget-object v0, p0, Lorg/objectweb/asm/xml/Processor$ZipEntryElement;->zos:Ljava/util/zip/ZipOutputStream;

    return-object v0
.end method
