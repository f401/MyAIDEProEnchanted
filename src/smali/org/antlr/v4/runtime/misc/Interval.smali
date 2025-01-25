.class public Lorg/antlr/v4/runtime/misc/Interval;
.super Ljava/lang/Object;
.source "Interval.java"


# static fields
.field public static final INTERVAL_POOL_MAX_VALUE:I = 0x3e8

.field public static final INVALID:Lorg/antlr/v4/runtime/misc/Interval;

.field static cache:[Lorg/antlr/v4/runtime/misc/Interval;

.field public static creates:I

.field public static hits:I

.field public static misses:I

.field public static outOfRange:I


# instance fields
.field public a:I

.field public b:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 12
    new-instance v0, Lorg/antlr/v4/runtime/misc/Interval;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Lorg/antlr/v4/runtime/misc/Interval;-><init>(II)V

    sput-object v0, Lorg/antlr/v4/runtime/misc/Interval;->INVALID:Lorg/antlr/v4/runtime/misc/Interval;

    .line 14
    const/16 v0, 0x3e9

    new-array v0, v0, [Lorg/antlr/v4/runtime/misc/Interval;

    sput-object v0, Lorg/antlr/v4/runtime/misc/Interval;->cache:[Lorg/antlr/v4/runtime/misc/Interval;

    .line 19
    const/4 v0, 0x0

    sput v0, Lorg/antlr/v4/runtime/misc/Interval;->creates:I

    .line 20
    sput v0, Lorg/antlr/v4/runtime/misc/Interval;->misses:I

    .line 21
    sput v0, Lorg/antlr/v4/runtime/misc/Interval;->hits:I

    .line 22
    sput v0, Lorg/antlr/v4/runtime/misc/Interval;->outOfRange:I

    return-void
.end method

.method public constructor <init>(II)V
    .registers 3

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/antlr/v4/runtime/misc/Interval;->a:I

    iput p2, p0, Lorg/antlr/v4/runtime/misc/Interval;->b:I

    return-void
.end method

.method public static of(II)Lorg/antlr/v4/runtime/misc/Interval;
    .registers 3

    if-ne p0, p1, :cond_1b

    if-ltz p0, :cond_1b

    const/16 v0, 0x3e8

    if-le p0, v0, :cond_9

    goto :goto_1b

    .line 37
    :cond_9
    sget-object p1, Lorg/antlr/v4/runtime/misc/Interval;->cache:[Lorg/antlr/v4/runtime/misc/Interval;

    aget-object v0, p1, p0

    if-nez v0, :cond_16

    .line 38
    new-instance v0, Lorg/antlr/v4/runtime/misc/Interval;

    invoke-direct {v0, p0, p0}, Lorg/antlr/v4/runtime/misc/Interval;-><init>(II)V

    aput-object v0, p1, p0

    .line 40
    :cond_16
    sget-object p1, Lorg/antlr/v4/runtime/misc/Interval;->cache:[Lorg/antlr/v4/runtime/misc/Interval;

    aget-object p0, p1, p0

    return-object p0

    .line 35
    :cond_1b
    :goto_1b
    new-instance v0, Lorg/antlr/v4/runtime/misc/Interval;

    invoke-direct {v0, p0, p1}, Lorg/antlr/v4/runtime/misc/Interval;-><init>(II)V

    return-object v0
.end method


# virtual methods
.method public adjacent(Lorg/antlr/v4/runtime/misc/Interval;)Z
    .registers 5

    .line 98
    iget v0, p0, Lorg/antlr/v4/runtime/misc/Interval;->a:I

    iget v1, p1, Lorg/antlr/v4/runtime/misc/Interval;->b:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    if-eq v0, v1, :cond_11

    iget v0, p0, Lorg/antlr/v4/runtime/misc/Interval;->b:I

    iget p1, p1, Lorg/antlr/v4/runtime/misc/Interval;->a:I

    sub-int/2addr p1, v2

    if-ne v0, p1, :cond_10

    goto :goto_11

    :cond_10
    const/4 v2, 0x0

    :cond_11
    :goto_11
    return v2
.end method

.method public differenceNotProperlyContained(Lorg/antlr/v4/runtime/misc/Interval;)Lorg/antlr/v4/runtime/misc/Interval;
    .registers 3

    .line 123
    invoke-virtual {p1, p0}, Lorg/antlr/v4/runtime/misc/Interval;->startsBeforeNonDisjoint(Lorg/antlr/v4/runtime/misc/Interval;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 124
    iget v0, p0, Lorg/antlr/v4/runtime/misc/Interval;->a:I

    iget p1, p1, Lorg/antlr/v4/runtime/misc/Interval;->b:I

    add-int/lit8 p1, p1, 0x1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget v0, p0, Lorg/antlr/v4/runtime/misc/Interval;->b:I

    invoke-static {p1, v0}, Lorg/antlr/v4/runtime/misc/Interval;->of(II)Lorg/antlr/v4/runtime/misc/Interval;

    move-result-object p1

    goto :goto_29

    .line 129
    :cond_17
    invoke-virtual {p1, p0}, Lorg/antlr/v4/runtime/misc/Interval;->startsAfterNonDisjoint(Lorg/antlr/v4/runtime/misc/Interval;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 130
    iget v0, p0, Lorg/antlr/v4/runtime/misc/Interval;->a:I

    iget p1, p1, Lorg/antlr/v4/runtime/misc/Interval;->a:I

    add-int/lit8 p1, p1, -0x1

    invoke-static {v0, p1}, Lorg/antlr/v4/runtime/misc/Interval;->of(II)Lorg/antlr/v4/runtime/misc/Interval;

    move-result-object p1

    goto :goto_29

    :cond_28
    const/4 p1, 0x0

    :goto_29
    return-object p1
.end method

.method public disjoint(Lorg/antlr/v4/runtime/misc/Interval;)Z
    .registers 3

    .line 93
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/misc/Interval;->startsBeforeDisjoint(Lorg/antlr/v4/runtime/misc/Interval;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/misc/Interval;->startsAfterDisjoint(Lorg/antlr/v4/runtime/misc/Interval;)Z

    move-result p1

    if-eqz p1, :cond_d

    goto :goto_f

    :cond_d
    const/4 p1, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p1, 0x1

    :goto_10
    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-eqz p1, :cond_17

    .line 53
    instance-of v0, p1, Lorg/antlr/v4/runtime/misc/Interval;

    if-nez v0, :cond_7

    goto :goto_17

    .line 56
    :cond_7
    check-cast p1, Lorg/antlr/v4/runtime/misc/Interval;

    .line 57
    iget v0, p0, Lorg/antlr/v4/runtime/misc/Interval;->a:I

    iget v1, p1, Lorg/antlr/v4/runtime/misc/Interval;->a:I

    if-ne v0, v1, :cond_17

    iget v0, p0, Lorg/antlr/v4/runtime/misc/Interval;->b:I

    iget p1, p1, Lorg/antlr/v4/runtime/misc/Interval;->b:I

    if-ne v0, p1, :cond_17

    const/4 p1, 0x1

    goto :goto_18

    :cond_17
    :goto_17
    const/4 p1, 0x0

    :goto_18
    return p1
.end method

.method public hashCode()I
    .registers 3

    .line 63
    iget v0, p0, Lorg/antlr/v4/runtime/misc/Interval;->a:I

    .line 64
    add-int/lit16 v0, v0, 0x2c9

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/antlr/v4/runtime/misc/Interval;->b:I

    add-int/2addr v0, v1

    return v0
.end method

.method public intersection(Lorg/antlr/v4/runtime/misc/Interval;)Lorg/antlr/v4/runtime/misc/Interval;
    .registers 4

    .line 112
    iget v0, p0, Lorg/antlr/v4/runtime/misc/Interval;->a:I

    iget v1, p1, Lorg/antlr/v4/runtime/misc/Interval;->a:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, p0, Lorg/antlr/v4/runtime/misc/Interval;->b:I

    iget p1, p1, Lorg/antlr/v4/runtime/misc/Interval;->b:I

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v0, p1}, Lorg/antlr/v4/runtime/misc/Interval;->of(II)Lorg/antlr/v4/runtime/misc/Interval;

    move-result-object p1

    return-object p1
.end method

.method public length()I
    .registers 3

    .line 47
    iget v0, p0, Lorg/antlr/v4/runtime/misc/Interval;->b:I

    iget v1, p0, Lorg/antlr/v4/runtime/misc/Interval;->a:I

    if-ge v0, v1, :cond_8

    const/4 v0, 0x0

    return v0

    :cond_8
    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public properlyContains(Lorg/antlr/v4/runtime/misc/Interval;)Z
    .registers 4

    .line 102
    iget v0, p1, Lorg/antlr/v4/runtime/misc/Interval;->a:I

    iget v1, p0, Lorg/antlr/v4/runtime/misc/Interval;->a:I

    if-lt v0, v1, :cond_e

    iget p1, p1, Lorg/antlr/v4/runtime/misc/Interval;->b:I

    iget v0, p0, Lorg/antlr/v4/runtime/misc/Interval;->b:I

    if-gt p1, v0, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1
.end method

.method public startsAfter(Lorg/antlr/v4/runtime/misc/Interval;)Z
    .registers 3

    .line 79
    iget v0, p0, Lorg/antlr/v4/runtime/misc/Interval;->a:I

    iget p1, p1, Lorg/antlr/v4/runtime/misc/Interval;->a:I

    if-le v0, p1, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    return p1
.end method

.method public startsAfterDisjoint(Lorg/antlr/v4/runtime/misc/Interval;)Z
    .registers 3

    .line 83
    iget v0, p0, Lorg/antlr/v4/runtime/misc/Interval;->a:I

    iget p1, p1, Lorg/antlr/v4/runtime/misc/Interval;->b:I

    if-le v0, p1, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    return p1
.end method

.method public startsAfterNonDisjoint(Lorg/antlr/v4/runtime/misc/Interval;)Z
    .registers 4

    .line 88
    iget v0, p0, Lorg/antlr/v4/runtime/misc/Interval;->a:I

    iget v1, p1, Lorg/antlr/v4/runtime/misc/Interval;->a:I

    if-le v0, v1, :cond_c

    iget p1, p1, Lorg/antlr/v4/runtime/misc/Interval;->b:I

    if-gt v0, p1, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    return p1
.end method

.method public startsBeforeDisjoint(Lorg/antlr/v4/runtime/misc/Interval;)Z
    .registers 3

    .line 70
    iget v0, p0, Lorg/antlr/v4/runtime/misc/Interval;->a:I

    iget p1, p1, Lorg/antlr/v4/runtime/misc/Interval;->a:I

    if-ge v0, p1, :cond_c

    iget v0, p0, Lorg/antlr/v4/runtime/misc/Interval;->b:I

    if-ge v0, p1, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    return p1
.end method

.method public startsBeforeNonDisjoint(Lorg/antlr/v4/runtime/misc/Interval;)Z
    .registers 3

    .line 75
    iget v0, p0, Lorg/antlr/v4/runtime/misc/Interval;->a:I

    iget p1, p1, Lorg/antlr/v4/runtime/misc/Interval;->a:I

    if-gt v0, p1, :cond_c

    iget v0, p0, Lorg/antlr/v4/runtime/misc/Interval;->b:I

    if-lt v0, p1, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    return p1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lorg/antlr/v4/runtime/misc/Interval;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ".."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/antlr/v4/runtime/misc/Interval;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public union(Lorg/antlr/v4/runtime/misc/Interval;)Lorg/antlr/v4/runtime/misc/Interval;
    .registers 4

    .line 107
    iget v0, p0, Lorg/antlr/v4/runtime/misc/Interval;->a:I

    iget v1, p1, Lorg/antlr/v4/runtime/misc/Interval;->a:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p0, Lorg/antlr/v4/runtime/misc/Interval;->b:I

    iget p1, p1, Lorg/antlr/v4/runtime/misc/Interval;->b:I

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {v0, p1}, Lorg/antlr/v4/runtime/misc/Interval;->of(II)Lorg/antlr/v4/runtime/misc/Interval;

    move-result-object p1

    return-object p1
.end method
