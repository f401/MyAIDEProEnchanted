.class public Lorg/apache/commons/lang3/mutable/MutableByte;
.super Ljava/lang/Number;
.source "MutableByte.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Lorg/apache/commons/lang3/mutable/Mutable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Ljava/lang/Comparable",
        "<",
        "Lorg/apache/commons/lang3/mutable/MutableByte;",
        ">;",
        "Lorg/apache/commons/lang3/mutable/Mutable",
        "<",
        "Ljava/lang/Number;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x5e85be21L


# instance fields
.field private value:B


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 45
    return-void
.end method

.method public constructor <init>(B)V
    .registers 2

    .line 52
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 53
    iput-byte p1, p0, Lorg/apache/commons/lang3/mutable/MutableByte;->value:B

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/lang/Number;)V
    .registers 3

    .line 62
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 63
    invoke-virtual {p1}, Ljava/lang/Number;->byteValue()B

    move-result v0

    iput-byte v0, p0, Lorg/apache/commons/lang3/mutable/MutableByte;->value:B

    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 73
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 74
    invoke-static {p1}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v0

    iput-byte v0, p0, Lorg/apache/commons/lang3/mutable/MutableByte;->value:B

    .line 75
    return-void
.end method


# virtual methods
.method public add(B)V
    .registers 3

    .line 185
    iget-byte v0, p0, Lorg/apache/commons/lang3/mutable/MutableByte;->value:B

    add-int/2addr v0, p1

    int-to-byte v0, v0

    iput-byte v0, p0, Lorg/apache/commons/lang3/mutable/MutableByte;->value:B

    .line 186
    return-void
.end method

.method public add(Ljava/lang/Number;)V
    .registers 4

    .line 196
    iget-byte v0, p0, Lorg/apache/commons/lang3/mutable/MutableByte;->value:B

    invoke-virtual {p1}, Ljava/lang/Number;->byteValue()B

    move-result v1

    add-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Lorg/apache/commons/lang3/mutable/MutableByte;->value:B

    .line 197
    return-void
.end method

.method public addAndGet(B)B
    .registers 3

    .line 229
    iget-byte v0, p0, Lorg/apache/commons/lang3/mutable/MutableByte;->value:B

    add-int/2addr v0, p1

    int-to-byte v0, v0

    iput-byte v0, p0, Lorg/apache/commons/lang3/mutable/MutableByte;->value:B

    .line 230
    return v0
.end method

.method public addAndGet(Ljava/lang/Number;)B
    .registers 4

    .line 243
    iget-byte v0, p0, Lorg/apache/commons/lang3/mutable/MutableByte;->value:B

    invoke-virtual {p1}, Ljava/lang/Number;->byteValue()B

    move-result v1

    add-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Lorg/apache/commons/lang3/mutable/MutableByte;->value:B

    .line 244
    return v0
.end method

.method public byteValue()B
    .registers 2

    .line 285
    iget-byte v0, p0, Lorg/apache/commons/lang3/mutable/MutableByte;->value:B

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    .line 29
    check-cast p1, Lorg/apache/commons/lang3/mutable/MutableByte;

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/mutable/MutableByte;->compareTo(Lorg/apache/commons/lang3/mutable/MutableByte;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/apache/commons/lang3/mutable/MutableByte;)I
    .registers 4

    .line 374
    iget-byte v0, p0, Lorg/apache/commons/lang3/mutable/MutableByte;->value:B

    iget-byte v1, p1, Lorg/apache/commons/lang3/mutable/MutableByte;->value:B

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/math/NumberUtils;->compare(BB)I

    move-result v0

    return v0
.end method

.method public decrement()V
    .registers 2

    .line 149
    iget-byte v0, p0, Lorg/apache/commons/lang3/mutable/MutableByte;->value:B

    add-int/lit8 v0, v0, -0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lorg/apache/commons/lang3/mutable/MutableByte;->value:B

    .line 150
    return-void
.end method

.method public decrementAndGet()B
    .registers 2

    .line 173
    iget-byte v0, p0, Lorg/apache/commons/lang3/mutable/MutableByte;->value:B

    add-int/lit8 v0, v0, -0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lorg/apache/commons/lang3/mutable/MutableByte;->value:B

    .line 174
    return v0
.end method

.method public doubleValue()D
    .registers 3

    .line 325
    iget-byte v0, p0, Lorg/apache/commons/lang3/mutable/MutableByte;->value:B

    int-to-double v0, v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    .line 349
    instance-of v1, p1, Lorg/apache/commons/lang3/mutable/MutableByte;

    if-eqz v1, :cond_10

    .line 350
    iget-byte v1, p0, Lorg/apache/commons/lang3/mutable/MutableByte;->value:B

    check-cast p1, Lorg/apache/commons/lang3/mutable/MutableByte;

    invoke-virtual {p1}, Lorg/apache/commons/lang3/mutable/MutableByte;->byteValue()B

    move-result v2

    if-ne v1, v2, :cond_10

    const/4 v0, 0x1

    .line 352
    :cond_10
    return v0
.end method

.method public floatValue()F
    .registers 2

    .line 315
    iget-byte v0, p0, Lorg/apache/commons/lang3/mutable/MutableByte;->value:B

    int-to-float v0, v0

    return v0
