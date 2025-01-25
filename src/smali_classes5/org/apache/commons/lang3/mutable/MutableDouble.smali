.class public Lorg/apache/commons/lang3/mutable/MutableDouble;
.super Ljava/lang/Number;
.source "MutableDouble.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Lorg/apache/commons/lang3/mutable/Mutable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Ljava/lang/Comparable",
        "<",
        "Lorg/apache/commons/lang3/mutable/MutableDouble;",
        ">;",
        "Lorg/apache/commons/lang3/mutable/Mutable",
        "<",
        "Ljava/lang/Number;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x5e9a330cL


# instance fields
.field private value:D


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 43
    return-void
.end method

.method public constructor <init>(D)V
    .registers 4

    .line 50
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 51
    iput-wide p1, p0, Lorg/apache/commons/lang3/mutable/MutableDouble;->value:D

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/Number;)V
    .registers 4

    .line 60
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 61
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableDouble;->value:D

    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    .line 71
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 72
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableDouble;->value:D

    .line 73
    return-void
.end method


# virtual methods
.method public add(D)V
    .registers 6

    .line 202
    iget-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableDouble;->value:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableDouble;->value:D

    .line 203
    return-void
.end method

.method public add(Ljava/lang/Number;)V
    .registers 6

    .line 213
    iget-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableDouble;->value:D

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableDouble;->value:D

    .line 214
    return-void
.end method

.method public addAndGet(D)D
    .registers 6

    .line 246
    iget-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableDouble;->value:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableDouble;->value:D

    .line 247
    return-wide v0
.end method

.method public addAndGet(Ljava/lang/Number;)D
    .registers 6

    .line 260
    iget-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableDouble;->value:D

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableDouble;->value:D

    .line 261
    return-wide v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    .line 27
    check-cast p1, Lorg/apache/commons/lang3/mutable/MutableDouble;

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/mutable/MutableDouble;->compareTo(Lorg/apache/commons/lang3/mutable/MutableDouble;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/apache/commons/lang3/mutable/MutableDouble;)I
    .registers 6

    .line 401
    iget-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableDouble;->value:D

    iget-wide v2, p1, Lorg/apache/commons/lang3/mutable/MutableDouble;->value:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    return v0
.end method

.method public decrement()V
    .registers 5

    .line 166
    iget-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableDouble;->value:D

    const-wide/high16 v2, 0x3ff0000000000000L  # 1.0

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableDouble;->value:D

    .line 167
    return-void
.end method

.method public decrementAndGet()D
    .registers 5

    .line 190
    iget-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableDouble;->value:D

    const-wide/high16 v2, 0x3ff0000000000000L  # 1.0

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableDouble;->value:D

    .line 191
    return-wide v0
.end method

.method public doubleValue()D
    .registers 3

    .line 332
    iget-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableDouble;->value:D

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .line 377
    instance-of v0, p1, Lorg/apache/commons/lang3/mutable/MutableDouble;

    if-eqz v0, :cond_18

    check-cast p1, Lorg/apache/commons/lang3/mutable/MutableDouble;

    iget-wide v0, p1, Lorg/apache/commons/lang3/mutable/MutableDouble;->value:D

    .line 378
    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/commons/lang3/mutable/MutableDouble;->value:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_18

    const/4 v0, 0x1

    .line 377
    :goto_17
    return v0

    .line 378
    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public floatValue()F
    .registers 3

    .line 322
    iget-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableDouble;->value:D

    double-to-float v0, v0

    return v0
.end method

.method public getAndAdd(D)D
    .registers 8

    .line 273
    iget-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableDouble;->value:D

    .line 274
    iget-wide v2, p0, Lorg/apache/commons/lang3/mutable/MutableDouble;->value:D

    add-double/2addr v2, p1

    iput-wide v2, p0, Lorg/apache/commons/lang3/mutable/MutableDouble;->value:D

    .line 275
    return-wide v0
.end method

