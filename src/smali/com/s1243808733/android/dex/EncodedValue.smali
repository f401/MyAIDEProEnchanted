.class public final Lcom/s1243808733/android/dex/EncodedValue;
.super Ljava/lang/Object;
.source "EncodedValue.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/s1243808733/android/dex/EncodedValue;",
        ">;"
    }
.end annotation


# instance fields
.field private final data:[B


# direct methods
.method public constructor <init>([B)V
    .registers 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/s1243808733/android/dex/EncodedValue;->data:[B

    return-void
.end method


# virtual methods
.method public asByteInput()Lcom/s1243808733/android/dex/util/ByteInput;
    .registers 3

    .line 33
    new-instance v0, Lcom/s1243808733/android/dex/util/ByteArrayByteInput;

    iget-object v1, p0, Lcom/s1243808733/android/dex/EncodedValue;->data:[B

    invoke-direct {v0, v1}, Lcom/s1243808733/android/dex/util/ByteArrayByteInput;-><init>([B)V

    return-object v0
.end method

.method public compareTo(Lcom/s1243808733/android/dex/EncodedValue;)I
    .registers 6

    .line 46
    iget-object v0, p0, Lcom/s1243808733/android/dex/EncodedValue;->data:[B

    array-length v0, v0

    iget-object v1, p1, Lcom/s1243808733/android/dex/EncodedValue;->data:[B

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    :goto_b
    if-ge v1, v0, :cond_20

    .line 48
    iget-object v2, p0, Lcom/s1243808733/android/dex/EncodedValue;->data:[B

    aget-byte v2, v2, v1

    iget-object v3, p1, Lcom/s1243808733/android/dex/EncodedValue;->data:[B

    aget-byte v3, v3, v1

    if-eq v2, v3, :cond_1d

    and-int/lit16 p1, v2, 0xff

    and-int/lit16 v0, v3, 0xff

    sub-int/2addr p1, v0

    return p1

    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 52
    :cond_20
    iget-object v0, p0, Lcom/s1243808733/android/dex/EncodedValue;->data:[B

    array-length v0, v0

    iget-object p1, p1, Lcom/s1243808733/android/dex/EncodedValue;->data:[B

    array-length p1, p1

    sub-int/2addr v0, p1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 25
    check-cast p1, Lcom/s1243808733/android/dex/EncodedValue;

    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dex/EncodedValue;->compareTo(Lcom/s1243808733/android/dex/EncodedValue;)I

    move-result p1

    return p1
.end method

.method public getBytes()[B
    .registers 2

    .line 37
    iget-object v0, p0, Lcom/s1243808733/android/dex/EncodedValue;->data:[B

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/s1243808733/android/dex/EncodedValue;->data:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "...("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/s1243808733/android/dex/EncodedValue;->data:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/s1243808733/android/dex/Dex$Section;)V
    .registers 3

    .line 41
    iget-object v0, p0, Lcom/s1243808733/android/dex/EncodedValue;->data:[B

    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dex/Dex$Section;->write([B)V

    return-void
.end method
