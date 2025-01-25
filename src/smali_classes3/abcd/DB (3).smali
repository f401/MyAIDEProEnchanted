.class public Labcd/DB;
.super Labcd/dB;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LdB<",
        "Ljava/util/Collection<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final FH:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Labcd/UE;)V
    .registers 2

    invoke-direct {p0, p1}, Labcd/dB;-><init>(Labcd/UE;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Labcd/DB;->FH:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Labcd/DB;->call()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/Collection;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Labcd/dB;->j6()V

    :try_start_3
    iget-object v0, p0, Labcd/dB;->j6:Labcd/UE;

    invoke-static {v0}, Labcd/YH;->j6(Labcd/UE;)Labcd/YH;

    move-result-object v0

    iget-object v1, p0, Labcd/DB;->FH:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1a

    iget-object v1, p0, Labcd/DB;->FH:Ljava/util/Collection;

    invoke-static {v1}, Labcd/hK;->DW(Ljava/util/Collection;)Labcd/jK;

    move-result-object v1

    invoke-virtual {v0, v1}, Labcd/YH;->j6(Labcd/jK;)Labcd/YH;

    :cond_1a
    iget-object v1, p0, Labcd/dB;->j6:Labcd/UE;

    invoke-virtual {v1}, Labcd/UE;->Zo()Labcd/jF;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :cond_25
    :goto_25
    invoke-virtual {v0}, Labcd/YH;->EQ()Z

    move-result v3

    if-nez v3, :cond_35

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_34

    invoke-virtual {v1}, Labcd/jF;->v5()V

    :cond_34
    return-object v2

    :cond_35
    invoke-virtual {v0}, Labcd/YH;->DW()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3c

    goto :goto_25

    :cond_3c
    invoke-virtual {v0}, Labcd/YH;->gn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Labcd/YH;->u7()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Labcd/YH;->v5()Ljava/lang/String;

    move-result-object v5
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_48} :catch_6b
    .catch Labcd/XC; {:try_start_3 .. :try_end_48} :catch_60

    const-string v6, "submodule"

    if-eqz v4, :cond_51

    :try_start_4c
    const-string v7, "url"

    invoke-virtual {v1, v6, v3, v7, v4}, Labcd/gE;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_51
    if-eqz v5, :cond_58

    const-string v7, "update"

    invoke-virtual {v1, v6, v3, v7, v5}, Labcd/gE;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_58
    if-nez v4, :cond_5c

    if-eqz v5, :cond_25

    :cond_5c
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_5f} :catch_6b
    .catch Labcd/XC; {:try_start_4c .. :try_end_5f} :catch_60

    goto :goto_25

    :catch_60
    move-exception v0

    new-instance v1, Labcd/SB;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Labcd/SB;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_6b
    move-exception v0

    new-instance v1, Labcd/SB;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Labcd/SB;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_77

    :goto_76
    throw v1

    :goto_77
    goto :goto_76
.end method
