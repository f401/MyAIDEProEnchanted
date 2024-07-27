.class Labcd/MI;
.super Ljava/lang/Object;


# static fields
.field static final j6:Ljava/lang/String;


# instance fields
.field private final DW:Labcd/jJ;

.field private FH:Labcd/LI;

.field private final Hw:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Labcd/YI;",
            ">;"
        }
    .end annotation
.end field

.field private final v5:Labcd/qG;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jgit/JGitText;->openingConnection:Ljava/lang/String;

    sput-object v0, Labcd/MI;->j6:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Labcd/jJ;Ljava/util/Collection;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/jJ;",
            "Ljava/util/Collection",
            "<",
            "Labcd/YI;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Labcd/qG;

    iget-object v1, p1, Labcd/jJ;->v5:Labcd/UE;

    invoke-direct {v0, v1}, Labcd/qG;-><init>(Labcd/UE;)V

    iput-object v0, p0, Labcd/MI;->v5:Labcd/qG;

    iput-object p1, p0, Labcd/MI;->DW:Labcd/jJ;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Labcd/MI;->Hw:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/YI;

    iget-object v2, p0, Labcd/MI;->Hw:Ljava/util/Map;

    invoke-virtual {v0}, Labcd/YI;->FH()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v1, Labcd/yD;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v2

    iget-object v2, v2, Lorg/eclipse/jgit/JGitText;->duplicateRemoteRefUpdateIsIllegal:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Labcd/YI;->FH()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Labcd/yD;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private DW()Ljava/util/Map;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Labcd/YI;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Labcd/MI;->Hw:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-object v5

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/YI;

    iget-object v1, p0, Labcd/MI;->FH:Labcd/LI;

    invoke-virtual {v0}, Labcd/YI;->FH()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Labcd/iI;->getRef(Ljava/lang/String;)Labcd/ME;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-static {}, Labcd/yE;->Ws()Labcd/yE;

    move-result-object v1

    :goto_1
    invoke-virtual {v0}, Labcd/YI;->DW()Labcd/yE;

    move-result-object v2

    invoke-virtual {v2, v1}, Labcd/YD;->DW(Labcd/YD;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Labcd/YI;->VH()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Labcd/YI$a;->VH:Labcd/YI$a;

    invoke-virtual {v0, v1}, Labcd/YI;->j6(Labcd/YI$a;)V

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Labcd/ME;->DW()Labcd/yE;

    move-result-object v1

    goto :goto_1

    :cond_2
    sget-object v1, Labcd/YI$a;->DW:Labcd/YI$a;

    invoke-virtual {v0, v1}, Labcd/YI;->j6(Labcd/YI$a;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Labcd/YI;->gn()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Labcd/YI;->j6()Labcd/yE;

    move-result-object v2

    invoke-virtual {v2, v1}, Labcd/YD;->DW(Labcd/YD;)Z

    move-result v2

    if-nez v2, :cond_4

    sget-object v1, Labcd/YI$a;->v5:Labcd/YI$a;

    invoke-virtual {v0, v1}, Labcd/YI;->j6(Labcd/YI$a;)V

    goto :goto_0

    :cond_4
    invoke-static {}, Labcd/yE;->Ws()Labcd/yE;

    move-result-object v2

    invoke-virtual {v1, v2}, Labcd/YD;->DW(Labcd/YD;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v0}, Labcd/YI;->VH()Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    invoke-virtual {v0, v4}, Labcd/YI;->j6(Z)V

    invoke-virtual {v0}, Labcd/YI;->FH()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_6
    :try_start_0
    iget-object v2, p0, Labcd/MI;->v5:Labcd/qG;

    invoke-virtual {v2, v1}, Labcd/qG;->Zo(Labcd/YD;)Labcd/iG;

    move-result-object v1

    iget-object v2, p0, Labcd/MI;->v5:Labcd/qG;

    invoke-virtual {v0}, Labcd/YI;->DW()Labcd/yE;

    move-result-object v7

    invoke-virtual {v2, v7}, Labcd/qG;->Zo(Labcd/YD;)Labcd/iG;

    move-result-object v2

    instance-of v7, v1, Labcd/dG;

    if-eqz v7, :cond_9

    instance-of v7, v2, Labcd/dG;

    if-eqz v7, :cond_9

    iget-object v7, p0, Labcd/MI;->v5:Labcd/qG;

    check-cast v1, Labcd/dG;

    check-cast v2, Labcd/dG;

    invoke-virtual {v7, v1, v2}, Labcd/qG;->j6(Labcd/dG;Labcd/dG;)Z
    :try_end_0
    .catch Labcd/fD; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_7

    move v1, v3

    :goto_2
    invoke-virtual {v0, v1}, Labcd/YI;->j6(Z)V

    if-nez v1, :cond_8

    invoke-virtual {v0}, Labcd/YI;->u7()Z

    move-result v1

    if-nez v1, :cond_8

    sget-object v1, Labcd/YI$a;->FH:Labcd/YI$a;

    invoke-virtual {v0, v1}, Labcd/YI;->j6(Labcd/YI$a;)V

    goto/16 :goto_0

    :cond_7
    move v1, v4

    goto :goto_2

    :catch_0
    move-exception v0

    new-instance v1, Labcd/yD;

    iget-object v2, p0, Labcd/MI;->DW:Labcd/jJ;

    invoke-virtual {v2}, Labcd/jJ;->tp()Labcd/HJ;

    move-result-object v2

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v5

    iget-object v5, v5, Lorg/eclipse/jgit/JGitText;->readingObjectsFromLocalRepositoryFailed:Ljava/lang/String;

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v3

    invoke-static {v5, v4}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Labcd/yD;-><init>(Labcd/HJ;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v1

    move v1, v3

    goto :goto_2

    :cond_8
    invoke-virtual {v0}, Labcd/YI;->FH()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_9
    move v1, v3

    goto :goto_2
.end method

.method private FH()V
    .registers 5

    iget-object v0, p0, Labcd/MI;->Hw:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/YI;

    invoke-virtual {v0}, Labcd/YI;->Hw()Labcd/YI$a;

    move-result-object v2

    invoke-virtual {v0}, Labcd/YI;->Zo()Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Labcd/YI$a;->DW:Labcd/YI$a;

    if-eq v2, v3, :cond_2

    sget-object v3, Labcd/YI$a;->u7:Labcd/YI$a;

    if-ne v2, v3, :cond_0

    :cond_2
    :try_start_0
    iget-object v2, p0, Labcd/MI;->v5:Labcd/qG;

    invoke-virtual {v0, v2}, Labcd/YI;->j6(Labcd/qG;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private j6()V
    .registers 5

    iget-object v0, p0, Labcd/MI;->Hw:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/YI;

    invoke-virtual {v0}, Labcd/YI;->Hw()Labcd/YI$a;

    move-result-object v2

    sget-object v3, Labcd/YI$a;->j6:Labcd/YI$a;

    if-ne v2, v3, :cond_0

    sget-object v2, Labcd/YI$a;->u7:Labcd/YI$a;

    invoke-virtual {v0, v2}, Labcd/YI;->j6(Labcd/YI$a;)V

    goto :goto_0
.end method


# virtual methods
.method j6(Labcd/LE;)Labcd/NI;
    .registers 5

    :try_start_0
    sget-object v0, Labcd/MI;->j6:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Labcd/LE;->j6(Ljava/lang/String;I)V

    new-instance v1, Labcd/NI;

    invoke-direct {v1}, Labcd/NI;-><init>()V

    iget-object v0, p0, Labcd/MI;->DW:Labcd/jJ;

    invoke-virtual {v0}, Labcd/jJ;->XL()Labcd/LI;

    move-result-object v0

    iput-object v0, p0, Labcd/MI;->FH:Labcd/LI;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, Labcd/MI;->DW:Labcd/jJ;

    invoke-virtual {v0}, Labcd/jJ;->tp()Labcd/HJ;

    move-result-object v0

    iget-object v2, p0, Labcd/MI;->FH:Labcd/LI;

    invoke-interface {v2}, Labcd/iI;->FH()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Labcd/zI;->j6(Labcd/HJ;Ljava/util/Map;)V

    iget-object v0, p0, Labcd/MI;->Hw:Ljava/util/Map;

    invoke-virtual {v1, v0}, Labcd/NI;->j6(Ljava/util/Map;)V

    invoke-interface {p1}, Labcd/LE;->j6()V

    invoke-direct {p0}, Labcd/MI;->DW()Ljava/util/Map;

    move-result-object v0

    iget-object v2, p0, Labcd/MI;->DW:Labcd/jJ;

    invoke-virtual {v2}, Labcd/jJ;->we()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0}, Labcd/MI;->j6()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    :try_start_2
    iget-object v0, p0, Labcd/MI;->FH:Labcd/LI;

    invoke-interface {v0}, Labcd/iI;->close()V

    iget-object v0, p0, Labcd/MI;->FH:Labcd/LI;

    invoke-interface {v0}, Labcd/iI;->j6()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Labcd/zI;->j6(Ljava/lang/String;)V

    iget-object v0, p0, Labcd/MI;->DW:Labcd/jJ;

    invoke-virtual {v0}, Labcd/jJ;->we()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Labcd/MI;->FH()V

    :cond_1
    iget-object v0, p0, Labcd/MI;->Hw:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Labcd/MI;->v5:Labcd/qG;

    invoke-virtual {v0}, Labcd/qG;->EQ()V

    return-object v1

    :cond_3
    :try_start_3
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Labcd/MI;->FH:Labcd/LI;

    invoke-interface {v2, p1, v0}, Labcd/LI;->j6(Labcd/LE;Ljava/util/Map;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_4
    iget-object v2, p0, Labcd/MI;->FH:Labcd/LI;

    invoke-interface {v2}, Labcd/iI;->close()V

    iget-object v2, p0, Labcd/MI;->FH:Labcd/LI;

    invoke-interface {v2}, Labcd/iI;->j6()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Labcd/zI;->j6(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    iget-object v1, p0, Labcd/MI;->v5:Labcd/qG;

    invoke-virtual {v1}, Labcd/qG;->EQ()V

    throw v0

    :cond_4
    :try_start_5
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/YI;

    invoke-virtual {v0}, Labcd/YI;->v5()Labcd/gJ;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v1, v0}, Labcd/zI;->j6(Labcd/gJ;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1
.end method
