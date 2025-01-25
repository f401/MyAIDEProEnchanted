.class Labcd/pI;
.super Ljava/lang/Object;


# static fields
.field private static j6:[I


# instance fields
.field private final DW:Labcd/jJ;

.field private final FH:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Labcd/WI;",
            ">;"
        }
    .end annotation
.end field

.field private final Hw:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Labcd/yE;",
            "Labcd/ME;",
            ">;"
        }
    .end annotation
.end field

.field private final VH:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Labcd/oI;",
            ">;"
        }
    .end annotation
.end field

.field private final Zo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Labcd/gJ;",
            ">;"
        }
    .end annotation
.end field

.field private final gn:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Labcd/kH;",
            ">;"
        }
    .end annotation
.end field

.field private u7:Labcd/nI;

.field private final v5:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
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
            "Ljava/util/Collection<",
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
    .registers 10

    iget-object v0, p0, Labcd/pI;->DW:Labcd/jJ;

    invoke-virtual {v0}, Labcd/jJ;->QX()Labcd/nI;

    move-result-object v0

    iput-object v0, p0, Labcd/pI;->u7:Labcd/nI;

    :try_start_8
    iget-object v0, p0, Labcd/pI;->DW:Labcd/jJ;

    invoke-virtual {v0}, Labcd/jJ;->tp()Labcd/HJ;

    move-result-object v0

    iget-object v1, p0, Labcd/pI;->u7:Labcd/nI;

    invoke-interface {v1}, Labcd/iI;->FH()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Labcd/zI;->j6(Labcd/HJ;Ljava/util/Map;)V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Labcd/pI;->FH:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_22
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_173

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Labcd/pI;->DW:Labcd/jJ;

    invoke-virtual {v1}, Labcd/jJ;->VH()Labcd/eJ;

    move-result-object v1

    sget-object v2, Labcd/eJ;->j6:Labcd/eJ;

    if-ne v1, v2, :cond_3d

    invoke-direct {p0}, Labcd/pI;->FH()Ljava/util/Collection;

    move-result-object v0

    goto :goto_44

    :cond_3d
    sget-object v2, Labcd/eJ;->FH:Labcd/eJ;

    if-ne v1, v2, :cond_44

    invoke-direct {p0}, Labcd/pI;->Hw()V

    :cond_44
    :goto_44
    iget-object v2, p0, Labcd/pI;->Hw:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5f

    invoke-direct {p0}, Labcd/pI;->DW()Z

    move-result v2

    if-nez v2, :cond_5f

    invoke-direct {p0, p1}, Labcd/pI;->j6(Labcd/LE;)V

    iget-object v2, p0, Labcd/pI;->u7:Labcd/nI;

    invoke-interface {v2}, Labcd/nI;->Zo()Z

    move-result v2

    invoke-direct {p0, p2}, Labcd/pI;->j6(Labcd/qI;)V

    goto :goto_60

    :cond_5f
    const/4 v2, 0x0

    :goto_60
    invoke-interface {p1}, Labcd/LE;->isCancelled()Z

    move-result v5
    :try_end_64
    .catchall {:try_start_8 .. :try_end_64} :catchall_1a3

    if-eqz v5, :cond_6a

    invoke-direct {p0, p2}, Labcd/pI;->j6(Labcd/qI;)V

    return-void

    :cond_6a
    :try_start_6a
    sget-object v5, Labcd/eJ;->j6:Labcd/eJ;

    if-ne v1, v5, :cond_cb

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_cb

    iget-object v1, p0, Labcd/pI;->v5:Ljava/util/HashSet;

    iget-object v5, p0, Labcd/pI;->Hw:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Labcd/pI;->Hw:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_88
    :goto_88
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_ad

    iget-object v0, p0, Labcd/pI;->Hw:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_cb

    if-eqz v2, :cond_9e

    invoke-direct {p0}, Labcd/pI;->DW()Z

    move-result v0

    if-nez v0, :cond_cb

    :cond_9e
    invoke-direct {p0}, Labcd/pI;->v5()V

    iget-object v0, p0, Labcd/pI;->Hw:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_cb

    invoke-direct {p0, p1}, Labcd/pI;->j6(Labcd/LE;)V

    goto :goto_cb

    :cond_ad
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/ME;

    invoke-interface {v1}, Labcd/ME;->FH()Labcd/yE;

    move-result-object v5

    if-nez v5, :cond_bd

    invoke-interface {v1}, Labcd/ME;->DW()Labcd/yE;

    move-result-object v5

    :cond_bd
    iget-object v6, p0, Labcd/pI;->DW:Labcd/jJ;

    iget-object v6, v6, Labcd/jJ;->v5:Labcd/UE;

    invoke-virtual {v6, v5}, Labcd/UE;->j6(Labcd/YD;)Z

    move-result v5

    if-eqz v5, :cond_88

    invoke-direct {p0, v1}, Labcd/pI;->DW(Labcd/ME;)V
    :try_end_ca
    .catchall {:try_start_6a .. :try_end_ca} :catchall_1a3

    goto :goto_88

    :cond_cb
    :goto_cb
    invoke-direct {p0, p2}, Labcd/pI;->j6(Labcd/qI;)V

    new-instance v0, Labcd/qG;

    iget-object v1, p0, Labcd/pI;->DW:Labcd/jJ;

    iget-object v1, v1, Labcd/jJ;->v5:Labcd/UE;

    invoke-direct {v0, v1}, Labcd/qG;-><init>(Labcd/UE;)V

    :try_start_d7
    instance-of v1, p1, Labcd/eE;

    if-eqz v1, :cond_e5

    move-object v1, p1

    check-cast v1, Labcd/eE;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0xfa

    invoke-virtual {v1, v5, v6, v2}, Labcd/eE;->j6(JLjava/util/concurrent/TimeUnit;)V

    :cond_e5
    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->updatingReferences:Ljava/lang/String;

    iget-object v2, p0, Labcd/pI;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-interface {p1, v1, v2}, Labcd/LE;->j6(Ljava/lang/String;I)V

    iget-object v1, p0, Labcd/pI;->DW:Labcd/jJ;

    invoke-virtual {v1}, Labcd/jJ;->Ws()Z

    move-result v1

    if-eqz v1, :cond_ff

    invoke-direct {p0, p2, v0}, Labcd/pI;->j6(Labcd/qI;Labcd/qG;)V

    :cond_ff
    iget-object v1, p0, Labcd/pI;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_105
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_13e

    invoke-interface {p1}, Labcd/LE;->j6()V
    :try_end_10e
    .catchall {:try_start_d7 .. :try_end_10e} :catchall_16e

    invoke-virtual {v0}, Labcd/qG;->EQ()V

    invoke-interface {p1}, Labcd/LE;->isCancelled()Z

    move-result p1

    if-eqz p1, :cond_118

    return-void

    :cond_118
    iget-object p1, p0, Labcd/pI;->VH:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_13d

    :try_start_120
    invoke-direct {p0, p2}, Labcd/pI;->DW(Labcd/qI;)V
    :try_end_123
    .catch Ljava/io/IOException; {:try_start_120 .. :try_end_123} :catch_124

    goto :goto_13d

    :catch_124
    move-exception p1

    new-instance p2, Labcd/yD;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jgit/JGitText;->failureUpdatingFETCH_HEAD:Ljava/lang/String;

    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Labcd/yD;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_13d
    :goto_13d
    return-void

    :cond_13e
    :try_start_13e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Labcd/gJ;
    :try_end_144
    .catchall {:try_start_13e .. :try_end_144} :catchall_16e

    :try_start_144
    invoke-interface {p1, v4}, Labcd/LE;->update(I)V

    invoke-virtual {v2, v0}, Labcd/gJ;->DW(Labcd/qG;)V

    invoke-virtual {p2, v2}, Labcd/zI;->j6(Labcd/gJ;)V
    :try_end_14d
    .catch Ljava/io/IOException; {:try_start_144 .. :try_end_14d} :catch_14e
    .catchall {:try_start_144 .. :try_end_14d} :catchall_16e

    goto :goto_105

    :catch_14e
    move-exception p1

    :try_start_14f
    new-instance p2, Labcd/yD;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->failureUpdatingTrackingRef:Ljava/lang/String;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v2}, Labcd/gJ;->j6()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v3

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v4

    invoke-static {v1, v5}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v1, p1}, Labcd/yD;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
    :try_end_16e
    .catchall {:try_start_14f .. :try_end_16e} :catchall_16e

    :catchall_16e
    move-exception p1

    invoke-virtual {v0}, Labcd/qG;->EQ()V

    throw p1

    :cond_173
    :try_start_173
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Labcd/WI;

    invoke-virtual {v2}, Labcd/WI;->DW()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_18f

    invoke-virtual {v2}, Labcd/WI;->Hw()Z

    move-result v3

    if-eqz v3, :cond_18a

    invoke-direct {p0, v2, v0}, Labcd/pI;->DW(Labcd/WI;Ljava/util/Set;)V

    goto/16 :goto_22

    :cond_18a
    invoke-direct {p0, v2, v0}, Labcd/pI;->j6(Labcd/WI;Ljava/util/Set;)V

    goto/16 :goto_22

    :cond_18f
    new-instance p1, Labcd/yD;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jgit/JGitText;->sourceRefNotSpecifiedForRefspec:Ljava/lang/String;

    new-array v1, v4, [Ljava/lang/Object;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Labcd/yD;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1a3
    .catchall {:try_start_173 .. :try_end_1a3} :catchall_1a3

    :catchall_1a3
    move-exception p1

    invoke-direct {p0, p2}, Labcd/pI;->j6(Labcd/qI;)V

    goto :goto_1a9

    :goto_1a8
    throw p1

    :goto_1a9
    goto :goto_1a8
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
            "Ljava/util/Set<",
            "Labcd/ME;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Labcd/pI;->u7:Labcd/nI;

    invoke-interface {v0}, Labcd/iI;->DW()Ljava/util/Collection;

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

    check-cast v1, Labcd/ME;

    invoke-virtual {p1, v1}, Labcd/WI;->DW(Labcd/ME;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {p2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {p1, v1}, Labcd/WI;->j6(Labcd/ME;)Labcd/WI;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Labcd/pI;->j6(Labcd/ME;Labcd/WI;)V

    goto :goto_a
.end method

.method private DW(Labcd/qI;)V
    .registers 6

    iget-object v0, p0, Labcd/pI;->DW:Labcd/jJ;

    iget-object v0, v0, Labcd/jJ;->v5:Labcd/UE;

    invoke-virtual {v0}, Labcd/UE;->VH()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_b

    return-void

    :cond_b
    new-instance v1, Labcd/WG;

    new-instance v2, Ljava/io/File;

    const-string v3, "FETCH_HEAD"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v0, p0, Labcd/pI;->DW:Labcd/jJ;

    iget-object v0, v0, Labcd/jJ;->v5:Labcd/UE;

    invoke-virtual {v0}, Labcd/UE;->gn()Labcd/pK;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Labcd/WG;-><init>(Ljava/io/File;Labcd/pK;)V

    :try_start_1f
    invoke-virtual {v1}, Labcd/WG;->Hw()Z

    move-result v0

    if-eqz v0, :cond_53

    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-virtual {v1}, Labcd/WG;->FH()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_2e
    .catchall {:try_start_1f .. :try_end_2e} :catchall_57

    :try_start_2e
    iget-object v2, p0, Labcd/pI;->VH:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_34
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3
    :try_end_38
    .catchall {:try_start_2e .. :try_end_38} :catchall_4e

    if-nez v3, :cond_41

    :try_start_3a
    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->close()V

    invoke-virtual {v1}, Labcd/WG;->j6()Z
    :try_end_40
    .catchall {:try_start_3a .. :try_end_40} :catchall_57

    goto :goto_53

    :cond_41
    :try_start_41
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Labcd/oI;

    invoke-virtual {v3, v0}, Labcd/oI;->j6(Ljava/io/Writer;)V

    invoke-virtual {p1, v3}, Labcd/qI;->j6(Labcd/oI;)V
    :try_end_4d
    .catchall {:try_start_41 .. :try_end_4d} :catchall_4e

    goto :goto_34

    :catchall_4e
    move-exception p1

    :try_start_4f
    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->close()V

    throw p1
    :try_end_53
    .catchall {:try_start_4f .. :try_end_53} :catchall_57

    :cond_53
    :goto_53
    invoke-virtual {v1}, Labcd/WG;->v5()V

    return-void

    :catchall_57
    move-exception p1

    invoke-virtual {v1}, Labcd/WG;->v5()V

    goto :goto_5d

    :goto_5c
    throw p1

    :goto_5d
    goto :goto_5c
.end method

.method private DW(Labcd/yE;)V
    .registers 4

    iget-object v0, p0, Labcd/pI;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_d

    return-void

    :cond_d
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/gJ;

    invoke-virtual {v1}, Labcd/gJ;->DW()Labcd/yE;

    move-result-object v1

    invoke-virtual {v1, p1}, Labcd/YD;->DW(Labcd/YD;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_6
.end method

.method private DW()Z
    .registers 4

    :try_start_0
    new-instance v0, Labcd/_F;

    iget-object v1, p0, Labcd/pI;->DW:Labcd/jJ;

    iget-object v1, v1, Labcd/jJ;->v5:Labcd/UE;

    invoke-direct {v0, v1}, Labcd/_F;-><init>(Labcd/UE;)V
    :try_end_9
    .catch Labcd/fD; {:try_start_0 .. :try_end_9} :catch_69
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_9} :catch_5c

    :try_start_9
    iget-object v1, p0, Labcd/pI;->Hw:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_49

    iget-object v1, p0, Labcd/pI;->DW:Labcd/jJ;

    iget-object v1, v1, Labcd/jJ;->v5:Labcd/UE;

    invoke-virtual {v1}, Labcd/UE;->v5()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_29
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_37

    invoke-virtual {v0}, Labcd/_F;->J8()V
    :try_end_32
    .catchall {:try_start_9 .. :try_end_32} :catchall_57

    :try_start_32
    invoke-virtual {v0}, Labcd/qG;->EQ()V
    :try_end_35
    .catch Labcd/fD; {:try_start_32 .. :try_end_35} :catch_69
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_35} :catch_5c

    const/4 v0, 0x1

    return v0

    :cond_37
    :try_start_37
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Labcd/ME;

    invoke-interface {v2}, Labcd/ME;->DW()Labcd/yE;

    move-result-object v2

    invoke-virtual {v0, v2}, Labcd/qG;->Zo(Labcd/YD;)Labcd/iG;

    move-result-object v2

    invoke-virtual {v0, v2}, Labcd/_F;->v5(Labcd/iG;)V

    goto :goto_29

    :cond_49
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Labcd/yE;

    invoke-virtual {v0, v2}, Labcd/qG;->Zo(Labcd/YD;)Labcd/iG;

    move-result-object v2

    invoke-virtual {v0, v2}, Labcd/_F;->Hw(Labcd/iG;)V
    :try_end_56
    .catchall {:try_start_37 .. :try_end_56} :catchall_57

    goto :goto_13

    :catchall_57
    move-exception v1

    :try_start_58
    invoke-virtual {v0}, Labcd/qG;->EQ()V

    throw v1
    :try_end_5c
    .catch Labcd/fD; {:try_start_58 .. :try_end_5c} :catch_69
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_5c} :catch_5c

    :catch_5c
    move-exception v0

    new-instance v1, Labcd/yD;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v2

    iget-object v2, v2, Lorg/eclipse/jgit/JGitText;->unableToCheckConnectivity:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Labcd/yD;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_69
    move-exception v0

    const/4 v0, 0x0

    return v0
.end method

.method private FH()Ljava/util/Collection;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Labcd/ME;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Labcd/pI;->DW:Labcd/jJ;

    iget-object v1, v1, Labcd/jJ;->v5:Labcd/UE;

    invoke-virtual {v1}, Labcd/UE;->v5()Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Labcd/pI;->u7:Labcd/nI;

    invoke-interface {v2}, Labcd/iI;->DW()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_17
    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1e

    return-object v0

    :cond_1e
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Labcd/ME;

    invoke-static {v3}, Labcd/pI;->j6(Labcd/ME;)Z

    move-result v4

    if-nez v4, :cond_2b

    goto :goto_17

    :cond_2b
    invoke-interface {v3}, Labcd/ME;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Labcd/ME;

    invoke-interface {v3}, Labcd/ME;->DW()Labcd/yE;

    move-result-object v5

    invoke-interface {v3}, Labcd/ME;->FH()Labcd/yE;

    move-result-object v6

    if-nez v6, :cond_5f

    if-eqz v4, :cond_4c

    invoke-interface {v4}, Labcd/ME;->DW()Labcd/yE;

    move-result-object v4

    invoke-virtual {v5, v4}, Labcd/YD;->DW(Labcd/YD;)Z

    move-result v4

    if-eqz v4, :cond_4c

    goto :goto_17

    :cond_4c
    iget-object v4, p0, Labcd/pI;->Hw:Ljava/util/HashMap;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8b

    iget-object v4, p0, Labcd/pI;->DW:Labcd/jJ;

    iget-object v4, v4, Labcd/jJ;->v5:Labcd/UE;

    invoke-virtual {v4, v5}, Labcd/UE;->j6(Labcd/YD;)Z

    move-result v4

    if-eqz v4, :cond_87

    goto :goto_8b

    :cond_5f
    if-eqz v4, :cond_6c

    invoke-interface {v4}, Labcd/ME;->DW()Labcd/yE;

    move-result-object v4

    invoke-virtual {v5, v4}, Labcd/YD;->DW(Labcd/YD;)Z

    move-result v4

    if-nez v4, :cond_17

    goto :goto_8b

    :cond_6c
    iget-object v4, p0, Labcd/pI;->Hw:Ljava/util/HashMap;

    invoke-interface {v3}, Labcd/ME;->FH()Labcd/yE;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8b

    iget-object v4, p0, Labcd/pI;->DW:Labcd/jJ;

    iget-object v4, v4, Labcd/jJ;->v5:Labcd/UE;

    invoke-interface {v3}, Labcd/ME;->FH()Labcd/yE;

    move-result-object v5

    invoke-virtual {v4, v5}, Labcd/UE;->j6(Labcd/YD;)Z

    move-result v4

    if-eqz v4, :cond_87

    goto :goto_8b

    :cond_87
    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_17

    :cond_8b
    :goto_8b
    invoke-direct {p0, v3}, Labcd/pI;->DW(Labcd/ME;)V

    goto :goto_17
.end method

.method private Hw()V
    .registers 6

    iget-object v0, p0, Labcd/pI;->DW:Labcd/jJ;

    iget-object v0, v0, Labcd/jJ;->v5:Labcd/UE;

    invoke-virtual {v0}, Labcd/UE;->v5()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Labcd/pI;->u7:Labcd/nI;

    invoke-interface {v1}, Labcd/iI;->DW()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_12
    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_19

    return-void

    :cond_19
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Labcd/ME;

    invoke-static {v2}, Labcd/pI;->j6(Labcd/ME;)Z

    move-result v3

    if-nez v3, :cond_26

    goto :goto_12

    :cond_26
    invoke-interface {v2}, Labcd/ME;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Labcd/ME;

    if-eqz v3, :cond_40

    invoke-interface {v2}, Labcd/ME;->DW()Labcd/yE;

    move-result-object v4

    invoke-interface {v3}, Labcd/ME;->DW()Labcd/yE;

    move-result-object v3

    invoke-virtual {v4, v3}, Labcd/YD;->DW(Labcd/YD;)Z

    move-result v3

    if-nez v3, :cond_12

    :cond_40
    invoke-direct {p0, v2}, Labcd/pI;->DW(Labcd/ME;)V

    goto :goto_12
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
    :try_end_24
    .catchall {:try_start_0 .. :try_end_24} :catchall_59

    iget-object p1, p0, Labcd/pI;->gn:Ljava/util/ArrayList;

    iget-object v0, p0, Labcd/pI;->u7:Labcd/nI;

    invoke-interface {v0}, Labcd/nI;->Hw()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Labcd/pI;->DW:Labcd/jJ;

    invoke-virtual {p1}, Labcd/jJ;->EQ()Z

    move-result p1

    if-eqz p1, :cond_58

    iget-object p1, p0, Labcd/pI;->u7:Labcd/nI;

    invoke-interface {p1}, Labcd/nI;->v5()Z

    move-result p1

    if-nez p1, :cond_58

    invoke-direct {p0}, Labcd/pI;->DW()Z

    move-result p1

    if-eqz p1, :cond_46

    goto :goto_58

    :cond_46
    new-instance p1, Labcd/yD;

    iget-object v0, p0, Labcd/pI;->DW:Labcd/jJ;

    invoke-virtual {v0}, Labcd/jJ;->tp()Labcd/HJ;

    move-result-object v0

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->peerDidNotSupplyACompleteObjectGraph:Ljava/lang/String;

    invoke-direct {p1, v0, v1}, Labcd/yD;-><init>(Labcd/HJ;Ljava/lang/String;)V

    throw p1

    :cond_58
    :goto_58
    return-void

    :catchall_59
    move-exception p1

    iget-object v0, p0, Labcd/pI;->gn:Ljava/util/ArrayList;

    iget-object v1, p0, Labcd/pI;->u7:Labcd/nI;

    invoke-interface {v1}, Labcd/nI;->Hw()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    throw p1
.end method

.method private j6(Labcd/ME;Labcd/WI;)V
    .registers 8

    invoke-interface {p1}, Labcd/ME;->DW()Labcd/yE;

    move-result-object v0

    invoke-virtual {p2}, Labcd/WI;->j6()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_3a

    :try_start_c
    invoke-direct {p0, p2, v0}, Labcd/pI;->j6(Labcd/WI;Labcd/yE;)Labcd/gJ;

    move-result-object v1

    invoke-virtual {v1}, Labcd/gJ;->FH()Labcd/yE;

    move-result-object v4

    invoke-virtual {v0, v4}, Labcd/YD;->DW(Labcd/YD;)Z

    move-result v4

    if-eqz v4, :cond_1b

    return-void

    :cond_1b
    iget-object v4, p0, Labcd/pI;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_20} :catch_21

    goto :goto_3a

    :catch_21
    move-exception p1

    new-instance v0, Labcd/yD;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->cannotResolveLocalTrackingRefForUpdating:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p2}, Labcd/WI;->j6()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v3, v2

    invoke-static {v1, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2, p1}, Labcd/yD;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_3a
    :goto_3a
    iget-object v1, p0, Labcd/pI;->Hw:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Labcd/oI;

    invoke-direct {v1}, Labcd/oI;-><init>()V

    iput-object v0, v1, Labcd/oI;->j6:Labcd/yE;

    invoke-virtual {p2}, Labcd/WI;->j6()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_4d

    const/4 v2, 0x1

    :cond_4d
    iput-boolean v2, v1, Labcd/oI;->DW:Z

    invoke-interface {p1}, Labcd/ME;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Labcd/oI;->FH:Ljava/lang/String;

    iget-object p1, p0, Labcd/pI;->DW:Labcd/jJ;

    invoke-virtual {p1}, Labcd/jJ;->tp()Labcd/HJ;

    move-result-object p1

    iput-object p1, v1, Labcd/oI;->Hw:Labcd/HJ;

    iget-object p1, p0, Labcd/pI;->VH:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private j6(Labcd/WI;Ljava/util/Set;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/WI;",
            "Ljava/util/Set<",
            "Labcd/ME;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Labcd/pI;->u7:Labcd/nI;

    invoke-virtual {p1}, Labcd/WI;->DW()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Labcd/iI;->getRef(Ljava/lang/String;)Labcd/ME;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_15

    invoke-direct {p0, v0, p1}, Labcd/pI;->j6(Labcd/ME;Labcd/WI;)V

    :cond_15
    return-void

    :cond_16
    new-instance p2, Labcd/yD;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jgit/JGitText;->remoteDoesNotHaveSpec:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Labcd/WI;->DW()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Labcd/yD;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private j6(Labcd/qI;)V
    .registers 3

    iget-object v0, p0, Labcd/pI;->u7:Labcd/nI;

    if-eqz v0, :cond_13

    invoke-interface {v0}, Labcd/iI;->close()V

    iget-object v0, p0, Labcd/pI;->u7:Labcd/nI;

    invoke-interface {v0}, Labcd/iI;->j6()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Labcd/zI;->j6(Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-object p1, p0, Labcd/pI;->u7:Labcd/nI;

    :cond_13
    return-void
.end method

.method private j6(Labcd/qI;Labcd/UE;Labcd/qG;Labcd/WI;Labcd/ME;)V
    .registers 16

    invoke-interface {p5}, Labcd/ME;->getName()Ljava/lang/String;

    move-result-object p5

    const/4 v7, 0x0

    const/4 v8, 0x1

    :try_start_6
    new-instance v9, Labcd/gJ;

    invoke-virtual {p4}, Labcd/WI;->DW()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {}, Labcd/yE;->Ws()Labcd/yE;

    move-result-object v5

    const-string v6, "deleted"

    move-object v0, v9

    move-object v1, p2

    move-object v2, p5

    invoke-direct/range {v0 .. v6}, Labcd/gJ;-><init>(Labcd/UE;Ljava/lang/String;Ljava/lang/String;ZLabcd/YD;Ljava/lang/String;)V

    invoke-virtual {p1, v9}, Labcd/zI;->j6(Labcd/gJ;)V

    iget-object p1, p0, Labcd/pI;->DW:Labcd/jJ;

    invoke-virtual {p1}, Labcd/jJ;->we()Z

    move-result p1

    if-eqz p1, :cond_25

    return-void

    :cond_25
    invoke-virtual {v9, p3}, Labcd/gJ;->j6(Labcd/qG;)V

    invoke-static {}, Labcd/pI;->j6()[I

    move-result-object p1

    invoke-virtual {v9}, Labcd/gJ;->Hw()Labcd/RE$a;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x3

    if-eq p1, p2, :cond_68

    const/4 p2, 0x4

    if-eq p1, p2, :cond_68

    const/4 p2, 0x5

    if-eq p1, p2, :cond_68

    const/4 p2, 0x6

    if-ne p1, p2, :cond_43

    goto :goto_68

    :cond_43
    new-instance p1, Labcd/yD;

    iget-object p2, p0, Labcd/pI;->DW:Labcd/jJ;

    invoke-virtual {p2}, Labcd/jJ;->tp()Labcd/HJ;

    move-result-object p2

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object p3

    iget-object p3, p3, Lorg/eclipse/jgit/JGitText;->cannotDeleteStaleTrackingRef2:Ljava/lang/String;

    const/4 p4, 0x2

    new-array p4, p4, [Ljava/lang/Object;

    aput-object p5, p4, v7

    invoke-virtual {v9}, Labcd/gJ;->Hw()Labcd/RE$a;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p4, v8

    invoke-static {p3, p4}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Labcd/yD;-><init>(Labcd/HJ;Ljava/lang/String;)V

    throw p1
    :try_end_68
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_68} :catch_69

    :cond_68
    :goto_68
    return-void

    :catch_69
    move-exception p1

    new-instance p2, Labcd/yD;

    iget-object p3, p0, Labcd/pI;->DW:Labcd/jJ;

    invoke-virtual {p3}, Labcd/jJ;->tp()Labcd/HJ;

    move-result-object p3

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object p4

    iget-object p4, p4, Lorg/eclipse/jgit/JGitText;->cannotDeleteStaleTrackingRef:Ljava/lang/String;

    new-array v0, v8, [Ljava/lang/Object;

    aput-object p5, v0, v7

    invoke-static {p4, v0}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-direct {p2, p3, p4, p1}, Labcd/yD;-><init>(Labcd/HJ;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method private j6(Labcd/qI;Labcd/qG;)V
    .registers 14

    iget-object v0, p0, Labcd/pI;->DW:Labcd/jJ;

    iget-object v0, v0, Labcd/jJ;->v5:Labcd/UE;

    invoke-virtual {v0}, Labcd/UE;->v5()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_10
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_17

    return-void

    :cond_17
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Labcd/ME;

    invoke-interface {v8}, Labcd/ME;->getName()Ljava/lang/String;

    move-result-object v9

    iget-object v1, p0, Labcd/pI;->FH:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_28
    :goto_28
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2f

    goto :goto_10

    :cond_2f
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/WI;

    invoke-virtual {v1, v9}, Labcd/WI;->Hw(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-virtual {v1, v9}, Labcd/WI;->j6(Ljava/lang/String;)Labcd/WI;

    move-result-object v5

    invoke-virtual {v5}, Labcd/WI;->DW()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Labcd/zI;->DW(Ljava/lang/String;)Labcd/ME;

    move-result-object v1

    if-nez v1, :cond_28

    move-object v1, p0

    move-object v2, p1

    move-object v3, v0

    move-object v4, p2

    move-object v6, v8

    invoke-direct/range {v1 .. v6}, Labcd/pI;->j6(Labcd/qI;Labcd/UE;Labcd/qG;Labcd/WI;Labcd/ME;)V

    goto :goto_28
.end method

.method private j6(Labcd/yE;)V
    .registers 4

    iget-object v0, p0, Labcd/pI;->VH:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_d

    return-void

    :cond_d
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/oI;

    iget-object v1, v1, Labcd/oI;->j6:Labcd/yE;

    invoke-virtual {v1, p1}, Labcd/YD;->DW(Labcd/YD;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_6
.end method

.method private static j6(Labcd/ME;)Z
    .registers 1

    invoke-interface {p0}, Labcd/ME;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Labcd/pI;->j6(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static j6(Ljava/lang/String;)Z
    .registers 2

    const-string v0, "refs/tags/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic j6()[I
    .registers 3

    sget-object v0, Labcd/pI;->j6:[I

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    invoke-static {}, Labcd/RE$a;->values()[Labcd/RE$a;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_c
    sget-object v1, Labcd/RE$a;->Zo:Labcd/RE$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_15} :catch_16

    goto :goto_17

    :catch_16
    move-exception v1

    :goto_17
    :try_start_17
    sget-object v1, Labcd/RE$a;->v5:Labcd/RE$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_20} :catch_21

    goto :goto_22

    :catch_21
    move-exception v1

    :goto_22
    :try_start_22
    sget-object v1, Labcd/RE$a;->u7:Labcd/RE$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_2c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_2c} :catch_2d

    goto :goto_2e

    :catch_2d
    move-exception v1

    :goto_2e
    :try_start_2e
    sget-object v1, Labcd/RE$a;->DW:Labcd/RE$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_37
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2e .. :try_end_37} :catch_38

    goto :goto_39

    :catch_38
    move-exception v1

    :goto_39
    :try_start_39
    sget-object v1, Labcd/RE$a;->Hw:Labcd/RE$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_42
    .catch Ljava/lang/NoSuchFieldError; {:try_start_39 .. :try_end_42} :catch_43

    goto :goto_44

    :catch_43
    move-exception v1

    :goto_44
    :try_start_44
    sget-object v1, Labcd/RE$a;->j6:Labcd/RE$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_4d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_44 .. :try_end_4d} :catch_4e

    goto :goto_4f

    :catch_4e
    move-exception v1

    :goto_4f
    :try_start_4f
    sget-object v1, Labcd/RE$a;->FH:Labcd/RE$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_58
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4f .. :try_end_58} :catch_59

    goto :goto_5a

    :catch_59
    move-exception v1

    :goto_5a
    :try_start_5a
    sget-object v1, Labcd/RE$a;->VH:Labcd/RE$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_63
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5a .. :try_end_63} :catch_64

    goto :goto_65

    :catch_64
    move-exception v1

    :goto_65
    :try_start_65
    sget-object v1, Labcd/RE$a;->gn:Labcd/RE$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_6f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_65 .. :try_end_6f} :catch_70

    goto :goto_71

    :catch_70
    move-exception v1

    :goto_71
    :try_start_71
    sget-object v1, Labcd/RE$a;->tp:Labcd/RE$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_7b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_71 .. :try_end_7b} :catch_7c

    goto :goto_7d

    :catch_7c
    move-exception v1

    :goto_7d
    sput-object v0, Labcd/pI;->j6:[I

    return-object v0
.end method

.method private v5()V
    .registers 6

    iget-object v0, p0, Labcd/pI;->u7:Labcd/nI;

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Labcd/pI;->DW:Labcd/jJ;

    invoke-virtual {v0}, Labcd/jJ;->QX()Labcd/nI;

    move-result-object v0

    iput-object v0, p0, Labcd/pI;->u7:Labcd/nI;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Labcd/pI;->u7:Labcd/nI;

    invoke-interface {v1}, Labcd/iI;->DW()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_68

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Labcd/pI;->Hw:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v2, p0, Labcd/pI;->Hw:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_36
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_3d

    return-void

    :cond_3d
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/ME;

    invoke-interface {v1}, Labcd/ME;->DW()Labcd/yE;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Labcd/ME;

    if-eqz v3, :cond_59

    iget-object v1, p0, Labcd/pI;->Hw:Ljava/util/HashMap;

    invoke-interface {v3}, Labcd/ME;->DW()Labcd/yE;

    move-result-object v4

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_36

    :cond_59
    invoke-interface {v1}, Labcd/ME;->DW()Labcd/yE;

    move-result-object v3

    invoke-direct {p0, v3}, Labcd/pI;->j6(Labcd/yE;)V

    invoke-interface {v1}, Labcd/ME;->DW()Labcd/yE;

    move-result-object v1

    invoke-direct {p0, v1}, Labcd/pI;->DW(Labcd/yE;)V

    goto :goto_36

    :cond_68
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Labcd/ME;

    invoke-interface {v2}, Labcd/ME;->DW()Labcd/yE;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1c
.end method


# virtual methods
.method j6(Labcd/LE;Labcd/qI;)V
    .registers 4

    iget-object v0, p0, Labcd/pI;->Hw:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Labcd/pI;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Labcd/pI;->VH:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Labcd/pI;->gn:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :try_start_14
    invoke-direct {p0, p1, p2}, Labcd/pI;->DW(Labcd/LE;Labcd/qI;)V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_39

    :try_start_17
    iget-object p1, p0, Labcd/pI;->gn:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-nez p2, :cond_24

    return-void

    :cond_24
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Labcd/kH;

    invoke-virtual {p2}, Labcd/kH;->j6()V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_2d} :catch_2e

    goto :goto_1d

    :catch_2e
    move-exception p1

    new-instance p2, Labcd/yD;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Labcd/yD;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catchall_39
    move-exception p1

    :try_start_3a
    iget-object p2, p0, Labcd/pI;->gn:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_40
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_50

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/kH;

    invoke-virtual {v0}, Labcd/kH;->j6()V
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_4f} :catch_51

    goto :goto_40

    :cond_50
    throw p1

    :catch_51
    move-exception p1

    new-instance p2, Labcd/yD;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Labcd/yD;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5d

    :goto_5c
    throw p2

    :goto_5d
    goto :goto_5c
.end method
