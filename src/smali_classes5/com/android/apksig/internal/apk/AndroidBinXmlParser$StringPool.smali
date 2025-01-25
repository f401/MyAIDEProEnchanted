.class Lcom/android/apksig/internal/apk/AndroidBinXmlParser$StringPool;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/apksig/internal/apk/AndroidBinXmlParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StringPool"
.end annotation


# static fields
.field private static final FLAG_UTF8:I = 0x100


# instance fields
.field private final mCachedStrings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mChunkContents:Ljava/nio/ByteBuffer;

.field private final mStringCount:I

.field private final mStringsSection:Ljava/nio/ByteBuffer;

.field private final mUtf8Encoded:Z


# direct methods
.method public constructor <init>(Lcom/android/apksig/internal/apk/AndroidBinXmlParser$Chunk;)V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/apksig/internal/apk/AndroidBinXmlParser$XmlParserException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$StringPool;->mCachedStrings:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$Chunk;->getHeader()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    const/16 v3, 0x14

    if-lt v2, v3, :cond_d1

    invoke-static {v0}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->access$200(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    const-wide/32 v4, 0x7fffffff

    cmp-long v4, v2, v4

    if-gtz v4, :cond_ba

    long-to-int v2, v2

    iput v2, p0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$StringPool;->mStringCount:I

    invoke-static {v0}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->access$200(Ljava/nio/ByteBuffer;)J

    move-result-wide v4

    const-wide/32 v6, 0x7fffffff

    cmp-long v3, v4, v6

    if-gtz v3, :cond_a3

    invoke-static {v0}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->access$200(Ljava/nio/ByteBuffer;)J

    move-result-wide v6

    invoke-static {v0}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->access$200(Ljava/nio/ByteBuffer;)J

    move-result-wide v8

    invoke-static {v0}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->access$200(Ljava/nio/ByteBuffer;)J

    move-result-wide v10

    invoke-virtual {p1}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$Chunk;->getContents()Ljava/nio/ByteBuffer;

    move-result-object v3

    if-lez v2, :cond_99

    int-to-long v0, v1

    sub-long v12, v8, v0

    long-to-int v2, v12

    const-wide/16 v12, 0x0

    cmp-long v4, v4, v12

    if-lez v4, :cond_94

    cmp-long v4, v10, v8

    if-ltz v4, :cond_70

    sub-long v0, v10, v0

    long-to-int v0, v0

    :goto_5b
    invoke-static {v3, v2, v0}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->access$300(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$StringPool;->mStringsSection:Ljava/nio/ByteBuffer;

    :goto_61
    const-wide/16 v0, 0x100

    and-long/2addr v0, v6

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_a1

    const/4 v0, 0x1

    :goto_6b
    iput-boolean v0, p0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$StringPool;->mUtf8Encoded:Z

    iput-object v3, p0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$StringPool;->mChunkContents:Ljava/nio/ByteBuffer;

    return-void

    :cond_70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Styles offset ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ") < strings offset ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$XmlParserException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$XmlParserException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_94
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    goto :goto_5b

    :cond_99
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$StringPool;->mStringsSection:Ljava/nio/ByteBuffer;

    goto :goto_61

    :cond_a1
    const/4 v0, 0x0

    goto :goto_6b

    :cond_a3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Too many styles: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$XmlParserException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$XmlParserException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_ba
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Too many strings: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$XmlParserException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$XmlParserException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_d1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "XML chunk\'s header too short. Required at least 20 bytes. Available: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " bytes"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$XmlParserException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$XmlParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getLengthPrefixedUtf16EncodedString(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/apksig/internal/apk/AndroidBinXmlParser$XmlParserException;
        }
    .end annotation

    invoke-static {p0}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->access$100(Ljava/nio/ByteBuffer;)I

    move-result v0

    const v1, 0x8000

    and-int/2addr v1, v0

    if-eqz v1, :cond_13

    and-int/lit16 v0, v0, 0x7fff

    shl-int/lit8 v0, v0, 0x10

    invoke-static {p0}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->access$100(Ljava/nio/ByteBuffer;)I

    move-result v1

    or-int/2addr v0, v1

    :cond_13
    const v1, 0x3fffffff  # 1.9999999f

    if-gt v0, v1, :cond_61

    mul-int/lit8 v2, v0, 0x2

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_49

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v0, v3

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :goto_35
    add-int v3, v0, v2

    aget-byte v4, v1, v3

    if-nez v4, :cond_59

    add-int/lit8 v3, v3, 0x1

    aget-byte v3, v1, v3

    if-nez v3, :cond_59

    :try_start_41
    new-instance v3, Ljava/lang/String;

    const-string v4, "UTF-16LE"

    invoke-direct {v3, v1, v0, v2, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_48
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_41 .. :try_end_48} :catch_50

    return-object v3

    :cond_49
    new-array v1, v2, [B

    const/4 v0, 0x0

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    goto :goto_35

    :catch_50
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "UTF-16LE character encoding not supported"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_59
    new-instance v0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$XmlParserException;

    const-string v1, "UTF-16 encoded form of string not NULL terminated"

    invoke-direct {v0, v1}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$XmlParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_61
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "String too long: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " uint16s"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$XmlParserException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$XmlParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getLengthPrefixedUtf8EncodedString(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/apksig/internal/apk/AndroidBinXmlParser$XmlParserException;
        }
    .end annotation

    invoke-static {p0}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->access$600(Ljava/nio/ByteBuffer;)I

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_b

    invoke-static {p0}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->access$600(Ljava/nio/ByteBuffer;)I

    :cond_b
    invoke-static {p0}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->access$600(Ljava/nio/ByteBuffer;)I

    move-result v0

    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_1c

    and-int/lit8 v0, v0, 0x7f

    shl-int/lit8 v0, v0, 0x8

    invoke-static {p0}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->access$600(Ljava/nio/ByteBuffer;)I

    move-result v1

    or-int/2addr v0, v1

    :cond_1c
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v1

    if-eqz v1, :cond_45

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v1, v3

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :goto_37
    add-int v3, v1, v0

    aget-byte v3, v2, v3

    if-nez v3, :cond_55

    :try_start_3d
    new-instance v3, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-direct {v3, v2, v1, v0, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_44
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3d .. :try_end_44} :catch_4c

    return-object v3

    :cond_45
    new-array v2, v0, [B

    const/4 v1, 0x0

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    goto :goto_37

    :catch_4c
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "UTF-8 character encoding not supported"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_55
    new-instance v0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$XmlParserException;

    const-string v1, "UTF-8 encoded form of string not NULL terminated"

    invoke-direct {v0, v1}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$XmlParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getString(J)Ljava/lang/String;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/apksig/internal/apk/AndroidBinXmlParser$XmlParserException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_a3

    iget v0, p0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$StringPool;->mStringCount:I

    int-to-long v0, v0

    cmp-long v0, p1, v0

    if-gez v0, :cond_80

    long-to-int v1, p1

    iget-object v0, p0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$StringPool;->mCachedStrings:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1d

    :goto_1c
    return-object v0

    :cond_1d
    iget-object v0, p0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$StringPool;->mChunkContents:Ljava/nio/ByteBuffer;

    mul-int/lit8 v2, v1, 0x4

    invoke-static {v0, v2}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->access$500(Ljava/nio/ByteBuffer;I)J

    move-result-wide v2

    iget-object v0, p0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$StringPool;->mStringsSection:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-gez v0, :cond_51

    iget-object v0, p0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$StringPool;->mStringsSection:Ljava/nio/ByteBuffer;

    long-to-int v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-boolean v0, p0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$StringPool;->mUtf8Encoded:Z

    if-eqz v0, :cond_4a

    iget-object v0, p0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$StringPool;->mStringsSection:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$StringPool;->getLengthPrefixedUtf8EncodedString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    :goto_40
    iget-object v2, p0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$StringPool;->mCachedStrings:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1c

    :cond_4a
    iget-object v0, p0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$StringPool;->mStringsSection:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$StringPool;->getLengthPrefixedUtf16EncodedString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    goto :goto_40

    :cond_51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Offset of string idx "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " out of bounds: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", max: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$StringPool;->mStringsSection:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$XmlParserException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$XmlParserException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsuported string index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", max: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$StringPool;->mStringCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$XmlParserException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$XmlParserException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_a3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsuported string index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$XmlParserException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$XmlParserException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
