.class public final Lcom/s1243808733/android/dex/EncodedValue;
.super Ljava/lang/Object;
.source "EncodedValue.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
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
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/s1243808733/android/dex/EncodedValue;->data:[B

    array-length v0, v0

    iget-object v1, p1, Lcom/s1243808733/android/dex/EncodedValue;->data:[B

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 47
    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    .line 52
    iget-object v0, p0, Lcom/s1243808733/android/dex/EncodedValue;->data:[B

    array-length v0, v0

    iget-object v1, p1, Lcom/s1243808733/android/dex/EncodedValue;->data:[B

    array-length v1, v1

    sub-int/2addr v0, v1

    :goto_1
    return v0

    .line 48
    :cond_0
    iget-object v2, p0, Lcom/s1243808733/android/dex/EncodedValue;->data:[B

    aget-byte v2, v2, v0

    iget-object v3, p1, Lcom/s1243808733/android/dex/EncodedValue;->data:[B

    aget-byte v3, v3, v0

    if-eq v2, v3, :cond_1

    .line 49
    iget-object v1, p0, Lcom/s1243808733/android/dex/EncodedValue;->data:[B

    aget-byte v1, v1, v0

    and-int/lit16 v1, v1, 0xff

    iget-object v2, p1, Lcom/s1243808733/android/dex/EncodedValue;->data:[B

    aget-byte v0, v2, v0

    and-int/lit16 v0, v0, 0xff

    sub-int v0, v1, v0

    goto :goto_1

    .line 47
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public bridge compareTo(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/s1243808733/android/dex/EncodedValue;

    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dex/EncodedValue;->compareTo(Lcom/s1243808733/android/dex/EncodedValue;)I

    move-result v0

    return v0
.end method

.method public getBytes()[B
    .registers 2

    .line 37
    iget-object v0, p0, Lcom/s1243808733/android/dex/EncodedValue;->data:[B

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 57
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, p0, Lcom/s1243808733/android/dex/EncodedValue;->data:[B

    const/4 v4, 0x0

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "...("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/s1243808733/android/dex/EncodedValue;->data:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/s1243808733/android/dex/Dex$Section;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dex/Dex$Section;",
            ")V"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/s1243808733/android/dex/EncodedValue;->data:[B

    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dex/Dex$Section;->write([B)V

    return-void
.end method
