.class public Lcom/android/apksig/internal/util/TeeDataSink;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/apksig/util/DataSink;


# instance fields
.field private final mSinks:[Lcom/android/apksig/util/DataSink;


# direct methods
.method public constructor <init>([Lcom/android/apksig/util/DataSink;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/apksig/internal/util/TeeDataSink;->mSinks:[Lcom/android/apksig/util/DataSink;

    return-void
.end method


# virtual methods
.method public consume(Ljava/nio/ByteBuffer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    const/4 v0, 0x0

    :goto_5
    iget-object v2, p0, Lcom/android/apksig/internal/util/TeeDataSink;->mSinks:[Lcom/android/apksig/util/DataSink;

    array-length v2, v2

    if-ge v0, v2, :cond_19

    if-lez v0, :cond_f

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :cond_f
    iget-object v2, p0, Lcom/android/apksig/internal/util/TeeDataSink;->mSinks:[Lcom/android/apksig/util/DataSink;

    aget-object v2, v2, v0

    invoke-interface {v2, p1}, Lcom/android/apksig/util/DataSink;->consume(Ljava/nio/ByteBuffer;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_19
    return-void
.end method

.method public consume([BII)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Lcom/android/apksig/internal/util/TeeDataSink;->mSinks:[Lcom/android/apksig/util/DataSink;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_4
    if-ge v0, v2, :cond_e

    aget-object v3, v1, v0

    invoke-interface {v3, p1, p2, p3}, Lcom/android/apksig/util/DataSink;->consume([BII)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_e
    return-void
.end method
