.class public final Labcd/cs;
.super Labcd/Xt;

# interfaces
.implements Labcd/Ss;


# static fields
.field public static final FH:Labcd/cs;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Labcd/cs;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Labcd/cs;-><init>(I)V

    sput-object v0, Labcd/cs;->FH:Labcd/cs;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0, p1}, Labcd/Xt;-><init>(I)V

    return-void
.end method

.method public static j6(Labcd/bs;)Labcd/cs;
    .registers 3

    new-instance v0, Labcd/cs;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Labcd/cs;-><init>(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Labcd/cs;->j6(ILabcd/bs;)V

    return-object v0
.end method

.method public static j6(Labcd/bs;Labcd/bs;)Labcd/cs;
    .registers 4

    new-instance v0, Labcd/cs;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Labcd/cs;-><init>(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Labcd/cs;->j6(ILabcd/bs;)V

    const/4 p0, 0x1

    invoke-virtual {v0, p0, p1}, Labcd/cs;->j6(ILabcd/bs;)V

    return-object v0
.end method


# virtual methods
.method public DW(Labcd/bs;)Labcd/cs;
    .registers 7

    invoke-virtual {p0}, Labcd/Xt;->size()I

    move-result v0

    new-instance v1, Labcd/cs;

    add-int/lit8 v2, v0, 0x1

    invoke-direct {v1, v2}, Labcd/cs;-><init>(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_d
    if-ge v3, v0, :cond_1a

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p0, v3}, Labcd/Xt;->DW(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Labcd/Xt;->j6(ILjava/lang/Object;)V

    move v3, v4

    goto :goto_d

    :cond_1a
    invoke-virtual {v1, v2, p1}, Labcd/Xt;->j6(ILjava/lang/Object;)V

    invoke-virtual {p0}, Labcd/hu;->VH()Z

    move-result p1

    if-eqz p1, :cond_26

    invoke-virtual {v1}, Labcd/hu;->we()V

    :cond_26
    return-object v1
.end method

.method public Hw(I)I
    .registers 5

    invoke-virtual {p0}, Labcd/Xt;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_15

    invoke-virtual {p0, v1}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v2

    invoke-virtual {v2}, Labcd/bs;->we()I

    move-result v2

    if-ne v2, p1, :cond_12

    return v1

    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_15
    const/4 p1, -0x1

    return p1
.end method

.method public er()Labcd/cs;
    .registers 6

    invoke-virtual {p0}, Labcd/Xt;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-nez v0, :cond_b

    sget-object v0, Labcd/cs;->FH:Labcd/cs;

    return-object v0

    :cond_b
    new-instance v1, Labcd/cs;

    invoke-direct {v1, v0}, Labcd/cs;-><init>(I)V

    const/4 v2, 0x0

    :goto_11
    if-ge v2, v0, :cond_1e

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, v3}, Labcd/Xt;->DW(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Labcd/Xt;->j6(ILjava/lang/Object;)V

    move v2, v3

    goto :goto_11

    :cond_1e
    invoke-virtual {p0}, Labcd/hu;->VH()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-virtual {v1}, Labcd/hu;->we()V

    :cond_27
    return-object v1
.end method

.method public get(I)Labcd/bs;
    .registers 2

    invoke-virtual {p0, p1}, Labcd/Xt;->DW(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Labcd/bs;

    return-object p1
.end method

.method public getType(I)Labcd/Qs;
    .registers 2

    invoke-virtual {p0, p1}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object p1

    invoke-virtual {p1}, Labcd/bs;->getType()Labcd/Qs;

    move-result-object p1

    invoke-virtual {p1}, Labcd/Qs;->getType()Labcd/Qs;

    return-object p1
.end method

.method public j6(Labcd/Qs;)Labcd/Ss;
    .registers 3

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "unsupported"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public j6(IZLjava/util/BitSet;)Labcd/cs;
    .registers 10

    invoke-virtual {p0}, Labcd/Xt;->size()I

    move-result v0

    if-nez v0, :cond_7

    return-object p0

    :cond_7
    new-instance v1, Labcd/cs;

    invoke-direct {v1, v0}, Labcd/cs;-><init>(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_e
    if-ge v3, v0, :cond_3c

    invoke-virtual {p0, v3}, Labcd/Xt;->DW(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Labcd/bs;

    if-nez p3, :cond_19

    goto :goto_1f

    :cond_19
    invoke-virtual {p3, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-nez v5, :cond_21

    :goto_1f
    const/4 v5, 0x1

    goto :goto_22

    :cond_21
    const/4 v5, 0x0

    :goto_22
    if-eqz v5, :cond_33

    invoke-virtual {v4, p1}, Labcd/bs;->FH(I)Labcd/bs;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Labcd/Xt;->j6(ILjava/lang/Object;)V

    if-nez p2, :cond_36

    invoke-virtual {v4}, Labcd/bs;->Hw()I

    move-result v4

    add-int/2addr p1, v4

    goto :goto_36

    :cond_33
    invoke-virtual {v1, v3, v4}, Labcd/Xt;->j6(ILjava/lang/Object;)V

    :cond_36
    :goto_36
    if-eqz p2, :cond_39

    const/4 p2, 0x0

    :cond_39
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_3c
    invoke-virtual {p0}, Labcd/hu;->VH()Z

    move-result p1

    if-eqz p1, :cond_45

    invoke-virtual {v1}, Labcd/hu;->we()V

    :cond_45
    return-object v1
.end method

.method public j6(Ljava/util/BitSet;)Labcd/cs;
    .registers 6

    invoke-virtual {p0}, Labcd/Xt;->size()I

    move-result v0

    invoke-virtual {p1}, Ljava/util/BitSet;->cardinality()I

    move-result v1

    sub-int/2addr v0, v1

    if-nez v0, :cond_e

    sget-object p1, Labcd/cs;->FH:Labcd/cs;

    return-object p1

    :cond_e
    new-instance v1, Labcd/cs;

    invoke-direct {v1, v0}, Labcd/cs;-><init>(I)V

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_15
    invoke-virtual {p0}, Labcd/Xt;->size()I

    move-result v3

    if-ge v0, v3, :cond_2d

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-nez v3, :cond_2a

    invoke-virtual {p0, v0}, Labcd/Xt;->DW(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Labcd/Xt;->j6(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    :cond_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    :cond_2d
    invoke-virtual {p0}, Labcd/hu;->VH()Z

    move-result p1

    if-eqz p1, :cond_36

    invoke-virtual {v1}, Labcd/hu;->we()V

    :cond_36
    return-object v1
.end method

.method public j6(ILabcd/bs;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Labcd/Xt;->j6(ILjava/lang/Object;)V

    return-void
.end method

.method public rN()I
    .registers 5

    invoke-virtual {p0}, Labcd/Xt;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_6
    if-ge v1, v0, :cond_14

    invoke-virtual {p0, v1}, Labcd/cs;->getType(I)Labcd/Qs;

    move-result-object v3

    invoke-virtual {v3}, Labcd/Qs;->Zo()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_14
    return v2
.end method

.method public v5(I)Labcd/cs;
    .registers 6

    invoke-virtual {p0}, Labcd/Xt;->size()I

    move-result v0

    if-nez v0, :cond_7

    return-object p0

    :cond_7
    new-instance v1, Labcd/cs;

    invoke-direct {v1, v0}, Labcd/cs;-><init>(I)V

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v0, :cond_21

    invoke-virtual {p0, v2}, Labcd/Xt;->DW(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Labcd/bs;

    if-eqz v3, :cond_1e

    invoke-virtual {v3, p1}, Labcd/bs;->DW(I)Labcd/bs;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Labcd/Xt;->j6(ILjava/lang/Object;)V

    :cond_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_21
    invoke-virtual {p0}, Labcd/hu;->VH()Z

    move-result p1

    if-eqz p1, :cond_2a

    invoke-virtual {v1}, Labcd/hu;->we()V

    :cond_2a
    return-object v1
.end method

.method public yS()Labcd/cs;
    .registers 5

    invoke-virtual {p0}, Labcd/Xt;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-nez v0, :cond_b

    sget-object v0, Labcd/cs;->FH:Labcd/cs;

    return-object v0

    :cond_b
    new-instance v1, Labcd/cs;

    invoke-direct {v1, v0}, Labcd/cs;-><init>(I)V

    const/4 v2, 0x0

    :goto_11
    if-ge v2, v0, :cond_1d

    invoke-virtual {p0, v2}, Labcd/Xt;->DW(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Labcd/Xt;->j6(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_1d
    invoke-virtual {p0}, Labcd/hu;->VH()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-virtual {v1}, Labcd/hu;->we()V

    :cond_26
    return-object v1
.end method
