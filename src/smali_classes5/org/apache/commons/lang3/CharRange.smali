.class final Lorg/apache/commons/lang3/CharRange;
.super Ljava/lang/Object;
.source "CharRange.java"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/lang3/CharRange$CharacterIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Ljava/lang/Character;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final EMPTY_ARRAY:[Lorg/apache/commons/lang3/CharRange;

.field private static final serialVersionUID:J = 0x72c597c5037807eeL


# instance fields
.field private final end:C

.field private transient iToString:Ljava/lang/String;

.field private final negated:Z

.field private final start:C


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 53
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/apache/commons/lang3/CharRange;

    sput-object v0, Lorg/apache/commons/lang3/CharRange;->EMPTY_ARRAY:[Lorg/apache/commons/lang3/CharRange;

    return-void
.end method

.method private constructor <init>(CCZ)V
    .registers 6

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    if-le p1, p2, :cond_e

    move v0, p2

    move v1, p1

    .line 76
    :goto_7
    iput-char v0, p0, Lorg/apache/commons/lang3/CharRange;->start:C

    .line 77
    iput-char v1, p0, Lorg/apache/commons/lang3/CharRange;->end:C

    .line 78
    iput-boolean p3, p0, Lorg/apache/commons/lang3/CharRange;->negated:Z

    .line 79
    return-void

    :cond_e
    move v0, p1

    move v1, p2

    goto :goto_7
.end method

.method static synthetic access$100(Lorg/apache/commons/lang3/CharRange;)Z
    .registers 2

    .line 33
    iget-boolean v0, p0, Lorg/apache/commons/lang3/CharRange;->negated:Z

    return v0
.end method

.method static synthetic access$200(Lorg/apache/commons/lang3/CharRange;)C
    .registers 2

    .line 33
    iget-char v0, p0, Lorg/apache/commons/lang3/CharRange;->start:C

    return v0
.end method

.method static synthetic access$300(Lorg/apache/commons/lang3/CharRange;)C
    .registers 2

    .line 33
    iget-char v0, p0, Lorg/apache/commons/lang3/CharRange;->end:C

    return v0
.end method

.method public static is(C)Lorg/apache/commons/lang3/CharRange;
    .registers 3

    .line 89
    new-instance v0, Lorg/apache/commons/lang3/CharRange;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p0, v1}, Lorg/apache/commons/lang3/CharRange;-><init>(CCZ)V

    return-object v0
.end method

.method public static isIn(CC)Lorg/apache/commons/lang3/CharRange;
    .registers 4

    .line 118
    new-instance v0, Lorg/apache/commons/lang3/CharRange;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lorg/apache/commons/lang3/CharRange;-><init>(CCZ)V

    return-object v0
.end method

.method public static isNot(C)Lorg/apache/commons/lang3/CharRange;
    .registers 3

    .line 103
    new-instance v0, Lorg/apache/commons/lang3/CharRange;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p0, v1}, Lorg/apache/commons/lang3/CharRange;-><init>(CCZ)V

    return-object v0
.end method

.method public static isNotIn(CC)Lorg/apache/commons/lang3/CharRange;
    .registers 4

    .line 136
    new-instance v0, Lorg/apache/commons/lang3/CharRange;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lorg/apache/commons/lang3/CharRange;-><init>(CCZ)V

    return-object v0
.end method


# virtual methods
.method public contains(C)Z
    .registers 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 180
    iget-char v0, p0, Lorg/apache/commons/lang3/CharRange;->start:C

    if-lt p1, v0, :cond_10

    iget-char v0, p0, Lorg/apache/commons/lang3/CharRange;->end:C

    if-gt p1, v0, :cond_10

    move v0, v1

    :goto_b
    iget-boolean v3, p0, Lorg/apache/commons/lang3/CharRange;->negated:Z

    if-eq v0, v3, :cond_12

    :goto_f
    return v1

    :cond_10
    move v0, v2

    goto :goto_b

    :cond_12
    move v1, v2

    goto :goto_f
.end method