.end method

.method public getAndAdd(B)B
    .registers 4

    .line 256
    iget-byte v0, p0, Lorg/apache/commons/lang3/mutable/MutableByte;->value:B

    .line 257
    iget-byte v1, p0, Lorg/apache/commons/lang3/mutable/MutableByte;->value:B

    add-int/2addr v1, p1

    int-to-byte v1, v1

    iput-byte v1, p0, Lorg/apache/commons/lang3/mutable/MutableByte;->value:B

    .line 258
    return v0
.end method

.method public getAndAdd(Ljava/lang/Number;)B
    .registers 5

    .line 271
    iget-byte v0, p0, Lorg/apache/commons/lang3/mutable/MutableByte;->value:B

    .line 272
    iget-byte v1, p0, Lorg/apache/commons/lang3/mutable/MutableByte;->value:B

    invoke-virtual {p1}, Ljava/lang/Number;->byteValue()B

    move-result v2

    add-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, p0, Lorg/apache/commons/lang3/mutable/MutableByte;->value:B

    .line 273
    return v0
.end method

.method public getAndDecrement()B
    .registers 3

    .line 160
    iget-byte v0, p0, Lorg/apache/commons/lang3/mutable/MutableByte;->value:B

    .line 161
    iget-byte v1, p0, Lorg/apache/commons/lang3/mutable/MutableByte;->value:B

    add-int/lit8 v1, v1, -0x1

    int-to-byte v1, v1

    iput-byte v1, p0, Lorg/apache/commons/lang3/mutable/MutableByte;->value:B

    .line 162
    return v0
.end method

.method public getAndIncrement()B
    .registers 3

    .line 126
    iget-byte v0, p0, Lorg/apache/commons/lang3/mutable/MutableByte;->value:B

    .line 127
    iget-byte v1, p0, Lorg/apache/commons/lang3/mutable/MutableByte;->value:B

    add-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    iput-byte v1, p0, Lorg/apache/commons/lang3/mutable/MutableByte;->value:B

    .line 128
    return v0
.end method

.method public getValue()Ljava/lang/Byte;
    .registers 2

    .line 85
    iget-byte v0, p0, Lorg/apache/commons/lang3/mutable/MutableByte;->value:B

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .registers 2

    .line 29
    invoke-virtual {p0}, Lorg/apache/commons/lang3/mutable/MutableByte;->getValue()Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 362
    iget-byte v0, p0, Lorg/apache/commons/lang3/mutable/MutableByte;->value:B

    return v0
.end method

.method public increment()V
    .registers 2

    .line 115
    iget-byte v0, p0, Lorg/apache/commons/lang3/mutable/MutableByte;->value:B

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lorg/apache/commons/lang3/mutable/MutableByte;->value:B

    .line 116
    return-void
.end method

.method public incrementAndGet()B
    .registers 2

    .line 139
    iget-byte v0, p0, Lorg/apache/commons/lang3/mutable/MutableByte;->value:B

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lorg/apache/commons/lang3/mutable/MutableByte;->value:B

    .line 140
    return v0
.end method

.method public intValue()I
    .registers 2

    .line 295
    iget-byte v0, p0, Lorg/apache/commons/lang3/mutable/MutableByte;->value:B

    return v0
.end method

.method public longValue()J
    .registers 3

    .line 305
    iget-byte v0, p0, Lorg/apache/commons/lang3/mutable/MutableByte;->value:B

    int-to-long v0, v0

    return-wide v0
.end method

.method public setValue(B)V
    .registers 2

    .line 94
    iput-byte p1, p0, Lorg/apache/commons/lang3/mutable/MutableByte;->value:B

    .line 95
    return-void
.end method

.method public setValue(Ljava/lang/Number;)V
    .registers 3

    .line 105
    invoke-virtual {p1}, Ljava/lang/Number;->byteValue()B

    move-result v0

    iput-byte v0, p0, Lorg/apache/commons/lang3/mutable/MutableByte;->value:B

    .line 106
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;)V
    .registers 2

    .line 29
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/mutable/MutableByte;->setValue(Ljava/lang/Number;)V

    return-void
.end method

.method public subtract(B)V
    .registers 3

    .line 206
    iget-byte v0, p0, Lorg/apache/commons/lang3/mutable/MutableByte;->value:B

    sub-int/2addr v0, p1

    int-to-byte v0, v0

    iput-byte v0, p0, Lorg/apache/commons/lang3/mutable/MutableByte;->value:B

    .line 207
    return-void
.end method

.method public subtract(Ljava/lang/Number;)V
    .registers 4

    .line 217
    iget-byte v0, p0, Lorg/apache/commons/lang3/mutable/MutableByte;->value:B

    invoke-virtual {p1}, Ljava/lang/Number;->byteValue()B

    move-result v1

    sub-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Lorg/apache/commons/lang3/mutable/MutableByte;->value:B

    .line 218
    return-void
.end method

.method public toByte()Ljava/lang/Byte;
    .registers 2

    .line 335
    invoke-virtual {p0}, Lorg/apache/commons/lang3/mutable/MutableByte;->byteValue()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 385
    iget-byte v0, p0, Lorg/apache/commons/lang3/mutable/MutableByte;->value:B

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
