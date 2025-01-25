.class public Lcom/android/apksig/internal/apk/AndroidBinXmlParser;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/apksig/internal/apk/AndroidBinXmlParser$Attribute;,
        Lcom/android/apksig/internal/apk/AndroidBinXmlParser$Chunk;,
        Lcom/android/apksig/internal/apk/AndroidBinXmlParser$ResourceMap;,
        Lcom/android/apksig/internal/apk/AndroidBinXmlParser$StringPool;,
        Lcom/android/apksig/internal/apk/AndroidBinXmlParser$XmlParserException;
    }
.end annotation


# static fields
.field public static final EVENT_END_DOCUMENT:I = 0x2

.field public static final EVENT_END_ELEMENT:I = 0x4

.field public static final EVENT_START_DOCUMENT:I = 0x1

.field public static final EVENT_START_ELEMENT:I = 0x3

.field private static final NO_NAMESPACE:J = 0xffffffffL

.field public static final VALUE_TYPE_BOOLEAN:I = 0x4

.field public static final VALUE_TYPE_INT:I = 0x2

.field public static final VALUE_TYPE_REFERENCE:I = 0x3

.field public static final VALUE_TYPE_STRING:I = 0x1

.field public static final VALUE_TYPE_UNSUPPORTED:I


# instance fields
.field private mCurrentElementAttrSizeBytes:I

.field private mCurrentElementAttributeCount:I

.field private mCurrentElementAttributes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/apksig/internal/apk/AndroidBinXmlParser$Attribute;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentElementAttributesContents:Ljava/nio/ByteBuffer;

.field private mCurrentElementName:Ljava/lang/String;

.field private mCurrentElementNamespace:Ljava/lang/String;

.field private mCurrentEvent:I

.field private mDepth:I

.field private mResourceMap:Lcom/android/apksig/internal/apk/AndroidBinXmlParser$ResourceMap;

.field private mStringPool:Lcom/android/apksig/internal/apk/AndroidBinXmlParser$StringPool;

