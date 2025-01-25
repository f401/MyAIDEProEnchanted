.class Labcd/OJ;
.super Labcd/bI;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/OJ$a;
    }
.end annotation


# instance fields
.field private final EQ:Labcd/fG;

.field private final Hw:Labcd/UE;

.field private final J0:Labcd/QF;

.field private J8:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Labcd/yE;",
            ">;"
        }
    .end annotation
.end field

.field private final Mr:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Labcd/yE;",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;>;"
        }
    .end annotation
.end field

.field private final QX:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Labcd/RJ;",
            ">;"
        }
    .end annotation
.end field

.field private U2:Ljava/lang/String;

.field private VH:I

.field private final Ws:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Labcd/RJ;",
            ">;"
        }
    .end annotation
.end field

.field private final XL:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Labcd/OJ$a;",
            ">;"
        }
    .end annotation
.end field

.field private final Zo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Labcd/RJ;",
            ">;"
        }
    .end annotation
.end field

.field private final a8:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Labcd/kH;",
            ">;"
        }
    .end annotation
.end field

.field private final aM:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final gn:Labcd/qG;

.field private final j3:Labcd/uE;

.field private final lg:Labcd/EE;

.field private final rN:Labcd/IE;

.field private final tp:Labcd/fG;

.field private final u7:Labcd/YJ;

.field private final v5:Labcd/wE;

.field private final we:Labcd/fG;


# direct methods
.method constructor <init>(Labcd/SJ;Labcd/RJ;)V
    .registers 4

    invoke-direct {p0}, Labcd/bI;-><init>()V

    new-instance v0, Labcd/uE;

    invoke-direct {v0}, Labcd/uE;-><init>()V

    iput-object v0, p0, Labcd/OJ;->j3:Labcd/uE;

    check-cast p1, Labcd/jJ;

    iget-object v0, p1, Labcd/jJ;->v5:Labcd/UE;

    iput-object v0, p0, Labcd/OJ;->Hw:Labcd/UE;

    invoke-virtual {p1}, Labcd/jJ;->EQ()Z

    move-result p1

    if-eqz p1, :cond_1c

    new-instance p1, Labcd/wE;

    invoke-direct {p1}, Labcd/wE;-><init>()V

    goto :goto_1d

    :cond_1c
    const/4 p1, 0x0

    :goto_1d
    iput-object p1, p0, Labcd/OJ;->v5:Labcd/wE;

    invoke-virtual {v0}, Labcd/UE;->aM()Labcd/EE;

    move-result-object p1

    iput-object p1, p0, Labcd/OJ;->lg:Labcd/EE;

    invoke-virtual {v0}, Labcd/UE;->j3()Labcd/IE;

    move-result-object p1

    iput-object p1, p0, Labcd/OJ;->rN:Labcd/IE;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Labcd/OJ;->Zo:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Labcd/OJ;->XL:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Labcd/OJ;->aM:Ljava/util/Set;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Labcd/OJ;->Ws:Ljava/util/LinkedList;

    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Labcd/OJ;->QX:Ljava/util/LinkedList;

    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Labcd/OJ;->Mr:Ljava/util/HashMap;

    new-instance p2, Ljava/util/ArrayList;

    const/4 v0, 0x4

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p2, p0, Labcd/OJ;->a8:Ljava/util/List;

    new-instance p2, Labcd/qG;

    invoke-direct {p2, p1}, Labcd/qG;-><init>(Labcd/IE;)V

    iput-object p2, p0, Labcd/OJ;->gn:Labcd/qG;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Labcd/qG;->j6(Z)V

    new-instance v0, Labcd/YJ;

    invoke-direct {v0, p1}, Labcd/YJ;-><init>(Labcd/IE;)V

    iput-object v0, p0, Labcd/OJ;->u7:Labcd/YJ;

    const-string p1, "COMPLETE"

    invoke-virtual {p2, p1}, Labcd/qG;->j6(Ljava/lang/String;)Labcd/fG;

    move-result-object p1

    iput-object p1, p0, Labcd/OJ;->tp:Labcd/fG;

    const-string p1, "IN_WORK_QUEUE"

    invoke-virtual {p2, p1}, Labcd/qG;->j6(Ljava/lang/String;)Labcd/fG;

    move-result-object p1

    iput-object p1, p0, Labcd/OJ;->EQ:Labcd/fG;

    const-string p1, "LOCALLY_SEEN"

    invoke-virtual {p2, p1}, Labcd/qG;->j6(Ljava/lang/String;)Labcd/fG;

    move-result-object p1

    iput-object p1, p0, Labcd/OJ;->we:Labcd/fG;

    new-instance p1, Labcd/QF;

    invoke-direct {p1}, Labcd/QF;-><init>()V

    iput-object p1, p0, Labcd/OJ;->J0:Labcd/QF;

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Labcd/OJ;->J8:Ljava/util/LinkedList;

    return-void
.end method

.method static synthetic DW(Labcd/OJ;)Labcd/EE;
    .registers 1

    iget-object p0, p0, Labcd/OJ;->lg:Labcd/EE;

    return-object p0
.end method

