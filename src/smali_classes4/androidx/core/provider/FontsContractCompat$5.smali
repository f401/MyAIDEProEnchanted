.class final Landroidx/core/provider/FontsContractCompat$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/provider/FontsContractCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<[B>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    check-cast p1, [B

    check-cast p2, [B

    invoke-virtual {p0, p1, p2}, Landroidx/core/provider/FontsContractCompat$5;->compare([B[B)I

    move-result v0

    return v0
.end method

.method public compare([B[B)I
    .registers 7

    const/4 v1, 0x0

    array-length v0, p1

    array-length v2, p2

    if-eq v0, v2, :cond_9

    array-length v1, p1

    array-length v0, p2

    :goto_7
    sub-int/2addr v1, v0

    :cond_8
    return v1

    :cond_9
    move v0, v1

    :goto_a
    array-length v2, p1

    if-ge v0, v2, :cond_8

    aget-byte v2, p1, v0

    aget-byte v3, p2, v0

    if-eq v2, v3, :cond_18

    aget-byte v1, p1, v0

    aget-byte v0, p2, v0

    goto :goto_7

    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_a
.end method