.field private final mXml:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/apksig/internal/apk/AndroidBinXmlParser$XmlParserException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->mCurrentEvent:I

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    :cond_b
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-static {p1}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$Chunk;->get(Ljava/nio/ByteBuffer;)Lcom/android/apksig/internal/apk/AndroidBinXmlParser$Chunk;

    move-result-object v0

    if-nez v0, :cond_21

    :cond_17
    const/4 v0, 0x0

    :goto_18
    if-eqz v0, :cond_29

    invoke-virtual {v0}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$Chunk;->getContents()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->mXml:Ljava/nio/ByteBuffer;

    return-void

    :cond_21
    invoke-virtual {v0}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$Chunk;->getType()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_b

    goto :goto_18

    :cond_29
    new-instance v0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$XmlParserException;

    const-string v1, "No XML chunk in file"

    invoke-direct {v0, v1}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$XmlParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$100(Ljava/nio/ByteBuffer;)I
    .registers 2

    invoke-static {p0}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->getUnsignedInt16(Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Ljava/nio/ByteBuffer;)J
    .registers 3

    invoke-static {p0}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->getUnsignedInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$300(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;
    .registers 4

    invoke-static {p0, p1, p2}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->sliceFromTo(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Ljava/nio/ByteBuffer;JJ)Ljava/nio/ByteBuffer;
    .registers 6

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->sliceFromTo(Ljava/nio/ByteBuffer;JJ)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Ljava/nio/ByteBuffer;I)J
    .registers 4

    invoke-static {p0, p1}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->getUnsignedInt32(Ljava/nio/ByteBuffer;I)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$600(Ljava/nio/ByteBuffer;)I
    .registers 2

    invoke-static {p0}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->getUnsignedInt8(Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0
.end method

.method private getAttribute(I)Lcom/android/apksig/internal/apk/AndroidBinXmlParser$Attribute;
    .registers 4

    iget v0, p0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->mCurrentEvent:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3d

    if-ltz p1, :cond_35

    iget v0, p0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->mCurrentElementAttributeCount:I

    if-ge p1, v0, :cond_17

    invoke-direct {p0}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->parseCurrentElementAttributesIfNotParsed()V

    iget-object v0, p0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->mCurrentElementAttributes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$Attribute;

    return-object v0

    :cond_17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "index must be <= attr count ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->mCurrentElementAttributeCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_35
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "index must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3d
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Current event not a START_ELEMENT"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getUnsignedInt16(Ljava/nio/ByteBuffer;)I
    .registers 3

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method private static getUnsignedInt32(Ljava/nio/ByteBuffer;)J
    .registers 5

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method private static getUnsignedInt32(Ljava/nio/ByteBuffer;I)J
    .registers 6

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method private static getUnsignedInt8(Ljava/nio/ByteBuffer;)I
    .registers 2

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method private parseCurrentElementAttributesIfNotParsed()V
    .registers 13

    iget-object v0, p0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->mCurrentElementAttributes:Ljava/util/List;

    if-eqz v0, :cond_5

    :cond_4
    return-void

    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->mCurrentElementAttributeCount:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->mCurrentElementAttributes:Ljava/util/List;

    const/4 v0, 0x0

    :goto_f
    iget v1, p0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->mCurrentElementAttributeCount:I

    if-ge v0, v1, :cond_4

    iget v1, p0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->mCurrentElementAttrSizeBytes:I

    mul-int v2, v0, v1

    iget-object v3, p0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->mCurrentElementAttributesContents:Ljava/nio/ByteBuffer;

    add-int/2addr v1, v2

    invoke-static {v3, v2, v1}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->sliceFromTo(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {v1}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->getUnsignedInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    invoke-static {v1}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->getUnsignedInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v4

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    add-int/lit8 v6, v6, 0x7

    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-static {v1}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->getUnsignedInt8(Ljava/nio/ByteBuffer;)I

    move-result v6

    invoke-static {v1}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->getUnsignedInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v8

    iget-object v11, p0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->mCurrentElementAttributes:Ljava/util/List;

    new-instance v1, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$Attribute;

    long-to-int v7, v8

    iget-object v8, p0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->mStringPool:Lcom/android/apksig/internal/apk/AndroidBinXmlParser$StringPool;

    iget-object v9, p0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->mResourceMap:Lcom/android/apksig/internal/apk/AndroidBinXmlParser$ResourceMap;

    const/4 v10, 0x0

    invoke-direct/range {v1 .. v10}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$Attribute;-><init>(JJIILcom/android/apksig/internal/apk/AndroidBinXmlParser$StringPool;Lcom/android/apksig/internal/apk/AndroidBinXmlParser$ResourceMap;Lcom/android/apksig/internal/apk/AndroidBinXmlParser$1;)V

    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_f
.end method

.method private static sliceFromTo(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;
    .registers 8

    const/4 v4, 0x0

    if-ltz p1, :cond_7f

    if-lt p2, p1, :cond_60

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    if-gt p2, v1, :cond_41

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    const/4 v0, 0x0

    :try_start_18
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;
    :try_end_2c
    .catchall {:try_start_18 .. :try_end_2c} :catchall_36

    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-object v0

    :catchall_36
    move-exception v0

    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    throw v0

    :cond_41
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "end > capacity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "end < start: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " < "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "start: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static sliceFromTo(Ljava/nio/ByteBuffer;JJ)Ljava/nio/ByteBuffer;
    .registers 10

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_5c

    cmp-long v0, p3, p1

    if-ltz v0, :cond_3d

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    int-to-long v2, v1

    cmp-long v1, p3, v2

    if-gtz v1, :cond_1e

    long-to-int v0, p1

    long-to-int v1, p3

    invoke-static {p0, v0, v1}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->sliceFromTo(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0

    :cond_1e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "end > capacity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "end < start: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " < "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "start: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public getAttributeBooleanValue(I)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/apksig/internal/apk/AndroidBinXmlParser$XmlParserException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->getAttribute(I)Lcom/android/apksig/internal/apk/AndroidBinXmlParser$Attribute;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$Attribute;->getBooleanValue()Z

    move-result v0

    return v0
.end method

.method public getAttributeCount()I
    .registers 3

    iget v0, p0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->mCurrentEvent:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_7

    const/4 v0, -0x1

    :goto_6
    return v0

    :cond_7
    iget v0, p0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->mCurrentElementAttributeCount:I

    goto :goto_6
.end method

.method public getAttributeIntValue(I)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/apksig/internal/apk/AndroidBinXmlParser$XmlParserException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->getAttribute(I)Lcom/android/apksig/internal/apk/AndroidBinXmlParser$Attribute;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$Attribute;->getIntValue()I

    move-result v0

    return v0
.end method

.method public getAttributeName(I)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/apksig/internal/apk/AndroidBinXmlParser$XmlParserException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->getAttribute(I)Lcom/android/apksig/internal/apk/AndroidBinXmlParser$Attribute;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$Attribute;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAttributeNameResourceId(I)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/apksig/internal/apk/AndroidBinXmlParser$XmlParserException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->getAttribute(I)Lcom/android/apksig/internal/apk/AndroidBinXmlParser$Attribute;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$Attribute;->getNameResourceId()I

    move-result v0

    return v0
.end method

.method public getAttributeNamespace(I)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/apksig/internal/apk/AndroidBinXmlParser$XmlParserException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->getAttribute(I)Lcom/android/apksig/internal/apk/AndroidBinXmlParser$Attribute;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$Attribute;->getNamespace()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAttributeStringValue(I)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/apksig/internal/apk/AndroidBinXmlParser$XmlParserException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->getAttribute(I)Lcom/android/apksig/internal/apk/AndroidBinXmlParser$Attribute;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$Attribute;->getStringValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAttributeValueType(I)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/apksig/internal/apk/AndroidBinXmlParser$XmlParserException;
        }
    .end annotation

    const/4 v1, 0x3

    const/4 v0, 0x1

    invoke-direct {p0, p1}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->getAttribute(I)Lcom/android/apksig/internal/apk/AndroidBinXmlParser$Attribute;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$Attribute;->getValueType()I

    move-result v2

    if-eq v2, v0, :cond_17

    if-eq v2, v1, :cond_12

    packed-switch v2, :pswitch_data_1a

    const/4 v0, 0x0

    :cond_12
    :goto_12
    return v0

    :pswitch_13  #0x12
    const/4 v0, 0x4

    goto :goto_12

    :pswitch_15  #0x10, 0x11
    const/4 v0, 0x2

    goto :goto_12

    :cond_17
    move v0, v1

    goto :goto_12

    nop

    :pswitch_data_1a
    .packed-switch 0x10
        :pswitch_15  #00000010
        :pswitch_15  #00000011
        :pswitch_13  #00000012
    .end packed-switch
.end method

.method public getDepth()I
    .registers 2

    iget v0, p0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->mDepth:I

    return v0
.end method

.method public getEventType()I
    .registers 2

    iget v0, p0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->mCurrentEvent:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 3

    iget v0, p0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->mCurrentEvent:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_a

    const/4 v1, 0x4

    if-eq v0, v1, :cond_a

    const/4 v0, 0x0

    :goto_9
    return-object v0

    :cond_a
    iget-object v0, p0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->mCurrentElementName:Ljava/lang/String;

    goto :goto_9
.end method

.method public getNamespace()Ljava/lang/String;
    .registers 3

    iget v0, p0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->mCurrentEvent:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_a

    const/4 v1, 0x4

    if-eq v0, v1, :cond_a

    const/4 v0, 0x0

    :goto_9
    return-object v0

    :cond_a
    iget-object v0, p0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->mCurrentElementNamespace:Ljava/lang/String;

    goto :goto_9
.end method

.method public next()I
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/apksig/internal/apk/AndroidBinXmlParser$XmlParserException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->mCurrentEvent:I

    const/4 v3, 0x4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_12

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->mDepth:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->mDepth:I

    :cond_12
    :goto_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->mXml:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_26

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->mXml:Ljava/nio/ByteBuffer;

    invoke-static {v2}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$Chunk;->get(Ljava/nio/ByteBuffer;)Lcom/android/apksig/internal/apk/AndroidBinXmlParser$Chunk;

    move-result-object v4

    if-nez v4, :cond_2c

    :cond_26
    const/4 v2, 0x2

    :goto_27
    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->mCurrentEvent:I

    :goto_2b
    return v2

    :cond_2c
    invoke-virtual {v4}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$Chunk;->getType()I

    move-result v5

    const-string v2, ""

    const/4 v6, 0x1

    if-eq v5, v6, :cond_1c4

    const/16 v6, 0x180

    if-eq v5, v6, :cond_1ab

    const/16 v6, 0x102

    if-eq v5, v6, :cond_b6

    const/16 v6, 0x103

    if-ne v5, v6, :cond_12

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->mStringPool:Lcom/android/apksig/internal/apk/AndroidBinXmlParser$StringPool;

    if-eqz v5, :cond_ae

    invoke-virtual {v4}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$Chunk;->getContents()Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    const/16 v6, 0x8

    if-lt v5, v6, :cond_8e

    invoke-static {v4}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->getUnsignedInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v6

    invoke-static {v4}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->getUnsignedInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->mStringPool:Lcom/android/apksig/internal/apk/AndroidBinXmlParser$StringPool;

    invoke-virtual {v8, v4, v5}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$StringPool;->getString(J)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->mCurrentElementName:Ljava/lang/String;

    const-wide v4, 0xffffffffL

    cmp-long v4, v6, v4

    if-nez v4, :cond_85

    :goto_70
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->mCurrentElementNamespace:Ljava/lang/String;

    const/4 v2, 0x4

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->mCurrentEvent:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->mCurrentElementAttributes:Ljava/util/List;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->mCurrentElementAttributesContents:Ljava/nio/ByteBuffer;

    move v2, v3

    goto :goto_2b

    :cond_85
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->mStringPool:Lcom/android/apksig/internal/apk/AndroidBinXmlParser$StringPool;

    invoke-virtual {v2, v6, v7}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$StringPool;->getString(J)Ljava/lang/String;

    move-result-object v2

    goto :goto_70

    :cond_8e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "End element chunk too short. Need at least 8 bytes. Available: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " bytes"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$XmlParserException;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$XmlParserException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_ae
    new-instance v2, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$XmlParserException;

    const-string v3, "Named element encountered before string pool"

    invoke-direct {v2, v3}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$XmlParserException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_b6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->mStringPool:Lcom/android/apksig/internal/apk/AndroidBinXmlParser$StringPool;

    if-eqz v3, :cond_1a3

    invoke-virtual {v4}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$Chunk;->getContents()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    const/16 v5, 0x14

    if-lt v4, v5, :cond_183

    invoke-static {v3}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->getUnsignedInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v4

    invoke-static {v3}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->getUnsignedInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v6

    invoke-static {v3}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->getUnsignedInt16(Ljava/nio/ByteBuffer;)I

    move-result v8

    invoke-static {v3}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->getUnsignedInt16(Ljava/nio/ByteBuffer;)I

    move-result v9

    invoke-static {v3}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->getUnsignedInt16(Ljava/nio/ByteBuffer;)I

    move-result v10

    int-to-long v12, v8

    int-to-long v14, v10

    int-to-long v0, v9

    move-wide/from16 v16, v0

    mul-long v14, v14, v16

    add-long/2addr v14, v12

    const/4 v11, 0x0

    invoke-virtual {v3, v11}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v11

    if-gt v8, v11, :cond_160

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v8

    int-to-long v0, v8

    move-wide/from16 v16, v0

    cmp-long v8, v14, v16

    if-gtz v8, :cond_13d

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->mStringPool:Lcom/android/apksig/internal/apk/AndroidBinXmlParser$StringPool;

    invoke-virtual {v8, v6, v7}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$StringPool;->getString(J)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->mCurrentElementName:Ljava/lang/String;

    const-wide v6, 0xffffffffL

    cmp-long v6, v4, v6

    if-nez v6, :cond_134

    :goto_10e
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->mCurrentElementNamespace:Ljava/lang/String;

    move-object/from16 v0, p0

    iput v10, v0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->mCurrentElementAttributeCount:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->mCurrentElementAttributes:Ljava/util/List;

    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->mCurrentElementAttrSizeBytes:I

    invoke-static {v3, v12, v13, v14, v15}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->sliceFromTo(Ljava/nio/ByteBuffer;JJ)Ljava/nio/ByteBuffer;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->mCurrentElementAttributesContents:Ljava/nio/ByteBuffer;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->mDepth:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->mDepth:I

    const/4 v2, 0x3

    goto/16 :goto_27

    :cond_134
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->mStringPool:Lcom/android/apksig/internal/apk/AndroidBinXmlParser$StringPool;

    invoke-virtual {v2, v4, v5}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$StringPool;->getString(J)Ljava/lang/String;

    move-result-object v2

    goto :goto_10e

    :cond_13d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attributes end offset out of bounds: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", max: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v3, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$XmlParserException;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$XmlParserException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_160
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attributes start offset out of bounds: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", max: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v3, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$XmlParserException;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$XmlParserException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_183
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Start element chunk too short. Need at least 20 bytes. Available: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " bytes"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$XmlParserException;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$XmlParserException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1a3
    new-instance v2, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$XmlParserException;

    const-string v3, "Named element encountered before string pool"

    invoke-direct {v2, v3}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$XmlParserException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1ab
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->mResourceMap:Lcom/android/apksig/internal/apk/AndroidBinXmlParser$ResourceMap;

    if-nez v2, :cond_1bc

    new-instance v2, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$ResourceMap;

    invoke-direct {v2, v4}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$ResourceMap;-><init>(Lcom/android/apksig/internal/apk/AndroidBinXmlParser$Chunk;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->mResourceMap:Lcom/android/apksig/internal/apk/AndroidBinXmlParser$ResourceMap;

    goto/16 :goto_12

    :cond_1bc
    new-instance v2, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$XmlParserException;

    const-string v3, "Multiple resource maps not supported"

    invoke-direct {v2, v3}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$XmlParserException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1c4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->mStringPool:Lcom/android/apksig/internal/apk/AndroidBinXmlParser$StringPool;

    if-nez v2, :cond_1d5

    new-instance v2, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$StringPool;

    invoke-direct {v2, v4}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$StringPool;-><init>(Lcom/android/apksig/internal/apk/AndroidBinXmlParser$Chunk;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser;->mStringPool:Lcom/android/apksig/internal/apk/AndroidBinXmlParser$StringPool;

    goto/16 :goto_12

    :cond_1d5
    new-instance v2, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$XmlParserException;

    const-string v3, "Multiple string pools not supported"

    invoke-direct {v2, v3}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$XmlParserException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
