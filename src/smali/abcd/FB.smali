.class public Labcd/FB;
.super Labcd/GB;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LGB",
        "<",
        "Labcd/FB;",
        "Ljava/util/Collection",
        "<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final VH:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private Zo:Labcd/LE;


# direct methods
.method public constructor <init>(Labcd/UE;)V
    .registers 3

    invoke-direct {p0, p1}, Labcd/GB;-><init>(Labcd/UE;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Labcd/FB;->VH:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Labcd/FB;->call()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/Collection;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Labcd/dB;->j6()V

    :try_start_0
    iget-object v0, p0, Labcd/dB;->j6:Labcd/UE;

    invoke-static {v0}, Labcd/YH;->j6(Labcd/UE;)Labcd/YH;

    move-result-object v1

    iget-object v0, p0, Labcd/FB;->VH:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Labcd/FB;->VH:Ljava/util/Collection;

    invoke-static {v0}, Labcd/hK;->DW(Ljava/util/Collection;)Labcd/jK;

    move-result-object v0

    invoke-virtual {v1, v0}, Labcd/YH;->j6(Labcd/jK;)Labcd/YH;

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    :goto_0
    invoke-virtual {v1}, Labcd/YH;->EQ()Z

    move-result v0

    if-nez v0, :cond_2

    return-object v2

    :cond_2
    invoke-virtual {v1}, Labcd/YH;->Hw()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Labcd/YH;->DW()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Labcd/YH;->tp()Labcd/UE;

    move-result-object v0

    if-nez v0, :cond_4

    invoke-static {}, Labcd/cB;->VH()Labcd/XA;

    move-result-object v0

    invoke-virtual {p0, v0}, Labcd/GB;->j6(Labcd/GB;)Labcd/dB;

    invoke-virtual {v0, v3}, Labcd/XA;->j6(Ljava/lang/String;)Labcd/XA;

    invoke-virtual {v1}, Labcd/YH;->FH()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v0, v3}, Labcd/XA;->j6(Ljava/io/File;)Labcd/XA;

    iget-object v3, p0, Labcd/FB;->Zo:Labcd/LE;

    if-eqz v3, :cond_3

    iget-object v3, p0, Labcd/FB;->Zo:Labcd/LE;

    invoke-virtual {v0, v3}, Labcd/XA;->j6(Labcd/LE;)Labcd/XA;

    :cond_3
    invoke-virtual {v0}, Labcd/XA;->call()Labcd/cB;

    move-result-object v0

    invoke-virtual {v0}, Labcd/cB;->u7()Labcd/UE;

    move-result-object v0

    :cond_4
    new-instance v3, Labcd/qG;

    invoke-direct {v3, v0}, Labcd/qG;-><init>(Labcd/UE;)V

    invoke-virtual {v1}, Labcd/YH;->VH()Labcd/yE;

    move-result-object v4

    invoke-virtual {v3, v4}, Labcd/qG;->VH(Labcd/YD;)Labcd/dG;

    move-result-object v3

    invoke-virtual {v1}, Labcd/YH;->j6()Ljava/lang/String;

    move-result-object v4

    const-string v5, "merge"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    new-instance v4, Labcd/iB;

    invoke-direct {v4, v0}, Labcd/iB;-><init>(Labcd/UE;)V

    invoke-virtual {v4, v3}, Labcd/iB;->j6(Labcd/YD;)Labcd/iB;

    invoke-virtual {v4}, Labcd/iB;->call()Labcd/pB;

    :goto_1
    invoke-virtual {v1}, Labcd/YH;->gn()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Labcd/XC; {:try_start_0 .. :try_end_0} :catch_1
    .catch Labcd/NB; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Labcd/SB;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Labcd/SB;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_5
    :try_start_1
    const-string v5, "rebase"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    new-instance v4, Labcd/tB;

    invoke-direct {v4, v0}, Labcd/tB;-><init>(Labcd/UE;)V

    invoke-virtual {v4, v3}, Labcd/tB;->j6(Labcd/dG;)Labcd/tB;

    invoke-virtual {v4}, Labcd/tB;->call()Labcd/AB;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Labcd/XC; {:try_start_1 .. :try_end_1} :catch_1
    .catch Labcd/NB; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    :catch_1
    move-exception v0

    new-instance v1, Labcd/SB;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Labcd/SB;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_6
    :try_start_2
    new-instance v4, Labcd/NC;

    invoke-virtual {v0}, Labcd/UE;->XL()Labcd/KC;

    move-result-object v5

    invoke-virtual {v3}, Labcd/dG;->yS()Labcd/mG;

    move-result-object v6

    invoke-direct {v4, v0, v5, v6}, Labcd/NC;-><init>(Labcd/UE;Labcd/KC;Labcd/yE;)V

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Labcd/NC;->j6(Z)V

    invoke-virtual {v4}, Labcd/NC;->j6()Z

    const-string v4, "HEAD"

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Labcd/UE;->j6(Ljava/lang/String;Z)Labcd/RE;

    move-result-object v0

    invoke-virtual {v0, v3}, Labcd/RE;->DW(Labcd/YD;)V

    invoke-virtual {v0}, Labcd/RE;->FH()Labcd/RE$a;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Labcd/XC; {:try_start_2 .. :try_end_2} :catch_1
    .catch Labcd/NB; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    new-instance v1, Labcd/SB;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Labcd/SB;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public j6(Labcd/LE;)Labcd/FB;
    .registers 2

    iput-object p1, p0, Labcd/FB;->Zo:Labcd/LE;

    return-object p0
.end method
