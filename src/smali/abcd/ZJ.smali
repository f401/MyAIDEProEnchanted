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
        "Ljava/util/Comparator",
        "<",
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
    .registers 4

    check-cast p1, Labcd/_J$a;

    check-cast p2, Labcd/_J$a;

    invoke-virtual {p0, p1, p2}, Labcd/ZJ;->j6(Labcd/_J$a;Labcd/_J$a;)I

    move-result v0

    return v0
.end method

.method public j6(Labcd/_J$a;Labcd/_J$a;)I
    .registers 10

    iget-object v1, p1, Labcd/_J$a;->j6:[B

    iget-object v3, p2, Labcd/_J$a;->j6:[B

    iget v4, p1, Labcd/_J$a;->DW:I

    iget v5, p2, Labcd/_J$a;->DW:I

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v4, :cond_0

    if-lt v2, v5, :cond_2

    :cond_0
    if-ge v2, v4, :cond_3

    aget-byte v0, v1, v2

    and-int/lit16 v1, v0, 0xff

    invoke-static {p2}, Labcd/_J;->DW(Labcd/_J$a;)I

    move-result v0

    :goto_1
    sub-int v0, v1, v0

    :cond_1
    return v0

    :cond_2
    aget-byte v0, v1, v2

    and-int/lit16 v0, v0, 0xff

    aget-byte v6, v3, v2

    and-int/lit16 v6, v6, 0xff

    sub-int/2addr v0, v6

    if-nez v0, :cond_1

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_3
    if-ge v2, v5, :cond_4

    invoke-static {p1}, Labcd/_J;->DW(Labcd/_J$a;)I

    move-result v1

    aget-byte v0, v3, v2

    and-int/lit16 v0, v0, 0xff

    goto :goto_1

    :cond_4
    invoke-static {p1}, Labcd/_J;->DW(Labcd/_J$a;)I

    move-result v1

    invoke-static {p2}, Labcd/_J;->DW(Labcd/_J$a;)I

    move-result v0

    goto :goto_1
.end method
