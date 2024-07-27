.class Labcd/vC;
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

    :goto_0
    if-lt p2, p3, :cond_0

    return v0

    :cond_0
    aget-byte v1, p1, p2

    invoke-static {v1}, Labcd/HK;->j6(B)Z

    move-result v2

    if-nez v2, :cond_1

    shl-int/lit8 v2, v0, 0x5

    add-int/2addr v0, v2

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method

.method public bridge synthetic j6(Labcd/CC;ILabcd/CC;I)Z
    .registers 6

    check-cast p1, Labcd/tC;

    check-cast p3, Labcd/tC;

    invoke-virtual {p0, p1, p2, p3, p4}, Labcd/vC;->j6(Labcd/tC;ILabcd/tC;I)Z

    move-result v0

    return v0
.end method

.method public j6(Labcd/tC;ILabcd/tC;I)Z
    .registers 13

    const/4 v0, 0x0

    add-int/lit8 v2, p2, 0x1

    add-int/lit8 v3, p4, 0x1

    iget-object v1, p1, Labcd/tC;->FH:Labcd/CK;

    invoke-virtual {v1, v2}, Labcd/CK;->DW(I)I

    move-result v4

    iget-object v1, p3, Labcd/tC;->FH:Labcd/CK;

    invoke-virtual {v1, v3}, Labcd/CK;->DW(I)I

    move-result v1

    iget-object v5, p1, Labcd/tC;->FH:Labcd/CK;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v5, v2}, Labcd/CK;->DW(I)I

    move-result v2

    iget-object v5, p3, Labcd/tC;->FH:Labcd/CK;

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v5, v3}, Labcd/CK;->DW(I)I

    move-result v3

    iget-object v5, p1, Labcd/tC;->DW:[B

    invoke-static {v5, v4, v2}, Labcd/HK;->DW([BII)I

    move-result v5

    iget-object v2, p3, Labcd/tC;->DW:[B

    invoke-static {v2, v1, v3}, Labcd/HK;->DW([BII)I

    move-result v6

    :goto_0
    if-ge v4, v5, :cond_0

    if-lt v1, v6, :cond_2

    :cond_0
    if-ne v4, v5, :cond_1

    if-ne v1, v6, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    :cond_2
    iget-object v2, p1, Labcd/tC;->DW:[B

    aget-byte v3, v2, v4

    iget-object v2, p3, Labcd/tC;->DW:[B

    aget-byte v2, v2, v1

    :goto_1
    add-int/lit8 v7, v5, -0x1

    if-ge v4, v7, :cond_3

    invoke-static {v3}, Labcd/HK;->j6(B)Z

    move-result v7

    if-nez v7, :cond_5

    :cond_3
    :goto_2
    add-int/lit8 v7, v6, -0x1

    if-ge v1, v7, :cond_4

    invoke-static {v2}, Labcd/HK;->j6(B)Z

    move-result v7

    if-nez v7, :cond_6

    :cond_4
    if-ne v3, v2, :cond_1

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    add-int/lit8 v4, v4, 0x1

    iget-object v3, p1, Labcd/tC;->DW:[B

    aget-byte v3, v3, v4

    goto :goto_1

    :cond_6
    add-int/lit8 v1, v1, 0x1

    iget-object v2, p3, Labcd/tC;->DW:[B

    aget-byte v2, v2, v1

    goto :goto_2
.end method
