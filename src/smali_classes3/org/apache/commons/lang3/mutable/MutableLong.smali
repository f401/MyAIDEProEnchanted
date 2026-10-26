.class public Lorg/apache/commons/lang3/mutable/MutableLong;
.super Ljava/lang/Number;
.source "MutableLong.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Lorg/apache/commons/lang3/mutable/Mutable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Ljava/lang/Comparable",
        "<",
        "Lorg/apache/commons/lang3/mutable/MutableLong;",
        ">;",
        "Lorg/apache/commons/lang3/mutable/Mutable",
        "<",
        "Ljava/lang/Number;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0xeaa4a2677L


# instance fields
.field private value:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 45
    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 53
    iput-wide p1, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/lang/Number;)V
    .locals 2

    .line 62
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 63
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 73
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 74
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    .line 75
    return-void
.end method


# virtual methods
.method public add(J)V
    .locals 3

    .line 185
    iget-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    .line 186
    return-void
.end method

.method public add(Ljava/lang/Number;)V
    .locals 4

    .line 196
    iget-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    .line 197
    return-void
.end method

.method public addAndGet(J)J
    .locals 3

    .line 229
    iget-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    .line 230
    return-wide v0
.end method

.method public addAndGet(Ljava/lang/Number;)J
    .locals 4

    .line 243
    iget-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    .line 244
    return-wide v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .line 29
    check-cast p1, Lorg/apache/commons/lang3/mutable/MutableLong;

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/mutable/MutableLong;->compareTo(Lorg/apache/commons/lang3/mutable/MutableLong;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/apache/commons/lang3/mutable/MutableLong;)I
    .locals 4

    .line 364
    iget-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    iget-wide v2, p1, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/lang3/math/NumberUtils;->compare(JJ)I

    move-result v0

    return v0
.end method

.method public decrement()V
    .locals 4

    .line 149
    iget-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    .line 150
    return-void
.end method

.method public decrementAndGet()J
    .locals 4

    .line 173
    iget-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    .line 174
    return-wide v0
.end method

.method public doubleValue()D
    .locals 2

    .line 315
    iget-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    long-to-double v0, v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x0

    .line 339
    instance-of v1, p1, Lorg/apache/commons/lang3/mutable/MutableLong;

    if-eqz v1, :cond_0

    .line 340
    iget-wide v2, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    check-cast p1, Lorg/apache/commons/lang3/mutable/MutableLong;

    invoke-virtual {p1}, Lorg/apache/commons/lang3/mutable/MutableLong;->longValue()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 342
    :cond_0
    return v0
.end method

.method public floatValue()F
    .locals 2

    .line 305
    iget-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    long-to-float v0, v0

    return v0
.end method

.method public getAndAdd(J)J
    .locals 5

    .line 256
    iget-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    .line 257
    iget-wide v2, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    add-long/2addr v2, p1

    iput-wide v2, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    .line 258
    return-wide v0
.end method

.method public getAndAdd(Ljava/lang/Number;)J
    .locals 6

    .line 271
    iget-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    .line 272
    iget-wide v2, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    .line 273
    return-wide v0
.end method

.method public getAndDecrement()J
    .locals 6

    .line 160
    iget-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    .line 161
    iget-wide v2, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    .line 162
    return-wide v0
.end method

.method public getAndIncrement()J
    .locals 6

    .line 126
    iget-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    .line 127
    iget-wide v2, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    .line 128
    return-wide v0
.end method

.method public getValue()Ljava/lang/Long;
    .locals 2

    .line 85
    iget-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lorg/apache/commons/lang3/mutable/MutableLong;->getValue()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 352
    iget-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public increment()V
    .locals 4

    .line 115
    iget-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    .line 116
    return-void
.end method

.method public incrementAndGet()J
    .locals 4

    .line 139
    iget-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    .line 140
    return-wide v0
.end method

.method public intValue()I
    .locals 2

    .line 285
    iget-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    long-to-int v0, v0

    return v0
.end method

.method public longValue()J
    .locals 2

    .line 295
    iget-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    return-wide v0
.end method

.method public setValue(J)V
    .locals 1

    .line 94
    iput-wide p1, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    .line 95
    return-void
.end method

.method public setValue(Ljava/lang/Number;)V
    .locals 2

    .line 105
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    .line 106
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;)V
    .locals 0

    .line 29
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/mutable/MutableLong;->setValue(Ljava/lang/Number;)V

    return-void
.end method

.method public subtract(J)V
    .locals 3

    .line 206
    iget-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    .line 207
    return-void
.end method

.method public subtract(Ljava/lang/Number;)V
    .locals 4

    .line 217
    iget-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    .line 218
    return-void
.end method

.method public toLong()Ljava/lang/Long;
    .locals 2

    .line 325
    invoke-virtual {p0}, Lorg/apache/commons/lang3/mutable/MutableLong;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 375
    iget-wide v0, p0, Lorg/apache/commons/lang3/mutable/MutableLong;->value:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
