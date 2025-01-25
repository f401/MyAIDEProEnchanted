.class final Lcom/google/common/io/ByteStreams$1;
.super Ljava/io/OutputStream;
.source "ByteStreams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/io/ByteStreams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 635
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    .line 654
    const-string v0, "ByteStreams.nullOutputStream()"

    return-object v0
.end method

.method public write(I)V
    .registers 2

    .line 638
    return-void
.end method

.method public write([B)V
    .registers 2

    .line 643
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 644
    return-void
.end method

.method public write([BII)V
    .registers 4

    .line 649
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 650
    return-void
.end method
