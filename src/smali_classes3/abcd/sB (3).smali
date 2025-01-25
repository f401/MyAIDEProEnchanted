.class public Labcd/sB;
.super Labcd/GB;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LGB<",
        "Labcd/sB;",
        "Ljava/lang/Iterable<",
        "Labcd/NI;",
        ">;>;"
    }
.end annotation


# instance fields
.field private EQ:Z

.field private final VH:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Labcd/WI;",
            ">;"
        }
    .end annotation
.end field

.field private Zo:Ljava/lang/String;

.field private gn:Labcd/LE;

.field private tp:Z

.field private u7:Ljava/lang/String;

.field private we:Z


# direct methods
.method protected constructor <init>(Labcd/UE;)V
    .registers 3

    invoke-direct {p0, p1}, Labcd/GB;-><init>(Labcd/UE;)V

    const-string p1, "origin"

    iput-object p1, p0, Labcd/sB;->Zo:Ljava/lang/String;

    sget-object p1, Labcd/vE;->j6:Labcd/vE;

    iput-object p1, p0, Labcd/sB;->gn:Labcd/LE;

    const-string p1, "git-receive-pack"

    iput-object p1, p0, Labcd/sB;->u7:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Labcd/sB;->we:Z

    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x3

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Labcd/sB;->VH:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public Hw()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Labcd/sB;->Zo:Ljava/lang/String;

    return-object v0
.end method

