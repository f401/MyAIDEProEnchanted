.class public Labcd/sB;
.super Labcd/GB;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LGB",
        "<",
        "Labcd/sB;",
        "Ljava/lang/Iterable",
        "<",
        "Labcd/NI;",
        ">;>;"
    }
.end annotation


# instance fields
.field private EQ:Z

.field private final VH:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
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
    .registers 4

    invoke-direct {p0, p1}, Labcd/GB;-><init>(Labcd/UE;)V

    const-string v0, "origin"

    iput-object v0, p0, Labcd/sB;->Zo:Ljava/lang/String;

    sget-object v0, Labcd/vE;->j6:Labcd/vE;

    iput-object v0, p0, Labcd/sB;->gn:Labcd/LE;

    const-string v0, "git-receive-pack"

    iput-object v0, p0, Labcd/sB;->u7:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Labcd/sB;->we:Z

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Labcd/sB;->VH:Ljava/util/List;

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
            "Ljava/lang/Iterable",
            "<",
            "Labcd/NI;",
            ">;"
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Labcd/dB;->j6()V

    new-instance v3, Ljava/util/ArrayList;

    const/4 v0, 0x3

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    :try_start_0
    iget-object v0, p0, Labcd/sB;->VH:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Labcd/XI;

    iget-object v1, p0, Labcd/dB;->j6:Labcd/UE;

    invoke-virtual {v1}, Labcd/UE;->Zo()Labcd/jF;

    move-result-object v1

    invoke-virtual {p0}, Labcd/sB;->Hw()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v4}, Labcd/XI;-><init>(Labcd/gE;Ljava/lang/String;)V

    iget-object v1, p0, Labcd/sB;->VH:Ljava/util/List;

    invoke-virtual {v0}, Labcd/XI;->FH()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    iget-object v0, p0, Labcd/sB;->VH:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Labcd/dB;->j6:Labcd/UE;

    const-string v1, "HEAD"

    invoke-virtual {v0, v1}, Labcd/UE;->j6(Ljava/lang/String;)Labcd/ME;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Labcd/ME;->Zo()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Labcd/sB;->VH:Ljava/util/List;

    new-instance v4, Labcd/WI;

    invoke-interface {v0}, Labcd/ME;->v5()Labcd/ME;

    move-result-object v0

    invoke-interface {v0}, Labcd/ME;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Labcd/WI;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-boolean v0, p0, Labcd/sB;->EQ:Z

    if-eqz v0, :cond_2

    move v1, v2

    :goto_0
    iget-object v0, p0, Labcd/sB;->VH:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_3

    :cond_2
    iget-object v0, p0, Labcd/dB;->j6:Labcd/UE;

    iget-object v1, p0, Labcd/sB;->Zo:Ljava/lang/String;

    sget-object v4, Labcd/jJ$a;->DW:Labcd/jJ$a;

    invoke-static {v0, v1, v4}, Labcd/jJ;->DW(Labcd/UE;Ljava/lang/String;Labcd/jJ$a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    return-object v3

    :cond_3
    iget-object v4, p0, Labcd/sB;->VH:Ljava/util/List;

    iget-object v0, p0, Labcd/sB;->VH:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/WI;

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Labcd/WI;->j6(Z)Labcd/WI;

    move-result-object v0

    invoke-interface {v4, v1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/jJ;

    iget-boolean v4, p0, Labcd/sB;->we:Z

    invoke-virtual {v0, v4}, Labcd/jJ;->Hw(Z)V

    iget-object v4, p0, Labcd/sB;->u7:Ljava/lang/String;

    if-eqz v4, :cond_5

    iget-object v4, p0, Labcd/sB;->u7:Ljava/lang/String;

    invoke-virtual {v0, v4}, Labcd/jJ;->j6(Ljava/lang/String;)V

    :cond_5
    iget-boolean v4, p0, Labcd/sB;->tp:Z

    invoke-virtual {v0, v4}, Labcd/jJ;->DW(Z)V

    invoke-virtual {p0, v0}, Labcd/GB;->j6(Labcd/jJ;)Labcd/dB;

    iget-object v4, p0, Labcd/sB;->VH:Ljava/util/List;

    invoke-virtual {v0, v4}, Labcd/jJ;->j6(Ljava/util/Collection;)Ljava/util/Collection;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Labcd/jD; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v4

    :try_start_1
    iget-object v5, p0, Labcd/sB;->gn:Labcd/LE;

    invoke-virtual {v0, v5, v4}, Labcd/jJ;->DW(Labcd/LE;Ljava/util/Collection;)Labcd/NI;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Labcd/yD; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0}, Labcd/jJ;->DW()V
    :try_end_2
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Labcd/jD; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v0, Labcd/RB;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->invalidRemote:Ljava/lang/String;

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Labcd/sB;->Zo:Ljava/lang/String;

    aput-object v4, v3, v2

    invoke-static {v1, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Labcd/RB;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception v1

    :try_start_3
    new-instance v3, Labcd/SB;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v4

    iget-object v4, v4, Lorg/eclipse/jgit/JGitText;->exceptionCaughtDuringExecutionOfPushCommand:Ljava/lang/String;

    invoke-direct {v3, v4, v1}, Labcd/SB;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v1

    :try_start_4
    invoke-virtual {v0}, Labcd/jJ;->DW()V

    throw v1
    :try_end_4
    .catch Ljava/net/URISyntaxException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Labcd/jD; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :catch_2
    move-exception v0

    new-instance v1, Labcd/SB;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v2

    iget-object v2, v2, Lorg/eclipse/jgit/JGitText;->exceptionCaughtDuringExecutionOfPushCommand:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Labcd/SB;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_3
    move-exception v0

    new-instance v1, Labcd/SB;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v2

    iget-object v2, v2, Lorg/eclipse/jgit/JGitText;->exceptionCaughtDuringExecutionOfPushCommand:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Labcd/SB;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
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
