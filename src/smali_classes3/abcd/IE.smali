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
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Labcd/yE;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;Z)",
            "LZD<",
            "TT;>;"
        }
    .end annotation

    new-instance p2, Labcd/GE;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Labcd/GE;-><init>(Labcd/IE;Ljava/util/Iterator;)V

    return-object p2
.end method

.method public abstract DW(Labcd/YD;)Z
.end method

.method public FH(Labcd/YD;)Labcd/FE;
    .registers 3

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Labcd/IE;->Hw(Labcd/YD;I)Labcd/FE;

    move-result-object p1

    return-object p1
.end method

.method public abstract FH()V
.end method

.method public FH(Labcd/YD;I)Z
    .registers 3

    :try_start_0
    invoke-virtual {p0, p1, p2}, Labcd/IE;->Hw(Labcd/YD;I)Labcd/FE;
    :try_end_3
    .catch Labcd/fD; {:try_start_0 .. :try_end_3} :catch_5

    const/4 p1, 0x1

    return p1

    :catch_5
    move-exception p1

    const/4 p1, 0x0

    return p1
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

    move-result-object p1

    return-object p1
.end method

.method public j6(Labcd/YD;I)Labcd/WD;
    .registers 10

    const/16 v0, 0x28

    if-ne p2, v0, :cond_9

    invoke-static {p1}, Labcd/WD;->j6(Labcd/YD;)Labcd/WD;

    move-result-object p1

    return-object p1

    :cond_9
    invoke-virtual {p1, p2}, Labcd/YD;->j6(I)Labcd/WD;

    move-result-object v1

    invoke-virtual {p0, v1}, Labcd/IE;->j6(Labcd/WD;)Ljava/util/Collection;

    move-result-object v2

    :goto_11
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v4, v3, :cond_51

    if-lt p2, v0, :cond_1b

    goto :goto_51

    :cond_1b
    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Labcd/YD;->j6(I)Labcd/WD;

    move-result-object v3

    new-instance v5, Ljava/util/ArrayList;

    const/16 v1, 0x8

    invoke-direct {v5, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2c
    :goto_2c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_41

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    if-ge v4, v1, :cond_3b

    move-object v1, v3

    move-object v2, v5

    goto :goto_11

    :cond_3b
    invoke-virtual {p0, v3}, Labcd/IE;->j6(Labcd/WD;)Ljava/util/Collection;

    move-result-object v2

    move-object v1, v3

    goto :goto_11

    :cond_41
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/yE;

    invoke-virtual {v3, v1}, Labcd/WD;->DW(Labcd/YD;)I

    move-result v6

    if-nez v6, :cond_2c

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2c

    :cond_51
    :goto_51
    return-object v1
.end method

.method public j6(Ljava/lang/Iterable;Z)Labcd/_D;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Labcd/yE;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;Z)",
            "L_D<",
            "TT;>;"
        }
    .end annotation

    new-instance p2, Labcd/HE;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Labcd/HE;-><init>(Labcd/IE;Ljava/util/Iterator;)V

    return-object p2
.end method

.method public abstract j6(Labcd/WD;)Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/WD;",
            ")",
            "Ljava/util/Collection<",
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
            "Ljava/util/Collection<",
            "Labcd/dG;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
