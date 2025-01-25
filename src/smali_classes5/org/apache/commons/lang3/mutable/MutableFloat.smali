.class public Lorg/apache/commons/lang3/mutable/MutableFloat;
.super Ljava/lang/Number;
.source "MutableFloat.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Lorg/apache/commons/lang3/mutable/Mutable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Ljava/lang/Comparable",
        "<",
        "Lorg/apache/commons/lang3/mutable/MutableFloat;",
        ">;",
        "Lorg/apache/commons/lang3/mutable/Mutable",
        "<",
        "Ljava/lang/Number;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x158f131a2L


# instance fields
.field private value:F


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 43
    return-void
.end method

.method public constructor <init>(F)V
    .registers 2

    .line 50
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 51
    iput p1, p0, Lorg/apache/commons/lang3/mutable/MutableFloat;->value:F

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/Number;)V
    .registers 3

    .line 60
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 61
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result v0

    iput v0, p0, Lorg/apache/commons/lang3/mutable/MutableFloat;->value:F

    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 71
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 72
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lorg/apache/commons/lang3/mutable/MutableFloat;->value:F

    .line 73
    return-void
.end method


# virtual methods
.method public add(F)V
    .registers 3

    .line 202
    iget v0, p0, Lorg/apache/commons/lang3/mutable/MutableFloat;->value:F

    add-float/2addr v0, p1

    iput v0, p0, Lorg/apache/commons/lang3/mutable/MutableFloat;->value:F

    .line 203
    return-void
.end method

.method public add(Ljava/lang/Number;)V
    .registers 4

    .line 213
    iget v0, p0, Lorg/apache/commons/lang3/mutable/MutableFloat;->value:F

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/lang3/mutable/MutableFloat;->value:F

    .line 214
    return-void
.end method

.method public addAndGet(F)F
    .registers 3

    .line 246
    iget v0, p0, Lorg/apache/commons/lang3/mutable/MutableFloat;->value:F

    add-float/2addr v0, p1

    iput v0, p0, Lorg/apache/commons/lang3/mutable/MutableFloat;->value:F

    .line 247
    return v0
.end method

.method public addAndGet(Ljava/lang/Number;)F
    .registers 4

    .line 260
    iget v0, p0, Lorg/apache/commons/lang3/mutable/MutableFloat;->value:F

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/lang3/mutable/MutableFloat;->value:F

    .line 261
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    .line 27
    check-cast p1, Lorg/apache/commons/lang3/mutable/MutableFloat;

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/mutable/MutableFloat;->compareTo(Lorg/apache/commons/lang3/mutable/MutableFloat;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/apache/commons/lang3/mutable/MutableFloat;)I
    .registers 4

    .line 402
    iget v0, p0, Lorg/apache/commons/lang3/mutable/MutableFloat;->value:F

    iget v1, p1, Lorg/apache/commons/lang3/mutable/MutableFloat;->value:F

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    return v0
.end method

.method public decrement()V
    .registers 3

    .line 166
    iget v0, p0, Lorg/apache/commons/lang3/mutable/MutableFloat;->value:F

    const/high16 v1, 0x3f800000  # 1.0f

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/lang3/mutable/MutableFloat;->value:F

    .line 167
    return-void
.end method

.method public decrementAndGet()F
    .registers 3

    .line 190
    iget v0, p0, Lorg/apache/commons/lang3/mutable/MutableFloat;->value:F

    const/high16 v1, 0x3f800000  # 1.0f

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/lang3/mutable/MutableFloat;->value:F

    .line 191
    return v0
.end method

.method public doubleValue()D
    .registers 3

    .line 332
    iget v0, p0, Lorg/apache/commons/lang3/mutable/MutableFloat;->value:F

    float-to-double v0, v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    .line 379
    instance-of v0, p1, Lorg/apache/commons/lang3/mutable/MutableFloat;

    if-eqz v0, :cond_16

    check-cast p1, Lorg/apache/commons/lang3/mutable/MutableFloat;

    iget v0, p1, Lorg/apache/commons/lang3/mutable/MutableFloat;->value:F

    .line 380
    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    iget v1, p0, Lorg/apache/commons/lang3/mutable/MutableFloat;->value:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    if-ne v0, v1, :cond_16

    const/4 v0, 0x1

    .line 379
    :goto_15
    return v0

    .line 380
    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public floatValue()F
    .registers 2

    .line 322
    iget v0, p0, Lorg/apache/commons/lang3/mutable/MutableFloat;->value:F

    return v0
.end method

.method public getAndAdd(F)F
    .registers 4

    .line 273
    iget v0, p0, Lorg/apache/commons/lang3/mutable/MutableFloat;->value:F

    .line 274
    iget v1, p0, Lorg/apache/commons/lang3/mutable/MutableFloat;->value:F

    add-float/2addr v1, p1

    iput v1, p0, Lorg/apache/commons/lang3/mutable/MutableFloat;->value:F

    .line 275
    return v0
