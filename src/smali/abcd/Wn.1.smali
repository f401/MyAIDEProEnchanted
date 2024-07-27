.class public final Labcd/Wn;
.super Labcd/Xt;


# instance fields
.field private final FH:I


# direct methods
.method public constructor <init>(II)V
    .registers 3

    invoke-direct {p0, p1}, Labcd/Xt;-><init>(I)V

    iput p2, p0, Labcd/Wn;->FH:I

    return-void
.end method

.method public static j6(Ljava/util/ArrayList;I)Labcd/Wn;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Labcd/Vn;",
            ">;I)",
            "Labcd/Wn;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-instance v3, Labcd/Wn;

    invoke-direct {v3, v2, p1}, Labcd/Wn;-><init>(II)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/Vn;

    invoke-virtual {v3, v1, v0}, Labcd/Wn;->j6(ILabcd/Vn;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Labcd/hu;->we()V

    return-object v3
.end method


# virtual methods
.method public er()I
    .registers 8

    const/4 v3, 0x0

    invoke-virtual {p0}, Labcd/Xt;->size()I

    move-result v6

    move v5, v3

    move v4, v3

    :goto_0
    if-ge v5, v6, :cond_4

    invoke-virtual {p0, v5}, Labcd/Xt;->DW(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/Vn;

    instance-of v1, v0, Labcd/Tn;

    if-nez v1, :cond_1

    move v0, v4

    :cond_0
    :goto_1
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    move v4, v0

    goto :goto_0

    :cond_1
    move-object v1, v0

    check-cast v1, Labcd/Tn;

    invoke-virtual {v1}, Labcd/Tn;->we()Labcd/ms;

    move-result-object v1

    instance-of v2, v1, Labcd/qs;

    if-nez v2, :cond_2

    move v0, v4

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Labcd/Vn;->Zo()Labcd/Xn;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Xn;->j6()I

    move-result v0

    const/16 v2, 0x71

    if-ne v0, v2, :cond_3

    const/4 v0, 0x1

    move v2, v0

    :goto_2
    move-object v0, v1

    check-cast v0, Labcd/qs;

    invoke-virtual {v0, v2}, Labcd/qs;->j6(Z)I

    move-result v0

    if-gt v0, v4, :cond_0

    move v0, v4

    goto :goto_1

    :cond_3
    move v2, v3

    goto :goto_2

    :cond_4
    return v4
.end method

.method public get(I)Labcd/Vn;
    .registers 3

    invoke-virtual {p0, p1}, Labcd/Xt;->DW(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/Vn;

    return-object v0
.end method

.method public j6(ILabcd/Vn;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Labcd/Xt;->j6(ILjava/lang/Object;)V

    return-void
.end method

.method public j6(Labcd/Lt;)V
    .registers 12

    const/4 v1, 0x0

    invoke-interface {p1}, Labcd/ku;->v5()I

    move-result v3

    invoke-virtual {p0}, Labcd/Xt;->size()I

    move-result v4

    invoke-interface {p1}, Labcd/Lt;->Hw()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Labcd/Lt;->DW()Z

    move-result v5

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_4

    invoke-virtual {p0, v2}, Labcd/Xt;->DW(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/Vn;

    invoke-virtual {v0}, Labcd/Vn;->DW()I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    if-nez v6, :cond_0

    if-eqz v5, :cond_2

    :cond_0
    const-string v7, "  "

    invoke-interface {p1}, Labcd/Lt;->j6()I

    move-result v8

    const/4 v9, 0x1

    invoke-virtual {v0, v7, v8, v9}, Labcd/Vn;->j6(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_3

    invoke-interface {p1, v6, v0}, Labcd/Lt;->j6(ILjava/lang/String;)V

    :cond_1
    :goto_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    if-eqz v6, :cond_1

    const-string v0, ""

    invoke-interface {p1, v6, v0}, Labcd/Lt;->j6(ILjava/lang/String;)V

    goto :goto_2

    :cond_4
    :goto_3
    if-ge v1, v4, :cond_5

    invoke-virtual {p0, v1}, Labcd/Xt;->DW(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/Vn;

    :try_start_0
    invoke-virtual {v0, p1}, Labcd/Vn;->j6(Labcd/Lt;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "...while writing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Labcd/Vt;->j6(Ljava/lang/Throwable;Ljava/lang/String;)Labcd/Vt;

    move-result-object v0

    throw v0

    :cond_5
    invoke-interface {p1}, Labcd/ku;->v5()I

    move-result v0

    sub-int/2addr v0, v3

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Labcd/Wn;->rN()I

    move-result v1

    if-ne v0, v1, :cond_6

    return-void

    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "write length mismatch; expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Labcd/Wn;->rN()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " but actually wrote "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public rN()I
    .registers 2

    invoke-virtual {p0}, Labcd/Xt;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Labcd/Wn;->get(I)Labcd/Vn;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Vn;->v5()I

    move-result v0

    goto :goto_0
.end method

.method public yS()I
    .registers 2

    iget v0, p0, Labcd/Wn;->FH:I

    return v0
.end method
