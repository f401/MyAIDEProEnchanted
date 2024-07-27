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

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Labcd/cs;->j6(ILabcd/bs;)V

    return-object v0
.end method


# virtual methods
.method public DW(Labcd/bs;)Labcd/cs;
    .registers 7

    const/4 v1, 0x0

    invoke-virtual {p0}, Labcd/Xt;->size()I

    move-result v3

    new-instance v4, Labcd/cs;

    add-int/lit8 v0, v3, 0x1

    invoke-direct {v4, v0}, Labcd/cs;-><init>(I)V

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_0

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v0}, Labcd/Xt;->DW(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v2, v0}, Labcd/Xt;->j6(ILjava/lang/Object;)V

    move v0, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v4, v1, p1}, Labcd/Xt;->j6(ILjava/lang/Object;)V

    invoke-virtual {p0}, Labcd/hu;->VH()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v4}, Labcd/hu;->we()V

    :cond_1
    return-object v4
.end method

.method public Hw(I)I
    .registers 5

    invoke-virtual {p0}, Labcd/Xt;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v2

    invoke-virtual {v2}, Labcd/bs;->we()I

    move-result v2

    if-ne v2, p1, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public er()Labcd/cs;
    .registers 6

    invoke-virtual {p0}, Labcd/Xt;->size()I

    move-result v0

    add-int/lit8 v3, v0, -0x1

    if-nez v3, :cond_1

    sget-object v0, Labcd/cs;->FH:Labcd/cs;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Labcd/cs;

    invoke-direct {v0, v3}, Labcd/cs;-><init>(I)V

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_2

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2}, Labcd/Xt;->DW(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Labcd/Xt;->j6(ILjava/lang/Object;)V

    move v1, v2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Labcd/hu;->VH()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Labcd/hu;->we()V

    goto :goto_0
.end method

.method public get(I)Labcd/bs;
    .registers 3

    invoke-virtual {p0, p1}, Labcd/Xt;->DW(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/bs;

    return-object v0
.end method

.method public getType(I)Labcd/Qs;
    .registers 3

    invoke-virtual {p0, p1}, Labcd/cs;->get(I)Labcd/bs;

    move-result-object v0

    invoke-virtual {v0}, Labcd/bs;->getType()Labcd/Qs;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Qs;->getType()Labcd/Qs;

    return-object v0
.end method

.method public j6(Labcd/Qs;)Labcd/Ss;
    .registers 4

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public j6(IZLjava/util/BitSet;)Labcd/cs;
    .registers 13

    const/4 v1, 0x0

    invoke-virtual {p0}, Labcd/Xt;->size()I

    move-result v7

    if-nez v7, :cond_0

    :goto_0
    return-object p0

    :cond_0
    new-instance v3, Labcd/cs;

    invoke-direct {v3, v7}, Labcd/cs;-><init>(I)V

    move v4, p1

    move v2, p2

    move v6, v1

    :goto_1
    if-ge v6, v7, :cond_5

    invoke-virtual {p0, v6}, Labcd/Xt;->DW(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/bs;

    const/4 v5, 0x1

    if-nez p3, :cond_3

    :cond_1
    :goto_2
    if-eqz v5, :cond_4

    invoke-virtual {v0, v4}, Labcd/bs;->FH(I)Labcd/bs;

    move-result-object v5

    invoke-virtual {v3, v6, v5}, Labcd/Xt;->j6(ILjava/lang/Object;)V

    if-nez v2, :cond_2

    invoke-virtual {v0}, Labcd/bs;->Hw()I

    move-result v0

    add-int/2addr v0, v4

    move v4, v0

    :cond_2
    :goto_3
    if-eqz v2, :cond_7

    move v0, v1

    :goto_4
    add-int/lit8 v5, v6, 0x1

    move v2, v0

    move v6, v5

    goto :goto_1

    :cond_3
    invoke-virtual {p3, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v8

    if-eqz v8, :cond_1

    move v5, v1

    goto :goto_2

    :cond_4
    invoke-virtual {v3, v6, v0}, Labcd/Xt;->j6(ILjava/lang/Object;)V

    goto :goto_3

    :cond_5
    invoke-virtual {p0}, Labcd/hu;->VH()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v3}, Labcd/hu;->we()V

    :cond_6
    move-object p0, v3

    goto :goto_0

    :cond_7
    move v0, v2

    goto :goto_4
.end method

.method public j6(Ljava/util/BitSet;)Labcd/cs;
    .registers 6

    const/4 v1, 0x0

    invoke-virtual {p0}, Labcd/Xt;->size()I

    move-result v0

    invoke-virtual {p1}, Ljava/util/BitSet;->cardinality()I

    move-result v2

    sub-int/2addr v0, v2

    if-nez v0, :cond_0

    sget-object v0, Labcd/cs;->FH:Labcd/cs;

    :goto_0
    return-object v0

    :cond_0
    new-instance v3, Labcd/cs;

    invoke-direct {v3, v0}, Labcd/cs;-><init>(I)V

    move v0, v1

    move v2, v1

    :goto_1
    invoke-virtual {p0}, Labcd/Xt;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0, v0}, Labcd/Xt;->DW(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v2, v1}, Labcd/Xt;->j6(ILjava/lang/Object;)V

    add-int/lit8 v1, v2, 0x1

    :goto_2
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Labcd/hu;->VH()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v3}, Labcd/hu;->we()V

    :cond_2
    move-object v0, v3

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_2
.end method

.method public j6(ILabcd/bs;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Labcd/Xt;->j6(ILjava/lang/Object;)V

    return-void
.end method

.method public rN()I
    .registers 5

    const/4 v1, 0x0

    invoke-virtual {p0}, Labcd/Xt;->size()I

    move-result v3

    move v0, v1

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_0

    invoke-virtual {p0, v2}, Labcd/cs;->getType(I)Labcd/Qs;

    move-result-object v1

    invoke-virtual {v1}, Labcd/Qs;->Zo()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public v5(I)Labcd/cs;
    .registers 6

    invoke-virtual {p0}, Labcd/Xt;->size()I

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    return-object p0

    :cond_0
    new-instance v1, Labcd/cs;

    invoke-direct {v1, v3}, Labcd/cs;-><init>(I)V

    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-ge v2, v3, :cond_2

    invoke-virtual {p0, v2}, Labcd/Xt;->DW(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/bs;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Labcd/bs;->DW(I)Labcd/bs;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Labcd/Xt;->j6(ILjava/lang/Object;)V

    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Labcd/hu;->VH()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v1}, Labcd/hu;->we()V

    :cond_3
    move-object p0, v1

    goto :goto_0
.end method

.method public yS()Labcd/cs;
    .registers 5

    invoke-virtual {p0}, Labcd/Xt;->size()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    if-nez v2, :cond_1

    sget-object v0, Labcd/cs;->FH:Labcd/cs;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Labcd/cs;

    invoke-direct {v0, v2}, Labcd/cs;-><init>(I)V

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_2

    invoke-virtual {p0, v1}, Labcd/Xt;->DW(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Labcd/Xt;->j6(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Labcd/hu;->VH()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Labcd/hu;->we()V

    goto :goto_0
.end method
