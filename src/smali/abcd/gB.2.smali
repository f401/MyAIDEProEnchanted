.class public Labcd/gB;
.super Labcd/dB;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/gB$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "LdB",
        "<",
        "Ljava/util/List",
        "<",
        "Labcd/ME;",
        ">;>;"
    }
.end annotation


# instance fields
.field private FH:Labcd/gB$a;


# direct methods
.method protected constructor <init>(Labcd/UE;)V
    .registers 2

    invoke-direct {p0, p1}, Labcd/dB;-><init>(Labcd/UE;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Labcd/gB;->call()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Labcd/ME;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Labcd/dB;->j6()V

    :try_start_0
    iget-object v0, p0, Labcd/gB;->FH:Labcd/gB$a;

    if-nez v0, :cond_0

    iget-object v0, p0, Labcd/dB;->j6:Labcd/UE;

    invoke-virtual {v0}, Labcd/UE;->we()Labcd/OE;

    move-result-object v0

    const-string v1, "refs/heads/"

    invoke-virtual {v0, v1}, Labcd/OE;->DW(Ljava/lang/String;)Ljava/util/Map;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance v0, Labcd/fB;

    invoke-direct {v0, p0}, Labcd/fB;-><init>(Labcd/gB;)V

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Labcd/dB;->j6(Z)V

    return-object v1

    :cond_0
    :try_start_1
    iget-object v0, p0, Labcd/gB;->FH:Labcd/gB$a;

    sget-object v1, Labcd/gB$a;->DW:Labcd/gB$a;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Labcd/dB;->j6:Labcd/UE;

    invoke-virtual {v0}, Labcd/UE;->we()Labcd/OE;

    move-result-object v0

    const-string v1, "refs/remotes/"

    invoke-virtual {v0, v1}, Labcd/OE;->DW(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Labcd/dB;->j6:Labcd/UE;

    invoke-virtual {v1}, Labcd/UE;->we()Labcd/OE;

    move-result-object v1

    const-string v2, "refs/heads/"

    invoke-virtual {v1, v2}, Labcd/OE;->DW(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iget-object v1, p0, Labcd/dB;->j6:Labcd/UE;

    invoke-virtual {v1}, Labcd/UE;->we()Labcd/OE;

    move-result-object v1

    const-string v2, "refs/remotes/"

    invoke-virtual {v1, v2}, Labcd/OE;->DW(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Labcd/SB;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Labcd/SB;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public j6(Labcd/gB$a;)Labcd/gB;
    .registers 2

    invoke-virtual {p0}, Labcd/dB;->j6()V

    iput-object p1, p0, Labcd/gB;->FH:Labcd/gB$a;

    return-object p0
.end method
