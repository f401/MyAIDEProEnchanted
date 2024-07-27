.class public abstract Labcd/IE;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract DW(Labcd/YD;I)J
.end method

.method public abstract DW()Labcd/IE;
.end method

.method public DW(Ljava/lang/Iterable;Z)Labcd/ZD;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Labcd/yE;",
            ">(",
            "Ljava/lang/Iterable",
            "<TT;>;Z)",
            "LZD",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Labcd/GE;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Labcd/GE;-><init>(Labcd/IE;Ljava/util/Iterator;)V

    return-object v0
.end method

.method public abstract DW(Labcd/YD;)Z
.end method

.method public FH(Labcd/YD;)Labcd/FE;
    .registers 3

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Labcd/IE;->Hw(Labcd/YD;I)Labcd/FE;

    move-result-object v0

    return-object v0
.end method

.method public abstract FH()V
.end method

.method public FH(Labcd/YD;I)Z
    .registers 4

    :try_start_0
    invoke-virtual {p0, p1, p2}, Labcd/IE;->Hw(Labcd/YD;I)Labcd/FE;
    :try_end_0
    .catch Labcd/fD; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract Hw(Labcd/YD;I)Labcd/FE;
.end method

.method public Hw()V
    .registers 1

    return-void
.end method

.method public j6(Labcd/YD;)Labcd/WD;
    .registers 3

    const/4 v0, 0x7

    invoke-virtual {p0, p1, v0}, Labcd/IE;->j6(Labcd/YD;I)Labcd/WD;

    move-result-object v0

    return-object v0
.end method

.method public j6(Labcd/YD;I)Labcd/WD;
    .registers 10

    const/16 v6, 0x28

    const/4 v5, 0x1

    if-ne p2, v6, :cond_1

    invoke-static {p1}, Labcd/WD;->j6(Labcd/YD;)Labcd/WD;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    invoke-virtual {p1, p2}, Labcd/YD;->j6(I)Labcd/WD;

    move-result-object v0

    invoke-virtual {p0, v0}, Labcd/IE;->j6(Labcd/WD;)Ljava/util/Collection;

    move-result-object v1

    move-object v2, v1

    :goto_0
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v1

    if-ge v5, v1, :cond_0

    if-ge p2, v6, :cond_0

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Labcd/YD;->j6(I)Labcd/WD;

    move-result-object v1

    new-instance v3, Ljava/util/ArrayList;

    const/16 v0, 0x8

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v5, v0, :cond_3

    move-object v0, v1

    move-object v2, v3

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v1}, Labcd/IE;->j6(Labcd/WD;)Ljava/util/Collection;

    move-result-object v2

    move-object v0, v1

    goto :goto_0

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/yE;

    invoke-virtual {v1, v0}, Labcd/WD;->DW(Labcd/YD;)I

    move-result v4

    if-nez v4, :cond_2

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public j6(Ljava/lang/Iterable;Z)Labcd/_D;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Labcd/yE;",
            ">(",
            "Ljava/lang/Iterable",
            "<TT;>;Z)",
            "L_D",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Labcd/HE;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Labcd/HE;-><init>(Labcd/IE;Ljava/util/Iterator;)V

    return-object v0
.end method

.method public abstract j6(Labcd/WD;)Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/WD;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Labcd/yE;",
            ">;"
        }
    .end annotation
.end method

.method public j6(Labcd/_F;Labcd/dG;Labcd/dG;)V
    .registers 4

    return-void
.end method

.method public j6(Labcd/qG;Ljava/util/Collection;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/qG;",
            "Ljava/util/Collection",
            "<",
            "Labcd/dG;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
