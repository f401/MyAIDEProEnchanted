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
            "Ljava/util/Map<",
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
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/jJ;",
            "Ljava/util/Collection<",
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

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Labcd/MI;->Hw:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_19
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-nez p2, :cond_20

    return-void

    :cond_20
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Labcd/YI;

    iget-object v0, p0, Labcd/MI;->Hw:Ljava/util/Map;

    invoke-virtual {p2}, Labcd/YI;->FH()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_33

    goto :goto_19

    :cond_33
    new-instance p1, Labcd/yD;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jgit/JGitText;->duplicateRemoteRefUpdateIsIllegal:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p2}, Labcd/YI;->FH()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Labcd/yD;-><init>(Ljava/lang/String;)V

    goto :goto_4e

    :goto_4d
    throw p1

    :goto_4e
    goto :goto_4d
.end method

.method private DW()Ljava/util/Map;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Labcd/YI;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Labcd/MI;->Hw:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_16

    return-object v0

    :cond_16
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Labcd/YI;

    iget-object v3, p0, Labcd/MI;->FH:Labcd/LI;

    invoke-virtual {v2}, Labcd/YI;->FH()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Labcd/iI;->getRef(Ljava/lang/String;)Labcd/ME;

    move-result-object v3

    if-nez v3, :cond_2d

    invoke-static {}, Labcd/yE;->Ws()Labcd/yE;

    move-result-object v3

    goto :goto_31

    :cond_2d
    invoke-interface {v3}, Labcd/ME;->DW()Labcd/yE;

    move-result-object v3

    :goto_31
    invoke-virtual {v2}, Labcd/YI;->DW()Labcd/yE;

    move-result-object v4

    invoke-virtual {v4, v3}, Labcd/YD;->DW(Labcd/YD;)Z

    move-result v4

    if-eqz v4, :cond_4a

    invoke-virtual {v2}, Labcd/YI;->VH()Z

    move-result v3

    if-eqz v3, :cond_44

    sget-object v3, Labcd/YI$a;->VH:Labcd/YI$a;

    goto :goto_46

    :cond_44
    sget-object v3, Labcd/YI$a;->DW:Labcd/YI$a;

    :goto_46
    invoke-virtual {v2, v3}, Labcd/YI;->j6(Labcd/YI$a;)V

    goto :goto_f

    :cond_4a
    invoke-virtual {v2}, Labcd/YI;->gn()Z

    move-result v4

    if-eqz v4, :cond_5d

    invoke-virtual {v2}, Labcd/YI;->j6()Labcd/yE;

    move-result-object v4

    invoke-virtual {v4, v3}, Labcd/YD;->DW(Labcd/YD;)Z

    move-result v4

    if-nez v4, :cond_5d

    sget-object v3, Labcd/YI$a;->v5:Labcd/YI$a;

    goto :goto_46

    :cond_5d
    invoke-static {}, Labcd/yE;->Ws()Labcd/yE;

    move-result-object v4

    invoke-virtual {v3, v4}, Labcd/YD;->DW(Labcd/YD;)Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_c4

    invoke-virtual {v2}, Labcd/YI;->VH()Z

    move-result v4

    if-eqz v4, :cond_6f

    goto :goto_c4

    :cond_6f
    const/4 v4, 0x0

    :try_start_70
    iget-object v6, p0, Labcd/MI;->v5:Labcd/qG;

    invoke-virtual {v6, v3}, Labcd/qG;->Zo(Labcd/YD;)Labcd/iG;

    move-result-object v3

    iget-object v6, p0, Labcd/MI;->v5:Labcd/qG;

    invoke-virtual {v2}, Labcd/YI;->DW()Labcd/yE;

    move-result-object v7

    invoke-virtual {v6, v7}, Labcd/qG;->Zo(Labcd/YD;)Labcd/iG;

    move-result-object v6

    instance-of v7, v3, Labcd/dG;

    if-eqz v7, :cond_b5

    instance-of v7, v6, Labcd/dG;

    if-eqz v7, :cond_b5

    iget-object v7, p0, Labcd/MI;->v5:Labcd/qG;

    check-cast v3, Labcd/dG;

    check-cast v6, Labcd/dG;

    invoke-virtual {v7, v3, v6}, Labcd/qG;->j6(Labcd/dG;Labcd/dG;)Z

    move-result v3
    :try_end_92
    .catch Labcd/fD; {:try_start_70 .. :try_end_92} :catch_b4
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_92} :catch_95

    if-nez v3, :cond_b6

    goto :goto_b5

    :catch_95
    move-exception v0

    new-instance v1, Labcd/yD;

    iget-object v2, p0, Labcd/MI;->DW:Labcd/jJ;

    invoke-virtual {v2}, Labcd/jJ;->tp()Labcd/HJ;

    move-result-object v2

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v3

    iget-object v3, v3, Lorg/eclipse/jgit/JGitText;->readingObjectsFromLocalRepositoryFailed:Ljava/lang/String;

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-static {v3, v5}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Labcd/yD;-><init>(Labcd/HJ;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_b4
    move-exception v3

    :cond_b5
    :goto_b5
    const/4 v5, 0x0

    :cond_b6
    invoke-virtual {v2, v5}, Labcd/YI;->j6(Z)V

    if-nez v5, :cond_c7

    invoke-virtual {v2}, Labcd/YI;->u7()Z

    move-result v3

    if-nez v3, :cond_c7

    sget-object v3, Labcd/YI$a;->FH:Labcd/YI$a;

    goto :goto_46

    :cond_c4
    :goto_c4
    invoke-virtual {v2, v5}, Labcd/YI;->j6(Z)V

    :cond_c7
    invoke-virtual {v2}, Labcd/YI;->FH()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_f
.end method

.method private FH()V
    .registers 5

    iget-object v0, p0, Labcd/MI;->Hw:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_11

    return-void

    :cond_11
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/YI;

    invoke-virtual {v1}, Labcd/YI;->Hw()Labcd/YI$a;

    move-result-object v2

    invoke-virtual {v1}, Labcd/YI;->Zo()Z

    move-result v3

    if-eqz v3, :cond_a

    sget-object v3, Labcd/YI$a;->DW:Labcd/YI$a;

    if-eq v2, v3, :cond_29

    sget-object v3, Labcd/YI$a;->u7:Labcd/YI$a;

    if-ne v2, v3, :cond_a

    :cond_29
    :try_start_29
    iget-object v2, p0, Labcd/MI;->v5:Labcd/qG;

    invoke-virtual {v1, v2}, Labcd/YI;->j6(Labcd/qG;)V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_2e} :catch_2f

    goto :goto_a

    :catch_2f
    move-exception v1

    goto :goto_a
