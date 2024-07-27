.class Labcd/SC;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/TC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Labcd/TC;",
        ">;"
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

    check-cast p1, Labcd/TC;

    check-cast p2, Labcd/TC;

    invoke-virtual {p0, p1, p2}, Labcd/SC;->j6(Labcd/TC;Labcd/TC;)I

    move-result v0

    return v0
.end method

.method public j6(Labcd/TC;Labcd/TC;)I
    .registers 11

    const/4 v1, 0x0

    invoke-static {p1}, Labcd/TC;->j6(Labcd/TC;)[B

    move-result-object v3

    invoke-static {p2}, Labcd/TC;->j6(Labcd/TC;)[B

    move-result-object v4

    array-length v5, v3

    array-length v6, v4

    move v2, v1

    :goto_0
    if-ge v2, v5, :cond_0

    if-lt v2, v6, :cond_2

    :cond_0
    if-ne v5, v6, :cond_3

    move v0, v1

    :cond_1
    :goto_1
    return v0

    :cond_2
    aget-byte v0, v3, v2

    and-int/lit16 v0, v0, 0xff

    aget-byte v7, v4, v2

    and-int/lit16 v7, v7, 0xff

    sub-int/2addr v0, v7

    if-nez v0, :cond_1

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_3
    if-ge v5, v6, :cond_4

    aget-byte v0, v4, v2

    and-int/lit16 v0, v0, 0xff

    rsub-int/lit8 v0, v0, 0x2f

    goto :goto_1

    :cond_4
    aget-byte v0, v3, v2

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v0, v0, -0x2f

    goto :goto_1
.end method
