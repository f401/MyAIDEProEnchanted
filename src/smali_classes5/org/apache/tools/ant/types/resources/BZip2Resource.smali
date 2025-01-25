.class public Lorg/apache/tools/ant/types/resources/BZip2Resource;
.super Lorg/apache/tools/ant/types/resources/CompressedResource;
.source "BZip2Resource.java"


# static fields
.field private static final MAGIC:[C


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 36
    const/4 v0, 0x2

    new-array v0, v0, [C

    fill-array-data v0, :array_a

    sput-object v0, Lorg/apache/tools/ant/types/resources/BZip2Resource;->MAGIC:[C

    return-void

    nop

    :array_a
    .array-data 2
        0x42s
        0x5as
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Lorg/apache/tools/ant/types/resources/CompressedResource;-><init>()V

    .line 40
    return-void
.end method

.method public constructor <init>(Lorg/apache/tools/ant/types/ResourceCollection;)V
    .registers 2

    .line 47
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/types/resources/CompressedResource;-><init>(Lorg/apache/tools/ant/types/ResourceCollection;)V

    .line 48
    return-void
.end method


# virtual methods
.method protected getCompressionName()Ljava/lang/String;
    .registers 2

    .line 86
    const-string v0, "Bzip2"

    return-object v0
.end method

.method protected wrapStream(Ljava/io/InputStream;)Ljava/io/InputStream;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    sget-object v1, Lorg/apache/tools/ant/types/resources/BZip2Resource;->MAGIC:[C

    array-length v2, v1

    const/4 v0, 0x0

    :goto_4
    if-ge v0, v2, :cond_19

    aget-char v3, v1, v0

    .line 59
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v4

    if-ne v4, v3, :cond_11

    .line 58
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 60
    :cond_11
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid bz2 stream."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_19
    new-instance v0, Lorg/apache/tools/bzip2/CBZip2InputStream;

    invoke-direct {v0, p1}, Lorg/apache/tools/bzip2/CBZip2InputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method protected wrapStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    sget-object v1, Lorg/apache/tools/ant/types/resources/BZip2Resource;->MAGIC:[C

    array-length v2, v1

    const/4 v0, 0x0

    :goto_4
    if-ge v0, v2, :cond_e

    aget-char v3, v1, v0

    .line 75
    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write(I)V

    .line 74
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 77
    :cond_e
    new-instance v0, Lorg/apache/tools/bzip2/CBZip2OutputStream;

    invoke-direct {v0, p1}, Lorg/apache/tools/bzip2/CBZip2OutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object v0
.end method
