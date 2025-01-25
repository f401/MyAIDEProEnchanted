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
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array p1, p1, [I

    iput-object p1, p0, Labcd/yr;->j6:[I

    new-array p1, p2, [S

    iput-object p1, p0, Labcd/yr;->DW:[S

    new-array p1, p3, [S

    iput-object p1, p0, Labcd/yr;->FH:[S

    new-array p1, p4, [S

    iput-object p1, p0, Labcd/yr;->Hw:[S

    new-array p1, p5, [S

    iput-object p1, p0, Labcd/yr;->v5:[S

    new-instance p1, Labcd/Dr;

    invoke-direct {p1}, Labcd/Dr;-><init>()V

    iput-object p1, p0, Labcd/yr;->Zo:Labcd/Dr;

    new-instance p2, Labcd/Dr;

    invoke-direct {p2}, Labcd/Dr;-><init>()V

    iput-object p2, p0, Labcd/yr;->VH:Labcd/Dr;

    new-instance p2, Labcd/Dr;

    invoke-direct {p2}, Labcd/Dr;-><init>()V

    iput-object p2, p0, Labcd/yr;->gn:Labcd/Dr;

    new-instance p3, Labcd/Dr;

    invoke-direct {p3}, Labcd/Dr;-><init>()V

    iput-object p3, p0, Labcd/yr;->u7:Labcd/Dr;

    new-instance p3, Labcd/Dr;

    invoke-direct {p3}, Labcd/Dr;-><init>()V

    iput-object p3, p0, Labcd/yr;->tp:Labcd/Dr;

    new-instance p4, Labcd/Dr;

    invoke-direct {p4}, Labcd/Dr;-><init>()V

    iput-object p4, p0, Labcd/yr;->EQ:Labcd/Dr;

    const/4 p5, 0x0

    invoke-virtual {p1, p5, p5}, Labcd/Dr;->DW(II)V

    invoke-virtual {p2, p5, p5}, Labcd/Dr;->DW(II)V

    invoke-virtual {p3, p5, p5}, Labcd/Dr;->DW(II)V

    invoke-virtual {p4, p5, p5}, Labcd/Dr;->DW(II)V

    return-void
.end method

.method private j6(Labcd/_p$a;)Labcd/_p$a;
    .registers 4

    new-instance v0, Labcd/_p$a;

    invoke-virtual {p1}, Labcd/_p$a;->DW()I

    move-result v1

    invoke-virtual {p0, v1}, Labcd/yr;->Zo(I)I

    move-result v1

    invoke-virtual {p1}, Labcd/_p$a;->j6()I

    move-result p1

    invoke-direct {v0, v1, p1}, Labcd/_p$a;-><init>(II)V

    return-object v0
.end method

.method private j6(Labcd/_p$b;)Labcd/_p$b;
    .registers 5

    new-instance v0, Labcd/_p$b;

    invoke-virtual {p1}, Labcd/_p$b;->FH()I

    move-result v1

    invoke-virtual {p0, v1}, Labcd/yr;->VH(I)I

    move-result v1

    invoke-virtual {p1}, Labcd/_p$b;->j6()I

    move-result v2

    invoke-virtual {p1}, Labcd/_p$b;->DW()I

    move-result p1

    invoke-direct {v0, v1, v2, p1}, Labcd/_p$b;-><init>(III)V

    return-object v0
.end method

.method private j6([Labcd/_p$a;)[Labcd/_p$a;
    .registers 5

    array-length v0, p1

    new-array v0, v0, [Labcd/_p$a;

    const/4 v1, 0x0

    :goto_4
    array-length v2, p1

    if-ge v1, v2, :cond_12

    aget-object v2, p1, v1

    invoke-direct {p0, v2}, Labcd/yr;->j6(Labcd/_p$a;)Labcd/_p$a;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_12
    return-object v0
.end method

.method private j6([Labcd/_p$b;)[Labcd/_p$b;
    .registers 5

    array-length v0, p1

    new-array v0, v0, [Labcd/_p$b;

    const/4 v1, 0x0

    :goto_4
    array-length v2, p1

    if-ge v1, v2, :cond_12

    aget-object v2, p1, v1

    invoke-direct {p0, v2}, Labcd/yr;->j6(Labcd/_p$b;)Labcd/_p$b;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_12
    return-object v0
.end method


# virtual methods
.method public DW(I)I
    .registers 3

    iget-object v0, p0, Labcd/yr;->tp:Labcd/Dr;

    invoke-virtual {v0, p1}, Labcd/Dr;->j6(I)I

    move-result p1

    return p1
.end method

.method public DW(Labcd/jq;)Labcd/jq;
    .registers 4

    new-instance v0, Labcd/Qt;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Labcd/Qt;-><init>(I)V

    new-instance v1, Labcd/yr$a;

    invoke-direct {v1, p0, p1, v0}, Labcd/yr$a;-><init>(Labcd/yr;Labcd/jq;Labcd/Tt;)V

    invoke-virtual {v1}, Labcd/kq;->FH()V

    new-instance p1, Labcd/jq;

    invoke-virtual {v0}, Labcd/Qt;->gn()[B

    move-result-object v0

    invoke-direct {p1, v0}, Labcd/jq;-><init>([B)V

    return-object p1
.end method

.method public DW(II)V
    .registers 4

    if-lez p1, :cond_a

    if-lez p2, :cond_a

    iget-object v0, p0, Labcd/yr;->VH:Labcd/Dr;

    invoke-virtual {v0, p1, p2}, Labcd/Dr;->DW(II)V

    return-void

    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public EQ(I)I
    .registers 3

    iget-object v0, p0, Labcd/yr;->Zo:Labcd/Dr;

    invoke-virtual {v0, p1}, Labcd/Dr;->j6(I)I

    move-result p1

    return p1
.end method

.method public EQ(II)V
    .registers 4

    if-lez p1, :cond_a

    if-lez p2, :cond_a

    iget-object v0, p0, Labcd/yr;->Zo:Labcd/Dr;

    invoke-virtual {v0, p1, p2}, Labcd/Dr;->DW(II)V

    return-void

    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public FH(I)I
    .registers 3

    iget-object v0, p0, Labcd/yr;->gn:Labcd/Dr;

    invoke-virtual {v0, p1}, Labcd/Dr;->j6(I)I

    move-result p1

    return p1
.end method

.method public FH(II)V
    .registers 4

    if-lez p1, :cond_a

    if-lez p2, :cond_a

    iget-object v0, p0, Labcd/yr;->gn:Labcd/Dr;

    invoke-virtual {v0, p1, p2}, Labcd/Dr;->DW(II)V

    return-void

    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public Hw(I)I
    .registers 3

    iget-object v0, p0, Labcd/yr;->u7:Labcd/Dr;

    invoke-virtual {v0, p1}, Labcd/Dr;->j6(I)I

    move-result p1

    return p1
.end method

.method public Hw(II)V
    .registers 4

    if-lez p1, :cond_a

    if-lez p2, :cond_a

    iget-object v0, p0, Labcd/yr;->u7:Labcd/Dr;

    invoke-virtual {v0, p1, p2}, Labcd/Dr;->DW(II)V

    return-void

    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public VH(I)I
    .registers 3

    iget-object v0, p0, Labcd/yr;->v5:[S

    aget-short p1, v0, p1

    const v0, 0xffff

    and-int/2addr p1, v0

    return p1
.end method

.method public VH(II)V
    .registers 4

    iget-object v0, p0, Labcd/yr;->v5:[S

    int-to-short p2, p2

    aput-short p2, v0, p1

    return-void
.end method

.method public Zo(I)I
    .registers 3

    iget-object v0, p0, Labcd/yr;->Hw:[S

    aget-short p1, v0, p1

    const v0, 0xffff

    and-int/2addr p1, v0

    return p1
.end method

.method Zo(II)V
    .registers 4

    iget-object v0, p0, Labcd/yr;->Hw:[S

    int-to-short p2, p2

    aput-short p2, v0, p1

    return-void
.end method

.method public gn(I)I
    .registers 3

    iget-object v0, p0, Labcd/yr;->FH:[S

    aget-short p1, v0, p1

    const v0, 0xffff

    and-int/2addr p1, v0

    return p1
.end method

.method public gn(II)V
    .registers 4

    iget-object v0, p0, Labcd/yr;->FH:[S

    int-to-short p2, p2

    aput-short p2, v0, p1

    return-void
.end method

.method public j6(I)I
    .registers 3

    iget-object v0, p0, Labcd/yr;->VH:Labcd/Dr;

    invoke-virtual {v0, p1}, Labcd/Dr;->j6(I)I

    move-result p1

    return p1
.end method

.method public j6(Labcd/Vp;)Labcd/Vp;
    .registers 9

    invoke-virtual {p1}, Labcd/Vp;->Hw()[I

    move-result-object v0

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, [I

    invoke-virtual {p1}, Labcd/Vp;->VH()[Labcd/jq;

    move-result-object v0

    invoke-virtual {v0}, [Labcd/jq;->clone()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, [Labcd/jq;

    const/4 v0, 0x0

    :goto_17
    array-length v1, v5

    if-ge v0, v1, :cond_2d

    aget v1, v5, v0

    invoke-virtual {p0, v1}, Labcd/yr;->u7(I)I

    move-result v1

    aput v1, v5, v0

    aget-object v1, v6, v0

    invoke-virtual {p0, v1}, Labcd/yr;->DW(Labcd/jq;)Labcd/jq;

    move-result-object v1

    aput-object v1, v6, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    :cond_2d
    new-instance v0, Labcd/Vp;

    const/4 v2, 0x0

    invoke-virtual {p1}, Labcd/Vp;->we()B

    move-result v3

    invoke-virtual {p1}, Labcd/Vp;->Zo()I

    move-result p1

    invoke-virtual {p0, p1}, Labcd/yr;->tp(I)I

    move-result v4

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Labcd/Vp;-><init>(Labcd/iq;BI[I[Labcd/jq;)V

    return-object v0
.end method

.method public j6(Labcd/Wp;)Labcd/Wp;
    .registers 11

    invoke-virtual {p1}, Labcd/Wp;->j6()I

    move-result v0

    invoke-virtual {p0, v0}, Labcd/yr;->FH(I)I

    move-result v2

    invoke-virtual {p1}, Labcd/Wp;->FH()[I

    move-result-object v0

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, [I

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_15
    array-length v4, v3

    if-ge v1, v4, :cond_23

    aget v4, v3, v1

    invoke-virtual {p0, v4}, Labcd/yr;->Zo(I)I

    move-result v4

    aput v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    :cond_23
    invoke-virtual {p1}, Labcd/Wp;->DW()[I

    move-result-object v1

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, [I

    const/4 v1, 0x0

    :goto_2f
    array-length v5, v4

    if-ge v1, v5, :cond_3d

    aget v5, v4, v1

    invoke-virtual {p0, v5}, Labcd/yr;->FH(I)I

    move-result v5

    aput v5, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2f

    :cond_3d
    invoke-virtual {p1}, Labcd/Wp;->v5()[I

    move-result-object v1

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, [I

    const/4 v1, 0x0

    :goto_49
    array-length v6, v5

    if-ge v1, v6, :cond_57

    aget v6, v5, v1

    invoke-virtual {p0, v6}, Labcd/yr;->VH(I)I

    move-result v6

    aput v6, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_49

    :cond_57
    invoke-virtual {p1}, Labcd/Wp;->Hw()[I

    move-result-object v1

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, [I

    const/4 v1, 0x0

    :goto_63
    array-length v7, v6

    if-ge v1, v7, :cond_71

    aget v7, v6, v1

    invoke-virtual {p0, v7}, Labcd/yr;->FH(I)I

    move-result v7

    aput v7, v6, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_63

    :cond_71
    invoke-virtual {p1}, Labcd/Wp;->VH()[I

    move-result-object v1

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, [I

    const/4 v1, 0x0

    :goto_7d
    array-length v8, v7

    if-ge v1, v8, :cond_8b

    aget v8, v7, v1

    invoke-virtual {p0, v8}, Labcd/yr;->VH(I)I

    move-result v8

    aput v8, v7, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_7d

    :cond_8b
    invoke-virtual {p1}, Labcd/Wp;->Zo()[I

    move-result-object p1

    invoke-virtual {p1}, [I->clone()Ljava/lang/Object;

    move-result-object p1

    move-object v8, p1

    check-cast v8, [I

    :goto_96
    array-length p1, v8

    if-ge v0, p1, :cond_a4

    aget p1, v8, v0

    invoke-virtual {p0, p1}, Labcd/yr;->Hw(I)I

    move-result p1

    aput p1, v8, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_96

    :cond_a4
    new-instance p1, Labcd/Wp;

    move-object v1, p1

    invoke-direct/range {v1 .. v8}, Labcd/Wp;-><init>(I[I[I[I[I[I[I)V

    return-object p1
.end method

.method public j6(Labcd/Xp;)Labcd/Xp;
    .registers 4

    invoke-virtual {p1}, Labcd/Xp;->j6()[I

    move-result-object p1

    invoke-virtual {p1}, [I->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    const/4 v0, 0x0

    :goto_b
    array-length v1, p1

    if-ge v0, v1, :cond_19

    aget v1, p1, v0

    invoke-virtual {p0, v1}, Labcd/yr;->j6(I)I

    move-result v1

    aput v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_19
    new-instance v0, Labcd/Xp;

    invoke-direct {v0, p1}, Labcd/Xp;-><init>([I)V

    return-object v0
.end method

.method public j6(Labcd/Yp;)Labcd/Yp;
    .registers 4

    invoke-virtual {p1}, Labcd/Yp;->j6()[I

    move-result-object p1

    const/4 v0, 0x0

    :goto_5
    array-length v1, p1

    if-ge v0, v1, :cond_13

    aget v1, p1, v0

    invoke-virtual {p0, v1}, Labcd/yr;->FH(I)I

    move-result v1

    aput v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_13
    new-instance v0, Labcd/Yp;

    invoke-direct {v0, p1}, Labcd/Yp;-><init>([I)V

    return-object v0
.end method

.method public j6(Labcd/_p;)Labcd/_p;
    .registers 6

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

    move-result-object p1

    invoke-direct {p0, p1}, Labcd/yr;->j6([Labcd/_p$b;)[Labcd/_p$b;

    move-result-object p1

    invoke-direct {v0, v1, v2, v3, p1}, Labcd/_p;-><init>([Labcd/_p$a;[Labcd/_p$a;[Labcd/_p$b;[Labcd/_p$b;)V

    return-object v0
.end method

.method public j6(Labcd/aq;)Labcd/aq;
    .registers 14

    new-instance v11, Labcd/aq;

    const/4 v1, 0x0

    invoke-virtual {p1}, Labcd/aq;->v5()I

    move-result v2

    invoke-virtual {p1}, Labcd/aq;->u7()I

    move-result v0

    invoke-virtual {p0, v0}, Labcd/yr;->tp(I)I

    move-result v3

    invoke-virtual {p1}, Labcd/aq;->j6()I

    move-result v4

    invoke-virtual {p1}, Labcd/aq;->gn()I

    move-result v0

    invoke-virtual {p0, v0}, Labcd/yr;->tp(I)I

    move-result v5

    invoke-virtual {p1}, Labcd/aq;->Hw()I

    move-result v0

    invoke-virtual {p0, v0}, Labcd/yr;->EQ(I)I

    move-result v6

    invoke-virtual {p1}, Labcd/aq;->Zo()I

    move-result v0

    invoke-virtual {p0, v0}, Labcd/yr;->u7(I)I

    move-result v7

    invoke-virtual {p1}, Labcd/aq;->DW()I

    move-result v0

    invoke-virtual {p0, v0}, Labcd/yr;->DW(I)I

    move-result v8

    invoke-virtual {p1}, Labcd/aq;->FH()I

    move-result v9

    invoke-virtual {p1}, Labcd/aq;->VH()I

    move-result p1

    invoke-virtual {p0, p1}, Labcd/yr;->v5(I)I

    move-result v10

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Labcd/aq;-><init>(Labcd/iq;IIIIIIIII)V

    return-object v11
.end method

.method public j6(Labcd/fr;)Labcd/fr;
    .registers 4

    sget-object v0, Labcd/fr;->j6:Labcd/fr;

    if-ne p1, v0, :cond_5

    return-object p1

    :cond_5
    invoke-virtual {p1}, Labcd/fr;->Hw()[S

    move-result-object p1

    invoke-virtual {p1}, [S->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [S

    const/4 v0, 0x0

    :goto_10
    array-length v1, p1

    if-ge v0, v1, :cond_1f

    aget-short v1, p1, v0

    invoke-virtual {p0, v1}, Labcd/yr;->tp(I)I

    move-result v1

    int-to-short v1, v1

    aput-short v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_1f
    new-instance v0, Labcd/fr;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Labcd/fr;-><init>(Labcd/iq;[S)V

    return-object v0
.end method

.method public j6(Labcd/jq;)Labcd/jq;
    .registers 4

    new-instance v0, Labcd/Qt;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Labcd/Qt;-><init>(I)V

    new-instance v1, Labcd/yr$a;

    invoke-direct {v1, p0, p1, v0}, Labcd/yr$a;-><init>(Labcd/yr;Labcd/jq;Labcd/Tt;)V

    invoke-virtual {v1}, Labcd/kq;->DW()V

    new-instance p1, Labcd/jq;

    invoke-virtual {v0}, Labcd/Qt;->gn()[B

    move-result-object v0

    invoke-direct {p1, v0}, Labcd/jq;-><init>([B)V

    return-object p1
.end method

.method public j6(Labcd/lq;)Labcd/lq;
    .registers 6

    new-instance v0, Labcd/lq;

    invoke-virtual {p1}, Labcd/lq;->Hw()I

    move-result v1

    invoke-virtual {p0, v1}, Labcd/yr;->tp(I)I

    move-result v1

    invoke-virtual {p1}, Labcd/lq;->VH()I

    move-result v2

    invoke-virtual {p0, v2}, Labcd/yr;->tp(I)I

    move-result v2

    invoke-virtual {p1}, Labcd/lq;->Zo()I

    move-result p1

    invoke-virtual {p0, p1}, Labcd/yr;->u7(I)I

    move-result p1

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2, p1}, Labcd/lq;-><init>(Labcd/iq;III)V

    return-object v0
.end method

.method public j6(Labcd/nq;)Labcd/nq;
    .registers 6

    new-instance v0, Labcd/nq;

    invoke-virtual {p1}, Labcd/nq;->Hw()I

    move-result v1

    invoke-virtual {p0, v1}, Labcd/yr;->tp(I)I

    move-result v1

    invoke-virtual {p1}, Labcd/nq;->VH()I

    move-result v2

    invoke-virtual {p0, v2}, Labcd/yr;->gn(I)I

    move-result v2

    invoke-virtual {p1}, Labcd/nq;->Zo()I

    move-result p1

    invoke-virtual {p0, p1}, Labcd/yr;->u7(I)I

    move-result p1

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2, p1}, Labcd/nq;-><init>(Labcd/iq;III)V

    return-object v0
.end method

.method public j6(Labcd/qq;)Labcd/qq;
    .registers 6

    new-instance v0, Labcd/qq;

    invoke-virtual {p1}, Labcd/qq;->VH()I

    move-result v1

    invoke-virtual {p0, v1}, Labcd/yr;->u7(I)I

    move-result v1

    invoke-virtual {p1}, Labcd/qq;->Zo()I

    move-result v2

    invoke-virtual {p0, v2}, Labcd/yr;->tp(I)I

    move-result v2

    invoke-virtual {p1}, Labcd/qq;->Hw()I

    move-result p1

    invoke-virtual {p0, p1}, Labcd/yr;->EQ(I)I

    move-result p1

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2, p1}, Labcd/qq;-><init>(Labcd/iq;III)V

    return-object v0
.end method

.method public j6(II)V
    .registers 4

    if-lez p1, :cond_a

    if-lez p2, :cond_a

    iget-object v0, p0, Labcd/yr;->tp:Labcd/Dr;

    invoke-virtual {v0, p1, p2}, Labcd/Dr;->DW(II)V

    return-void

    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public tp(I)I
    .registers 3

    const/4 v0, -0x1

    if-ne p1, v0, :cond_4

    goto :goto_c

    :cond_4
    iget-object v0, p0, Labcd/yr;->DW:[S

    aget-short p1, v0, p1

    const v0, 0xffff

    and-int/2addr v0, p1

    :goto_c
    return v0
.end method

.method public tp(II)V
    .registers 4

    iget-object v0, p0, Labcd/yr;->DW:[S

    int-to-short p2, p2

    aput-short p2, v0, p1

    return-void
.end method

.method public u7(I)I
    .registers 3

    const/4 v0, -0x1

    if-ne p1, v0, :cond_4

    goto :goto_8

    :cond_4
    iget-object v0, p0, Labcd/yr;->j6:[I

    aget v0, v0, p1

    :goto_8
    return v0
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

    move-result p1

    return p1
.end method

.method public v5(II)V
    .registers 4

    if-lez p1, :cond_a

    if-lez p2, :cond_a

    iget-object v0, p0, Labcd/yr;->EQ:Labcd/Dr;

    invoke-virtual {v0, p1, p2}, Labcd/Dr;->DW(II)V

    return-void

    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method
