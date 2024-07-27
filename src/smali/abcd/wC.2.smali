.class Labcd/wC;
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
    .registers 8

    invoke-static {p1, p2, p3}, Labcd/HK;->j6([BII)I

    move-result v1

    const/16 v0, 0x1505

    :goto_0
    if-lt v1, p3, :cond_0

    return v0

    :cond_0
    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v3, v0, 0x5

    add-int/2addr v0, v3

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public bridge synthetic j6(Labcd/CC;ILabcd/CC;I)Z
    .registers 6

    check-cast p1, Labcd/tC;

    check-cast p3, Labcd/tC;

    invoke-virtual {p0, p1, p2, p3, p4}, Labcd/wC;->j6(Labcd/tC;ILabcd/tC;I)Z

    move-result v0

    return v0
.end method

.method public j6(Labcd/tC;ILabcd/tC;I)Z
    .registers 12

    const/4 v0, 0x0

    add-int/lit8 v1, p2, 0x1

    add-int/lit8 v2, p4, 0x1

    iget-object v3, p1, Labcd/tC;->FH:Labcd/CK;

    invoke-virtual {v3, v1}, Labcd/CK;->DW(I)I

    move-result v3

    iget-object v4, p3, Labcd/tC;->FH:Labcd/CK;

    invoke-virtual {v4, v2}, Labcd/CK;->DW(I)I

    move-result v4

    iget-object v5, p1, Labcd/tC;->FH:Labcd/CK;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v5, v1}, Labcd/CK;->DW(I)I

    move-result v5

    iget-object v1, p3, Labcd/tC;->FH:Labcd/CK;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Labcd/CK;->DW(I)I

    move-result v6

    iget-object v1, p1, Labcd/tC;->DW:[B

    invoke-static {v1, v3, v5}, Labcd/HK;->j6([BII)I

    move-result v1

    iget-object v2, p3, Labcd/tC;->DW:[B

    invoke-static {v2, v4, v6}, Labcd/HK;->j6([BII)I

    move-result v2

    sub-int v3, v5, v1

    sub-int v4, v6, v2

    if-eq v3, v4, :cond_1

    :goto_0
    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    :cond_1
    if-lt v1, v5, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v3, p1, Labcd/tC;->DW:[B

    aget-byte v3, v3, v1

    iget-object v4, p3, Labcd/tC;->DW:[B

    aget-byte v4, v4, v2

    if-eq v3, v4, :cond_0

    goto :goto_0
.end method
