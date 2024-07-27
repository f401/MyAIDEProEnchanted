.class Lorg/apache/tools/zip/Simple8BitZipEncoding;
.super Ljava/lang/Object;
.source "Simple8BitZipEncoding.java"

# interfaces
.implements Lorg/apache/tools/zip/ZipEncoding;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/zip/Simple8BitZipEncoding$Simple8BitChar;
    }
.end annotation


# instance fields
.field private final highChars:[C

.field private final reverseMapping:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/tools/zip/Simple8BitZipEncoding$Simple8BitChar;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([C)V
    .registers 9

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    invoke-virtual {p1}, [C->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    iput-object v0, p0, Lorg/apache/tools/zip/Simple8BitZipEncoding;->highChars:[C

    .line 105
    new-instance v3, Ljava/util/ArrayList;

    array-length v1, v0

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 108
    const/16 v1, 0x7f

    .line 110
    array-length v4, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_0

    aget-char v5, v0, v2

    .line 111
    add-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    new-instance v6, Lorg/apache/tools/zip/Simple8BitZipEncoding$Simple8BitChar;

    invoke-direct {v6, v1, v5}, Lorg/apache/tools/zip/Simple8BitZipEncoding$Simple8BitChar;-><init>(BC)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 114
    :cond_0
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 115
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/zip/Simple8BitZipEncoding;->reverseMapping:Ljava/util/List;

    .line 116
    return-void
.end method

.method private encodeHighChar(C)Lorg/apache/tools/zip/Simple8BitZipEncoding$Simple8BitChar;
    .registers 8

    const/4 v4, 0x0

    .line 181
    const/4 v1, 0x0

    .line 182
    iget-object v0, p0, Lorg/apache/tools/zip/Simple8BitZipEncoding;->reverseMapping:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 184
    :goto_0
    if-le v2, v1, :cond_3

    .line 186
    sub-int v0, v2, v1

    div-int/lit8 v0, v0, 0x2

    add-int v3, v0, v1

    .line 188
    iget-object v0, p0, Lorg/apache/tools/zip/Simple8BitZipEncoding;->reverseMapping:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/zip/Simple8BitZipEncoding$Simple8BitChar;

    .line 190
    iget-char v5, v0, Lorg/apache/tools/zip/Simple8BitZipEncoding$Simple8BitChar;->unicode:C

    if-ne v5, p1, :cond_1

    .line 211
    :cond_0
    :goto_1
    return-object v0

    .line 194
    :cond_1
    iget-char v0, v0, Lorg/apache/tools/zip/Simple8BitZipEncoding$Simple8BitChar;->unicode:C

    if-ge v0, p1, :cond_2

    .line 195
    add-int/lit8 v0, v3, 0x1

    :goto_2
    move v1, v0

    .line 199
    goto :goto_0

    :cond_2
    move v0, v1

    move v2, v3

    .line 197
    goto :goto_2

    .line 201
    :cond_3
    iget-object v0, p0, Lorg/apache/tools/zip/Simple8BitZipEncoding;->reverseMapping:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_4

    move-object v0, v4

    .line 202
    goto :goto_1

    .line 205
    :cond_4
    iget-object v0, p0, Lorg/apache/tools/zip/Simple8BitZipEncoding;->reverseMapping:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/zip/Simple8BitZipEncoding$Simple8BitChar;

    .line 207
    iget-char v1, v0, Lorg/apache/tools/zip/Simple8BitZipEncoding$Simple8BitChar;->unicode:C

    if-eq v1, p1, :cond_0

    move-object v0, v4

    .line 208
    goto :goto_1
.end method


# virtual methods
.method public canEncode(Ljava/lang/String;)Z
    .registers 5

    const/4 v1, 0x0

    .line 219
    move v0, v1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 221
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 223
    invoke-virtual {p0, v2}, Lorg/apache/tools/zip/Simple8BitZipEncoding;->canEncodeChar(C)Z

    move-result v2

    if-nez v2, :cond_0

    .line 228
    :goto_1
    return v1

    .line 219
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 228
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public canEncodeChar(C)Z
    .registers 4

    const/4 v0, 0x1

    .line 140
    if-ltz p1, :cond_1

    const/16 v1, 0x80

    if-ge p1, v1, :cond_1

    .line 145
    :cond_0
    :goto_0
    return v0

    .line 144
    :cond_1
    invoke-direct {p0, p1}, Lorg/apache/tools/zip/Simple8BitZipEncoding;->encodeHighChar(C)Lorg/apache/tools/zip/Simple8BitZipEncoding$Simple8BitChar;

    move-result-object v1

    .line 145
    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public decode([B)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 258
    array-length v0, p1

    new-array v1, v0, [C

    .line 260
    const/4 v0, 0x0

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 261
    aget-byte v2, p1, v0

    invoke-virtual {p0, v2}, Lorg/apache/tools/zip/Simple8BitZipEncoding;->decodeByte(B)C

    move-result v2

    aput-char v2, v1, v0

    .line 260
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 264
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public decodeByte(B)C
    .registers 4

    .line 126
    if-ltz p1, :cond_0

    .line 127
    int-to-char v0, p1

    .line 131
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/tools/zip/Simple8BitZipEncoding;->highChars:[C

    add-int/lit16 v1, p1, 0x80

    aget-char v0, v0, v1

    goto :goto_0
.end method

.method public encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;
    .registers 7

    .line 235
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 236
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    div-int/lit8 v1, v1, 0x2

    .line 235
    add-int/lit8 v0, v0, 0x6

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 238
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 239
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 241
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    const/4 v4, 0x6

    if-ge v3, v4, :cond_0

    .line 242
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/lit8 v3, v3, 0x6

    invoke-static {v0, v3}, Lorg/apache/tools/zip/ZipEncodingHelper;->growBuffer(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 245
    :cond_0
    invoke-virtual {p0, v0, v2}, Lorg/apache/tools/zip/Simple8BitZipEncoding;->pushEncodedChar(Ljava/nio/ByteBuffer;C)Z

    move-result v3

    if-nez v3, :cond_1

    .line 246
    invoke-static {v0, v2}, Lorg/apache/tools/zip/ZipEncodingHelper;->appendSurrogate(Ljava/nio/ByteBuffer;C)V

    .line 238
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 250
    :cond_2
    invoke-static {v0}, Lorg/apache/tools/zip/ZipEncodingHelper;->prepareBufferForRead(Ljava/nio/Buffer;)V

    .line 251
    return-object v0
.end method

.method public pushEncodedChar(Ljava/nio/ByteBuffer;C)Z
    .registers 5

    const/4 v0, 0x1

    .line 159
    if-ltz p2, :cond_0

    const/16 v1, 0x80

    if-ge p2, v1, :cond_0

    .line 160
    int-to-byte v1, p2

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 169
    :goto_0
    return v0

    .line 164
    :cond_0
    invoke-direct {p0, p2}, Lorg/apache/tools/zip/Simple8BitZipEncoding;->encodeHighChar(C)Lorg/apache/tools/zip/Simple8BitZipEncoding$Simple8BitChar;

    move-result-object v1

    .line 165
    if-nez v1, :cond_1

    .line 166
    const/4 v0, 0x0

    goto :goto_0

    .line 168
    :cond_1
    iget-byte v1, v1, Lorg/apache/tools/zip/Simple8BitZipEncoding$Simple8BitChar;->code:B

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_0
.end method
