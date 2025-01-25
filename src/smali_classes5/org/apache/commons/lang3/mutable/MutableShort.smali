.class public Lorg/apache/commons/lang3/mutable/MutableShort;
.super Ljava/lang/Number;
.source "MutableShort.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Lorg/apache/commons/lang3/mutable/Mutable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Ljava/lang/Comparable",
        "<",
        "Lorg/apache/commons/lang3/mutable/MutableShort;",
        ">;",
        "Lorg/apache/commons/lang3/mutable/Mutable",
        "<",
        "Ljava/lang/Number;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x7f4d983fL


# instance fields
.field private value:S


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/lang/Number;)V
    .registers 3

    .line 62
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 63
    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    move-result v0

    iput-short v0, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 73
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 74
    invoke-static {p1}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v0

    iput-short v0, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    .line 75
    return-void
.end method

.method public constructor <init>(S)V
    .registers 2

    .line 52
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 53
    iput-short p1, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    .line 54
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Number;)V
    .registers 4

    .line 196
    iget-short v0, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    move-result v1

    add-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    .line 197
    return-void
.end method

.method public add(S)V
    .registers 3

    .line 185
    iget-short v0, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    add-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    .line 186
    return-void
.end method

.method public addAndGet(Ljava/lang/Number;)S
    .registers 4

    .line 243
    iget-short v0, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    move-result v1

    add-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    .line 244
    return v0
.end method

.method public addAndGet(S)S
    .registers 3

    .line 229
    iget-short v0, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    add-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    .line 230
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    .line 29
    check-cast p1, Lorg/apache/commons/lang3/mutable/MutableShort;

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/mutable/MutableShort;->compareTo(Lorg/apache/commons/lang3/mutable/MutableShort;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/apache/commons/lang3/mutable/MutableShort;)I
    .registers 4

    .line 374
    iget-short v0, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    iget-short v1, p1, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/math/NumberUtils;->compare(SS)I

    move-result v0

    return v0
.end method

.method public decrement()V
    .registers 2

    .line 149
    iget-short v0, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    add-int/lit8 v0, v0, -0x1

    int-to-short v0, v0

    iput-short v0, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    .line 150
    return-void
.end method

.method public decrementAndGet()S
    .registers 2

    .line 173
    iget-short v0, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    add-int/lit8 v0, v0, -0x1

    int-to-short v0, v0

    iput-short v0, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    .line 174
    return v0
.end method

.method public doubleValue()D
    .registers 3

    .line 325
    iget-short v0, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    int-to-double v0, v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    .line 349
    instance-of v1, p1, Lorg/apache/commons/lang3/mutable/MutableShort;

    if-eqz v1, :cond_10

    .line 350
    iget-short v1, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    check-cast p1, Lorg/apache/commons/lang3/mutable/MutableShort;

    invoke-virtual {p1}, Lorg/apache/commons/lang3/mutable/MutableShort;->shortValue()S

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
    iget-short v0, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    int-to-float v0, v0

    return v0
.end method

.method public getAndAdd(Ljava/lang/Number;)S
    .registers 5

    .line 271
    iget-short v0, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    .line 272
    iget-short v1, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    move-result v2

    add-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    .line 273
    return v0
.end method

.method public getAndAdd(S)S
    .registers 4

    .line 256
    iget-short v0, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    .line 257
    iget-short v1, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    add-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    .line 258
    return v0
.end method

.method public getAndDecrement()S
    .registers 3

    .line 160
    iget-short v0, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    .line 161
    iget-short v1, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    add-int/lit8 v1, v1, -0x1

    int-to-short v1, v1

    iput-short v1, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    .line 162
    return v0
.end method

.method public getAndIncrement()S
    .registers 3

    .line 126
    iget-short v0, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    .line 127
    iget-short v1, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    add-int/lit8 v1, v1, 0x1

    int-to-short v1, v1

    iput-short v1, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    .line 128
    return v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .registers 2

    .line 29
    invoke-virtual {p0}, Lorg/apache/commons/lang3/mutable/MutableShort;->getValue()Ljava/lang/Short;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/Short;
    .registers 2

    .line 85
    iget-short v0, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 362
    iget-short v0, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    return v0
.end method

.method public increment()V
    .registers 2

    .line 115
    iget-short v0, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    add-int/lit8 v0, v0, 0x1

    int-to-short v0, v0

    iput-short v0, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    .line 116
    return-void
.end method

.method public incrementAndGet()S
    .registers 2

    .line 139
    iget-short v0, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    add-int/lit8 v0, v0, 0x1

    int-to-short v0, v0

    iput-short v0, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    .line 140
    return v0
.end method

.method public intValue()I
    .registers 2

    .line 295
    iget-short v0, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    return v0
.end method

.method public longValue()J
    .registers 3

    .line 305
    iget-short v0, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    int-to-long v0, v0

    return-wide v0
.end method

.method public setValue(Ljava/lang/Number;)V
    .registers 3

    .line 105
    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    move-result v0

    iput-short v0, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    .line 106
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;)V
    .registers 2

    .line 29
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/mutable/MutableShort;->setValue(Ljava/lang/Number;)V

    return-void
.end method

.method public setValue(S)V
    .registers 2

    .line 94
    iput-short p1, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    .line 95
    return-void
.end method

.method public shortValue()S
    .registers 2

    .line 285
    iget-short v0, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    return v0
.end method

.method public subtract(Ljava/lang/Number;)V
    .registers 4

    .line 217
    iget-short v0, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    move-result v1

    sub-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    .line 218
    return-void
.end method

.method public subtract(S)V
    .registers 3

    .line 206
    iget-short v0, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    sub-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    .line 207
    return-void
.end method

.method public toShort()Ljava/lang/Short;
    .registers 2

    .line 335
    invoke-virtual {p0}, Lorg/apache/commons/lang3/mutable/MutableShort;->shortValue()S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 385
    iget-short v0, p0, Lorg/apache/commons/lang3/mutable/MutableShort;->value:S

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
