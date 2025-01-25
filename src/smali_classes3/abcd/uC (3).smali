.class Labcd/uC;
.super Labcd/zC;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/zC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Labcd/zC;-><init>()V

    return-void
.end method


# virtual methods
.method protected j6([BII)I
    .registers 7

    const/16 v0, 0x1505

    :goto_2
    if-lt p2, p3, :cond_5

    return v0

    :cond_5
    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v2, v0, 0x5

    add-int/2addr v2, v0

    add-int v0, v1, v2

    add-int/lit8 p2, p2, 0x1

    goto :goto_2
.end method

.method public bridge synthetic j6(Labcd/CC;ILabcd/CC;I)Z
    .registers 5

    check-cast p1, Labcd/tC;

    check-cast p3, Labcd/tC;

    invoke-virtual {p0, p1, p2, p3, p4}, Labcd/uC;->j6(Labcd/tC;ILabcd/tC;I)Z

    move-result p1

    return p1
.end method

.method public j6(Labcd/tC;ILabcd/tC;I)Z
    .registers 10

    const/4 v0, 0x1

    add-int/2addr p2, v0

    add-int/2addr p4, v0

    iget-object v1, p1, Labcd/tC;->FH:Labcd/CK;

    invoke-virtual {v1, p2}, Labcd/CK;->DW(I)I

    move-result v1

    iget-object v2, p3, Labcd/tC;->FH:Labcd/CK;

    invoke-virtual {v2, p4}, Labcd/CK;->DW(I)I

    move-result v2

    iget-object v3, p1, Labcd/tC;->FH:Labcd/CK;

    add-int/2addr p2, v0

    invoke-virtual {v3, p2}, Labcd/CK;->DW(I)I

    move-result p2

    sub-int v3, p2, v1

    iget-object v4, p3, Labcd/tC;->FH:Labcd/CK;

    add-int/2addr p4, v0

    invoke-virtual {v4, p4}, Labcd/CK;->DW(I)I

    move-result p4

    sub-int/2addr p4, v2

    const/4 v4, 0x0

    if-eq v3, p4, :cond_24

    return v4

    :cond_24
    :goto_24
    if-lt v1, p2, :cond_27

    return v0

    :cond_27
    iget-object p4, p1, Labcd/tC;->DW:[B

    aget-byte p4, p4, v1

    iget-object v3, p3, Labcd/tC;->DW:[B

    aget-byte v3, v3, v2

    if-eq p4, v3, :cond_32

    return v4

    :cond_32
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_24
.end method