.method public call()Ljava/lang/Iterable;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Labcd/NI;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Labcd/dB;->j6()V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_b
    iget-object v3, p0, Labcd/sB;->VH:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2b

    new-instance v3, Labcd/XI;

    iget-object v4, p0, Labcd/dB;->j6:Labcd/UE;

    invoke-virtual {v4}, Labcd/UE;->Zo()Labcd/jF;

    move-result-object v4

    invoke-virtual {p0}, Labcd/sB;->Hw()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Labcd/XI;-><init>(Labcd/gE;Ljava/lang/String;)V

    iget-object v4, p0, Labcd/sB;->VH:Ljava/util/List;

    invoke-virtual {v3}, Labcd/XI;->FH()Ljava/util/List;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2b
    iget-object v3, p0, Labcd/sB;->VH:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_55

    iget-object v3, p0, Labcd/dB;->j6:Labcd/UE;

    const-string v4, "HEAD"

    invoke-virtual {v3, v4}, Labcd/UE;->j6(Ljava/lang/String;)Labcd/ME;

    move-result-object v3

    if-eqz v3, :cond_55

    invoke-interface {v3}, Labcd/ME;->Zo()Z

    move-result v4

    if-eqz v4, :cond_55

    iget-object v4, p0, Labcd/sB;->VH:Ljava/util/List;

    new-instance v5, Labcd/WI;

    invoke-interface {v3}, Labcd/ME;->v5()Labcd/ME;

    move-result-object v3

    invoke-interface {v3}, Labcd/ME;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Labcd/WI;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_55
    iget-boolean v3, p0, Labcd/sB;->EQ:Z

    if-eqz v3, :cond_75

    const/4 v3, 0x0

    :goto_5a
    iget-object v4, p0, Labcd/sB;->VH:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt v3, v4, :cond_63

    goto :goto_75

    :cond_63
    iget-object v4, p0, Labcd/sB;->VH:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Labcd/WI;

    invoke-virtual {v5, v2}, Labcd/WI;->j6(Z)Labcd/WI;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_5a

    :cond_75
    :goto_75
    iget-object v3, p0, Labcd/dB;->j6:Labcd/UE;

    iget-object v4, p0, Labcd/sB;->Zo:Ljava/lang/String;

    sget-object v5, Labcd/jJ$a;->DW:Labcd/jJ$a;

    invoke-static {v3, v4, v5}, Labcd/jJ;->DW(Labcd/UE;Ljava/lang/String;Labcd/jJ$a;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_83
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_8a

    return-object v0

    :cond_8a
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Labcd/jJ;

    iget-boolean v5, p0, Labcd/sB;->we:Z

    invoke-virtual {v4, v5}, Labcd/jJ;->Hw(Z)V

    iget-object v5, p0, Labcd/sB;->u7:Ljava/lang/String;

    if-eqz v5, :cond_9c

    invoke-virtual {v4, v5}, Labcd/jJ;->j6(Ljava/lang/String;)V

    :cond_9c
    iget-boolean v5, p0, Labcd/sB;->tp:Z

    invoke-virtual {v4, v5}, Labcd/jJ;->DW(Z)V

    invoke-virtual {p0, v4}, Labcd/GB;->j6(Labcd/jJ;)Labcd/dB;

    iget-object v5, p0, Labcd/sB;->VH:Ljava/util/List;

    invoke-virtual {v4, v5}, Labcd/jJ;->j6(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v5
    :try_end_aa
    .catch Ljava/net/URISyntaxException; {:try_start_b .. :try_end_aa} :catch_e4
    .catch Labcd/jD; {:try_start_b .. :try_end_aa} :catch_d7
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_aa} :catch_ca

    :try_start_aa
    iget-object v6, p0, Labcd/sB;->gn:Labcd/LE;

    invoke-virtual {v4, v6, v5}, Labcd/jJ;->DW(Labcd/LE;Ljava/util/Collection;)Labcd/NI;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_b3
    .catch Labcd/yD; {:try_start_aa .. :try_end_b3} :catch_b9
    .catchall {:try_start_aa .. :try_end_b3} :catchall_b7

    :try_start_b3
    invoke-virtual {v4}, Labcd/jJ;->DW()V
    :try_end_b6
    .catch Ljava/net/URISyntaxException; {:try_start_b3 .. :try_end_b6} :catch_e4
    .catch Labcd/jD; {:try_start_b3 .. :try_end_b6} :catch_d7
    .catch Ljava/io/IOException; {:try_start_b3 .. :try_end_b6} :catch_ca

    goto :goto_83

    :catchall_b7
    move-exception v0

    goto :goto_c6

    :catch_b9
    move-exception v0

    :try_start_ba
    new-instance v3, Labcd/SB;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v5

    iget-object v5, v5, Lorg/eclipse/jgit/JGitText;->exceptionCaughtDuringExecutionOfPushCommand:Ljava/lang/String;

    invoke-direct {v3, v5, v0}, Labcd/SB;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_c6
    .catchall {:try_start_ba .. :try_end_c6} :catchall_b7

    :goto_c6
    :try_start_c6
    invoke-virtual {v4}, Labcd/jJ;->DW()V

    throw v0
    :try_end_ca
    .catch Ljava/net/URISyntaxException; {:try_start_c6 .. :try_end_ca} :catch_e4
    .catch Labcd/jD; {:try_start_c6 .. :try_end_ca} :catch_d7
    .catch Ljava/io/IOException; {:try_start_c6 .. :try_end_ca} :catch_ca

    :catch_ca
    move-exception v0

    new-instance v1, Labcd/SB;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v2

    iget-object v2, v2, Lorg/eclipse/jgit/JGitText;->exceptionCaughtDuringExecutionOfPushCommand:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Labcd/SB;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_d7
    move-exception v0

    new-instance v1, Labcd/SB;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v2

    iget-object v2, v2, Lorg/eclipse/jgit/JGitText;->exceptionCaughtDuringExecutionOfPushCommand:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Labcd/SB;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_e4
    move-exception v0

    new-instance v0, Labcd/RB;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v3

    iget-object v3, v3, Lorg/eclipse/jgit/JGitText;->invalidRemote:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Labcd/sB;->Zo:Ljava/lang/String;

    aput-object v4, v2, v1

    invoke-static {v3, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Labcd/RB;-><init>(Ljava/lang/String;)V

    goto :goto_fc

    :goto_fb
    throw v0

    :goto_fc
    goto :goto_fb
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Labcd/sB;->call()Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public j6(Labcd/LE;)Labcd/sB;
    .registers 2

    invoke-virtual {p0}, Labcd/dB;->j6()V

    iput-object p1, p0, Labcd/sB;->gn:Labcd/LE;

    return-object p0
.end method
