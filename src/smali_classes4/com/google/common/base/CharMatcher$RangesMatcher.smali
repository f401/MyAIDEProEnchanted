.class Lcom/google/common/base/CharMatcher$RangesMatcher;
.super Lcom/google/common/base/CharMatcher;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RangesMatcher"
.end annotation


# instance fields
.field private final description:Ljava/lang/String;

.field private final rangeEnds:[C

.field private final rangeStarts:[C


# direct methods
.method constructor <init>(Ljava/lang/String;[C[C)V
    .registers 9

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1295
    invoke-direct {p0}, Lcom/google/common/base/CharMatcher;-><init>()V

    .line 1296
    iput-object p1, p0, Lcom/google/common/base/CharMatcher$RangesMatcher;->description:Ljava/lang/String;

    .line 1297
    iput-object p2, p0, Lcom/google/common/base/CharMatcher$RangesMatcher;->rangeStarts:[C

    .line 1298
    iput-object p3, p0, Lcom/google/common/base/CharMatcher$RangesMatcher;->rangeEnds:[C

    .line 1299
    array-length v0, p2

    array-length v3, p3

    if-ne v0, v3, :cond_35

    move v0, v1

    :goto_10
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    move v0, v2

    .line 1300
    :goto_14
    array-length v3, p2

    if-ge v0, v3, :cond_3b

    .line 1301
    aget-char v3, p2, v0

    aget-char v4, p3, v0

    if-gt v3, v4, :cond_37

    move v3, v1

    :goto_1e
    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 1302
    add-int/lit8 v3, v0, 0x1

    array-length v4, p2

    if-ge v3, v4, :cond_32

    .line 1303
    aget-char v3, p3, v0

    add-int/lit8 v4, v0, 0x1

    aget-char v4, p2, v4

    if-ge v3, v4, :cond_39

    move v3, v1

    :goto_2f
    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 1300
    :cond_32
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    :cond_35
    move v0, v2

    .line 1299
    goto :goto_10

    :cond_37
    move v3, v2

    .line 1301
    goto :goto_1e

    :cond_39
    move v3, v2

    .line 1303
    goto :goto_2f

    .line 1306
    :cond_3b
    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1289
    check-cast p1, Ljava/lang/Character;

    invoke-super {p0, p1}, Lcom/google/common/base/CharMatcher;->apply(Ljava/lang/Character;)Z

    move-result v0

    return v0
.end method

.method public matches(C)Z
    .registers 5

    const/4 v0, 0x1

    .line 1310
    iget-object v1, p0, Lcom/google/common/base/CharMatcher$RangesMatcher;->rangeStarts:[C

    invoke-static {v1, p1}, Ljava/util/Arrays;->binarySearch([CC)I

    move-result v1

    .line 1311
    if-ltz v1, :cond_a

    .line 1315
    :cond_9
    :goto_9
    return v0

    .line 1314
    :cond_a
    xor-int/lit8 v1, v1, -0x1

    add-int/lit8 v1, v1, -0x1

    .line 1315
    if-ltz v1, :cond_16

    iget-object v2, p0, Lcom/google/common/base/CharMatcher$RangesMatcher;->rangeEnds:[C

    aget-char v1, v2, v1

    if-le p1, v1, :cond_9

    :cond_16
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 1321
    iget-object v0, p0, Lcom/google/common/base/CharMatcher$RangesMatcher;->description:Ljava/lang/String;

    return-object v0
.end method
