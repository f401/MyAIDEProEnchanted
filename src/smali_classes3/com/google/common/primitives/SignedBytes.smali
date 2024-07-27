.class public final Lcom/google/common/primitives/SignedBytes;
.super Ljava/lang/Object;
.source "SignedBytes.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/primitives/SignedBytes$LexicographicalComparator;
    }
.end annotation


# static fields
.field public static final MAX_POWER_OF_TWO:B = 0x40t


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkedCast(J)B
    .registers 6

    .line 58
    long-to-int v0, p0

    int-to-byte v1, v0

    .line 59
    int-to-long v2, v1

    cmp-long v0, v2, p0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v2, "Out of range: %s"

    invoke-static {v0, v2, p0, p1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;J)V

    .line 60
    return v1

    .line 59
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static compare(BB)I
    .registers 3

    .line 94
    sub-int v0, p0, p1

    return v0
.end method

.method public static varargs join(Ljava/lang/String;[B)Ljava/lang/String;
    .registers 5

    .line 144
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    array-length v0, p1

    if-nez v0, :cond_0

    .line 146
    const-string v0, ""

    .line 155
    :goto_0
    return-object v0

    .line 150
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v0, p1

    mul-int/lit8 v0, v0, 0x5

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 151
    const/4 v0, 0x0

    aget-byte v0, p1, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 152
    const/4 v0, 0x1

    :goto_1
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 153
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 152
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 155
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static lexicographicalComparator()Ljava/util/Comparator;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<[B>;"
        }
    .end annotation

    .line 173
    sget-object v0, Lcom/google/common/primitives/SignedBytes$LexicographicalComparator;->INSTANCE:Lcom/google/common/primitives/SignedBytes$LexicographicalComparator;

    return-object v0
.end method

.method public static varargs max([B)B
    .registers 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 125
    array-length v0, p0

    if-lez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 126
    aget-byte v0, p0, v2

    .line 127
    :goto_1
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 128
    aget-byte v2, p0, v1

    if-le v2, v0, :cond_0

    .line 129
    aget-byte v0, p0, v1

    .line 127
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move v0, v2

    .line 125
    goto :goto_0

    .line 132
    :cond_2
    return v0
.end method

.method public static varargs min([B)B
    .registers 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 106
    array-length v0, p0

    if-lez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 107
    aget-byte v0, p0, v2

    .line 108
    :goto_1
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 109
    aget-byte v2, p0, v1

    if-ge v2, v0, :cond_0

    .line 110
    aget-byte v0, p0, v1

    .line 108
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move v0, v2

    .line 106
    goto :goto_0

    .line 113
    :cond_2
    return v0
.end method

.method public static saturatedCast(J)B
    .registers 4

    .line 71
    const-wide/16 v0, 0x7f

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    .line 72
    const/16 v0, 0x7f

    .line 77
    :goto_0
    return v0

    .line 74
    :cond_0
    const-wide/16 v0, -0x80

    cmp-long v0, p0, v0

    if-gez v0, :cond_1

    .line 75
    const/16 v0, -0x80

    goto :goto_0

    .line 77
    :cond_1
    long-to-int v0, p0

    int-to-byte v0, v0

    goto :goto_0
.end method

.method public static sortDescending([B)V
    .registers 3

    .line 203
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/google/common/primitives/SignedBytes;->sortDescending([BII)V

    .line 205
    return-void
.end method

.method public static sortDescending([BII)V
    .registers 4

    .line 214
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    array-length v0, p0

    invoke-static {p1, p2, v0}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    .line 216
    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->sort([BII)V

    .line 217
    invoke-static {p0, p1, p2}, Lcom/google/common/primitives/Bytes;->reverse([BII)V

    .line 218
    return-void
.end method