.end method

.method public getAndAdd(Ljava/lang/Number;)F
    .registers 5

    .line 288
    iget v0, p0, Lorg/apache/commons/lang3/mutable/MutableFloat;->value:F

    .line 289
    iget v1, p0, Lorg/apache/commons/lang3/mutable/MutableFloat;->value:F

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result v2

    add-float/2addr v1, v2

    iput v1, p0, Lorg/apache/commons/lang3/mutable/MutableFloat;->value:F

    .line 290
    return v0
.end method

.method public getAndDecrement()F
    .registers 4

    .line 177
    iget v0, p0, Lorg/apache/commons/lang3/mutable/MutableFloat;->value:F

    .line 178
    iget v1, p0, Lorg/apache/commons/lang3/mutable/MutableFloat;->value:F

    const/high16 v2, 0x3f800000  # 1.0f

    sub-float/2addr v1, v2

    iput v1, p0, Lorg/apache/commons/lang3/mutable/MutableFloat;->value:F

    .line 179
    return v0
.end method

.method public getAndIncrement()F
    .registers 4

    .line 143
    iget v0, p0, Lorg/apache/commons/lang3/mutable/MutableFloat;->value:F

    .line 144
    iget v1, p0, Lorg/apache/commons/lang3/mutable/MutableFloat;->value:F

    const/high16 v2, 0x3f800000  # 1.0f

    add-float/2addr v1, v2

    iput v1, p0, Lorg/apache/commons/lang3/mutable/MutableFloat;->value:F

    .line 145
    return v0
.end method

.method public getValue()Ljava/lang/Float;
    .registers 2

    .line 83
    iget v0, p0, Lorg/apache/commons/lang3/mutable/MutableFloat;->value:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .registers 2

    .line 27
    invoke-virtual {p0}, Lorg/apache/commons/lang3/mutable/MutableFloat;->getValue()Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 390
    iget v0, p0, Lorg/apache/commons/lang3/mutable/MutableFloat;->value:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    return v0
.end method

.method public increment()V
    .registers 3

    .line 132
    iget v0, p0, Lorg/apache/commons/lang3/mutable/MutableFloat;->value:F

    const/high16 v1, 0x3f800000  # 1.0f

    add-float/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/lang3/mutable/MutableFloat;->value:F

    .line 133
    return-void
.end method

.method public incrementAndGet()F
    .registers 3

    .line 156
    iget v0, p0, Lorg/apache/commons/lang3/mutable/MutableFloat;->value:F

    const/high16 v1, 0x3f800000  # 1.0f

    add-float/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/lang3/mutable/MutableFloat;->value:F

    .line 157
    return v0
.end method

.method public intValue()I
    .registers 2

    .line 302
    iget v0, p0, Lorg/apache/commons/lang3/mutable/MutableFloat;->value:F

    float-to-int v0, v0

    return v0
.end method

.method public isInfinite()Z
    .registers 2

    .line 122
    iget v0, p0, Lorg/apache/commons/lang3/mutable/MutableFloat;->value:F

    invoke-static {v0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    return v0
.end method

.method public isNaN()Z
    .registers 2

    .line 113
    iget v0, p0, Lorg/apache/commons/lang3/mutable/MutableFloat;->value:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    return v0
.end method

.method public longValue()J
    .registers 3

    .line 312
    iget v0, p0, Lorg/apache/commons/lang3/mutable/MutableFloat;->value:F

    float-to-long v0, v0

    return-wide v0
.end method

.method public setValue(F)V
    .registers 2

    .line 92
    iput p1, p0, Lorg/apache/commons/lang3/mutable/MutableFloat;->value:F

    .line 93
    return-void
.end method

.method public setValue(Ljava/lang/Number;)V
    .registers 3

    .line 103
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result v0

    iput v0, p0, Lorg/apache/commons/lang3/mutable/MutableFloat;->value:F

    .line 104
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;)V
    .registers 2

    .line 27
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/mutable/MutableFloat;->setValue(Ljava/lang/Number;)V

    return-void
.end method

.method public subtract(F)V
    .registers 3

    .line 223
    iget v0, p0, Lorg/apache/commons/lang3/mutable/MutableFloat;->value:F

    sub-float/2addr v0, p1

    iput v0, p0, Lorg/apache/commons/lang3/mutable/MutableFloat;->value:F

    .line 224
    return-void
.end method

.method public subtract(Ljava/lang/Number;)V
    .registers 4

    .line 234
    iget v0, p0, Lorg/apache/commons/lang3/mutable/MutableFloat;->value:F

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/lang3/mutable/MutableFloat;->value:F

    .line 235
    return-void
.end method

.method public toFloat()Ljava/lang/Float;
    .registers 2

    .line 342
    invoke-virtual {p0}, Lorg/apache/commons/lang3/mutable/MutableFloat;->floatValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 413
    iget v0, p0, Lorg/apache/commons/lang3/mutable/MutableFloat;->value:F

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