.method private DW(Labcd/iG;)V
    .registers 3

    iget-object v0, p0, Labcd/OJ;->tp:Labcd/fG;

    invoke-virtual {p1, v0}, Labcd/iG;->DW(Labcd/fG;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Labcd/OJ;->EQ:Labcd/fG;

    invoke-virtual {p1, v0}, Labcd/iG;->DW(Labcd/fG;)Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Labcd/OJ;->EQ:Labcd/fG;

    invoke-virtual {p1, v0}, Labcd/iG;->j6(Labcd/fG;)V

    iget-object v0, p0, Labcd/OJ;->J8:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_1b
    return-void
.end method

.method private DW(Labcd/LE;Labcd/YD;)Z
    .registers 11

    iget-object v0, p0, Labcd/OJ;->XL:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_d1

    invoke-interface {p1}, Labcd/LE;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_15

    goto/16 :goto_d1

    :cond_15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/OJ$a;

    :try_start_1b
    invoke-virtual {v1, p1}, Labcd/OJ$a;->DW(Labcd/LE;)V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1e} :catch_c8

    invoke-interface {p1}, Labcd/LE;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_25

    return v2

    :cond_25
    iget-object v3, v1, Labcd/OJ$a;->v5:Labcd/bH;

    invoke-virtual {v3, p2}, Labcd/bH;->FH(Labcd/YD;)Z

    move-result v3

    if-nez v3, :cond_2e

    goto :goto_6

    :cond_2e
    :try_start_2e
    invoke-virtual {v1, p1}, Labcd/OJ$a;->j6(Labcd/LE;)V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_31} :catch_97
    .catchall {:try_start_2e .. :try_end_31} :catchall_95

    :try_start_31
    iget-object v3, v1, Labcd/OJ$a;->Hw:Ljava/io/File;

    if-eqz v3, :cond_3a

    iget-object v3, v1, Labcd/OJ$a;->Hw:Ljava/io/File;

    invoke-static {v3}, Labcd/zK;->j6(Ljava/io/File;)V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_3a} :catch_8a

    :cond_3a
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    invoke-direct {p0, p2}, Labcd/OJ;->j6(Labcd/YD;)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_64

    new-instance v3, Ljava/io/FileNotFoundException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v5

    iget-object v5, v5, Lorg/eclipse/jgit/JGitText;->objectNotFoundIn:Ljava/lang/String;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {p2}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    iget-object v1, v1, Labcd/OJ$a;->DW:Ljava/lang/String;

    aput-object v1, v6, v4

    invoke-static {v5, v6}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p2, v3}, Labcd/OJ;->j6(Labcd/YD;Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_64
    invoke-direct {p0}, Labcd/OJ;->u7()Ljava/util/Iterator;

    move-result-object p1

    :goto_68
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-nez p2, :cond_6f

    return v4

    :cond_6f
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Labcd/yE;

    iget-object v0, v1, Labcd/OJ$a;->v5:Labcd/bH;

    invoke-virtual {v0, p2}, Labcd/bH;->FH(Labcd/YD;)Z

    move-result v0

    if-eqz v0, :cond_84

    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    invoke-direct {p0, p2}, Labcd/OJ;->j6(Labcd/yE;)V

    goto :goto_68

    :cond_84
    iget-object v0, p0, Labcd/OJ;->J8:Ljava/util/LinkedList;

    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_68

    :catch_8a
    move-exception p1

    new-instance p2, Labcd/yD;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Labcd/yD;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catchall_95
    move-exception p1

    goto :goto_b0

    :catch_97
    move-exception v2

    :try_start_98
    invoke-direct {p0, p2, v2}, Labcd/OJ;->j6(Labcd/YD;Ljava/lang/Throwable;)V
    :try_end_9b
    .catchall {:try_start_98 .. :try_end_9b} :catchall_95

    :try_start_9b
    iget-object v2, v1, Labcd/OJ$a;->Hw:Ljava/io/File;

    if-eqz v2, :cond_cc

    iget-object v1, v1, Labcd/OJ$a;->Hw:Ljava/io/File;

    invoke-static {v1}, Labcd/zK;->j6(Ljava/io/File;)V
    :try_end_a4
    .catch Ljava/io/IOException; {:try_start_9b .. :try_end_a4} :catch_a5

    goto :goto_cc

    :catch_a5
    move-exception p1

    new-instance p2, Labcd/yD;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Labcd/yD;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :goto_b0
    :try_start_b0
    iget-object p2, v1, Labcd/OJ$a;->Hw:Ljava/io/File;

    if-eqz p2, :cond_b9

    iget-object p2, v1, Labcd/OJ$a;->Hw:Ljava/io/File;

    invoke-static {p2}, Labcd/zK;->j6(Ljava/io/File;)V
    :try_end_b9
    .catch Ljava/io/IOException; {:try_start_b0 .. :try_end_b9} :catch_bd

    :cond_b9
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    throw p1

    :catch_bd
    move-exception p1

    new-instance p2, Labcd/yD;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Labcd/yD;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_c8
    move-exception v1

    invoke-direct {p0, p2, v1}, Labcd/OJ;->j6(Labcd/YD;Ljava/lang/Throwable;)V

    :cond_cc
    :goto_cc
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_6

    :cond_d1
    :goto_d1
    return v2
.end method

.method static synthetic FH(Labcd/OJ;)Labcd/wE;
    .registers 1

    iget-object p0, p0, Labcd/OJ;->v5:Labcd/wE;

    return-object p0
.end method

.method private FH(Labcd/iG;)V
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_2
    iget-object v2, p0, Labcd/OJ;->rN:Labcd/IE;

    const/4 v3, 0x3

    invoke-virtual {v2, p1, v3}, Labcd/IE;->FH(Labcd/YD;I)Z

    move-result v2

    if-eqz v2, :cond_11

    iget-object v2, p0, Labcd/OJ;->tp:Labcd/fG;

    invoke-virtual {p1, v2}, Labcd/iG;->j6(Labcd/fG;)V

    return-void

    :cond_11
    new-instance v2, Labcd/yD;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v3

    iget-object v3, v3, Lorg/eclipse/jgit/JGitText;->cannotReadBlob:Ljava/lang/String;

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v3, v4}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Labcd/fD;

    const-string v5, "blob"

    invoke-direct {v4, p1, v5}, Labcd/fD;-><init>(Labcd/yE;Ljava/lang/String;)V

    invoke-direct {v2, v3, v4}, Labcd/yD;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_30} :catch_30

    :catch_30
    move-exception v2

    new-instance v3, Labcd/yD;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v4

    iget-object v4, v4, Lorg/eclipse/jgit/JGitText;->cannotReadBlob:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v0

    invoke-static {v4, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1, v2}, Labcd/yD;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method static synthetic Hw(Labcd/OJ;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Labcd/OJ;->U2:Ljava/lang/String;

    return-object p0
.end method

.method private Hw(Labcd/iG;)V
    .registers 6

    move-object v0, p1

    check-cast v0, Labcd/dG;

    invoke-virtual {v0}, Labcd/dG;->U2()I

    move-result v1

    invoke-direct {p0, v1}, Labcd/OJ;->j6(I)V

    invoke-virtual {v0}, Labcd/dG;->yS()Labcd/mG;

    move-result-object v1

    invoke-direct {p0, v1}, Labcd/OJ;->DW(Labcd/iG;)V

    invoke-virtual {v0}, Labcd/dG;->rN()[Labcd/dG;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_17
    if-lt v2, v1, :cond_1f

    iget-object v0, p0, Labcd/OJ;->tp:Labcd/fG;

    invoke-virtual {p1, v0}, Labcd/iG;->j6(Labcd/fG;)V

    return-void

    :cond_1f
    aget-object v3, v0, v2

    invoke-direct {p0, v3}, Labcd/OJ;->DW(Labcd/iG;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_17
.end method

.method private Zo(Labcd/iG;)V
    .registers 12

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_2
    iget-object v2, p0, Labcd/OJ;->u7:Labcd/YJ;

    invoke-virtual {v2, p1}, Labcd/YJ;->DW(Labcd/YD;)V

    :goto_7
    iget-object v2, p0, Labcd/OJ;->u7:Labcd/YJ;

    invoke-virtual {v2}, Labcd/YJ;->EQ()Z

    move-result v2
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_d} :catch_76

    if-nez v2, :cond_15

    iget-object v0, p0, Labcd/OJ;->tp:Labcd/fG;

    invoke-virtual {p1, v0}, Labcd/iG;->j6(Labcd/fG;)V

    return-void

    :cond_15
    :try_start_15
    iget-object v2, p0, Labcd/OJ;->u7:Labcd/YJ;

    invoke-virtual {v2, v1}, Labcd/YJ;->j6(I)Labcd/rE;

    move-result-object v2

    invoke-virtual {v2}, Labcd/rE;->FH()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_63

    const/4 v5, 0x3

    if-eq v3, v5, :cond_63

    sget-object v3, Labcd/rE;->v5:Labcd/rE;

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    goto :goto_7

    :cond_2e
    iget-object v3, p0, Labcd/OJ;->u7:Labcd/YJ;

    iget-object v6, p0, Labcd/OJ;->j3:Labcd/uE;

    invoke-virtual {v3, v6, v1}, Labcd/YJ;->j6(Labcd/uE;I)V

    new-instance v3, Labcd/YC;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v6

    iget-object v6, v6, Lorg/eclipse/jgit/JGitText;->invalidModeFor:Ljava/lang/String;

    iget-object v7, p0, Labcd/OJ;->j3:Labcd/uE;

    invoke-virtual {v7}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Labcd/OJ;->u7:Labcd/YJ;

    invoke-virtual {v8}, Labcd/YJ;->Hw()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Labcd/iG;->getId()Labcd/yE;

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v2, v9, v1

    aput-object v7, v9, v0

    aput-object v8, v9, v4

    invoke-virtual {p1}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v9, v5

    invoke-static {v6, v9}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Labcd/YC;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_63
    iget-object v2, p0, Labcd/OJ;->u7:Labcd/YJ;

    iget-object v4, p0, Labcd/OJ;->j3:Labcd/uE;

    invoke-virtual {v2, v4, v1}, Labcd/YJ;->j6(Labcd/uE;I)V

    iget-object v2, p0, Labcd/OJ;->gn:Labcd/qG;

    iget-object v4, p0, Labcd/OJ;->j3:Labcd/uE;

    invoke-virtual {v2, v4, v3}, Labcd/qG;->j6(Labcd/YD;I)Labcd/iG;

    move-result-object v2

    invoke-direct {p0, v2}, Labcd/OJ;->DW(Labcd/iG;)V
    :try_end_75
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_75} :catch_76

    goto :goto_7

    :catch_76
    move-exception v2

    new-instance v3, Labcd/yD;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v4

    iget-object v4, v4, Lorg/eclipse/jgit/JGitText;->cannotReadTree:Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-static {v4, v0}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1, v2}, Labcd/yD;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_90

    :goto_8f
    throw v3

    :goto_90
    goto :goto_8f
