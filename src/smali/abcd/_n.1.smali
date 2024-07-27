.class public final Labcd/_n;
.super Labcd/qo;


# instance fields
.field private v5:[Labcd/mo;


# direct methods
.method public constructor <init>(Labcd/hs;Labcd/cs;)V
    .registers 5

    invoke-direct {p0, p1, p2}, Labcd/qo;-><init>(Labcd/hs;Labcd/cs;)V

    invoke-virtual {p2}, Labcd/Xt;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Labcd/_n;->v5:[Labcd/mo;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "registers.size() == 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static j6(Labcd/bs;I)Labcd/mo;
    .registers 4

    sget-object v0, Labcd/hs;->j6:Labcd/hs;

    invoke-virtual {p0}, Labcd/bs;->getType()Labcd/Qs;

    move-result-object v1

    invoke-static {p1, v1}, Labcd/bs;->j6(ILabcd/Rs;)Labcd/bs;

    move-result-object v1

    invoke-static {v0, v1, p0}, Labcd/Vn;->j6(Labcd/hs;Labcd/bs;Labcd/bs;)Labcd/mo;

    move-result-object v0

    return-object v0
.end method

.method private we()V
    .registers 8

    const/4 v1, 0x0

    iget-object v0, p0, Labcd/_n;->v5:[Labcd/mo;

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Labcd/Vn;->gn()Labcd/cs;

    move-result-object v3

    invoke-virtual {v3}, Labcd/Xt;->size()I

    move-result v4

    new-array v0, v4, [Labcd/mo;

    iput-object v0, p0, Labcd/_n;->v5:[Labcd/mo;

    move v0, v1

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_0

    invoke-virtual {v3, v2}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v1

    iget-object v5, p0, Labcd/_n;->v5:[Labcd/mo;

    invoke-static {v1, v0}, Labcd/_n;->j6(Labcd/bs;I)Labcd/mo;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-virtual {v1}, Labcd/bs;->Hw()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0
.end method


# virtual methods
.method public DW()I
    .registers 6

    const/4 v1, 0x0

    invoke-direct {p0}, Labcd/_n;->we()V

    iget-object v3, p0, Labcd/_n;->v5:[Labcd/mo;

    array-length v4, v3

    move v0, v1

    move v2, v1

    :goto_0
    if-ge v0, v4, :cond_0

    aget-object v1, v3, v0

    invoke-virtual {v1}, Labcd/Zn;->DW()I

    move-result v1

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    move v2, v1

    goto :goto_0

    :cond_0
    return v2
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

    const/4 v1, 0x0

    invoke-virtual {p0}, Labcd/Vn;->gn()Labcd/cs;

    move-result-object v3

    invoke-virtual {v3}, Labcd/Xt;->size()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuffer;

    const/16 v0, 0x64

    invoke-direct {v5, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    move v0, v1

    move v2, v1

    :goto_0
    if-ge v0, v4, :cond_1

    invoke-virtual {v3, v0}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v1

    invoke-static {v1, v2}, Labcd/_n;->j6(Labcd/bs;I)Labcd/mo;

    move-result-object v6

    if-eqz v0, :cond_0

    const/16 v7, 0xa

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_0
    invoke-virtual {v6, p1}, Labcd/Zn;->j6(Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Labcd/bs;->Hw()I

    move-result v1

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    move v2, v1

    goto :goto_0

    :cond_1
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j6(Labcd/Lt;)V
    .registers 6

    invoke-direct {p0}, Labcd/_n;->we()V

    iget-object v1, p0, Labcd/_n;->v5:[Labcd/mo;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    invoke-virtual {v3, p1}, Labcd/Zn;->j6(Labcd/Lt;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
