.class public final Labcd/yr;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/yr$a;
    }
.end annotation


# instance fields
.field private final DW:[S

.field private final EQ:Labcd/Dr;

.field private final FH:[S

.field private final Hw:[S

.field private final VH:Labcd/Dr;

.field private final Zo:Labcd/Dr;

.field private final gn:Labcd/Dr;

.field private final j6:[I

.field private final tp:Labcd/Dr;

.field private final u7:Labcd/Dr;

.field private final v5:[S


# direct methods
.method public constructor <init>(IIIII)V
    .registers 8

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, p1, [I

    iput-object v0, p0, Labcd/yr;->j6:[I

    new-array v0, p2, [S

    iput-object v0, p0, Labcd/yr;->DW:[S

    new-array v0, p3, [S

    iput-object v0, p0, Labcd/yr;->FH:[S

    new-array v0, p4, [S

    iput-object v0, p0, Labcd/yr;->Hw:[S

    new-array v0, p5, [S

    iput-object v0, p0, Labcd/yr;->v5:[S

    new-instance v0, Labcd/Dr;

    invoke-direct {v0}, Labcd/Dr;-><init>()V

    iput-object v0, p0, Labcd/yr;->Zo:Labcd/Dr;

    new-instance v0, Labcd/Dr;

    invoke-direct {v0}, Labcd/Dr;-><init>()V

    iput-object v0, p0, Labcd/yr;->VH:Labcd/Dr;

    new-instance v0, Labcd/Dr;

    invoke-direct {v0}, Labcd/Dr;-><init>()V

    iput-object v0, p0, Labcd/yr;->gn:Labcd/Dr;

    new-instance v0, Labcd/Dr;

    invoke-direct {v0}, Labcd/Dr;-><init>()V

    iput-object v0, p0, Labcd/yr;->u7:Labcd/Dr;

    new-instance v0, Labcd/Dr;

    invoke-direct {v0}, Labcd/Dr;-><init>()V

    iput-object v0, p0, Labcd/yr;->tp:Labcd/Dr;

    new-instance v0, Labcd/Dr;

    invoke-direct {v0}, Labcd/Dr;-><init>()V

    iput-object v0, p0, Labcd/yr;->EQ:Labcd/Dr;

    iget-object v0, p0, Labcd/yr;->Zo:Labcd/Dr;

    invoke-virtual {v0, v1, v1}, Labcd/Dr;->DW(II)V

    iget-object v0, p0, Labcd/yr;->gn:Labcd/Dr;

    invoke-virtual {v0, v1, v1}, Labcd/Dr;->DW(II)V

    iget-object v0, p0, Labcd/yr;->tp:Labcd/Dr;

    invoke-virtual {v0, v1, v1}, Labcd/Dr;->DW(II)V

    iget-object v0, p0, Labcd/yr;->EQ:Labcd/Dr;

    invoke-virtual {v0, v1, v1}, Labcd/Dr;->DW(II)V

    return-void
.end method

.method private j6(Labcd/_p$a;)Labcd/_p$a;
    .registers 5

    new-instance v0, Labcd/_p$a;

    invoke-virtual {p1}, Labcd/_p$a;->DW()I

    move-result v1

    invoke-virtual {p0, v1}, Labcd/yr;->Zo(I)I

    move-result v1

    invoke-virtual {p1}, Labcd/_p$a;->j6()I

    move-result v2

    invoke-direct {v0, v1, v2}, Labcd/_p$a;-><init>(II)V

    return-object v0
.end method

.method private j6(Labcd/_p$b;)Labcd/_p$b;
    .registers 6

    new-instance v0, Labcd/_p$b;

    invoke-virtual {p1}, Labcd/_p$b;->FH()I

    move-result v1

    invoke-virtual {p0, v1}, Labcd/yr;->VH(I)I

    move-result v1

    invoke-virtual {p1}, Labcd/_p$b;->j6()I

    move-result v2

    invoke-virtual {p1}, Labcd/_p$b;->DW()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Labcd/_p$b;-><init>(III)V

    return-object v0
.end method

.method private j6([Labcd/_p$a;)[Labcd/_p$a;
    .registers 5

    array-length v0, p1

    new-array v1, v0, [Labcd/_p$a;

    const/4 v0, 0x0

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    aget-object v2, p1, v0

    invoke-direct {p0, v2}, Labcd/yr;->j6(Labcd/_p$a;)Labcd/_p$a;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private j6([Labcd/_p$b;)[Labcd/_p$b;
    .registers 5

    array-length v0, p1

    new-array v1, v0, [Labcd/_p$b;

    const/4 v0, 0x0

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    aget-object v2, p1, v0

    invoke-direct {p0, v2}, Labcd/yr;->j6(Labcd/_p$b;)Labcd/_p$b;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method


# virtual methods
.method public DW(I)I
    .registers 3

    iget-object v0, p0, Labcd/yr;->tp:Labcd/Dr;

    invoke-virtual {v0, p1}, Labcd/Dr;->j6(I)I

    move-result v0

    return v0
.end method

.method public DW(Labcd/jq;)Labcd/jq;
    .registers 4

    new-instance v0, Labcd/Qt;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Labcd/Qt;-><init>(I)V

    new-instance v1, Labcd/yr$a;

    invoke-direct {v1, p0, p1, v0}, Labcd/yr$a;-><init>(Labcd/yr;Labcd/jq;Labcd/Tt;)V

    invoke-virtual {v1}, Labcd/kq;->FH()V

    new-instance v1, Labcd/jq;

    invoke-virtual {v0}, Labcd/Qt;->gn()[B

    move-result-object v0

    invoke-direct {v1, v0}, Labcd/jq;-><init>([B)V

    return-object v1
.end method

.method public DW(II)V
    .registers 4

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    iget-object v0, p0, Labcd/yr;->VH:Labcd/Dr;

    invoke-virtual {v0, p1, p2}, Labcd/Dr;->DW(II)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public EQ(I)I
    .registers 3

    iget-object v0, p0, Labcd/yr;->Zo:Labcd/Dr;

    invoke-virtual {v0, p1}, Labcd/Dr;->j6(I)I

    move-result v0

    return v0
.end method

.method public EQ(II)V
    .registers 4

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    iget-object v0, p0, Labcd/yr;->Zo:Labcd/Dr;

    invoke-virtual {v0, p1, p2}, Labcd/Dr;->DW(II)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public FH(I)I
    .registers 3

    iget-object v0, p0, Labcd/yr;->gn:Labcd/Dr;

    invoke-virtual {v0, p1}, Labcd/Dr;->j6(I)I

    move-result v0

    return v0
.end method

.method public FH(II)V
    .registers 4

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    iget-object v0, p0, Labcd/yr;->gn:Labcd/Dr;

    invoke-virtual {v0, p1, p2}, Labcd/Dr;->DW(II)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public Hw(I)I
    .registers 3

    iget-object v0, p0, Labcd/yr;->u7:Labcd/Dr;

    invoke-virtual {v0, p1}, Labcd/Dr;->j6(I)I

    move-result v0

    return v0
.end method

.method public Hw(II)V
    .registers 4

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    iget-object v0, p0, Labcd/yr;->u7:Labcd/Dr;

    invoke-virtual {v0, p1, p2}, Labcd/Dr;->DW(II)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public VH(I)I
    .registers 4

    iget-object v0, p0, Labcd/yr;->v5:[S

    aget-short v0, v0, p1

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method public VH(II)V
    .registers 5

    iget-object v0, p0, Labcd/yr;->v5:[S

    int-to-short v1, p2

    aput-short v1, v0, p1

    return-void
.end method

.method public Zo(I)I
    .registers 4

    iget-object v0, p0, Labcd/yr;->Hw:[S

    aget-short v0, v0, p1

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method Zo(II)V
    .registers 5

    iget-object v0, p0, Labcd/yr;->Hw:[S

    int-to-short v1, p2

    aput-short v1, v0, p1

    return-void
.end method

.method public gn(I)I
    .registers 4

    iget-object v0, p0, Labcd/yr;->FH:[S

    aget-short v0, v0, p1

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method public gn(II)V
    .registers 5

    iget-object v0, p0, Labcd/yr;->FH:[S

    int-to-short v1, p2

    aput-short v1, v0, p1

    return-void
.end method

.method public j6(I)I
    .registers 3

    iget-object v0, p0, Labcd/yr;->VH:Labcd/Dr;

    invoke-virtual {v0, p1}, Labcd/Dr;->j6(I)I

    move-result v0

    return v0
.end method

.method public j6(Labcd/Vp;)Labcd/Vp;
    .registers 8

    invoke-virtual {p1}, Labcd/Vp;->Hw()[I

    move-result-object v0

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    invoke-virtual {p1}, Labcd/Vp;->VH()[Labcd/jq;

    move-result-object v0

    invoke-virtual {v0}, [Labcd/jq;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Labcd/jq;

    const/4 v0, 0x0

    :goto_0
    array-length v1, v4

    if-ge v0, v1, :cond_0

    aget v1, v4, v0

    invoke-virtual {p0, v1}, Labcd/yr;->u7(I)I

    move-result v1

    aput v1, v4, v0

    aget-object v1, v5, v0

    invoke-virtual {p0, v1}, Labcd/yr;->DW(Labcd/jq;)Labcd/jq;

    move-result-object v1

    aput-object v1, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Labcd/Vp;

    const/4 v1, 0x0

    invoke-virtual {p1}, Labcd/Vp;->we()B

    move-result v2

    invoke-virtual {p1}, Labcd/Vp;->Zo()I

    move-result v3

    invoke-virtual {p0, v3}, Labcd/yr;->tp(I)I

    move-result v3

    invoke-direct/range {v0 .. v5}, Labcd/Vp;-><init>(Labcd/iq;BI[I[Labcd/jq;)V

    return-object v0
.end method

.method public j6(Labcd/Wp;)Labcd/Wp;
    .registers 11

    const/4 v8, 0x0

    invoke-virtual {p1}, Labcd/Wp;->j6()I

    move-result v0

    invoke-virtual {p0, v0}, Labcd/yr;->FH(I)I

    move-result v1

    invoke-virtual {p1}, Labcd/Wp;->FH()[I

    move-result-object v0

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    move v0, v8

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    aget v3, v2, v0

    invoke-virtual {p0, v3}, Labcd/yr;->Zo(I)I

    move-result v3

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Labcd/Wp;->DW()[I

    move-result-object v0

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    move v0, v8

    :goto_1
    array-length v4, v3

    if-ge v0, v4, :cond_1

    aget v4, v3, v0

    invoke-virtual {p0, v4}, Labcd/yr;->FH(I)I

    move-result v4

    aput v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Labcd/Wp;->v5()[I

    move-result-object v0

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    move v0, v8

    :goto_2
    array-length v5, v4

    if-ge v0, v5, :cond_2

    aget v5, v4, v0

    invoke-virtual {p0, v5}, Labcd/yr;->VH(I)I

    move-result v5

    aput v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Labcd/Wp;->Hw()[I

    move-result-object v0

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [I

    move v0, v8

    :goto_3
    array-length v6, v5

    if-ge v0, v6, :cond_3

    aget v6, v5, v0

    invoke-virtual {p0, v6}, Labcd/yr;->FH(I)I

    move-result v6

    aput v6, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    invoke-virtual {p1}, Labcd/Wp;->VH()[I

    move-result-object v0

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [I

    move v0, v8

    :goto_4
    array-length v7, v6

    if-ge v0, v7, :cond_4

    aget v7, v6, v0

    invoke-virtual {p0, v7}, Labcd/yr;->VH(I)I

    move-result v7

    aput v7, v6, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_4
    invoke-virtual {p1}, Labcd/Wp;->Zo()[I

    move-result-object v0

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [I

    :goto_5
    array-length v0, v7

    if-ge v8, v0, :cond_5

    aget v0, v7, v8

    invoke-virtual {p0, v0}, Labcd/yr;->Hw(I)I

    move-result v0

    aput v0, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_5
    new-instance v0, Labcd/Wp;

    invoke-direct/range {v0 .. v7}, Labcd/Wp;-><init>(I[I[I[I[I[I[I)V

    return-object v0
.end method

.method public j6(Labcd/Xp;)Labcd/Xp;
    .registers 5

    invoke-virtual {p1}, Labcd/Xp;->j6()[I

    move-result-object v0

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    aget v2, v0, v1

    invoke-virtual {p0, v2}, Labcd/yr;->j6(I)I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Labcd/Xp;

    invoke-direct {v1, v0}, Labcd/Xp;-><init>([I)V

    return-object v1
.end method

.method public j6(Labcd/Yp;)Labcd/Yp;
    .registers 5

    invoke-virtual {p1}, Labcd/Yp;->j6()[I

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget v2, v1, v0

    invoke-virtual {p0, v2}, Labcd/yr;->FH(I)I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Labcd/Yp;

    invoke-direct {v0, v1}, Labcd/Yp;-><init>([I)V

    return-object v0
.end method

.method public j6(Labcd/_p;)Labcd/_p;
    .registers 7

    new-instance v0, Labcd/_p;

    invoke-virtual {p1}, Labcd/_p;->Hw()[Labcd/_p$a;

    move-result-object v1

    invoke-direct {p0, v1}, Labcd/yr;->j6([Labcd/_p$a;)[Labcd/_p$a;

    move-result-object v1

    invoke-virtual {p1}, Labcd/_p;->FH()[Labcd/_p$a;

    move-result-object v2

    invoke-direct {p0, v2}, Labcd/yr;->j6([Labcd/_p$a;)[Labcd/_p$a;

    move-result-object v2

    invoke-virtual {p1}, Labcd/_p;->DW()[Labcd/_p$b;

    move-result-object v3

    invoke-direct {p0, v3}, Labcd/yr;->j6([Labcd/_p$b;)[Labcd/_p$b;

    move-result-object v3

    invoke-virtual {p1}, Labcd/_p;->v5()[Labcd/_p$b;

    move-result-object v4

    invoke-direct {p0, v4}, Labcd/yr;->j6([Labcd/_p$b;)[Labcd/_p$b;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Labcd/_p;-><init>([Labcd/_p$a;[Labcd/_p$a;[Labcd/_p$b;[Labcd/_p$b;)V

    return-object v0
.end method

.method public j6(Labcd/aq;)Labcd/aq;
    .registers 13

    new-instance v0, Labcd/aq;

    const/4 v1, 0x0

    invoke-virtual {p1}, Labcd/aq;->v5()I

    move-result v2

    invoke-virtual {p1}, Labcd/aq;->u7()I

    move-result v3

    invoke-virtual {p0, v3}, Labcd/yr;->tp(I)I

    move-result v3

    invoke-virtual {p1}, Labcd/aq;->j6()I

    move-result v4

    invoke-virtual {p1}, Labcd/aq;->gn()I

    move-result v5

    invoke-virtual {p0, v5}, Labcd/yr;->tp(I)I

    move-result v5

    invoke-virtual {p1}, Labcd/aq;->Hw()I

    move-result v6

    invoke-virtual {p0, v6}, Labcd/yr;->EQ(I)I

    move-result v6

    invoke-virtual {p1}, Labcd/aq;->Zo()I

    move-result v7

    invoke-virtual {p0, v7}, Labcd/yr;->u7(I)I

    move-result v7

    invoke-virtual {p1}, Labcd/aq;->DW()I

    move-result v8

    invoke-virtual {p0, v8}, Labcd/yr;->DW(I)I

    move-result v8

    invoke-virtual {p1}, Labcd/aq;->FH()I

    move-result v9

    invoke-virtual {p1}, Labcd/aq;->VH()I

    move-result v10

    invoke-virtual {p0, v10}, Labcd/yr;->v5(I)I

    move-result v10

    invoke-direct/range {v0 .. v10}, Labcd/aq;-><init>(Labcd/iq;IIIIIIIII)V

    return-object v0
.end method

.method public j6(Labcd/fr;)Labcd/fr;
    .registers 5

    sget-object v0, Labcd/fr;->j6:Labcd/fr;

    if-ne p1, v0, :cond_0

    :goto_0
    return-object p1

    :cond_0
    invoke-virtual {p1}, Labcd/fr;->Hw()[S

    move-result-object v0

    invoke-virtual {v0}, [S->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [S

    const/4 v1, 0x0

    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_1

    aget-short v2, v0, v1

    invoke-virtual {p0, v2}, Labcd/yr;->tp(I)I

    move-result v2

    int-to-short v2, v2

    aput-short v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    new-instance p1, Labcd/fr;

    const/4 v1, 0x0

    invoke-direct {p1, v1, v0}, Labcd/fr;-><init>(Labcd/iq;[S)V

    goto :goto_0
.end method

.method public j6(Labcd/jq;)Labcd/jq;
    .registers 4

    new-instance v0, Labcd/Qt;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Labcd/Qt;-><init>(I)V

    new-instance v1, Labcd/yr$a;

    invoke-direct {v1, p0, p1, v0}, Labcd/yr$a;-><init>(Labcd/yr;Labcd/jq;Labcd/Tt;)V

    invoke-virtual {v1}, Labcd/kq;->DW()V

    new-instance v1, Labcd/jq;

    invoke-virtual {v0}, Labcd/Qt;->gn()[B

    move-result-object v0

    invoke-direct {v1, v0}, Labcd/jq;-><init>([B)V

    return-object v1
.end method

.method public j6(Labcd/lq;)Labcd/lq;
    .registers 7

    new-instance v0, Labcd/lq;

    const/4 v1, 0x0

    invoke-virtual {p1}, Labcd/lq;->Hw()I

    move-result v2

    invoke-virtual {p0, v2}, Labcd/yr;->tp(I)I

    move-result v2

    invoke-virtual {p1}, Labcd/lq;->VH()I

    move-result v3

    invoke-virtual {p0, v3}, Labcd/yr;->tp(I)I

    move-result v3

    invoke-virtual {p1}, Labcd/lq;->Zo()I

    move-result v4

    invoke-virtual {p0, v4}, Labcd/yr;->u7(I)I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Labcd/lq;-><init>(Labcd/iq;III)V

    return-object v0
.end method

.method public j6(Labcd/nq;)Labcd/nq;
    .registers 7

    new-instance v0, Labcd/nq;

    const/4 v1, 0x0

    invoke-virtual {p1}, Labcd/nq;->Hw()I

    move-result v2

    invoke-virtual {p0, v2}, Labcd/yr;->tp(I)I

    move-result v2

    invoke-virtual {p1}, Labcd/nq;->VH()I

    move-result v3

    invoke-virtual {p0, v3}, Labcd/yr;->gn(I)I

    move-result v3

    invoke-virtual {p1}, Labcd/nq;->Zo()I

    move-result v4

    invoke-virtual {p0, v4}, Labcd/yr;->u7(I)I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Labcd/nq;-><init>(Labcd/iq;III)V

    return-object v0
.end method

.method public j6(Labcd/qq;)Labcd/qq;
    .registers 7

    new-instance v0, Labcd/qq;

    const/4 v1, 0x0

    invoke-virtual {p1}, Labcd/qq;->VH()I

    move-result v2

    invoke-virtual {p0, v2}, Labcd/yr;->u7(I)I

    move-result v2

    invoke-virtual {p1}, Labcd/qq;->Zo()I

    move-result v3

    invoke-virtual {p0, v3}, Labcd/yr;->tp(I)I

    move-result v3

    invoke-virtual {p1}, Labcd/qq;->Hw()I

    move-result v4

    invoke-virtual {p0, v4}, Labcd/yr;->EQ(I)I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Labcd/qq;-><init>(Labcd/iq;III)V

    return-object v0
.end method

.method public j6(II)V
    .registers 4

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    iget-object v0, p0, Labcd/yr;->tp:Labcd/Dr;

    invoke-virtual {v0, p1, p2}, Labcd/Dr;->DW(II)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public tp(I)I
    .registers 4

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const v0, 0xffff

    iget-object v1, p0, Labcd/yr;->DW:[S

    aget-short v1, v1, p1

    and-int/2addr v0, v1

    goto :goto_0
.end method

.method public tp(II)V
    .registers 5

    iget-object v0, p0, Labcd/yr;->DW:[S

    int-to-short v1, p2

    aput-short v1, v0, p1

    return-void
.end method

.method public u7(I)I
    .registers 3

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Labcd/yr;->j6:[I

    aget v0, v0, p1

    goto :goto_0
.end method

.method public u7(II)V
    .registers 4

    iget-object v0, p0, Labcd/yr;->j6:[I

    aput p2, v0, p1

    return-void
.end method

.method public v5(I)I
    .registers 3

    iget-object v0, p0, Labcd/yr;->EQ:Labcd/Dr;

    invoke-virtual {v0, p1}, Labcd/Dr;->j6(I)I

    move-result v0

    return v0
.end method

.method public v5(II)V
    .registers 4

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    iget-object v0, p0, Labcd/yr;->EQ:Labcd/Dr;

    invoke-virtual {v0, p1, p2}, Labcd/Dr;->DW(II)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method
