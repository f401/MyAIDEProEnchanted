.class Labcd/pI;
.super Ljava/lang/Object;


# static fields
.field private static j6:[I


# instance fields
.field private final DW:Labcd/jJ;

.field private final FH:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Labcd/WI;",
            ">;"
        }
    .end annotation
.end field

.field private final Hw:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Labcd/yE;",
            "Labcd/ME;",
            ">;"
        }
    .end annotation
.end field

.field private final VH:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Labcd/oI;",
            ">;"
        }
    .end annotation
.end field

.field private final Zo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Labcd/gJ;",
            ">;"
        }
    .end annotation
.end field

.field private final gn:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Labcd/kH;",
            ">;"
        }
    .end annotation
.end field

.field private u7:Labcd/nI;

.field private final v5:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Labcd/yE;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Labcd/jJ;Ljava/util/Collection;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/jJ;",
            "Ljava/util/Collection",
            "<",
            "Labcd/WI;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Labcd/pI;->Hw:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Labcd/pI;->v5:Ljava/util/HashSet;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Labcd/pI;->Zo:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Labcd/pI;->VH:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Labcd/pI;->gn:Ljava/util/ArrayList;

    iput-object p1, p0, Labcd/pI;->DW:Labcd/jJ;

    iput-object p2, p0, Labcd/pI;->FH:Ljava/util/Collection;

    return-void
.end method