.end method

.method static synthetic j6(Labcd/OJ;)Labcd/UE;
    .registers 1

    iget-object p0, p0, Labcd/OJ;->Hw:Labcd/UE;

    return-object p0
.end method

.method private j6(Labcd/YD;Labcd/LE;)Ljava/util/Collection;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/YD;",
            "Labcd/LE;",
            ")",
            "Ljava/util/Collection<",
            "Labcd/RJ;",
            ">;"
        }
    .end annotation

    :goto_0
    iget-object v0, p0, Labcd/OJ;->QX:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p1, 0x0

    return-object p1

    :cond_a
    iget-object v0, p0, Labcd/OJ;->QX:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/RJ;

    :try_start_12
    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->listingAlternates:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {p2, v1, v2}, Labcd/LE;->j6(Ljava/lang/String;I)V

    invoke-virtual {v0}, Labcd/RJ;->DW()Ljava/util/Collection;

    move-result-object v0

    if-eqz v0, :cond_32

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_26} :catch_2e
    .catchall {:try_start_12 .. :try_end_26} :catchall_2c

    if-nez v1, :cond_32

    invoke-interface {p2}, Labcd/LE;->j6()V

    return-object v0

    :catchall_2c
    move-exception p1

    goto :goto_36

    :catch_2e
    move-exception v0

    :try_start_2f
    invoke-direct {p0, p1, v0}, Labcd/OJ;->j6(Labcd/YD;Ljava/lang/Throwable;)V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_2c

    :cond_32
    invoke-interface {p2}, Labcd/LE;->j6()V

    goto :goto_0

    :goto_36
    invoke-interface {p2}, Labcd/LE;->j6()V

    goto :goto_3b

    :goto_3a
    throw p1

    :goto_3b
    goto :goto_3a
