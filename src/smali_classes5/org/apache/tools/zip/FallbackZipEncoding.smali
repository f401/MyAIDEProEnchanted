.class Lorg/apache/tools/zip/FallbackZipEncoding;
.super Ljava/lang/Object;
.source "FallbackZipEncoding.java"

# interfaces
.implements Lorg/apache/tools/zip/ZipEncoding;


# instance fields
.field private final charset:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tools/zip/FallbackZipEncoding;->charset:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lorg/apache/tools/zip/FallbackZipEncoding;->charset:Ljava/lang/String;

    .line 61
    return-void
.end method


# virtual methods
.method public canEncode(Ljava/lang/String;)Z
    .registers 3

    .line 67
    const/4 v0, 0x1

    return v0
.end method

.method public decode([B)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 85
    iget-object v1, p0, Lorg/apache/tools/zip/FallbackZipEncoding;->charset:Ljava/lang/String;

    if-nez v1, :cond_a

    .line 86
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    .line 88
    :goto_9
    return-object v0

    :cond_a
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    goto :goto_9
.end method

.method public encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lorg/apache/tools/zip/FallbackZipEncoding;->charset:Ljava/lang/String;

    if-nez v0, :cond_d

    .line 75
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 77
    :goto_c
    return-object v0

    :cond_d
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_c
.end method