.method private DW(Labcd/LE;Labcd/qI;)V
    .registers 12

    const/4 v8, 0x1

    const/4 v5, 0x0

    iget-object v2, p0, Labcd/pI;->DW:Labcd/jJ;

    invoke-virtual {v2}, Labcd/jJ;->QX()Labcd/nI;

    move-result-object v2

    iput-object v2, p0, Labcd/pI;->u7:Labcd/nI;

    :try_start_0
    iget-object v2, p0, Labcd/pI;->DW:Labcd/jJ;

    invoke-virtual {v2}, Labcd/jJ;->tp()Labcd/HJ;

    move-result-object v2

    iget-object v3, p0, Labcd/pI;->u7:Labcd/nI;

    invoke-interface {v3}, Labcd/iI;->FH()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Labcd/zI;->j6(Labcd/HJ;Ljava/util/Map;)V

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iget-object v2, p0, Labcd/pI;->FH:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_c

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Labcd/pI;->DW:Labcd/jJ;

    invoke-virtual {v3}, Labcd/jJ;->VH()Labcd/eJ;

    move-result-object v6

    sget-object v3, Labcd/eJ;->j6:Labcd/eJ;

    if-ne v6, v3, :cond_1

    invoke-direct {p0}, Labcd/pI;->FH()Ljava/util/Collection;

    move-result-object v2

    move-object v3, v2

    :goto_1
    iget-object v2, p0, Labcd/pI;->Hw:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-direct {p0}, Labcd/pI;->DW()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-direct {p0, p1}, Labcd/pI;->j6(Labcd/LE;)V

    iget-object v2, p0, Labcd/pI;->u7:Labcd/nI;

    invoke-interface {v2}, Labcd/nI;->Zo()Z

    move-result v2

    invoke-direct {p0, p2}, Labcd/pI;->j6(Labcd/qI;)V

    move v4, v2

    :goto_2
    invoke-interface {p1}, Labcd/LE;->isCancelled()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0, p2}, Labcd/pI;->j6(Labcd/qI;)V

    :cond_0
    :goto_3
    return-void

    :cond_1
    :try_start_1
    sget-object v3, Labcd/eJ;->FH:Labcd/eJ;

    if-ne v6, v3, :cond_f

    invoke-direct {p0}, Labcd/pI;->Hw()V

    move-object v3, v2

    goto :goto_1

    :cond_2
    move v4, v5

    goto :goto_2

    :cond_3
    sget-object v2, Labcd/eJ;->j6:Labcd/eJ;

    if-ne v6, v2, :cond_6

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Labcd/pI;->v5:Ljava/util/HashSet;

    iget-object v6, p0, Labcd/pI;->Hw:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    iget-object v2, p0, Labcd/pI;->Hw:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_9

    iget-object v2, p0, Labcd/pI;->Hw:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    if-eqz v4, :cond_5

    invoke-direct {p0}, Labcd/pI;->DW()Z

    move-result v2

    if-nez v2, :cond_6

    :cond_5
    invoke-direct {p0}, Labcd/pI;->v5()V

    iget-object v2, p0, Labcd/pI;->Hw:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-direct {p0, p1}, Labcd/pI;->j6(Labcd/LE;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_6
    invoke-direct {p0, p2}, Labcd/pI;->j6(Labcd/qI;)V

    new-instance v4, Labcd/qG;

    iget-object v2, p0, Labcd/pI;->DW:Labcd/jJ;

    iget-object v2, v2, Labcd/jJ;->v5:Labcd/UE;

    invoke-direct {v4, v2}, Labcd/qG;-><init>(Labcd/UE;)V

    :try_start_2
    instance-of v2, p1, Labcd/eE;

    if-eqz v2, :cond_7

    move-object v0, p1

    check-cast v0, Labcd/eE;

    move-object v2, v0

    const-wide/16 v6, 0xfa

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v6, v7, v3}, Labcd/eE;->j6(JLjava/util/concurrent/TimeUnit;)V

    :cond_7
    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v2

    iget-object v2, v2, Lorg/eclipse/jgit/JGitText;->updatingReferences:Ljava/lang/String;

    iget-object v3, p0, Labcd/pI;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-interface {p1, v2, v3}, Labcd/LE;->j6(Ljava/lang/String;I)V

    iget-object v2, p0, Labcd/pI;->DW:Labcd/jJ;

    invoke-virtual {v2}, Labcd/jJ;->Ws()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-direct {p0, p2, v4}, Labcd/pI;->j6(Labcd/qI;Labcd/qG;)V

    :cond_8
    iget-object v2, p0, Labcd/pI;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_b

    invoke-interface {p1}, Labcd/LE;->j6()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-virtual {v4}, Labcd/qG;->EQ()V

    invoke-interface {p1}, Labcd/LE;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Labcd/pI;->VH:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    :try_start_3
    invoke-direct {p0, p2}, Labcd/pI;->DW(Labcd/qI;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_3

    :catch_0
    move-exception v2

    new-instance v3, Labcd/yD;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v4

    iget-object v4, v4, Lorg/eclipse/jgit/JGitText;->failureUpdatingFETCH_HEAD:Ljava/lang/String;

    new-array v6, v8, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v5

    invoke-static {v4, v6}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Labcd/yD;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :cond_9
    :try_start_4
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Labcd/ME;

    invoke-interface {v2}, Labcd/ME;->FH()Labcd/yE;

    move-result-object v3

    if-nez v3, :cond_a

    invoke-interface {v2}, Labcd/ME;->DW()Labcd/yE;

    move-result-object v3

    :cond_a
    iget-object v7, p0, Labcd/pI;->DW:Labcd/jJ;

    iget-object v7, v7, Labcd/jJ;->v5:Labcd/UE;

    invoke-virtual {v7, v3}, Labcd/UE;->j6(Labcd/YD;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-direct {p0, v2}, Labcd/pI;->DW(Labcd/ME;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_4

    :catchall_0
    move-exception v2

    invoke-direct {p0, p2}, Labcd/pI;->j6(Labcd/qI;)V

    throw v2

    :cond_b
    :try_start_5
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Labcd/gJ;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    const/4 v6, 0x1

    :try_start_6
    invoke-interface {p1, v6}, Labcd/LE;->update(I)V

    invoke-virtual {v2, v4}, Labcd/gJ;->DW(Labcd/qG;)V

    invoke-virtual {p2, v2}, Labcd/zI;->j6(Labcd/gJ;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_5

    :catch_1
    move-exception v3

    :try_start_7
    new-instance v5, Labcd/yD;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v6

    iget-object v6, v6, Lorg/eclipse/jgit/JGitText;->failureUpdatingTrackingRef:Ljava/lang/String;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v2}, Labcd/gJ;->j6()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v8

    const/4 v2, 0x1

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-static {v6, v7}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2, v3}, Labcd/yD;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception v2

    invoke-virtual {v4}, Labcd/qG;->EQ()V

    throw v2

    :cond_c
    :try_start_8
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Labcd/WI;

    invoke-virtual {v2}, Labcd/WI;->DW()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_e

    invoke-virtual {v2}, Labcd/WI;->Hw()Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-direct {p0, v2, v3}, Labcd/pI;->DW(Labcd/WI;Ljava/util/Set;)V

    goto/16 :goto_0

    :cond_d
    invoke-direct {p0, v2, v3}, Labcd/pI;->j6(Labcd/WI;Ljava/util/Set;)V

    goto/16 :goto_0

    :cond_e
    new-instance v3, Labcd/yD;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v4

    iget-object v4, v4, Lorg/eclipse/jgit/JGitText;->sourceRefNotSpecifiedForRefspec:Ljava/lang/String;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-static {v4, v5}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Labcd/yD;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :cond_f
    move-object v3, v2

    goto/16 :goto_1
.end method

.method private DW(Labcd/ME;)V
    .registers 4

    new-instance v0, Labcd/WI;

    invoke-direct {v0}, Labcd/WI;-><init>()V

    invoke-interface {p1}, Labcd/ME;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Labcd/WI;->VH(Ljava/lang/String;)Labcd/WI;

    move-result-object v0

    invoke-interface {p1}, Labcd/ME;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Labcd/WI;->Zo(Ljava/lang/String;)Labcd/WI;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Labcd/pI;->j6(Labcd/ME;Labcd/WI;)V

    return-void
.end method

.method private DW(Labcd/WI;Ljava/util/Set;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/WI;",
            "Ljava/util/Set",
            "<",
            "Labcd/ME;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Labcd/pI;->u7:Labcd/nI;

    invoke-interface {v0}, Labcd/iI;->DW()Ljava/util/Collection;

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

    check-cast v0, Labcd/ME;

    invoke-virtual {p1, v0}, Labcd/WI;->DW(Labcd/ME;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1, v0}, Labcd/WI;->j6(Labcd/ME;)Labcd/WI;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Labcd/pI;->j6(Labcd/ME;Labcd/WI;)V

    goto :goto_0
.end method

.method private DW(Labcd/qI;)V
    .registers 6

    iget-object v0, p0, Labcd/pI;->DW:Labcd/jJ;

    iget-object v0, v0, Labcd/jJ;->v5:Labcd/UE;

    invoke-virtual {v0}, Labcd/UE;->VH()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Labcd/WG;

    new-instance v2, Ljava/io/File;

    const-string v3, "FETCH_HEAD"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v0, p0, Labcd/pI;->DW:Labcd/jJ;

    iget-object v0, v0, Labcd/jJ;->v5:Labcd/UE;

    invoke-virtual {v0}, Labcd/UE;->gn()Labcd/pK;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Labcd/WG;-><init>(Ljava/io/File;Labcd/pK;)V

    :try_start_0
    invoke-virtual {v1}, Labcd/WG;->Hw()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v2, Ljava/io/OutputStreamWriter;

    invoke-virtual {v1}, Labcd/WG;->FH()Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, Labcd/pI;->VH:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    :try_start_2
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->close()V

    invoke-virtual {v1}, Labcd/WG;->j6()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_1
    invoke-virtual {v1}, Labcd/WG;->v5()V

    goto :goto_0

    :cond_2
    :try_start_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/oI;

    invoke-virtual {v0, v2}, Labcd/oI;->j6(Ljava/io/Writer;)V

    invoke-virtual {p1, v0}, Labcd/qI;->j6(Labcd/oI;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_4
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->close()V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    invoke-virtual {v1}, Labcd/WG;->v5()V

    throw v0
.end method

.method private DW(Labcd/yE;)V
    .registers 4

    iget-object v0, p0, Labcd/pI;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

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

    check-cast v0, Labcd/gJ;

    invoke-virtual {v0}, Labcd/gJ;->DW()Labcd/yE;

    move-result-object v0

    invoke-virtual {v0, p1}, Labcd/YD;->DW(Labcd/YD;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method

.method private DW()Z
    .registers 4

    :try_start_0
    new-instance v1, Labcd/_F;

    iget-object v0, p0, Labcd/pI;->DW:Labcd/jJ;

    iget-object v0, v0, Labcd/jJ;->v5:Labcd/UE;

    invoke-direct {v1, v0}, Labcd/_F;-><init>(Labcd/UE;)V
    :try_end_0
    .catch Labcd/fD; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v0, p0, Labcd/pI;->Hw:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Labcd/pI;->DW:Labcd/jJ;

    iget-object v0, v0, Labcd/jJ;->v5:Labcd/UE;

    invoke-virtual {v0}, Labcd/UE;->v5()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Labcd/_F;->J8()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1}, Labcd/qG;->EQ()V
    :try_end_2
    .catch Labcd/fD; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    const/4 v0, 0x1

    :goto_2
    return v0

    :cond_0
    :try_start_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/ME;

    invoke-interface {v0}, Labcd/ME;->DW()Labcd/yE;

    move-result-object v0

    invoke-virtual {v1, v0}, Labcd/qG;->Zo(Labcd/YD;)Labcd/iG;

    move-result-object v0

    invoke-virtual {v1, v0}, Labcd/_F;->v5(Labcd/iG;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_4
    invoke-virtual {v1}, Labcd/qG;->EQ()V

    throw v0
    :try_end_4
    .catch Labcd/fD; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_2

    :cond_1
    :try_start_5
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/yE;

    invoke-virtual {v1, v0}, Labcd/qG;->Zo(Labcd/YD;)Labcd/iG;

    move-result-object v0

    invoke-virtual {v1, v0}, Labcd/_F;->Hw(Labcd/iG;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v1, Labcd/yD;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v2

    iget-object v2, v2, Lorg/eclipse/jgit/JGitText;->unableToCheckConnectivity:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Labcd/yD;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private FH()Ljava/util/Collection;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Labcd/ME;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Labcd/pI;->DW:Labcd/jJ;

    iget-object v0, v0, Labcd/jJ;->v5:Labcd/UE;

    invoke-virtual {v0}, Labcd/UE;->v5()Ljava/util/Map;

    move-result-object v3

    iget-object v0, p0, Labcd/pI;->u7:Labcd/nI;

    invoke-interface {v0}, Labcd/iI;->DW()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    return-object v2

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/ME;

    invoke-static {v0}, Labcd/pI;->j6(Labcd/ME;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Labcd/ME;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/ME;

    invoke-interface {v0}, Labcd/ME;->DW()Labcd/yE;

    move-result-object v5

    invoke-interface {v0}, Labcd/ME;->FH()Labcd/yE;

    move-result-object v6

    if-nez v6, :cond_5

    if-eqz v1, :cond_2

    invoke-interface {v1}, Labcd/ME;->DW()Labcd/yE;

    move-result-object v1

    invoke-virtual {v5, v1}, Labcd/YD;->DW(Labcd/YD;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    iget-object v1, p0, Labcd/pI;->Hw:Ljava/util/HashMap;

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Labcd/pI;->DW:Labcd/jJ;

    iget-object v1, v1, Labcd/jJ;->v5:Labcd/UE;

    invoke-virtual {v1, v5}, Labcd/UE;->j6(Labcd/YD;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    invoke-direct {p0, v0}, Labcd/pI;->DW(Labcd/ME;)V

    goto :goto_0

    :cond_4
    invoke-interface {v2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    if-eqz v1, :cond_6

    invoke-interface {v1}, Labcd/ME;->DW()Labcd/yE;

    move-result-object v1

    invoke-virtual {v5, v1}, Labcd/YD;->DW(Labcd/YD;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Labcd/pI;->DW(Labcd/ME;)V

    goto :goto_0

    :cond_6
    iget-object v1, p0, Labcd/pI;->Hw:Ljava/util/HashMap;

    invoke-interface {v0}, Labcd/ME;->FH()Labcd/yE;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Labcd/pI;->DW:Labcd/jJ;

    iget-object v1, v1, Labcd/jJ;->v5:Labcd/UE;

    invoke-interface {v0}, Labcd/ME;->FH()Labcd/yE;

    move-result-object v5

    invoke-virtual {v1, v5}, Labcd/UE;->j6(Labcd/YD;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    invoke-direct {p0, v0}, Labcd/pI;->DW(Labcd/ME;)V

    goto :goto_0

    :cond_8
    invoke-interface {v2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private Hw()V
    .registers 6

    iget-object v0, p0, Labcd/pI;->DW:Labcd/jJ;

    iget-object v0, v0, Labcd/jJ;->v5:Labcd/UE;

    invoke-virtual {v0}, Labcd/UE;->v5()Ljava/util/Map;

    move-result-object v2

    iget-object v0, p0, Labcd/pI;->u7:Labcd/nI;

    invoke-interface {v0}, Labcd/iI;->DW()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/ME;

    invoke-static {v0}, Labcd/pI;->j6(Labcd/ME;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Labcd/ME;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/ME;

    if-eqz v1, :cond_2

    invoke-interface {v0}, Labcd/ME;->DW()Labcd/yE;

    move-result-object v4

    invoke-interface {v1}, Labcd/ME;->DW()Labcd/yE;

    move-result-object v1

    invoke-virtual {v4, v1}, Labcd/YD;->DW(Labcd/YD;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    invoke-direct {p0, v0}, Labcd/pI;->DW(Labcd/ME;)V

    goto :goto_0
.end method

.method private j6(Labcd/WI;Labcd/yE;)Labcd/gJ;
    .registers 6

    new-instance v0, Labcd/gJ;

    iget-object v1, p0, Labcd/pI;->DW:Labcd/jJ;

    iget-object v1, v1, Labcd/jJ;->v5:Labcd/UE;

    const-string v2, "fetch"

    invoke-direct {v0, v1, p1, p2, v2}, Labcd/gJ;-><init>(Labcd/UE;Labcd/WI;Labcd/YD;Ljava/lang/String;)V

    return-object v0
.end method

.method private j6(Labcd/LE;)V
    .registers 5

    :try_start_0
    iget-object v0, p0, Labcd/pI;->u7:Labcd/nI;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "jgit fetch "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Labcd/pI;->DW:Labcd/jJ;

    iget-object v2, v2, Labcd/jJ;->Zo:Labcd/HJ;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Labcd/nI;->j6(Ljava/lang/String;)V

    iget-object v0, p0, Labcd/pI;->u7:Labcd/nI;

    iget-object v1, p0, Labcd/pI;->Hw:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    iget-object v2, p0, Labcd/pI;->v5:Ljava/util/HashSet;

    invoke-interface {v0, p1, v1, v2}, Labcd/nI;->j6(Labcd/LE;Ljava/util/Collection;Ljava/util/Set;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Labcd/pI;->gn:Ljava/util/ArrayList;

    iget-object v1, p0, Labcd/pI;->u7:Labcd/nI;

    invoke-interface {v1}, Labcd/nI;->Hw()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Labcd/pI;->DW:Labcd/jJ;

    invoke-virtual {v0}, Labcd/jJ;->EQ()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Labcd/pI;->u7:Labcd/nI;

    invoke-interface {v0}, Labcd/nI;->v5()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Labcd/pI;->DW()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    new-instance v0, Labcd/yD;

    iget-object v1, p0, Labcd/pI;->DW:Labcd/jJ;

    invoke-virtual {v1}, Labcd/jJ;->tp()Labcd/HJ;

    move-result-object v1

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v2

    iget-object v2, v2, Lorg/eclipse/jgit/JGitText;->peerDidNotSupplyACompleteObjectGraph:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Labcd/yD;-><init>(Labcd/HJ;Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Labcd/pI;->gn:Ljava/util/ArrayList;

    iget-object v2, p0, Labcd/pI;->u7:Labcd/nI;

    invoke-interface {v2}, Labcd/nI;->Hw()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    throw v0
.end method

.method private j6(Labcd/ME;Labcd/WI;)V
    .registers 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-interface {p1}, Labcd/ME;->DW()Labcd/yE;

    move-result-object v2

    invoke-virtual {p2}, Labcd/WI;->j6()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    :try_start_0
    invoke-direct {p0, p2, v2}, Labcd/pI;->j6(Labcd/WI;Labcd/yE;)Labcd/gJ;

    move-result-object v3

    invoke-virtual {v3}, Labcd/gJ;->FH()Labcd/yE;

    move-result-object v4

    invoke-virtual {v2, v4}, Labcd/YD;->DW(Labcd/YD;)Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v4, p0, Labcd/pI;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    iget-object v3, p0, Labcd/pI;->Hw:Ljava/util/HashMap;

    invoke-virtual {v3, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Labcd/oI;

    invoke-direct {v3}, Labcd/oI;-><init>()V

    iput-object v2, v3, Labcd/oI;->j6:Labcd/yE;

    invoke-virtual {p2}, Labcd/WI;->j6()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    :goto_1
    iput-boolean v0, v3, Labcd/oI;->DW:Z

    invoke-interface {p1}, Labcd/ME;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Labcd/oI;->FH:Ljava/lang/String;

    iget-object v0, p0, Labcd/pI;->DW:Labcd/jJ;

    invoke-virtual {v0}, Labcd/jJ;->tp()Labcd/HJ;

    move-result-object v0

    iput-object v0, v3, Labcd/oI;->Hw:Labcd/HJ;

    iget-object v0, p0, Labcd/pI;->VH:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v3, Labcd/yD;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v4

    iget-object v4, v4, Lorg/eclipse/jgit/JGitText;->cannotResolveLocalTrackingRefForUpdating:Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p2}, Labcd/WI;->j6()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v1

    invoke-static {v4, v0}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, v2}, Labcd/yD;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method private j6(Labcd/WI;Ljava/util/Set;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/WI;",
            "Ljava/util/Set",
            "<",
            "Labcd/ME;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Labcd/pI;->u7:Labcd/nI;

    invoke-virtual {p1}, Labcd/WI;->DW()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Labcd/iI;->getRef(Ljava/lang/String;)Labcd/ME;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0, p1}, Labcd/pI;->j6(Labcd/ME;Labcd/WI;)V

    :cond_0
    return-void

    :cond_1
    new-instance v0, Labcd/yD;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->remoteDoesNotHaveSpec:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Labcd/WI;->DW()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Labcd/yD;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private j6(Labcd/qI;)V
    .registers 3

    iget-object v0, p0, Labcd/pI;->u7:Labcd/nI;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Labcd/iI;->close()V

    iget-object v0, p0, Labcd/pI;->u7:Labcd/nI;

    invoke-interface {v0}, Labcd/iI;->j6()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Labcd/zI;->j6(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Labcd/pI;->u7:Labcd/nI;

    :cond_0
    return-void
.end method

.method private j6(Labcd/qI;Labcd/UE;Labcd/qG;Labcd/WI;Labcd/ME;)V
    .registers 15

    const/4 v8, 0x0

    const/4 v7, 0x1

    invoke-interface {p5}, Labcd/ME;->getName()Ljava/lang/String;

    move-result-object v2

    :try_start_0
    new-instance v0, Labcd/gJ;

    invoke-virtual {p4}, Labcd/WI;->DW()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {}, Labcd/yE;->Ws()Labcd/yE;

    move-result-object v5

    const-string v6, "deleted"

    move-object v1, p2

    invoke-direct/range {v0 .. v6}, Labcd/gJ;-><init>(Labcd/UE;Ljava/lang/String;Ljava/lang/String;ZLabcd/YD;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Labcd/zI;->j6(Labcd/gJ;)V

    iget-object v1, p0, Labcd/pI;->DW:Labcd/jJ;

    invoke-virtual {v1}, Labcd/jJ;->we()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {v0, p3}, Labcd/gJ;->j6(Labcd/qG;)V

    invoke-static {}, Labcd/pI;->j6()[I

    move-result-object v1

    invoke-virtual {v0}, Labcd/gJ;->Hw()Labcd/RE$a;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v1, v1, v3

    const/4 v3, 0x3

    if-eq v1, v3, :cond_0

    const/4 v3, 0x4

    if-eq v1, v3, :cond_0

    const/4 v3, 0x5

    if-eq v1, v3, :cond_0

    const/4 v3, 0x6

    if-eq v1, v3, :cond_0

    new-instance v1, Labcd/yD;

    iget-object v3, p0, Labcd/pI;->DW:Labcd/jJ;

    invoke-virtual {v3}, Labcd/jJ;->tp()Labcd/HJ;

    move-result-object v3

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v4

    iget-object v4, v4, Lorg/eclipse/jgit/JGitText;->cannotDeleteStaleTrackingRef2:Ljava/lang/String;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v0}, Labcd/gJ;->Hw()Labcd/RE$a;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-static {v4, v5}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v3, v0}, Labcd/yD;-><init>(Labcd/HJ;Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Labcd/yD;

    iget-object v3, p0, Labcd/pI;->DW:Labcd/jJ;

    invoke-virtual {v3}, Labcd/jJ;->tp()Labcd/HJ;

    move-result-object v3

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v4

    iget-object v4, v4, Lorg/eclipse/jgit/JGitText;->cannotDeleteStaleTrackingRef:Ljava/lang/String;

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v2, v5, v8

    invoke-static {v4, v5}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v3, v2, v0}, Labcd/yD;-><init>(Labcd/HJ;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private j6(Labcd/qI;Labcd/qG;)V
    .registers 12

    iget-object v0, p0, Labcd/pI;->DW:Labcd/jJ;

    iget-object v2, v0, Labcd/jJ;->v5:Labcd/UE;

    invoke-virtual {v2}, Labcd/UE;->v5()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Labcd/ME;

    invoke-interface {v5}, Labcd/ME;->getName()Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Labcd/pI;->FH:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/WI;

    invoke-virtual {v0, v7}, Labcd/WI;->Hw(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0, v7}, Labcd/WI;->j6(Ljava/lang/String;)Labcd/WI;

    move-result-object v4

    invoke-virtual {v4}, Labcd/WI;->DW()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Labcd/zI;->DW(Ljava/lang/String;)Labcd/ME;

    move-result-object v0

    if-nez v0, :cond_2

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Labcd/pI;->j6(Labcd/qI;Labcd/UE;Labcd/qG;Labcd/WI;Labcd/ME;)V

    goto :goto_0
.end method

.method private j6(Labcd/yE;)V
    .registers 4

    iget-object v0, p0, Labcd/pI;->VH:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

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

    check-cast v0, Labcd/oI;

    iget-object v0, v0, Labcd/oI;->j6:Labcd/yE;

    invoke-virtual {v0, p1}, Labcd/YD;->DW(Labcd/YD;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method

.method private static j6(Labcd/ME;)Z
    .registers 2

    invoke-interface {p0}, Labcd/ME;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Labcd/pI;->j6(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static j6(Ljava/lang/String;)Z
    .registers 2

    const-string v0, "refs/tags/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic j6()[I
    .registers 3

    sget-object v0, Labcd/pI;->j6:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Labcd/RE$a;->values()[Labcd/RE$a;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Labcd/RE$a;->Zo:Labcd/RE$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_9

    :goto_1
    :try_start_1
    sget-object v1, Labcd/RE$a;->v5:Labcd/RE$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_8

    :goto_2
    :try_start_2
    sget-object v1, Labcd/RE$a;->u7:Labcd/RE$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_7

    :goto_3
    :try_start_3
    sget-object v1, Labcd/RE$a;->DW:Labcd/RE$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_6

    :goto_4
    :try_start_4
    sget-object v1, Labcd/RE$a;->Hw:Labcd/RE$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_5

    :goto_5
    :try_start_5
    sget-object v1, Labcd/RE$a;->j6:Labcd/RE$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_4

    :goto_6
    :try_start_6
    sget-object v1, Labcd/RE$a;->FH:Labcd/RE$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_3

    :goto_7
    :try_start_7
    sget-object v1, Labcd/RE$a;->VH:Labcd/RE$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_2

    :goto_8
    :try_start_8
    sget-object v1, Labcd/RE$a;->gn:Labcd/RE$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_1

    :goto_9
    :try_start_9
    sget-object v1, Labcd/RE$a;->tp:Labcd/RE$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_0

    :goto_a
    sput-object v0, Labcd/pI;->j6:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_a

    :catch_1
    move-exception v1

    goto :goto_9

    :catch_2
    move-exception v1

    goto :goto_8

    :catch_3
    move-exception v1

    goto :goto_7

    :catch_4
    move-exception v1

    goto :goto_6

    :catch_5
    move-exception v1

    goto :goto_5

    :catch_6
    move-exception v1

    goto :goto_4

    :catch_7
    move-exception v1

    goto :goto_3

    :catch_8
    move-exception v1

    goto :goto_2

    :catch_9
    move-exception v1

    goto :goto_1
.end method

.method private v5()V
    .registers 6

    iget-object v0, p0, Labcd/pI;->u7:Labcd/nI;

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Labcd/pI;->DW:Labcd/jJ;

    invoke-virtual {v0}, Labcd/jJ;->QX()Labcd/nI;

    move-result-object v0

    iput-object v0, p0, Labcd/pI;->u7:Labcd/nI;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Labcd/pI;->u7:Labcd/nI;

    invoke-interface {v0}, Labcd/iI;->DW()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Labcd/pI;->Hw:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Labcd/pI;->Hw:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Labcd/ME;

    invoke-interface {v1}, Labcd/ME;->DW()Labcd/yE;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/ME;

    if-eqz v0, :cond_2

    iget-object v1, p0, Labcd/pI;->Hw:Ljava/util/HashMap;

    invoke-interface {v0}, Labcd/ME;->DW()Labcd/yE;

    move-result-object v4

    invoke-virtual {v1, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    invoke-interface {v1}, Labcd/ME;->DW()Labcd/yE;

    move-result-object v0

    invoke-direct {p0, v0}, Labcd/pI;->j6(Labcd/yE;)V

    invoke-interface {v1}, Labcd/ME;->DW()Labcd/yE;

    move-result-object v0

    invoke-direct {p0, v0}, Labcd/pI;->DW(Labcd/yE;)V

    goto :goto_1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/ME;

    invoke-interface {v0}, Labcd/ME;->DW()Labcd/yE;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method j6(Labcd/LE;Labcd/qI;)V
    .registers 6

    iget-object v0, p0, Labcd/pI;->Hw:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Labcd/pI;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Labcd/pI;->VH:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Labcd/pI;->gn:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :try_start_0
    invoke-direct {p0, p1, p2}, Labcd/pI;->DW(Labcd/LE;Labcd/qI;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Labcd/pI;->gn:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/kH;

    invoke-virtual {v0}, Labcd/kH;->j6()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Labcd/yD;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Labcd/yD;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catchall_0
    move-exception v1

    :try_start_2
    iget-object v0, p0, Labcd/pI;->gn:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/kH;

    invoke-virtual {v0}, Labcd/kH;->j6()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    new-instance v1, Labcd/yD;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Labcd/yD;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    throw v1
.end method