.end method

.method private j6(I)V
    .registers 6

    :goto_0
    :try_start_0
    iget-object v0, p0, Labcd/OJ;->J0:Labcd/QF;

    invoke-virtual {v0}, Labcd/QF;->Hw()Labcd/dG;

    move-result-object v0

    if-eqz v0, :cond_2c

    invoke-virtual {v0}, Labcd/dG;->U2()I

    move-result v1

    if-ge v1, p1, :cond_f

    goto :goto_2c

    :cond_f
    iget-object v1, p0, Labcd/OJ;->J0:Labcd/QF;

    invoke-virtual {v1}, Labcd/QF;->j6()Labcd/dG;

    invoke-virtual {v0}, Labcd/dG;->yS()Labcd/mG;

    move-result-object v1

    invoke-direct {p0, v1}, Labcd/OJ;->j6(Labcd/mG;)V

    invoke-virtual {v0}, Labcd/dG;->rN()[Labcd/dG;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_21
    if-lt v2, v1, :cond_24

    goto :goto_0

    :cond_24
    aget-object v3, v0, v2

    invoke-direct {p0, v3}, Labcd/OJ;->j6(Labcd/dG;)V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_29} :catch_2d

    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    :cond_2c
    :goto_2c
    return-void

    :catch_2d
    move-exception p1

    new-instance v0, Labcd/yD;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->localObjectsIncomplete:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Labcd/yD;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3b

    :goto_3a
    throw v0

    :goto_3b
    goto :goto_3a
.end method

