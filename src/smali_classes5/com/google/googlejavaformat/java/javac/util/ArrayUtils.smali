.class public Lcom/google/googlejavaformat/java/javac/util/ArrayUtils;
.super Ljava/lang/Object;
.source "ArrayUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static calculateNewLength(II)I
    .registers 3

    .line 38
    :goto_0
    add-int/lit8 v0, p1, 0x1

    if-ge p0, v0, :cond_7

    .line 39
    mul-int/lit8 p0, p0, 0x2

    goto :goto_0

    .line 40
    :cond_7
    return p0
.end method

.method public static ensureCapacity([BI)[B
    .registers 5

    const/4 v2, 0x0

    .line 56
    array-length v0, p0

    if-ge p1, v0, :cond_5

    .line 62
    :goto_4
    return-object p0

    .line 59
    :cond_5
    array-length v0, p0

    invoke-static {v0, p1}, Lcom/google/googlejavaformat/java/javac/util/ArrayUtils;->calculateNewLength(II)I

    move-result v0

    .line 60
    new-array v0, v0, [B

    .line 61
    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p0, v0

    .line 62
    goto :goto_4
.end method

.method public static ensureCapacity([CI)[C
    .registers 5

    const/4 v2, 0x0

    .line 67
    array-length v0, p0

    if-ge p1, v0, :cond_5

    .line 73
    :goto_4
    return-object p0

    .line 70
    :cond_5
    array-length v0, p0

    invoke-static {v0, p1}, Lcom/google/googlejavaformat/java/javac/util/ArrayUtils;->calculateNewLength(II)I

    move-result v0

    .line 71
    new-array v0, v0, [C

    .line 72
    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p0, v0

    .line 73
    goto :goto_4
.end method

.method public static ensureCapacity([II)[I
    .registers 5

    const/4 v2, 0x0

    .line 78
    array-length v0, p0

    if-ge p1, v0, :cond_5

    .line 84
    :goto_4
    return-object p0

    .line 81
    :cond_5
    array-length v0, p0

    invoke-static {v0, p1}, Lcom/google/googlejavaformat/java/javac/util/ArrayUtils;->calculateNewLength(II)I

    move-result v0

    .line 82
    new-array v0, v0, [I

    .line 83
    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p0, v0

    .line 84
    goto :goto_4
.end method

.method public static ensureCapacity([Ljava/lang/Object;I)[Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I)[TT;"
        }
    .end annotation

    const/4 v2, 0x0

    .line 44
    array-length v0, p0

    if-ge p1, v0, :cond_5

    .line 51
    :goto_4
    return-object p0

    .line 47
    :cond_5
    array-length v0, p0

    invoke-static {v0, p1}, Lcom/google/googlejavaformat/java/javac/util/ArrayUtils;->calculateNewLength(II)I

    move-result v0

    .line 49
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 50
    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p0, v0

    .line 51
    goto :goto_4
.end method