.method public contains(Lorg/apache/commons/lang3/CharRange;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 192
    const-string v2, "range"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {p1, v2, v3}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    iget-boolean v2, p0, Lorg/apache/commons/lang3/CharRange;->negated:Z

    if-eqz v2, :cond_2d

    .line 194
    iget-boolean v2, p1, Lorg/apache/commons/lang3/CharRange;->negated:Z

    if-eqz v2, :cond_1f

    .line 195
    iget-char v2, p0, Lorg/apache/commons/lang3/CharRange;->start:C

    iget-char v3, p1, Lorg/apache/commons/lang3/CharRange;->start:C

    if-lt v2, v3, :cond_4c

    iget-char v2, p0, Lorg/apache/commons/lang3/CharRange;->end:C

    iget-char v3, p1, Lorg/apache/commons/lang3/CharRange;->end:C

    if-gt v2, v3, :cond_4c

    :goto_1d
    move v1, v0

    .line 202
    :cond_1e
    :goto_1e
    return v1

    .line 197
    :cond_1f
    iget-char v2, p1, Lorg/apache/commons/lang3/CharRange;->end:C

    iget-char v3, p0, Lorg/apache/commons/lang3/CharRange;->start:C

    if-lt v2, v3, :cond_2b

    iget-char v2, p1, Lorg/apache/commons/lang3/CharRange;->start:C

    iget-char v3, p0, Lorg/apache/commons/lang3/CharRange;->end:C

    if-le v2, v3, :cond_1e

    :cond_2b
    move v1, v0

    goto :goto_1e

    .line 199
    :cond_2d
    iget-boolean v2, p1, Lorg/apache/commons/lang3/CharRange;->negated:Z

    if-eqz v2, :cond_3e

    .line 200
    iget-char v2, p0, Lorg/apache/commons/lang3/CharRange;->start:C

    if-nez v2, :cond_1e

    iget-char v2, p0, Lorg/apache/commons/lang3/CharRange;->end:C

    const v3, 0xffff

    if-ne v2, v3, :cond_1e

    move v1, v0

    goto :goto_1e

    .line 202
    :cond_3e
    iget-char v2, p0, Lorg/apache/commons/lang3/CharRange;->start:C

    iget-char v3, p1, Lorg/apache/commons/lang3/CharRange;->start:C

    if-gt v2, v3, :cond_1e

    iget-char v2, p0, Lorg/apache/commons/lang3/CharRange;->end:C

    iget-char v3, p1, Lorg/apache/commons/lang3/CharRange;->end:C

    if-lt v2, v3, :cond_1e

    move v1, v0

    goto :goto_1e

    :cond_4c
    move v0, v1

    goto :goto_1d
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 216
    if-ne p1, p0, :cond_5

    .line 223
    :cond_4
    :goto_4
    return v0

    .line 219
    :cond_5
    instance-of v2, p1, Lorg/apache/commons/lang3/CharRange;

    if-nez v2, :cond_b

    move v0, v1

    .line 220
    goto :goto_4

    .line 222
    :cond_b
    check-cast p1, Lorg/apache/commons/lang3/CharRange;

    .line 223
    iget-char v2, p0, Lorg/apache/commons/lang3/CharRange;->start:C

    iget-char v3, p1, Lorg/apache/commons/lang3/CharRange;->start:C

    if-ne v2, v3, :cond_1f

    iget-char v2, p0, Lorg/apache/commons/lang3/CharRange;->end:C

    iget-char v3, p1, Lorg/apache/commons/lang3/CharRange;->end:C

    if-ne v2, v3, :cond_1f

    iget-boolean v2, p0, Lorg/apache/commons/lang3/CharRange;->negated:Z

    iget-boolean v3, p1, Lorg/apache/commons/lang3/CharRange;->negated:Z

    if-eq v2, v3, :cond_4

    :cond_1f
    move v0, v1

    goto :goto_4
.end method

.method public getEnd()C
    .registers 2

    .line 156
    iget-char v0, p0, Lorg/apache/commons/lang3/CharRange;->end:C

    return v0
.end method

.method public getStart()C
    .registers 2

    .line 147
    iget-char v0, p0, Lorg/apache/commons/lang3/CharRange;->start:C

    return v0
.end method

.method public hashCode()I
    .registers 3

    .line 233
    iget-char v0, p0, Lorg/apache/commons/lang3/CharRange;->start:C

    add-int/lit8 v0, v0, 0x53

    iget-char v1, p0, Lorg/apache/commons/lang3/CharRange;->end:C

    mul-int/lit8 v1, v1, 0x7

    add-int/2addr v0, v1

    iget-boolean v1, p0, Lorg/apache/commons/lang3/CharRange;->negated:Z

    add-int/2addr v0, v1

    return v0
.end method

.method public isNegated()Z
    .registers 2

    .line 168
    iget-boolean v0, p0, Lorg/apache/commons/lang3/CharRange;->negated:Z

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation

    .line 269
    new-instance v0, Lorg/apache/commons/lang3/CharRange$CharacterIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/lang3/CharRange$CharacterIterator;-><init>(Lorg/apache/commons/lang3/CharRange;Lorg/apache/commons/lang3/CharRange$1;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 243
    iget-object v0, p0, Lorg/apache/commons/lang3/CharRange;->iToString:Ljava/lang/String;

    if-nez v0, :cond_30

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 245
    invoke-virtual {p0}, Lorg/apache/commons/lang3/CharRange;->isNegated()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 246
    const/16 v1, 0x5e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 248
    :cond_15
    iget-char v1, p0, Lorg/apache/commons/lang3/CharRange;->start:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 249
    iget-char v1, p0, Lorg/apache/commons/lang3/CharRange;->start:C

    iget-char v2, p0, Lorg/apache/commons/lang3/CharRange;->end:C

    if-eq v1, v2, :cond_2a

    .line 250
    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 251
    iget-char v1, p0, Lorg/apache/commons/lang3/CharRange;->end:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 253
    :cond_2a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/lang3/CharRange;->iToString:Ljava/lang/String;

    .line 255
    :cond_30
    iget-object v0, p0, Lorg/apache/commons/lang3/CharRange;->iToString:Ljava/lang/String;

    return-object v0
.end method
