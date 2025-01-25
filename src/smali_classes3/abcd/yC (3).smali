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
    .registers 8

    invoke-static {p1, p2, p3}, Labcd/HK;->DW([BII)I

    move-result p3

    const/16 v0, 0x1505

    :goto_6
    if-lt p2, p3, :cond_9

    return v0

    :cond_9
    aget-byte v1, p1, p2

    and-int/lit16 v2, v1, 0xff

    shl-int/lit8 v3, v0, 0x5

    add-int/2addr v3, v0

    add-int v0, v2, v3

    invoke-static {v1}, Labcd/HK;->j6(B)Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-static {p1, p2, p3}, Labcd/HK;->j6([BII)I

    move-result p2

    goto :goto_6

    :cond_1d
    add-int/lit8 p2, p2, 0x1

    goto :goto_6
.end method

.method public bridge synthetic j6(Labcd/CC;ILabcd/CC;I)Z
    .registers 5

    check-cast p1, Labcd/tC;

    check-cast p3, Labcd/tC;

    invoke-virtual {p0, p1, p2, p3, p4}, Labcd/yC;->j6(Labcd/tC;ILabcd/tC;I)Z

    move-result p1

    return p1
.end method

.method public j6(Labcd/tC;ILabcd/tC;I)Z
    .registers 11

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

    iget-object v3, p3, Labcd/tC;->FH:Labcd/CK;

    add-int/2addr p4, v0

    invoke-virtual {v3, p4}, Labcd/CK;->DW(I)I

    move-result p4

    iget-object v3, p1, Labcd/tC;->DW:[B

    invoke-static {v3, v1, p2}, Labcd/HK;->DW([BII)I

    move-result p2

    iget-object v3, p3, Labcd/tC;->DW:[B

    invoke-static {v3, v2, p4}, Labcd/HK;->DW([BII)I

    move-result p4

    :goto_29
    const/4 v3, 0x0

    if-ge v1, p2, :cond_59

    if-lt v2, p4, :cond_2f

    goto :goto_59

    :cond_2f
    iget-object v4, p1, Labcd/tC;->DW:[B

    aget-byte v4, v4, v1

    iget-object v5, p3, Labcd/tC;->DW:[B

    aget-byte v5, v5, v2

    if-eq v4, v5, :cond_3a

    return v3

    :cond_3a
    invoke-static {v4}, Labcd/HK;->j6(B)Z

    move-result v3

    if-eqz v3, :cond_47

    iget-object v3, p1, Labcd/tC;->DW:[B

    invoke-static {v3, v1, p2}, Labcd/HK;->j6([BII)I

    move-result v1

    goto :goto_49

    :cond_47
    add-int/lit8 v1, v1, 0x1

    :goto_49
    invoke-static {v5}, Labcd/HK;->j6(B)Z

    move-result v3

    if-eqz v3, :cond_56

    iget-object v3, p3, Labcd/tC;->DW:[B

    invoke-static {v3, v2, p4}, Labcd/HK;->j6([BII)I

    move-result v2

    goto :goto_29

    :cond_56
    add-int/lit8 v2, v2, 0x1

    goto :goto_29

    :cond_59
    :goto_59
    if-ne v1, p2, :cond_5e

    if-ne v2, p4, :cond_5e

    return v0

    :cond_5e
    return v3
.end method
