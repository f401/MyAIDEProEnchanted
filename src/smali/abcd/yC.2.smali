.class Labcd/yC;
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
    .registers 9

    invoke-static {p1, p2, p3}, Labcd/HK;->DW([BII)I

    move-result v1

    const/16 v0, 0x1505

    :goto_0
    if-lt p2, v1, :cond_0

    return v0

    :cond_0
    aget-byte v2, p1, p2

    and-int/lit16 v3, v2, 0xff

    shl-int/lit8 v4, v0, 0x5

    add-int/2addr v0, v4

    add-int/2addr v0, v3

    invoke-static {v2}, Labcd/HK;->j6(B)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1, p2, v1}, Labcd/HK;->j6([BII)I

    move-result p2

    goto :goto_0

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method

.method public bridge synthetic j6(Labcd/CC;ILabcd/CC;I)Z
    .registers 6

    check-cast p1, Labcd/tC;

    check-cast p3, Labcd/tC;

    invoke-virtual {p0, p1, p2, p3, p4}, Labcd/yC;->j6(Labcd/tC;ILabcd/tC;I)Z

    move-result v0

    return v0
.end method

.method public j6(Labcd/tC;ILabcd/tC;I)Z
    .registers 12

    const/4 v1, 0x0

    add-int/lit8 v3, p2, 0x1

    add-int/lit8 v4, p4, 0x1

    iget-object v0, p1, Labcd/tC;->FH:Labcd/CK;

    invoke-virtual {v0, v3}, Labcd/CK;->DW(I)I

    move-result v0

    iget-object v2, p3, Labcd/tC;->FH:Labcd/CK;

    invoke-virtual {v2, v4}, Labcd/CK;->DW(I)I

    move-result v2

    iget-object v5, p1, Labcd/tC;->FH:Labcd/CK;

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v5, v3}, Labcd/CK;->DW(I)I

    move-result v3

    iget-object v5, p3, Labcd/tC;->FH:Labcd/CK;

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v5, v4}, Labcd/CK;->DW(I)I

    move-result v4

    iget-object v5, p1, Labcd/tC;->DW:[B

    invoke-static {v5, v0, v3}, Labcd/HK;->DW([BII)I

    move-result v3

    iget-object v5, p3, Labcd/tC;->DW:[B

    invoke-static {v5, v2, v4}, Labcd/HK;->DW([BII)I

    move-result v4

    :goto_0
    if-ge v0, v3, :cond_0

    if-lt v2, v4, :cond_1

    :cond_0
    if-ne v0, v3, :cond_5

    if-ne v2, v4, :cond_5

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    iget-object v5, p1, Labcd/tC;->DW:[B

    aget-byte v5, v5, v0

    iget-object v6, p3, Labcd/tC;->DW:[B

    aget-byte v6, v6, v2

    if-eq v5, v6, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    invoke-static {v5}, Labcd/HK;->j6(B)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p1, Labcd/tC;->DW:[B

    invoke-static {v5, v0, v3}, Labcd/HK;->j6([BII)I

    move-result v0

    :goto_2
    invoke-static {v6}, Labcd/HK;->j6(B)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p3, Labcd/tC;->DW:[B

    invoke-static {v5, v2, v4}, Labcd/HK;->j6([BII)I

    move-result v2

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_1
.end method
