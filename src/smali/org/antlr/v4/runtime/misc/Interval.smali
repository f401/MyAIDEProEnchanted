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
    .locals 4

    const/4 v3, 0x0

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
    sput v3, Lorg/antlr/v4/runtime/misc/Interval;->creates:I

    .line 20
    sput v3, Lorg/antlr/v4/runtime/misc/Interval;->misses:I

    .line 21
    sput v3, Lorg/antlr/v4/runtime/misc/Interval;->hits:I

    .line 22
    sput v3, Lorg/antlr/v4/runtime/misc/Interval;->outOfRange:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/antlr/v4/runtime/misc/Interval;->a:I

    iput p2, p0, Lorg/antlr/v4/runtime/misc/Interval;->b:I

    return-void
.end method

.method public static of(II)Lorg/antlr/v4/runtime/misc/Interval;
    .locals 2

    if-ne p0, p1, :cond_0

    if-ltz p0, :cond_0

    const/16 v0, 0x3e8

    if-le p0, v0, :cond_1

    .line 35
    :cond_0
    new-instance v0, Lorg/antlr/v4/runtime/misc/Interval;

    invoke-direct {v0, p0, p1}, Lorg/antlr/v4/runtime/misc/Interval;-><init>(II)V

    .line 40
    :goto_0
    return-object v0

    .line 37
    :cond_1
    sget-object v0, Lorg/antlr/v4/runtime/misc/Interval;->cache:[Lorg/antlr/v4/runtime/misc/Interval;

    aget-object v1, v0, p0

    if-nez v1, :cond_2

    .line 38
    new-instance v1, Lorg/antlr/v4/runtime/misc/Interval;

    invoke-direct {v1, p0, p0}, Lorg/antlr/v4/runtime/misc/Interval;-><init>(II)V

    aput-object v1, v0, p0

    .line 40
    :cond_2
    sget-object v0, Lorg/antlr/v4/runtime/misc/Interval;->cache:[Lorg/antlr/v4/runtime/misc/Interval;

    aget-object v0, v0, p0

    goto :goto_0
.end method


# virtual methods
.method public adjacent(Lorg/antlr/v4/runtime/misc/Interval;)Z
    .locals 3

    .line 98
    iget v1, p0, Lorg/antlr/v4/runtime/misc/Interval;->a:I

    iget v2, p1, Lorg/antlr/v4/runtime/misc/Interval;->b:I

    const/4 v0, 0x1

    add-int/lit8 v2, v2, 0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lorg/antlr/v4/runtime/misc/Interval;->b:I

    iget v2, p1, Lorg/antlr/v4/runtime/misc/Interval;->a:I

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public differenceNotProperlyContained(Lorg/antlr/v4/runtime/misc/Interval;)Lorg/antlr/v4/runtime/misc/Interval;
    .locals 2

    .line 123
    invoke-virtual {p1, p0}, Lorg/antlr/v4/runtime/misc/Interval;->startsBeforeNonDisjoint(Lorg/antlr/v4/runtime/misc/Interval;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    iget v0, p0, Lorg/antlr/v4/runtime/misc/Interval;->a:I

    iget v1, p1, Lorg/antlr/v4/runtime/misc/Interval;->b:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, p0, Lorg/antlr/v4/runtime/misc/Interval;->b:I

    invoke-static {v0, v1}, Lorg/antlr/v4/runtime/misc/Interval;->of(II)Lorg/antlr/v4/runtime/misc/Interval;

    move-result-object v0

    .line 130
    :goto_0
    return-object v0

    .line 129
    :cond_0
    invoke-virtual {p1, p0}, Lorg/antlr/v4/runtime/misc/Interval;->startsAfterNonDisjoint(Lorg/antlr/v4/runtime/misc/Interval;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 130
    iget v0, p0, Lorg/antlr/v4/runtime/misc/Interval;->a:I

    iget v1, p1, Lorg/antlr/v4/runtime/misc/Interval;->a:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lorg/antlr/v4/runtime/misc/Interval;->of(II)Lorg/antlr/v4/runtime/misc/Interval;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public disjoint(Lorg/antlr/v4/runtime/misc/Interval;)Z
    .locals 1

    .line 93
    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/misc/Interval;->startsBeforeDisjoint(Lorg/antlr/v4/runtime/misc/Interval;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/antlr/v4/runtime/misc/Interval;->startsAfterDisjoint(Lorg/antlr/v4/runtime/misc/Interval;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eqz p1, :cond_0

    .line 53
    instance-of v0, p1, Lorg/antlr/v4/runtime/misc/Interval;

    if-nez v0, :cond_1

    .line 57
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 56
    :cond_1
    check-cast p1, Lorg/antlr/v4/runtime/misc/Interval;

    .line 57
    iget v0, p0, Lorg/antlr/v4/runtime/misc/Interval;->a:I

    iget v1, p1, Lorg/antlr/v4/runtime/misc/Interval;->a:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/antlr/v4/runtime/misc/Interval;->b:I

    iget v1, p1, Lorg/antlr/v4/runtime/misc/Interval;->b:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

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
    .locals 3

    .line 112
    iget v0, p0, Lorg/antlr/v4/runtime/misc/Interval;->a:I

    iget v1, p1, Lorg/antlr/v4/runtime/misc/Interval;->a:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, p0, Lorg/antlr/v4/runtime/misc/Interval;->b:I

    iget v2, p1, Lorg/antlr/v4/runtime/misc/Interval;->b:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Lorg/antlr/v4/runtime/misc/Interval;->of(II)Lorg/antlr/v4/runtime/misc/Interval;

    move-result-object v0

    return-object v0
.end method

.method public length()I
    .locals 2

    .line 47
    iget v0, p0, Lorg/antlr/v4/runtime/misc/Interval;->b:I

    iget v1, p0, Lorg/antlr/v4/runtime/misc/Interval;->a:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public properlyContains(Lorg/antlr/v4/runtime/misc/Interval;)Z
    .locals 2

    .line 102
    iget v0, p1, Lorg/antlr/v4/runtime/misc/Interval;->a:I

    iget v1, p0, Lorg/antlr/v4/runtime/misc/Interval;->a:I

    if-lt v0, v1, :cond_0

    iget v0, p1, Lorg/antlr/v4/runtime/misc/Interval;->b:I

    iget v1, p0, Lorg/antlr/v4/runtime/misc/Interval;->b:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startsAfter(Lorg/antlr/v4/runtime/misc/Interval;)Z
    .locals 2

    .line 79
    iget v0, p0, Lorg/antlr/v4/runtime/misc/Interval;->a:I

    iget v1, p1, Lorg/antlr/v4/runtime/misc/Interval;->a:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startsAfterDisjoint(Lorg/antlr/v4/runtime/misc/Interval;)Z
    .locals 2

    .line 83
    iget v0, p0, Lorg/antlr/v4/runtime/misc/Interval;->a:I

    iget v1, p1, Lorg/antlr/v4/runtime/misc/Interval;->b:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startsAfterNonDisjoint(Lorg/antlr/v4/runtime/misc/Interval;)Z
    .locals 2

    .line 88
    iget v0, p0, Lorg/antlr/v4/runtime/misc/Interval;->a:I

    iget v1, p1, Lorg/antlr/v4/runtime/misc/Interval;->a:I

    if-le v0, v1, :cond_0

    iget v1, p1, Lorg/antlr/v4/runtime/misc/Interval;->b:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startsBeforeDisjoint(Lorg/antlr/v4/runtime/misc/Interval;)Z
    .locals 2

    .line 70
    iget v0, p0, Lorg/antlr/v4/runtime/misc/Interval;->a:I

    iget v1, p1, Lorg/antlr/v4/runtime/misc/Interval;->a:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Lorg/antlr/v4/runtime/misc/Interval;->b:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startsBeforeNonDisjoint(Lorg/antlr/v4/runtime/misc/Interval;)Z
    .locals 2

    .line 75
    iget v0, p0, Lorg/antlr/v4/runtime/misc/Interval;->a:I

    iget v1, p1, Lorg/antlr/v4/runtime/misc/Interval;->a:I

    if-gt v0, v1, :cond_0

    iget v0, p0, Lorg/antlr/v4/runtime/misc/Interval;->b:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

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
    .locals 3

    .line 107
    iget v0, p0, Lorg/antlr/v4/runtime/misc/Interval;->a:I

    iget v1, p1, Lorg/antlr/v4/runtime/misc/Interval;->a:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p0, Lorg/antlr/v4/runtime/misc/Interval;->b:I

    iget v2, p1, Lorg/antlr/v4/runtime/misc/Interval;->b:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Lorg/antlr/v4/runtime/misc/Interval;->of(II)Lorg/antlr/v4/runtime/misc/Interval;

    move-result-object v0

    return-object v0
.end method