.method private j6(Labcd/LE;Labcd/YD;)V
    .registers 9

    invoke-direct {p0, p2}, Labcd/OJ;->j6(Labcd/YD;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    :goto_7
    invoke-direct {p0, p1, p2}, Labcd/OJ;->DW(Labcd/LE;Labcd/YD;)Z

    move-result v0

    if-eqz v0, :cond_e

    return-void

    :cond_e
    invoke-virtual {p2}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Labcd/OJ;->VH:I

    :goto_33
    iget-object v3, p0, Labcd/OJ;->Zo:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v2, v3, :cond_122

    const/4 v2, 0x0

    :goto_3c
    iget v3, p0, Labcd/OJ;->VH:I

    if-lt v2, v3, :cond_10d

    :cond_40
    :goto_40
    iget-object v0, p0, Labcd/OJ;->Ws:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b6

    invoke-direct {p0, p2, p1}, Labcd/OJ;->j6(Labcd/YD;Labcd/LE;)Ljava/util/Collection;

    move-result-object v0

    if-eqz v0, :cond_75

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_75

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_58
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_5f

    goto :goto_7

    :cond_5f
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/RJ;

    iget-object v2, p0, Labcd/OJ;->Zo:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Labcd/OJ;->Ws:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Labcd/OJ;->QX:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_58

    :cond_75
    iget-object p1, p0, Labcd/OJ;->Mr:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    new-instance v0, Labcd/yD;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v2

    iget-object v2, v2, Lorg/eclipse/jgit/JGitText;->cannotGet:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {p2}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v4, v1

    invoke-static {v2, v4}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Labcd/yD;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_b5

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_b5

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-ne p2, v3, :cond_ad

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    goto :goto_b5

    :cond_ad
    new-instance p2, Labcd/WC;

    invoke-direct {p2, p1}, Labcd/WC;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, p2}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    :cond_b5
    :goto_b5
    throw v0

    :cond_b6
    iget-object v0, p0, Labcd/OJ;->Ws:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/RJ;

    :try_start_be
    const-string v2, "Listing packs"

    invoke-interface {p1, v2, v1}, Labcd/LE;->j6(Ljava/lang/String;I)V

    invoke-virtual {v0}, Labcd/RJ;->FH()Ljava/util/Collection;

    move-result-object v2
    :try_end_c7
    .catch Ljava/io/IOException; {:try_start_be .. :try_end_c7} :catch_100
    .catchall {:try_start_be .. :try_end_c7} :catchall_fe

    invoke-interface {p1}, Labcd/LE;->j6()V

    if-eqz v2, :cond_40

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_d4

    goto/16 :goto_40

    :cond_d4
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_d8
    :goto_d8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_e5

    invoke-direct {p0, p1, p2}, Labcd/OJ;->DW(Labcd/LE;Labcd/YD;)Z

    move-result v0

    if-eqz v0, :cond_40

    return-void

    :cond_e5
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Labcd/OJ;->aM:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d8

    iget-object v4, p0, Labcd/OJ;->XL:Ljava/util/LinkedList;

    new-instance v5, Labcd/OJ$a;

    invoke-direct {v5, p0, v0, v3}, Labcd/OJ$a;-><init>(Labcd/OJ;Labcd/RJ;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_d8

    :catchall_fe
    move-exception p2

    goto :goto_109

    :catch_100
    move-exception v0

    :try_start_101
    invoke-direct {p0, p2, v0}, Labcd/OJ;->j6(Labcd/YD;Ljava/lang/Throwable;)V
    :try_end_104
    .catchall {:try_start_101 .. :try_end_104} :catchall_fe

    invoke-interface {p1}, Labcd/LE;->j6()V

    goto/16 :goto_40

    :goto_109
    invoke-interface {p1}, Labcd/LE;->j6()V

    throw p2

    :cond_10d
    iget-object v3, p0, Labcd/OJ;->Zo:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Labcd/RJ;

    invoke-direct {p0, p2, v0, v3}, Labcd/OJ;->j6(Labcd/YD;Ljava/lang/String;Labcd/RJ;)Z

    move-result v3

    if-eqz v3, :cond_11e

    iput v2, p0, Labcd/OJ;->VH:I

    return-void

    :cond_11e
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3c

    :cond_122
    iget-object v3, p0, Labcd/OJ;->Zo:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Labcd/RJ;

    invoke-direct {p0, p2, v0, v3}, Labcd/OJ;->j6(Labcd/YD;Ljava/lang/String;Labcd/RJ;)Z

    move-result v3

    if-eqz v3, :cond_133

    iput v2, p0, Labcd/OJ;->VH:I

    return-void

    :cond_133
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_33
.end method

.method private j6(Labcd/YD;Ljava/lang/Throwable;)V
    .registers 5

    invoke-virtual {p1}, Labcd/YD;->Hw()Labcd/yE;

    move-result-object p1

    iget-object v0, p0, Labcd/OJ;->Mr:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_19

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Labcd/OJ;->Mr:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_19
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private j6(Labcd/YD;[B)V
    .registers 12

    :try_start_0
    invoke-static {p2, p1}, Labcd/sH;->j6([BLabcd/YD;)Labcd/FE;

    move-result-object v0
    :try_end_4
    .catch Labcd/YC; {:try_start_0 .. :try_end_4} :catch_7b

    invoke-virtual {v0}, Labcd/FE;->FH()I

    move-result v1

    invoke-virtual {v0}, Labcd/FE;->j6()[B

    move-result-object v0

    iget-object v2, p0, Labcd/OJ;->v5:Labcd/wE;

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_3d

    :try_start_14
    invoke-virtual {v2, v1, v0}, Labcd/wE;->j6(I[B)V
    :try_end_17
    .catch Labcd/YC; {:try_start_14 .. :try_end_17} :catch_18

    goto :goto_3d

    :catch_18
    move-exception p2

    new-instance v0, Labcd/yD;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v2

    iget-object v2, v2, Lorg/eclipse/jgit/JGitText;->transportExceptionInvalid:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1}, Labcd/hE;->DW(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v6

    invoke-virtual {p1}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v5

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Labcd/yD;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3d
    :goto_3d
    iget-object v2, p0, Labcd/OJ;->lg:Labcd/EE;

    invoke-virtual {v2, v1, v0}, Labcd/EE;->DW(I[B)Labcd/yE;

    move-result-object v0

    invoke-static {p1, v0}, Labcd/YD;->j6(Labcd/YD;Labcd/YD;)Z

    move-result v2

    if-eqz v2, :cond_4f

    iget-object p1, p0, Labcd/OJ;->lg:Labcd/EE;

    invoke-virtual {p1}, Labcd/EE;->FH()V

    return-void

    :cond_4f
    new-instance v2, Labcd/yD;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v7

    iget-object v7, v7, Lorg/eclipse/jgit/JGitText;->incorrectHashFor:Ljava/lang/String;

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {p1}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v8, v6

    invoke-virtual {v0}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v8, v5

    invoke-static {v1}, Labcd/hE;->DW(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v8, v4

    array-length p1, p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v8, v3

    invoke-static {v7, v8}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Labcd/yD;-><init>(Ljava/lang/String;)V

    throw v2

    :catch_7b
    move-exception p2

    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-virtual {p1}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/io/FileNotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v0
.end method

.method private j6(Labcd/dG;)V
    .registers 3

    iget-object v0, p0, Labcd/OJ;->we:Labcd/fG;

    invoke-virtual {p1, v0}, Labcd/iG;->DW(Labcd/fG;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Labcd/OJ;->gn:Labcd/qG;

    invoke-virtual {v0, p1}, Labcd/qG;->DW(Labcd/iG;)V

    iget-object v0, p0, Labcd/OJ;->we:Labcd/fG;

    invoke-virtual {p1, v0}, Labcd/iG;->j6(Labcd/fG;)V

    iget-object v0, p0, Labcd/OJ;->tp:Labcd/fG;

    invoke-virtual {p1, v0}, Labcd/iG;->j6(Labcd/fG;)V

    iget-object v0, p0, Labcd/OJ;->tp:Labcd/fG;

    invoke-virtual {p1, v0}, Labcd/dG;->FH(Labcd/fG;)V

    iget-object v0, p0, Labcd/OJ;->J0:Labcd/QF;

    invoke-virtual {v0, p1}, Labcd/QF;->j6(Labcd/dG;)V

    return-void
.end method

.method private j6(Labcd/iG;)V
    .registers 4

    :goto_0
    invoke-virtual {p1}, Labcd/iG;->aM()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_27

    invoke-virtual {p1}, Labcd/iG;->aM()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_21

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1b

    const/4 v1, 0x3

    if-eq v0, v1, :cond_15

    goto :goto_26

    :cond_15
    iget-object v0, p0, Labcd/OJ;->tp:Labcd/fG;

    invoke-virtual {p1, v0}, Labcd/iG;->j6(Labcd/fG;)V

    goto :goto_26

    :cond_1b
    check-cast p1, Labcd/mG;

    invoke-direct {p0, p1}, Labcd/OJ;->j6(Labcd/mG;)V

    goto :goto_26

    :cond_21
    check-cast p1, Labcd/dG;

    invoke-direct {p0, p1}, Labcd/OJ;->j6(Labcd/dG;)V

    :goto_26
    return-void

    :cond_27
    iget-object v0, p0, Labcd/OJ;->tp:Labcd/fG;

    invoke-virtual {p1, v0}, Labcd/iG;->j6(Labcd/fG;)V

    check-cast p1, Labcd/lG;

    invoke-virtual {p1}, Labcd/lG;->j3()Labcd/iG;

    move-result-object p1

    iget-object v0, p0, Labcd/OJ;->gn:Labcd/qG;

    invoke-virtual {v0, p1}, Labcd/qG;->DW(Labcd/iG;)V

    goto :goto_0
.end method

.method private j6(Labcd/mG;)V
    .registers 9

    iget-object v0, p0, Labcd/OJ;->tp:Labcd/fG;

    invoke-virtual {p1, v0}, Labcd/iG;->DW(Labcd/fG;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Labcd/OJ;->tp:Labcd/fG;

    invoke-virtual {p1, v0}, Labcd/iG;->j6(Labcd/fG;)V

    iget-object v0, p0, Labcd/OJ;->u7:Labcd/YJ;

    invoke-virtual {v0, p1}, Labcd/YJ;->DW(Labcd/YD;)V

    :cond_13
    :goto_13
    iget-object v0, p0, Labcd/OJ;->u7:Labcd/YJ;

    invoke-virtual {v0}, Labcd/YJ;->EQ()Z

    move-result v0

    if-nez v0, :cond_1c

    return-void

    :cond_1c
    iget-object v0, p0, Labcd/OJ;->u7:Labcd/YJ;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Labcd/YJ;->j6(I)Labcd/rE;

    move-result-object v0

    invoke-virtual {v0}, Labcd/rE;->FH()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_7e

    const/4 v4, 0x3

    if-eq v2, v4, :cond_69

    sget-object v2, Labcd/rE;->v5:Labcd/rE;

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36

    goto :goto_13

    :cond_36
    iget-object v2, p0, Labcd/OJ;->u7:Labcd/YJ;

    iget-object v5, p0, Labcd/OJ;->j3:Labcd/uE;

    invoke-virtual {v2, v5, v1}, Labcd/YJ;->j6(Labcd/uE;I)V

    new-instance v2, Labcd/YC;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v5

    iget-object v5, v5, Lorg/eclipse/jgit/JGitText;->corruptObjectInvalidMode3:Ljava/lang/String;

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v1

    iget-object v0, p0, Labcd/OJ;->j3:Labcd/uE;

    invoke-virtual {v0}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v6, v1

    iget-object v0, p0, Labcd/OJ;->u7:Labcd/YJ;

    invoke-virtual {v0}, Labcd/YJ;->Hw()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v3

    invoke-virtual {p1}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v6, v4

    invoke-static {v5, v6}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Labcd/YC;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_69
    iget-object v0, p0, Labcd/OJ;->u7:Labcd/YJ;

    iget-object v3, p0, Labcd/OJ;->j3:Labcd/uE;

    invoke-virtual {v0, v3, v1}, Labcd/YJ;->j6(Labcd/uE;I)V

    iget-object v0, p0, Labcd/OJ;->gn:Labcd/qG;

    iget-object v1, p0, Labcd/OJ;->j3:Labcd/uE;

    invoke-virtual {v0, v1, v2}, Labcd/qG;->j6(Labcd/YD;I)Labcd/iG;

    move-result-object v0

    iget-object v1, p0, Labcd/OJ;->tp:Labcd/fG;

    invoke-virtual {v0, v1}, Labcd/iG;->j6(Labcd/fG;)V

    goto :goto_13

    :cond_7e
    iget-object v0, p0, Labcd/OJ;->u7:Labcd/YJ;

    iget-object v3, p0, Labcd/OJ;->j3:Labcd/uE;

    invoke-virtual {v0, v3, v1}, Labcd/YJ;->j6(Labcd/uE;I)V

    iget-object v0, p0, Labcd/OJ;->gn:Labcd/qG;

    iget-object v1, p0, Labcd/OJ;->j3:Labcd/uE;

    invoke-virtual {v0, v1, v2}, Labcd/qG;->j6(Labcd/YD;I)Labcd/iG;

    move-result-object v0

    iget-object v1, p0, Labcd/OJ;->tp:Labcd/fG;

    invoke-virtual {v0, v1}, Labcd/iG;->DW(Labcd/fG;)Z

    move-result v1

    if-nez v1, :cond_13

    iget-object v1, p0, Labcd/OJ;->tp:Labcd/fG;

    invoke-virtual {v0, v1}, Labcd/iG;->j6(Labcd/fG;)V

    iget-object v0, p0, Labcd/OJ;->u7:Labcd/YJ;

    invoke-virtual {v0}, Labcd/YJ;->j6()V

    goto/16 :goto_13
.end method

.method private j6(Labcd/yE;)V
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_2
    instance-of v2, p1, Labcd/iG;

    if-eqz v2, :cond_18

    move-object v2, p1

    check-cast v2, Labcd/iG;

    iget-object v3, p0, Labcd/OJ;->tp:Labcd/fG;

    invoke-virtual {v2, v3}, Labcd/iG;->DW(Labcd/fG;)Z

    move-result v3

    if-eqz v3, :cond_12

    return-void

    :cond_12
    iget-object v3, p0, Labcd/OJ;->gn:Labcd/qG;

    invoke-virtual {v3, v2}, Labcd/qG;->DW(Labcd/iG;)V

    goto :goto_27

    :cond_18
    iget-object v2, p0, Labcd/OJ;->gn:Labcd/qG;

    invoke-virtual {v2, p1}, Labcd/qG;->Zo(Labcd/YD;)Labcd/iG;

    move-result-object v2

    iget-object v3, p0, Labcd/OJ;->tp:Labcd/fG;

    invoke-virtual {v2, v3}, Labcd/iG;->DW(Labcd/fG;)Z

    move-result v3
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_24} :catch_63

    if-eqz v3, :cond_27

    return-void

    :cond_27
    :goto_27
    invoke-virtual {v2}, Labcd/iG;->aM()I

    move-result v3

    if-eq v3, v1, :cond_5a

    const/4 v4, 0x2

    if-eq v3, v4, :cond_56

    const/4 v4, 0x3

    if-eq v3, v4, :cond_52

    const/4 v4, 0x4

    if-ne v3, v4, :cond_3a

    invoke-direct {p0, v2}, Labcd/OJ;->v5(Labcd/iG;)V

    goto :goto_5d

    :cond_3a
    new-instance v2, Labcd/yD;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v3

    iget-object v3, v3, Lorg/eclipse/jgit/JGitText;->unknownObjectType:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v0

    invoke-static {v3, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Labcd/yD;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_52
    invoke-direct {p0, v2}, Labcd/OJ;->FH(Labcd/iG;)V

    goto :goto_5d

    :cond_56
    invoke-direct {p0, v2}, Labcd/OJ;->Zo(Labcd/iG;)V

    goto :goto_5d

    :cond_5a
    invoke-direct {p0, v2}, Labcd/OJ;->Hw(Labcd/iG;)V

    :goto_5d
    iget-object v0, p0, Labcd/OJ;->Mr:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catch_63
    move-exception v2

    new-instance v3, Labcd/yD;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v4

    iget-object v4, v4, Lorg/eclipse/jgit/JGitText;->cannotRead:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v0

    invoke-static {v4, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1, v2}, Labcd/yD;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private j6(Ljava/util/Collection;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Labcd/ME;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9
    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_10

    return-void

    :cond_10
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/ME;

    invoke-interface {v1}, Labcd/ME;->DW()Labcd/yE;

    move-result-object v1

    :try_start_1a
    iget-object v2, p0, Labcd/OJ;->gn:Labcd/qG;

    invoke-virtual {v2, v1}, Labcd/qG;->Zo(Labcd/YD;)Labcd/iG;

    move-result-object v2

    iget-object v3, p0, Labcd/OJ;->tp:Labcd/fG;

    invoke-virtual {v2, v3}, Labcd/iG;->DW(Labcd/fG;)Z

    move-result v3

    if-eqz v3, :cond_29

    goto :goto_9

    :cond_29
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Labcd/OJ;->EQ:Labcd/fG;

    invoke-virtual {v2, v3}, Labcd/iG;->j6(Labcd/fG;)V

    iget-object v3, p0, Labcd/OJ;->J8:Ljava/util/LinkedList;

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_39
    .catch Labcd/fD; {:try_start_1a .. :try_end_39} :catch_55
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_39} :catch_3a

    goto :goto_9

    :catch_3a
    move-exception p1

    new-instance v0, Labcd/yD;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v2

    iget-object v2, v2, Lorg/eclipse/jgit/JGitText;->cannotRead:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v1}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Labcd/yD;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_55
    move-exception v2

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Labcd/OJ;->J8:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_9
.end method

.method private j6(Ljava/util/Set;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Labcd/yE;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Labcd/OJ;->Hw:Labcd/UE;

    invoke-virtual {v0}, Labcd/UE;->v5()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_4a

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_21

    return-void

    :cond_21
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/yE;

    :try_start_27
    iget-object v1, p0, Labcd/OJ;->gn:Labcd/qG;

    invoke-virtual {v1, v0}, Labcd/qG;->Zo(Labcd/YD;)Labcd/iG;

    move-result-object v1

    invoke-direct {p0, v1}, Labcd/OJ;->j6(Labcd/iG;)V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_30} :catch_31

    goto :goto_1a

    :catch_31
    move-exception p1

    new-instance v1, Labcd/yD;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v4

    iget-object v4, v4, Lorg/eclipse/jgit/JGitText;->transportExceptionMissingAssumed:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v2

    invoke-static {v4, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Labcd/yD;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_4a
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/ME;

    :try_start_50
    iget-object v4, p0, Labcd/OJ;->gn:Labcd/qG;

    invoke-interface {v1}, Labcd/ME;->DW()Labcd/yE;

    move-result-object v5

    invoke-virtual {v4, v5}, Labcd/qG;->Zo(Labcd/YD;)Labcd/iG;

    move-result-object v4

    invoke-direct {p0, v4}, Labcd/OJ;->j6(Labcd/iG;)V
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_5d} :catch_5e

    goto :goto_e

    :catch_5e
    move-exception p1

    new-instance v0, Labcd/yD;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v4

    iget-object v4, v4, Lorg/eclipse/jgit/JGitText;->localRefIsMissingObjects:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1}, Labcd/ME;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v2

    invoke-static {v4, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Labcd/yD;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_78

    :goto_77
    throw v0

    :goto_78
    goto :goto_77
.end method

.method private j6(Labcd/YD;)Z
    .registers 7

    :try_start_0
    iget-object v0, p0, Labcd/OJ;->rN:Labcd/IE;

    invoke-virtual {v0, p1}, Labcd/IE;->DW(Labcd/YD;)Z

    move-result p1
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_6} :catch_7

    return p1

    :catch_7
    move-exception v0

    new-instance v1, Labcd/yD;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v2

    iget-object v2, v2, Lorg/eclipse/jgit/JGitText;->cannotReadObject:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Labcd/yD;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private j6(Labcd/YD;Ljava/lang/String;Labcd/RJ;)Z
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_2
    invoke-virtual {p3, p2}, Labcd/RJ;->Hw(Ljava/lang/String;)Labcd/RJ$a;

    move-result-object p2

    invoke-virtual {p2}, Labcd/RJ$a;->j6()[B

    move-result-object p2

    invoke-direct {p0, p1, p2}, Labcd/OJ;->j6(Labcd/YD;[B)V
    :try_end_d
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_d} :catch_27
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_d} :catch_e

    return v0

    :catch_e
    move-exception p2

    new-instance p3, Labcd/yD;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v2

    iget-object v2, v2, Lorg/eclipse/jgit/JGitText;->cannotDownload:Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-static {v2, v0}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1, p2}, Labcd/yD;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3

    :catch_27
    move-exception p2

    invoke-direct {p0, p1, p2}, Labcd/OJ;->j6(Labcd/YD;Ljava/lang/Throwable;)V

    return v1
.end method

.method private u7()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Labcd/yE;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Labcd/OJ;->J8:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Labcd/OJ;->J8:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic v5(Labcd/OJ;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Labcd/OJ;->a8:Ljava/util/List;

    return-object p0
.end method

.method private v5(Labcd/iG;)V
    .registers 3

    move-object v0, p1

    check-cast v0, Labcd/lG;

    invoke-virtual {v0}, Labcd/lG;->j3()Labcd/iG;

    move-result-object v0

    invoke-direct {p0, v0}, Labcd/OJ;->DW(Labcd/iG;)V

    iget-object v0, p0, Labcd/OJ;->tp:Labcd/fG;

    invoke-virtual {p1, v0}, Labcd/iG;->j6(Labcd/fG;)V

    return-void
.end method


# virtual methods
.method protected DW(Labcd/LE;Ljava/util/Collection;Ljava/util/Set;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/LE;",
            "Ljava/util/Collection<",
            "Labcd/ME;",
            ">;",
            "Ljava/util/Set<",
            "Labcd/yE;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p3}, Labcd/OJ;->j6(Ljava/util/Set;)V

    invoke-direct {p0, p2}, Labcd/OJ;->j6(Ljava/util/Collection;)V

    :goto_6
    invoke-interface {p1}, Labcd/LE;->isCancelled()Z

    move-result p2

    if-nez p2, :cond_33

    iget-object p2, p0, Labcd/OJ;->J8:Ljava/util/LinkedList;

    invoke-virtual {p2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_15

    goto :goto_33

    :cond_15
    iget-object p2, p0, Labcd/OJ;->J8:Ljava/util/LinkedList;

    invoke-virtual {p2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Labcd/yE;

    instance-of p3, p2, Labcd/iG;

    if-eqz p3, :cond_2c

    move-object p3, p2

    check-cast p3, Labcd/iG;

    iget-object v0, p0, Labcd/OJ;->tp:Labcd/fG;

    invoke-virtual {p3, v0}, Labcd/iG;->DW(Labcd/fG;)Z

    move-result p3

    if-nez p3, :cond_2f

    :cond_2c
    invoke-direct {p0, p1, p2}, Labcd/OJ;->j6(Labcd/LE;Labcd/YD;)V

    :cond_2f
    invoke-direct {p0, p2}, Labcd/OJ;->j6(Labcd/yE;)V

    goto :goto_6

    :cond_33
    :goto_33
    return-void
.end method

.method public Hw()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Labcd/kH;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Labcd/OJ;->a8:Ljava/util/List;

    return-object v0
.end method

.method public close()V
    .registers 3

    iget-object v0, p0, Labcd/OJ;->lg:Labcd/EE;

    invoke-virtual {v0}, Labcd/EE;->Hw()V

    iget-object v0, p0, Labcd/OJ;->rN:Labcd/IE;

    invoke-virtual {v0}, Labcd/IE;->FH()V

    iget-object v0, p0, Labcd/OJ;->XL:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_10
    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2d

    iget-object v0, p0, Labcd/OJ;->Zo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_23

    return-void

    :cond_23
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/RJ;

    invoke-virtual {v0}, Labcd/RJ;->j6()V

    goto :goto_1c

    :cond_2d
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/OJ$a;

    iget-object v1, v1, Labcd/OJ$a;->Hw:Ljava/io/File;

    if-eqz v1, :cond_10

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_10
.end method

.method public j6(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Labcd/OJ;->U2:Ljava/lang/String;

    return-void
.end method

.method public v5()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