.end method

.method private j6()V
    .registers 5

    iget-object v0, p0, Labcd/MI;->Hw:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_11

    return-void

    :cond_11
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/YI;

    invoke-virtual {v1}, Labcd/YI;->Hw()Labcd/YI$a;

    move-result-object v2

    sget-object v3, Labcd/YI$a;->j6:Labcd/YI$a;

    if-ne v2, v3, :cond_a

    sget-object v2, Labcd/YI$a;->u7:Labcd/YI$a;

    invoke-virtual {v1, v2}, Labcd/YI;->j6(Labcd/YI$a;)V

    goto :goto_a
.end method


# virtual methods
.method j6(Labcd/LE;)Labcd/NI;
    .registers 5

    :try_start_0
    sget-object v0, Labcd/MI;->j6:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Labcd/LE;->j6(Ljava/lang/String;I)V

    new-instance v0, Labcd/NI;

    invoke-direct {v0}, Labcd/NI;-><init>()V

    iget-object v1, p0, Labcd/MI;->DW:Labcd/jJ;

    invoke-virtual {v1}, Labcd/jJ;->XL()Labcd/LI;

    move-result-object v1

    iput-object v1, p0, Labcd/MI;->FH:Labcd/LI;
    :try_end_13
    .catchall {:try_start_0 .. :try_end_13} :catchall_94

    :try_start_13
    iget-object v1, p0, Labcd/MI;->DW:Labcd/jJ;

    invoke-virtual {v1}, Labcd/jJ;->tp()Labcd/HJ;

    move-result-object v1

    iget-object v2, p0, Labcd/MI;->FH:Labcd/LI;

    invoke-interface {v2}, Labcd/iI;->FH()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Labcd/zI;->j6(Labcd/HJ;Ljava/util/Map;)V

    iget-object v1, p0, Labcd/MI;->Hw:Ljava/util/Map;

    invoke-virtual {v0, v1}, Labcd/NI;->j6(Ljava/util/Map;)V

    invoke-interface {p1}, Labcd/LE;->j6()V

    invoke-direct {p0}, Labcd/MI;->DW()Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Labcd/MI;->DW:Labcd/jJ;

    invoke-virtual {v2}, Labcd/jJ;->we()Z

    move-result v2

    if-eqz v2, :cond_3a

    invoke-direct {p0}, Labcd/MI;->j6()V

    goto :goto_45

    :cond_3a
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_45

    iget-object v2, p0, Labcd/MI;->FH:Labcd/LI;

    invoke-interface {v2, p1, v1}, Labcd/LI;->j6(Labcd/LE;Ljava/util/Map;)V
    :try_end_45
    .catchall {:try_start_13 .. :try_end_45} :catchall_84

    :cond_45
    :goto_45
    :try_start_45
    iget-object p1, p0, Labcd/MI;->FH:Labcd/LI;

    invoke-interface {p1}, Labcd/iI;->close()V

    iget-object p1, p0, Labcd/MI;->FH:Labcd/LI;

    invoke-interface {p1}, Labcd/iI;->j6()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Labcd/zI;->j6(Ljava/lang/String;)V

    iget-object p1, p0, Labcd/MI;->DW:Labcd/jJ;

    invoke-virtual {p1}, Labcd/jJ;->we()Z

    move-result p1

    if-nez p1, :cond_5e

    invoke-direct {p0}, Labcd/MI;->FH()V

    :cond_5e
    iget-object p1, p0, Labcd/MI;->Hw:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_68
    :goto_68
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1
    :try_end_6c
    .catchall {:try_start_45 .. :try_end_6c} :catchall_94

    if-nez v1, :cond_74

    iget-object p1, p0, Labcd/MI;->v5:Labcd/qG;

    invoke-virtual {p1}, Labcd/qG;->EQ()V

    return-object v0

    :cond_74
    :try_start_74
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/YI;

    invoke-virtual {v1}, Labcd/YI;->v5()Labcd/gJ;

    move-result-object v1

    if-eqz v1, :cond_68

    invoke-virtual {v0, v1}, Labcd/zI;->j6(Labcd/gJ;)V

    goto :goto_68

    :catchall_84
    move-exception p1

    iget-object v1, p0, Labcd/MI;->FH:Labcd/LI;

    invoke-interface {v1}, Labcd/iI;->close()V

    iget-object v1, p0, Labcd/MI;->FH:Labcd/LI;

    invoke-interface {v1}, Labcd/iI;->j6()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Labcd/zI;->j6(Ljava/lang/String;)V

    throw p1
    :try_end_94
    .catchall {:try_start_74 .. :try_end_94} :catchall_94

    :catchall_94
    move-exception p1

    iget-object v0, p0, Labcd/MI;->v5:Labcd/qG;

    invoke-virtual {v0}, Labcd/qG;->EQ()V

    goto :goto_9c

    :goto_9b
    throw p1

    :goto_9c
    goto :goto_9b
.end method
