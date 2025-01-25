.class public Lorg/apache/commons/lang3/mutable/MutableInt;
.super Ljava/lang/Number;
.source "MutableInt.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Lorg/apache/commons/lang3/mutable/Mutable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Ljava/lang/Comparable",
        "<",
        "Lorg/apache/commons/lang3/mutable/MutableInt;",
        ">;",
        "Lorg/apache/commons/lang3/mutable/Mutable",
        "<",
        "Ljava/lang/Number;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x77401786b8L


# instance fields
.field private value:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 45
    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    .line 52
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 53
    iput p1, p0, Lorg/apache/commons/lang3/mutable/MutableInt;->value:I

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/lang/Number;)V
    .registers 3

    .line 62
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 63
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v0

    iput v0, p0, Lorg/apache/commons/lang3/mutable/MutableInt;->value:I

    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 73
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 74
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/lang3/mutable/MutableInt;->value:I

    .line 75
    return-void
.end method


# virtual methods
.method public add(I)V
    .registers 3

    .line 185
    iget v0, p0, Lorg/apache/commons/lang3/mutable/MutableInt;->value:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/apache/commons/lang3/mutable/MutableInt;->value:I

    .line 186
    return-void
.end method

.method public add(Ljava/lang/Number;)V
    .registers 4

    .line 196
    iget v0, p0, Lorg/apache/commons/lang3/mutable/MutableInt;->value:I

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/lang3/mutable/MutableInt;->value:I

    .line 197
    return-void
.end method

.method public addAndGet(I)I
    .registers 3

    .line 229
    iget v0, p0, Lorg/apache/commons/lang3/mutable/MutableInt;->value:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/apache/commons/lang3/mutable/MutableInt;->value:I

    .line 230
    return v0
.end method

.method public addAndGet(Ljava/lang/Number;)I
    .registers 4

    .line 243
    iget v0, p0, Lorg/apache/commons/lang3/mutable/MutableInt;->value:I

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/lang3/mutable/MutableInt;->value:I

    .line 244
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    .line 29
    check-cast p1, Lorg/apache/commons/lang3/mutable/MutableInt;

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/mutable/MutableInt;->compareTo(Lorg/apache/commons/lang3/mutable/MutableInt;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/apache/commons/lang3/mutable/MutableInt;)I
    .registers 4

    .line 364
    iget v0, p0, Lorg/apache/commons/lang3/mutable/MutableInt;->value:I

    iget v1, p1, Lorg/apache/commons/lang3/mutable/MutableInt;->value:I

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/math/NumberUtils;->compare(II)I

    move-result v0

    return v0
.end method

.method public decrement()V
    .registers 2

    .line 149
    iget v0, p0, Lorg/apache/commons/lang3/mutable/MutableInt;->value:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/commons/lang3/mutable/MutableInt;->value:I

    .line 150
    return-void
.end method

.method public decrementAndGet()I
    .registers 2

    .line 173
    iget v0, p0, Lorg/apache/commons/lang3/mutable/MutableInt;->value:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/commons/lang3/mutable/MutableInt;->value:I

    .line 174
    return v0
.end method

.method public doubleValue()D
    .registers 3

    .line 315
    iget v0, p0, Lorg/apache/commons/lang3/mutable/MutableInt;->value:I

    int-to-double v0, v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    .line 339
    instance-of v1, p1, Lorg/apache/commons/lang3/mutable/MutableInt;

    if-eqz v1, :cond_10

    .line 340
    iget v1, p0, Lorg/apache/commons/lang3/mutable/MutableInt;->value:I

    check-cast p1, Lorg/apache/commons/lang3/mutable/MutableInt;

    invoke-virtual {p1}, Lorg/apache/commons/lang3/mutable/MutableInt;->intValue()I

    move-result v2

    if-ne v1, v2, :cond_10

    const/4 v0, 0x1

    .line 342
    :cond_10
    return v0
.end method

.method public floatValue()F
    .registers 2

    .line 305
    iget v0, p0, Lorg/apache/commons/lang3/mutable/MutableInt;->value:I

    int-to-float v0, v0

    return v0
.end method

