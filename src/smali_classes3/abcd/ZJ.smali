.class Labcd/ZJ;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/_J;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Labcd/_J$a;",
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

    check-cast p1, Labcd/_J$a;

    check-cast p2, Labcd/_J$a;

    invoke-virtual {p0, p1, p2}, Labcd/ZJ;->j6(Labcd/_J$a;Labcd/_J$a;)I

    move-result p1

    return p1
.end method

.method public j6(Labcd/_J$a;Labcd/_J$a;)I
    .registers 10

    iget-object v0, p1, Labcd/_J$a;->j6:[B

    iget-object v1, p2, Labcd/_J$a;->j6:[B

    iget v2, p1, Labcd/_J$a;->DW:I

    iget v3, p2, Labcd/_J$a;->DW:I

    const/4 v4, 0x0

    :goto_9
    if-ge v4, v2, :cond_1d

    if-lt v4, v3, :cond_e

    goto :goto_1d

    :cond_e
    aget-byte v5, v0, v4

    and-int/lit16 v5, v5, 0xff

    aget-byte v6, v1, v4

    and-int/lit16 v6, v6, 0xff

    sub-int/2addr v5, v6

    if-eqz v5, :cond_1a

    return v5

    :cond_1a
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    :cond_1d
    :goto_1d
    if-ge v4, v2, :cond_28

    aget-byte p1, v0, v4

    and-int/lit16 p1, p1, 0xff

    :cond_23
    invoke-static {p2}, Labcd/_J;->DW(Labcd/_J$a;)I

    move-result p2

    goto :goto_32

    :cond_28
    invoke-static {p1}, Labcd/_J;->DW(Labcd/_J$a;)I

    move-result p1

    if-ge v4, v3, :cond_23

    aget-byte p2, v1, v4

    and-int/lit16 p2, p2, 0xff

    :goto_32
    sub-int/2addr p1, p2

    return p1
.end method
