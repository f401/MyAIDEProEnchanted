.class Lorg/apache/tools/zip/ZipFile$1;
.super Ljava/util/zip/InflaterInputStream;
.source "ZipFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/tools/zip/ZipFile;->getInputStream(Lorg/apache/tools/zip/ZipEntry;)Ljava/io/InputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lorg/apache/tools/zip/ZipFile;

.field final val$inflater:Ljava/util/zip/Inflater;


# direct methods
.method constructor <init>(Lorg/apache/tools/zip/ZipFile;Ljava/io/InputStream;Ljava/util/zip/Inflater;Ljava/util/zip/Inflater;)V
    .registers 5

    .line 386
    iput-object p1, p0, Lorg/apache/tools/zip/ZipFile$1;->this$0:Lorg/apache/tools/zip/ZipFile;

    iput-object p4, p0, Lorg/apache/tools/zip/ZipFile$1;->val$inflater:Ljava/util/zip/Inflater;

    invoke-direct {p0, p2, p3}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;)V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 389
    invoke-super {p0}, Ljava/util/zip/InflaterInputStream;->close()V

    .line 390
    iget-object v0, p0, Lorg/apache/tools/zip/ZipFile$1;->val$inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V

    .line 391
    return-void
.end method
