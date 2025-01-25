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
        "Ljava/util/Comparator<",
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
    .registers 3

    check-cast p1, Labcd/TC;

    check-cast p2, Labcd/TC;

    invoke-virtual {p0, p1, p2}, Labcd/SC;->j6(Labcd/TC;Labcd/TC;)I

    move-result p1

    return p1
.end method

.method public j6(Labcd/TC;Labcd/TC;)I
    .registers 9

    invoke-static {p1}, Labcd/TC;->j6(Labcd/TC;)[B

    move-result-object p1

    invoke-static {p2}, Labcd/TC;->j6(Labcd/TC;)[B

    move-result-object p2

    array-length v0, p1

    array-length v1, p2

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_c
    if-ge v3, v0, :cond_20

    if-lt v3, v1, :cond_11

    goto :goto_20

    :cond_11
    aget-byte v4, p1, v3

    and-int/lit16 v4, v4, 0xff

    aget-byte v5, p2, v3

    and-int/lit16 v5, v5, 0xff

    sub-int/2addr v4, v5

    if-eqz v4, :cond_1d

    return v4

    :cond_1d
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_20
    :goto_20
    if-ne v0, v1, :cond_23

    return v2

    :cond_23
    if-ge v0, v1, :cond_2c

    aget-byte p1, p2, v3

    and-int/lit16 p1, p1, 0xff

    rsub-int/lit8 p1, p1, 0x2f

    return p1

    :cond_2c
    aget-byte p1, p1, v3

    and-int/lit16 p1, p1, 0xff

    add-int/lit8 p1, p1, -0x2f

    return p1
.end method