.method public getAndAdd(I)I
    .registers 4

    .line 256
    iget v0, p0, Lorg/apache/commons/lang3/mutable/MutableInt;->value:I

    .line 257
    iget v1, p0, Lorg/apache/commons/lang3/mutable/MutableInt;->value:I

    add-int/2addr v1, p1

    iput v1, p0, Lorg/apache/commons/lang3/mutable/MutableInt;->value:I

    .line 258
    return v0
.end method

.method public getAndAdd(Ljava/lang/Number;)I
    .registers 5

    .line 271
    iget v0, p0, Lorg/apache/commons/lang3/mutable/MutableInt;->value:I

    .line 272
    iget v1, p0, Lorg/apache/commons/lang3/mutable/MutableInt;->value:I

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lorg/apache/commons/lang3/mutable/MutableInt;->value:I

    .line 273
    return v0
.end method

.method public getAndDecrement()I
    .registers 3

    .line 160
    iget v0, p0, Lorg/apache/commons/lang3/mutable/MutableInt;->value:I

    .line 161
    iget v1, p0, Lorg/apache/commons/lang3/mutable/MutableInt;->value:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/commons/lang3/mutable/MutableInt;->value:I

    .line 162
    return v0
.end method

.method public getAndIncrement()I
    .registers 3

    .line 126
    iget v0, p0, Lorg/apache/commons/lang3/mutable/MutableInt;->value:I

    .line 127
    iget v1, p0, Lorg/apache/commons/lang3/mutable/MutableInt;->value:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/commons/lang3/mutable/MutableInt;->value:I

    .line 128
    return v0
.end method

.method public getValue()Ljava/lang/Integer;
    .registers 2

    .line 85
    iget v0, p0, Lorg/apache/commons/lang3/mutable/MutableInt;->value:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .registers 2

    .line 29
    invoke-virtual {p0}, Lorg/apache/commons/lang3/mutable/MutableInt;->getValue()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 352
    iget v0, p0, Lorg/apache/commons/lang3/mutable/MutableInt;->value:I

    return v0
.end method

.method public increment()V
    .registers 2

    .line 115
    iget v0, p0, Lorg/apache/commons/lang3/mutable/MutableInt;->value:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/lang3/mutable/MutableInt;->value:I

    .line 116
    return-void
.end method

.method public incrementAndGet()I
    .registers 2

    .line 139
    iget v0, p0, Lorg/apache/commons/lang3/mutable/MutableInt;->value:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/lang3/mutable/MutableInt;->value:I

    .line 140
    return v0
.end method

.method public intValue()I
    .registers 2

    .line 285
    iget v0, p0, Lorg/apache/commons/lang3/mutable/MutableInt;->value:I

    return v0
.end method

.method public longValue()J
    .registers 3

    .line 295
    iget v0, p0, Lorg/apache/commons/lang3/mutable/MutableInt;->value:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public setValue(I)V
    .registers 2

    .line 94
    iput p1, p0, Lorg/apache/commons/lang3/mutable/MutableInt;->value:I

    .line 95
    return-void
.end method

.method public setValue(Ljava/lang/Number;)V
    .registers 3

    .line 105
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v0

    iput v0, p0, Lorg/apache/commons/lang3/mutable/MutableInt;->value:I

    .line 106
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;)V
    .registers 2

    .line 29
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/mutable/MutableInt;->setValue(Ljava/lang/Number;)V

    return-void
.end method

.method public subtract(I)V
    .registers 3

    .line 206
    iget v0, p0, Lorg/apache/commons/lang3/mutable/MutableInt;->value:I

    sub-int/2addr v0, p1

    iput v0, p0, Lorg/apache/commons/lang3/mutable/MutableInt;->value:I

    .line 207
    return-void
.end method

.method public subtract(Ljava/lang/Number;)V
    .registers 4

    .line 217
    iget v0, p0, Lorg/apache/commons/lang3/mutable/MutableInt;->value:I

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/lang3/mutable/MutableInt;->value:I

    .line 218
    return-void
.end method

.method public toInteger()Ljava/lang/Integer;
    .registers 2

    .line 325
    invoke-virtual {p0}, Lorg/apache/commons/lang3/mutable/MutableInt;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 375
    iget v0, p0, Lorg/apache/commons/lang3/mutable/MutableInt;->value:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
