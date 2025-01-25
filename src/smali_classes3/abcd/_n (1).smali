.class public final Labcd/_n;
.super Labcd/qo;


# instance fields
.field private v5:[Labcd/mo;


# direct methods
.method public constructor <init>(Labcd/hs;Labcd/cs;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Labcd/qo;-><init>(Labcd/hs;Labcd/cs;)V

    invoke-virtual {p2}, Labcd/Xt;->size()I

    move-result p1

    if-eqz p1, :cond_d

    const/4 p1, 0x0

    iput-object p1, p0, Labcd/_n;->v5:[Labcd/mo;

    return-void

    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "registers.size() == 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static j6(Labcd/bs;I)Labcd/mo;
    .registers 4

    sget-object v0, Labcd/hs;->j6:Labcd/hs;

    invoke-virtual {p0}, Labcd/bs;->getType()Labcd/Qs;

    move-result-object v1

    invoke-static {p1, v1}, Labcd/bs;->j6(ILabcd/Rs;)Labcd/bs;

    move-result-object p1

    invoke-static {v0, p1, p0}, Labcd/Vn;->j6(Labcd/hs;Labcd/bs;Labcd/bs;)Labcd/mo;

    move-result-object p0

    return-object p0
.end method

.method private we()V
    .registers 8

    iget-object v0, p0, Labcd/_n;->v5:[Labcd/mo;

    if-eqz v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0}, Labcd/Vn;->gn()Labcd/cs;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Xt;->size()I

    move-result v1

    new-array v2, v1, [Labcd/mo;

    iput-object v2, p0, Labcd/_n;->v5:[Labcd/mo;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_13
    if-ge v2, v1, :cond_29

    invoke-virtual {v0, v2}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v4

    iget-object v5, p0, Labcd/_n;->v5:[Labcd/mo;

    invoke-static {v4, v3}, Labcd/_n;->j6(Labcd/bs;I)Labcd/mo;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-virtual {v4}, Labcd/bs;->Hw()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_29
    return-void
.end method


# virtual methods
.method public DW()I
    .registers 6

    invoke-direct {p0}, Labcd/_n;->we()V

    iget-object v0, p0, Labcd/_n;->v5:[Labcd/mo;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_8
    if-ge v2, v1, :cond_14

    aget-object v4, v0, v2

    invoke-virtual {v4}, Labcd/Zn;->DW()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_14
    return v3
.end method

.method public j6(Labcd/cs;)Labcd/Vn;
    .registers 4

    new-instance v0, Labcd/_n;

    invoke-virtual {p0}, Labcd/Vn;->VH()Labcd/hs;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Labcd/_n;-><init>(Labcd/hs;Labcd/cs;)V

    return-object v0
.end method

.method protected j6()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method protected j6(Z)Ljava/lang/String;
    .registers 10

    invoke-virtual {p0}, Labcd/Vn;->gn()Labcd/cs;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Xt;->size()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuffer;

    const/16 v3, 0x64

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_11
    if-ge v3, v1, :cond_31

    invoke-virtual {v0, v3}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v5

    invoke-static {v5, v4}, Labcd/_n;->j6(Labcd/bs;I)Labcd/mo;

    move-result-object v6

    if-eqz v3, :cond_22

    const/16 v7, 0xa

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_22
    invoke-virtual {v6, p1}, Labcd/Zn;->j6(Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Labcd/bs;->Hw()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    :cond_31
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public j6(Labcd/Lt;)V
    .registers 6

    invoke-direct {p0}, Labcd/_n;->we()V

    iget-object v0, p0, Labcd/_n;->v5:[Labcd/mo;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_11

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Labcd/Zn;->j6(Labcd/Lt;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_11
    return-void
.end method
