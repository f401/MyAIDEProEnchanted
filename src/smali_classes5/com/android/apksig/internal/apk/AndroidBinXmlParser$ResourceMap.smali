.class Lcom/android/apksig/internal/apk/AndroidBinXmlParser$ResourceMap;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/apksig/internal/apk/AndroidBinXmlParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ResourceMap"
.end annotation


# instance fields
.field private final mChunkContents:Ljava/nio/ByteBuffer;

.field private final mEntryCount:I


# direct methods
.method public constructor <init>(Lcom/android/apksig/internal/apk/AndroidBinXmlParser$Chunk;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/apksig/internal/apk/AndroidBinXmlParser$XmlParserException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$Chunk;->getContents()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$ResourceMap;->mChunkContents:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$Chunk;->getContents()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$ResourceMap;->mEntryCount:I

    return-void
.end method


# virtual methods
.method public getResourceId(J)I
    .registers 6

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_d

    iget v0, p0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$ResourceMap;->mEntryCount:I

    int-to-long v0, v0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_f

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0

    :cond_f
    long-to-int v0, p1

    iget-object v1, p0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$ResourceMap;->mChunkContents:Ljava/nio/ByteBuffer;

    mul-int/lit8 v0, v0, 0x4

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    goto :goto_e
.end method
