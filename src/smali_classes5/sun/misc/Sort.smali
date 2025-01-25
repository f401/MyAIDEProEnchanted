.class public Lsun/misc/Sort;
.super Ljava/lang/Object;
.source "Sort.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static quicksort([Ljava/lang/Object;IILsun/misc/Compare;)V
    .registers 8

    .line 56
    if-lt p1, p2, :cond_3

    .line 69
    :goto_2
    return-void

    .line 59
    :cond_3
    add-int v0, p1, p2

    div-int/lit8 v0, v0, 0x2

    invoke-static {p0, p1, v0}, Lsun/misc/Sort;->swap([Ljava/lang/Object;II)V

    .line 61
    add-int/lit8 v1, p1, 0x1

    move v0, p1

    :goto_d
    if-gt v1, p2, :cond_21

    .line 62
    aget-object v2, p0, v1

    aget-object v3, p0, p1

    invoke-interface {p3, v2, v3}, Lsun/misc/Compare;->doCompare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_1e

    .line 63
    add-int/lit8 v0, v0, 0x1

    invoke-static {p0, v0, v1}, Lsun/misc/Sort;->swap([Ljava/lang/Object;II)V

    .line 61
    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 66
    :cond_21
    invoke-static {p0, p1, v0}, Lsun/misc/Sort;->swap([Ljava/lang/Object;II)V

    .line 67
    add-int/lit8 v1, v0, -0x1

    invoke-static {p0, p1, v1, p3}, Lsun/misc/Sort;->quicksort([Ljava/lang/Object;IILsun/misc/Compare;)V

    .line 68
    add-int/lit8 v0, v0, 0x1

    invoke-static {p0, v0, p2, p3}, Lsun/misc/Sort;->quicksort([Ljava/lang/Object;IILsun/misc/Compare;)V

    goto :goto_2
.end method

.method public static quicksort([Ljava/lang/Object;Lsun/misc/Compare;)V
    .registers 4

    .line 72
    const/4 v0, 0x0

    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    invoke-static {p0, v0, v1, p1}, Lsun/misc/Sort;->quicksort([Ljava/lang/Object;IILsun/misc/Compare;)V

    .line 73
    return-void
.end method

.method private static swap([Ljava/lang/Object;II)V
    .registers 5

    .line 40
    aget-object v0, p0, p1

    .line 41
    aget-object v1, p0, p2

    aput-object v1, p0, p1

    .line 42
    aput-object v0, p0, p2

    .line 43
    return-void
.end method