.method public getAndAdd(Ljava/lang/Number;)D
    .registers 8

    .line 288
    iget-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableDouble;->value:D

    .line 289
    iget-wide v2, p0, Lorg/apache/commons/lang3/mutable/MutableDouble;->value:D

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    add-double/2addr v2, v4

    iput-wide v2, p0, Lorg/apache/commons/lang3/mutable/MutableDouble;->value:D

    .line 290
    return-wide v0
.end method

.method public getAndDecrement()D
    .registers 7

    .line 177
    iget-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableDouble;->value:D

    .line 178
    iget-wide v2, p0, Lorg/apache/commons/lang3/mutable/MutableDouble;->value:D

    const-wide/high16 v4, 0x3ff0000000000000L  # 1.0

    sub-double/2addr v2, v4

    iput-wide v2, p0, Lorg/apache/commons/lang3/mutable/MutableDouble;->value:D

    .line 179
    return-wide v0
.end method

.method public getAndIncrement()D
    .registers 7

    .line 143
    iget-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableDouble;->value:D

    .line 144
    iget-wide v2, p0, Lorg/apache/commons/lang3/mutable/MutableDouble;->value:D

    const-wide/high16 v4, 0x3ff0000000000000L  # 1.0

    add-double/2addr v2, v4

    iput-wide v2, p0, Lorg/apache/commons/lang3/mutable/MutableDouble;->value:D

    .line 145
    return-wide v0
.end method

.method public getValue()Ljava/lang/Double;
    .registers 3

    .line 83
    iget-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableDouble;->value:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .registers 2

    .line 27
    invoke-virtual {p0}, Lorg/apache/commons/lang3/mutable/MutableDouble;->getValue()Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 5

    .line 388
    iget-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableDouble;->value:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 389
    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public increment()V
    .registers 5

    .line 132
    iget-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableDouble;->value:D

    const-wide/high16 v2, 0x3ff0000000000000L  # 1.0

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableDouble;->value:D

    .line 133
    return-void
.end method

.method public incrementAndGet()D
    .registers 5

    .line 156
    iget-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableDouble;->value:D

    const-wide/high16 v2, 0x3ff0000000000000L  # 1.0

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableDouble;->value:D

    .line 157
    return-wide v0
.end method

.method public intValue()I
    .registers 3

    .line 302
    iget-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableDouble;->value:D

    double-to-int v0, v0

    return v0
.end method

.method public isInfinite()Z
    .registers 3

    .line 122
    iget-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableDouble;->value:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    return v0
.end method

.method public isNaN()Z
    .registers 3

    .line 113
    iget-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableDouble;->value:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    return v0
.end method

.method public longValue()J
    .registers 3

    .line 312
    iget-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableDouble;->value:D

    double-to-long v0, v0

    return-wide v0
.end method

.method public setValue(D)V
    .registers 4

    .line 92
    iput-wide p1, p0, Lorg/apache/commons/lang3/mutable/MutableDouble;->value:D

    .line 93
    return-void
.end method

.method public setValue(Ljava/lang/Number;)V
    .registers 4

    .line 103
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableDouble;->value:D

    .line 104
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;)V
    .registers 2

    .line 27
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/mutable/MutableDouble;->setValue(Ljava/lang/Number;)V

    return-void
.end method

.method public subtract(D)V
    .registers 6

    .line 223
    iget-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableDouble;->value:D

    sub-double/2addr v0, p1

    iput-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableDouble;->value:D

    .line 224
    return-void
.end method

.method public subtract(Ljava/lang/Number;)V
    .registers 6

    .line 234
    iget-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableDouble;->value:D

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableDouble;->value:D

    .line 235
    return-void
.end method

.method public toDouble()Ljava/lang/Double;
    .registers 3

    .line 342
    invoke-virtual {p0}, Lorg/apache/commons/lang3/mutable/MutableDouble;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 412
    iget-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableDouble;->value:D

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
