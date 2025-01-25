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

    :goto_2
    if-lt p2, p3, :cond_5

    return v0

    :cond_5
    aget-byte v1, p1, p2

    invoke-static {v1}, Labcd/HK;->j6(B)Z

    move-result v2

    if-nez v2, :cond_14

    shl-int/lit8 v2, v0, 0x5

    add-int/2addr v2, v0

    and-int/lit16 v0, v1, 0xff

    add-int/2addr v2, v0

    move v0, v2

    :cond_14
    add-int/lit8 p2, p2, 0x1

    goto :goto_2
.end method

.method public bridge synthetic j6(Labcd/CC;ILabcd/CC;I)Z
    .registers 5

    check-cast p1, Labcd/tC;

    check-cast p3, Labcd/tC;

    invoke-virtual {p0, p1, p2, p3, p4}, Labcd/vC;->j6(Labcd/tC;ILabcd/tC;I)Z

    move-result p1

    return p1
.end method

.method public j6(Labcd/tC;ILabcd/tC;I)Z
    .registers 12

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

    if-ge v1, p2, :cond_63

    if-lt v2, p4, :cond_2f

    goto :goto_63

    :cond_2f
    iget-object v4, p1, Labcd/tC;->DW:[B

    aget-byte v4, v4, v1

    iget-object v5, p3, Labcd/tC;->DW:[B

    aget-byte v5, v5, v2

    :goto_37
    add-int/lit8 v6, p2, -0x1

    if-ge v1, v6, :cond_49

    invoke-static {v4}, Labcd/HK;->j6(B)Z

    move-result v6

    if-nez v6, :cond_42

    goto :goto_49

    :cond_42
    add-int/lit8 v1, v1, 0x1

    iget-object v4, p1, Labcd/tC;->DW:[B

    aget-byte v4, v4, v1

    goto :goto_37

    :cond_49
    :goto_49
    add-int/lit8 v6, p4, -0x1

    if-ge v2, v6, :cond_5b

    invoke-static {v5}, Labcd/HK;->j6(B)Z

    move-result v6

    if-nez v6, :cond_54

    goto :goto_5b

    :cond_54
    add-int/lit8 v2, v2, 0x1

    iget-object v5, p3, Labcd/tC;->DW:[B

    aget-byte v5, v5, v2

    goto :goto_49

    :cond_5b
    :goto_5b
    if-eq v4, v5, :cond_5e

    return v3

    :cond_5e
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_29

    :cond_63
    :goto_63
    if-ne v1, p2, :cond_68

    if-ne v2, p4, :cond_68

    return v0

    :cond_68
    return v3
.end method
