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
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Labcd/Vn;",
            ">;I)",
            "Labcd/Wn;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-instance v1, Labcd/Wn;

    invoke-direct {v1, v0, p1}, Labcd/Wn;-><init>(II)V

    const/4 p1, 0x0

    :goto_a
    if-ge p1, v0, :cond_18

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Labcd/Vn;

    invoke-virtual {v1, p1, v2}, Labcd/Wn;->j6(ILabcd/Vn;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_a

    :cond_18
    invoke-virtual {v1}, Labcd/hu;->we()V

    return-object v1
.end method


# virtual methods
.method public er()I
    .registers 8

    invoke-virtual {p0}, Labcd/Xt;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_7
    if-ge v2, v0, :cond_3b

    invoke-virtual {p0, v2}, Labcd/Xt;->DW(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Labcd/Vn;

    instance-of v5, v4, Labcd/Tn;

    if-nez v5, :cond_14

    goto :goto_38

    :cond_14
    move-object v5, v4

    check-cast v5, Labcd/Tn;

    invoke-virtual {v5}, Labcd/Tn;->we()Labcd/ms;

    move-result-object v5

    instance-of v6, v5, Labcd/qs;

    if-nez v6, :cond_20

    goto :goto_38

    :cond_20
    invoke-virtual {v4}, Labcd/Vn;->Zo()Labcd/Xn;

    move-result-object v4

    invoke-virtual {v4}, Labcd/Xn;->j6()I

    move-result v4

    const/16 v6, 0x71

    if-ne v4, v6, :cond_2e

    const/4 v4, 0x1

    goto :goto_2f

    :cond_2e
    const/4 v4, 0x0

    :goto_2f
    check-cast v5, Labcd/qs;

    invoke-virtual {v5, v4}, Labcd/qs;->j6(Z)I

    move-result v4

    if-le v4, v3, :cond_38

    move v3, v4

    :cond_38
    :goto_38
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_3b
    return v3
.end method

.method public get(I)Labcd/Vn;
    .registers 2

    invoke-virtual {p0, p1}, Labcd/Xt;->DW(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Labcd/Vn;

    return-object p1
.end method

.method public j6(ILabcd/Vn;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Labcd/Xt;->j6(ILjava/lang/Object;)V

    return-void
.end method

.method public j6(Labcd/Lt;)V
    .registers 12

    invoke-interface {p1}, Labcd/ku;->v5()I

    move-result v0

    invoke-virtual {p0}, Labcd/Xt;->size()I

    move-result v1

    invoke-interface {p1}, Labcd/Lt;->Hw()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_42

    invoke-interface {p1}, Labcd/Lt;->DW()Z

    move-result v2

    const/4 v4, 0x0

    :goto_14
    if-ge v4, v1, :cond_42

    invoke-virtual {p0, v4}, Labcd/Xt;->DW(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Labcd/Vn;

    invoke-virtual {v5}, Labcd/Vn;->DW()I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    if-nez v6, :cond_29

    if-eqz v2, :cond_27

    goto :goto_29

    :cond_27
    const/4 v5, 0x0

    goto :goto_34

    :cond_29
    :goto_29
    const-string v7, "  "

    invoke-interface {p1}, Labcd/Lt;->j6()I

    move-result v8

    const/4 v9, 0x1

    invoke-virtual {v5, v7, v8, v9}, Labcd/Vn;->j6(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v5

    :goto_34
    if-eqz v5, :cond_3a

    :goto_36
    invoke-interface {p1, v6, v5}, Labcd/Lt;->j6(ILjava/lang/String;)V

    goto :goto_3f

    :cond_3a
    if-eqz v6, :cond_3f

    const-string v5, ""

    goto :goto_36

    :cond_3f
    :goto_3f
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    :cond_42
    :goto_42
    if-ge v3, v1, :cond_67

    invoke-virtual {p0, v3}, Labcd/Xt;->DW(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Labcd/Vn;

    :try_start_4a
    invoke-virtual {v2, p1}, Labcd/Vn;->j6(Labcd/Lt;)V
    :try_end_4d
    .catch Ljava/lang/RuntimeException; {:try_start_4a .. :try_end_4d} :catch_50

    add-int/lit8 v3, v3, 0x1

    goto :goto_42

    :catch_50
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "...while writing "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Labcd/Vt;->j6(Ljava/lang/Throwable;Ljava/lang/String;)Labcd/Vt;

    move-result-object p1

    throw p1

    :cond_67
    invoke-interface {p1}, Labcd/ku;->v5()I

    move-result p1

    sub-int/2addr p1, v0

    div-int/lit8 p1, p1, 0x2

    invoke-virtual {p0}, Labcd/Wn;->rN()I

    move-result v0

    if-ne p1, v0, :cond_75

    return-void

    :cond_75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "write length mismatch; expected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Labcd/Wn;->rN()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " but actually wrote "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_99

    :goto_98
    throw p1

    :goto_99
    goto :goto_98
.end method

.method public rN()I
    .registers 2

    invoke-virtual {p0}, Labcd/Xt;->size()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return v0

    :cond_8
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Labcd/Wn;->get(I)Labcd/Vn;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Vn;->v5()I

    move-result v0

    return v0
.end method

.method public yS()I
    .registers 2

    iget v0, p0, Labcd/Wn;->FH:I

    return v0
.end method
