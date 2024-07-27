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
            "Ljava/util/LinkedList",
            "<",
            "Labcd/yE;",
            ">;"
        }
    .end annotation
.end field

.field private final Mr:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Labcd/yE;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Throwable;",
            ">;>;"
        }
    .end annotation
.end field

.field private final QX:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
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
            "Ljava/util/LinkedList",
            "<",
            "Labcd/RJ;",
            ">;"
        }
    .end annotation
.end field

.field private final XL:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Labcd/OJ$a;",
            ">;"
        }
    .end annotation
.end field

.field private final Zo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Labcd/RJ;",
            ">;"
        }
    .end annotation
.end field

.field private final a8:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Labcd/kH;",
            ">;"
        }
    .end annotation
.end field

.field private final aM:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
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
    .registers 5

    invoke-direct {p0}, Labcd/bI;-><init>()V

    new-instance v0, Labcd/uE;

    invoke-direct {v0}, Labcd/uE;-><init>()V

    iput-object v0, p0, Labcd/OJ;->j3:Labcd/uE;

    check-cast p1, Labcd/jJ;

    iget-object v0, p1, Labcd/jJ;->v5:Labcd/UE;

    iput-object v0, p0, Labcd/OJ;->Hw:Labcd/UE;

    invoke-virtual {p1}, Labcd/jJ;->EQ()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Labcd/wE;

    invoke-direct {v0}, Labcd/wE;-><init>()V

    :goto_0
    iput-object v0, p0, Labcd/OJ;->v5:Labcd/wE;

    iget-object v0, p0, Labcd/OJ;->Hw:Labcd/UE;

    invoke-virtual {v0}, Labcd/UE;->aM()Labcd/EE;

    move-result-object v0

    iput-object v0, p0, Labcd/OJ;->lg:Labcd/EE;

    iget-object v0, p0, Labcd/OJ;->Hw:Labcd/UE;

    invoke-virtual {v0}, Labcd/UE;->j3()Labcd/IE;

    move-result-object v0

    iput-object v0, p0, Labcd/OJ;->rN:Labcd/IE;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Labcd/OJ;->Zo:Ljava/util/List;

    iget-object v0, p0, Labcd/OJ;->Zo:Ljava/util/List;

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

    iget-object v0, p0, Labcd/OJ;->Ws:Ljava/util/LinkedList;

    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Labcd/OJ;->QX:Ljava/util/LinkedList;

    iget-object v0, p0, Labcd/OJ;->QX:Ljava/util/LinkedList;

    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Labcd/OJ;->Mr:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Labcd/OJ;->a8:Ljava/util/List;

    new-instance v0, Labcd/qG;

    iget-object v1, p0, Labcd/OJ;->rN:Labcd/IE;

    invoke-direct {v0, v1}, Labcd/qG;-><init>(Labcd/IE;)V

    iput-object v0, p0, Labcd/OJ;->gn:Labcd/qG;

    iget-object v0, p0, Labcd/OJ;->gn:Labcd/qG;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Labcd/qG;->j6(Z)V

    new-instance v0, Labcd/YJ;

    iget-object v1, p0, Labcd/OJ;->rN:Labcd/IE;

    invoke-direct {v0, v1}, Labcd/YJ;-><init>(Labcd/IE;)V

    iput-object v0, p0, Labcd/OJ;->u7:Labcd/YJ;

    iget-object v0, p0, Labcd/OJ;->gn:Labcd/qG;

    const-string v1, "COMPLETE"

    invoke-virtual {v0, v1}, Labcd/qG;->j6(Ljava/lang/String;)Labcd/fG;

    move-result-object v0

    iput-object v0, p0, Labcd/OJ;->tp:Labcd/fG;

    iget-object v0, p0, Labcd/OJ;->gn:Labcd/qG;

    const-string v1, "IN_WORK_QUEUE"

    invoke-virtual {v0, v1}, Labcd/qG;->j6(Ljava/lang/String;)Labcd/fG;

    move-result-object v0

    iput-object v0, p0, Labcd/OJ;->EQ:Labcd/fG;

    iget-object v0, p0, Labcd/OJ;->gn:Labcd/qG;

    const-string v1, "LOCALLY_SEEN"

    invoke-virtual {v0, v1}, Labcd/qG;->j6(Ljava/lang/String;)Labcd/fG;

    move-result-object v0

    iput-object v0, p0, Labcd/OJ;->we:Labcd/fG;

    new-instance v0, Labcd/QF;

    invoke-direct {v0}, Labcd/QF;-><init>()V

    iput-object v0, p0, Labcd/OJ;->J0:Labcd/QF;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Labcd/OJ;->J8:Ljava/util/LinkedList;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method static synthetic DW(Labcd/OJ;)Labcd/EE;
    .registers 2

    iget-object v0, p0, Labcd/OJ;->lg:Labcd/EE;

    return-object v0
.end method

.method private DW(Labcd/iG;)V
    .registers 3

    iget-object v0, p0, Labcd/OJ;->tp:Labcd/fG;

    invoke-virtual {p1, v0}, Labcd/iG;->DW(Labcd/fG;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Labcd/OJ;->EQ:Labcd/fG;

    invoke-virtual {p1, v0}, Labcd/iG;->DW(Labcd/fG;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Labcd/OJ;->EQ:Labcd/fG;

    invoke-virtual {p1, v0}, Labcd/iG;->j6(Labcd/fG;)V

    iget-object v0, p0, Labcd/OJ;->J8:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private DW(Labcd/LE;Labcd/YD;)Z
    .registers 11

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Labcd/OJ;->XL:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Labcd/LE;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v0, v1

    :goto_1
    return v0

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/OJ$a;

    :try_start_0
    invoke-virtual {v0, p1}, Labcd/OJ$a;->DW(Labcd/LE;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    invoke-interface {p1}, Labcd/LE;->isCancelled()Z

    move-result v4

    if-eqz v4, :cond_3

    move v0, v1

    goto :goto_1

    :cond_3
    iget-object v4, v0, Labcd/OJ$a;->v5:Labcd/bH;

    invoke-virtual {v4, p2}, Labcd/bH;->FH(Labcd/YD;)Z

    move-result v4

    if-eqz v4, :cond_0

    :try_start_1
    invoke-virtual {v0, p1}, Labcd/OJ$a;->j6(Labcd/LE;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v4, v0, Labcd/OJ$a;->Hw:Ljava/io/File;

    if-eqz v4, :cond_4

    iget-object v4, v0, Labcd/OJ$a;->Hw:Ljava/io/File;

    invoke-static {v4}, Labcd/zK;->j6(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    invoke-direct {p0, p2}, Labcd/OJ;->j6(Labcd/YD;)Z

    move-result v4

    if-nez v4, :cond_5

    new-instance v4, Ljava/io/FileNotFoundException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v5

    iget-object v5, v5, Lorg/eclipse/jgit/JGitText;->objectNotFoundIn:Ljava/lang/String;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {p2}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    iget-object v0, v0, Labcd/OJ$a;->DW:Ljava/lang/String;

    aput-object v0, v6, v2

    invoke-static {v5, v6}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p2, v4}, Labcd/OJ;->j6(Labcd/YD;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_5
    invoke-direct {p0}, Labcd/OJ;->u7()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_6

    move v0, v2

    goto :goto_1

    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/yE;

    iget-object v4, v0, Labcd/OJ$a;->v5:Labcd/bH;

    invoke-virtual {v4, v1}, Labcd/bH;->FH(Labcd/YD;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    invoke-direct {p0, v1}, Labcd/OJ;->j6(Labcd/yE;)V

    goto :goto_2

    :cond_7
    iget-object v4, p0, Labcd/OJ;->J8:Ljava/util/LinkedList;

    invoke-virtual {v4, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :catch_0
    move-exception v0

    new-instance v1, Labcd/yD;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Labcd/yD;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v4

    :try_start_3
    invoke-direct {p0, p2, v4}, Labcd/OJ;->j6(Labcd/YD;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v4, v0, Labcd/OJ$a;->Hw:Ljava/io/File;

    if-eqz v4, :cond_8

    iget-object v0, v0, Labcd/OJ$a;->Hw:Ljava/io/File;

    invoke-static {v0}, Labcd/zK;->j6(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_8
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_0

    :catch_2
    move-exception v0

    new-instance v1, Labcd/yD;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Labcd/yD;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catchall_0
    move-exception v1

    :try_start_5
    iget-object v2, v0, Labcd/OJ$a;->Hw:Ljava/io/File;

    if-eqz v2, :cond_9

    iget-object v0, v0, Labcd/OJ$a;->Hw:Ljava/io/File;

    invoke-static {v0}, Labcd/zK;->j6(Ljava/io/File;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_9
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    throw v1

    :catch_3
    move-exception v0

    new-instance v1, Labcd/yD;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Labcd/yD;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_4
    move-exception v0

    invoke-direct {p0, p2, v0}, Labcd/OJ;->j6(Labcd/YD;Ljava/lang/Throwable;)V

    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_0
.end method

.method static synthetic FH(Labcd/OJ;)Labcd/wE;
    .registers 2

    iget-object v0, p0, Labcd/OJ;->v5:Labcd/wE;

    return-object v0
.end method

.method private FH(Labcd/iG;)V
    .registers 9

    const/4 v6, 0x1

    const/4 v5, 0x0

    :try_start_0
    iget-object v0, p0, Labcd/OJ;->rN:Labcd/IE;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Labcd/IE;->FH(Labcd/YD;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Labcd/OJ;->tp:Labcd/fG;

    invoke-virtual {p1, v0}, Labcd/iG;->j6(Labcd/fG;)V

    return-void

    :cond_0
    new-instance v0, Labcd/yD;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->cannotReadBlob:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Labcd/fD;

    const-string v3, "blob"

    invoke-direct {v2, p1, v3}, Labcd/fD;-><init>(Labcd/yE;Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Labcd/yD;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Labcd/yD;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v2

    iget-object v2, v2, Lorg/eclipse/jgit/JGitText;->cannotReadBlob:Ljava/lang/String;

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {p1}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Labcd/yD;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method static synthetic Hw(Labcd/OJ;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Labcd/OJ;->U2:Ljava/lang/String;

    return-object v0
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

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_0

    iget-object v0, p0, Labcd/OJ;->tp:Labcd/fG;

    invoke-virtual {p1, v0}, Labcd/iG;->j6(Labcd/fG;)V

    return-void

    :cond_0
    aget-object v3, v1, v0

    invoke-direct {p0, v3}, Labcd/OJ;->DW(Labcd/iG;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private Zo(Labcd/iG;)V
    .registers 11

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    :try_start_0
    iget-object v0, p0, Labcd/OJ;->u7:Labcd/YJ;

    invoke-virtual {v0, p1}, Labcd/YJ;->DW(Labcd/YD;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Labcd/OJ;->u7:Labcd/YJ;

    invoke-virtual {v0}, Labcd/YJ;->EQ()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Labcd/OJ;->tp:Labcd/fG;

    invoke-virtual {p1, v0}, Labcd/iG;->j6(Labcd/fG;)V

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Labcd/OJ;->u7:Labcd/YJ;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Labcd/YJ;->j6(I)Labcd/rE;

    move-result-object v0

    invoke-virtual {v0}, Labcd/rE;->FH()I

    move-result v1

    if-eq v1, v4, :cond_2

    if-eq v1, v5, :cond_2

    sget-object v1, Labcd/rE;->v5:Labcd/rE;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Labcd/OJ;->u7:Labcd/YJ;

    iget-object v2, p0, Labcd/OJ;->j3:Labcd/uE;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Labcd/YJ;->j6(Labcd/uE;I)V

    new-instance v1, Labcd/YC;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v2

    iget-object v2, v2, Lorg/eclipse/jgit/JGitText;->invalidModeFor:Ljava/lang/String;

    iget-object v3, p0, Labcd/OJ;->j3:Labcd/uE;

    invoke-virtual {v3}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Labcd/OJ;->u7:Labcd/YJ;

    invoke-virtual {v4}, Labcd/YJ;->Hw()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Labcd/iG;->getId()Labcd/yE;

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    aput-object v3, v5, v0

    const/4 v0, 0x2

    aput-object v4, v5, v0

    const/4 v0, 0x3

    invoke-virtual {p1}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v0

    invoke-static {v2, v5}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Labcd/YC;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Labcd/yD;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v2

    iget-object v2, v2, Lorg/eclipse/jgit/JGitText;->cannotReadTree:Ljava/lang/String;

    new-array v3, v8, [Ljava/lang/Object;

    invoke-virtual {p1}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Labcd/yD;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    :try_start_2
    iget-object v0, p0, Labcd/OJ;->u7:Labcd/YJ;

    iget-object v2, p0, Labcd/OJ;->j3:Labcd/uE;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Labcd/YJ;->j6(Labcd/uE;I)V

    iget-object v0, p0, Labcd/OJ;->gn:Labcd/qG;

    iget-object v2, p0, Labcd/OJ;->j3:Labcd/uE;

    invoke-virtual {v0, v2, v1}, Labcd/qG;->j6(Labcd/YD;I)Labcd/iG;

    move-result-object v0

    invoke-direct {p0, v0}, Labcd/OJ;->DW(Labcd/iG;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0
.end method

.method static synthetic j6(Labcd/OJ;)Labcd/UE;
    .registers 2

    iget-object v0, p0, Labcd/OJ;->Hw:Labcd/UE;

    return-object v0
.end method

.method private j6(Labcd/YD;Labcd/LE;)Ljava/util/Collection;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/YD;",
            "Labcd/LE;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Labcd/RJ;",
            ">;"
        }
    .end annotation

    :goto_0
    iget-object v0, p0, Labcd/OJ;->QX:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_0
    iget-object v0, p0, Labcd/OJ;->QX:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/RJ;

    :try_start_0
    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->listingAlternates:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {p2, v1, v2}, Labcd/LE;->j6(Ljava/lang/String;I)V

    invoke-virtual {v0}, Labcd/RJ;->DW()Ljava/util/Collection;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {p2}, Labcd/LE;->j6()V

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    invoke-direct {p0, p1, v0}, Labcd/OJ;->j6(Labcd/YD;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    invoke-interface {p2}, Labcd/LE;->j6()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {p2}, Labcd/LE;->j6()V

    throw v0
.end method

.method private j6(I)V
    .registers 6

    :cond_0
    :try_start_0
    iget-object v0, p0, Labcd/OJ;->J0:Labcd/QF;

    invoke-virtual {v0}, Labcd/QF;->Hw()Labcd/dG;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Labcd/dG;->U2()I

    move-result v1

    if-ge v1, p1, :cond_2

    :cond_1
    return-void

    :cond_2
    iget-object v1, p0, Labcd/OJ;->J0:Labcd/QF;

    invoke-virtual {v1}, Labcd/QF;->j6()Labcd/dG;

    invoke-virtual {v0}, Labcd/dG;->yS()Labcd/mG;

    move-result-object v1

    invoke-direct {p0, v1}, Labcd/OJ;->j6(Labcd/mG;)V

    invoke-virtual {v0}, Labcd/dG;->rN()[Labcd/dG;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    invoke-direct {p0, v3}, Labcd/OJ;->j6(Labcd/dG;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Labcd/yD;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v2

    iget-object v2, v2, Lorg/eclipse/jgit/JGitText;->localObjectsIncomplete:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Labcd/yD;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private j6(Labcd/LE;Labcd/YD;)V
    .registers 11

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p2}, Labcd/OJ;->j6(Labcd/YD;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/RJ;

    iget-object v3, p0, Labcd/OJ;->Zo:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Labcd/OJ;->Ws:Ljava/util/LinkedList;

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Labcd/OJ;->QX:Ljava/util/LinkedList;

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_2
    invoke-direct {p0, p1, p2}, Labcd/OJ;->DW(Labcd/LE;Labcd/YD;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget v0, p0, Labcd/OJ;->VH:I

    move v1, v0

    :goto_2
    iget-object v0, p0, Labcd/OJ;->Zo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_c

    move v1, v2

    :goto_3
    iget v0, p0, Labcd/OJ;->VH:I

    if-lt v1, v0, :cond_a

    :cond_3
    :goto_4
    iget-object v0, p0, Labcd/OJ;->Ws:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-direct {p0, p2, p1}, Labcd/OJ;->j6(Labcd/YD;Labcd/LE;)Ljava/util/Collection;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    goto :goto_1

    :cond_4
    iget-object v0, p0, Labcd/OJ;->Mr:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    new-instance v1, Labcd/yD;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v3

    iget-object v3, v3, Lorg/eclipse/jgit/JGitText;->cannotGet:Ljava/lang/String;

    new-array v4, v6, [Ljava/lang/Object;

    invoke-virtual {p2}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v3, v4}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Labcd/yD;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v6, :cond_6

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    :cond_5
    :goto_5
    throw v1

    :cond_6
    new-instance v2, Labcd/WC;

    invoke-direct {v2, v0}, Labcd/WC;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v2}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    goto :goto_5

    :cond_7
    iget-object v0, p0, Labcd/OJ;->Ws:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/RJ;

    :try_start_0
    const-string v1, "Listing packs"

    const/4 v3, 0x0

    invoke-interface {p1, v1, v3}, Labcd/LE;->j6(Ljava/lang/String;I)V

    invoke-virtual {v0}, Labcd/RJ;->FH()Ljava/util/Collection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    invoke-interface {p1}, Labcd/LE;->j6()V

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_8
    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_9

    invoke-direct {p0, p1, p2}, Labcd/OJ;->DW(Labcd/LE;Labcd/YD;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto/16 :goto_0

    :cond_9
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v4, p0, Labcd/OJ;->aM:Ljava/util/Set;

    invoke-interface {v4, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Labcd/OJ;->XL:Ljava/util/LinkedList;

    new-instance v5, Labcd/OJ$a;

    invoke-direct {v5, p0, v0, v1}, Labcd/OJ$a;-><init>(Labcd/OJ;Labcd/RJ;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :catch_0
    move-exception v0

    :try_start_1
    invoke-direct {p0, p2, v0}, Labcd/OJ;->j6(Labcd/YD;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {p1}, Labcd/LE;->j6()V

    goto/16 :goto_4

    :catchall_0
    move-exception v0

    invoke-interface {p1}, Labcd/LE;->j6()V

    throw v0

    :cond_a
    iget-object v0, p0, Labcd/OJ;->Zo:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/RJ;

    invoke-direct {p0, p2, v3, v0}, Labcd/OJ;->j6(Labcd/YD;Ljava/lang/String;Labcd/RJ;)Z

    move-result v0

    if-eqz v0, :cond_b

    iput v1, p0, Labcd/OJ;->VH:I

    goto/16 :goto_0

    :cond_b
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_3

    :cond_c
    iget-object v0, p0, Labcd/OJ;->Zo:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/RJ;

    invoke-direct {p0, p2, v3, v0}, Labcd/OJ;->j6(Labcd/YD;Ljava/lang/String;Labcd/RJ;)Z

    move-result v0

    if-eqz v0, :cond_d

    iput v1, p0, Labcd/OJ;->VH:I

    goto/16 :goto_0

    :cond_d
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_2
.end method

.method private j6(Labcd/YD;Ljava/lang/Throwable;)V
    .registers 6

    invoke-virtual {p1}, Labcd/YD;->Hw()Labcd/yE;

    move-result-object v1

    iget-object v0, p0, Labcd/OJ;->Mr:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v2, p0, Labcd/OJ;->Mr:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private j6(Labcd/YD;[B)V
    .registers 13

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    :try_start_0
    invoke-static {p2, p1}, Labcd/sH;->j6([BLabcd/YD;)Labcd/FE;
    :try_end_0
    .catch Labcd/YC; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    invoke-virtual {v0}, Labcd/FE;->FH()I

    move-result v1

    invoke-virtual {v0}, Labcd/FE;->j6()[B

    move-result-object v0

    iget-object v2, p0, Labcd/OJ;->v5:Labcd/wE;

    if-eqz v2, :cond_0

    :try_start_1
    invoke-virtual {v2, v1, v0}, Labcd/wE;->j6(I[B)V
    :try_end_1
    .catch Labcd/YC; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    iget-object v2, p0, Labcd/OJ;->lg:Labcd/EE;

    invoke-virtual {v2, v1, v0}, Labcd/EE;->DW(I[B)Labcd/yE;

    move-result-object v0

    invoke-static {p1, v0}, Labcd/YD;->j6(Labcd/YD;Labcd/YD;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, p0, Labcd/OJ;->lg:Labcd/EE;

    invoke-virtual {v0}, Labcd/EE;->FH()V

    return-void

    :catch_0
    move-exception v0

    new-instance v2, Labcd/yD;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v3

    iget-object v3, v3, Lorg/eclipse/jgit/JGitText;->transportExceptionInvalid:Ljava/lang/String;

    new-array v4, v9, [Ljava/lang/Object;

    invoke-static {v1}, Labcd/hE;->DW(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v6

    invoke-virtual {p1}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v7

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v8

    invoke-static {v3, v4}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Labcd/yD;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    new-instance v2, Labcd/yD;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v3

    iget-object v3, v3, Lorg/eclipse/jgit/JGitText;->incorrectHashFor:Ljava/lang/String;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v0}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v7

    invoke-static {v1}, Labcd/hE;->DW(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v8

    array-length v0, p2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v9

    invoke-static {v3, v4}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Labcd/yD;-><init>(Ljava/lang/String;)V

    throw v2

    :catch_1
    move-exception v0

    new-instance v1, Ljava/io/FileNotFoundException;

    invoke-virtual {p1}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/io/FileNotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v1
.end method

.method private j6(Labcd/dG;)V
    .registers 3

    iget-object v0, p0, Labcd/OJ;->we:Labcd/fG;

    invoke-virtual {p1, v0}, Labcd/iG;->DW(Labcd/fG;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
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

    goto :goto_0
.end method

.method private j6(Labcd/iG;)V
    .registers 5

    move-object v0, p1

    :goto_0
    invoke-virtual {v0}, Labcd/iG;->aM()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_3

    invoke-virtual {v0}, Labcd/iG;->aM()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    :goto_1
    return-void

    :cond_0
    iget-object v1, p0, Labcd/OJ;->tp:Labcd/fG;

    invoke-virtual {v0, v1}, Labcd/iG;->j6(Labcd/fG;)V

    goto :goto_1

    :cond_1
    check-cast v0, Labcd/mG;

    invoke-direct {p0, v0}, Labcd/OJ;->j6(Labcd/mG;)V

    goto :goto_1

    :cond_2
    check-cast v0, Labcd/dG;

    invoke-direct {p0, v0}, Labcd/OJ;->j6(Labcd/dG;)V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Labcd/OJ;->tp:Labcd/fG;

    invoke-virtual {v0, v1}, Labcd/iG;->j6(Labcd/fG;)V

    check-cast v0, Labcd/lG;

    invoke-virtual {v0}, Labcd/lG;->j3()Labcd/iG;

    move-result-object v0

    iget-object v1, p0, Labcd/OJ;->gn:Labcd/qG;

    invoke-virtual {v1, v0}, Labcd/qG;->DW(Labcd/iG;)V

    goto :goto_0
.end method

.method private j6(Labcd/mG;)V
    .registers 9

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    iget-object v0, p0, Labcd/OJ;->tp:Labcd/fG;

    invoke-virtual {p1, v0}, Labcd/iG;->DW(Labcd/fG;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Labcd/OJ;->tp:Labcd/fG;

    invoke-virtual {p1, v0}, Labcd/iG;->j6(Labcd/fG;)V

    iget-object v0, p0, Labcd/OJ;->u7:Labcd/YJ;

    invoke-virtual {v0, p1}, Labcd/YJ;->DW(Labcd/YD;)V

    :cond_2
    :goto_0
    iget-object v0, p0, Labcd/OJ;->u7:Labcd/YJ;

    invoke-virtual {v0}, Labcd/YJ;->EQ()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Labcd/OJ;->u7:Labcd/YJ;

    invoke-virtual {v0, v4}, Labcd/YJ;->j6(I)Labcd/rE;

    move-result-object v0

    invoke-virtual {v0}, Labcd/rE;->FH()I

    move-result v1

    if-eq v1, v5, :cond_4

    if-eq v1, v6, :cond_3

    sget-object v1, Labcd/rE;->v5:Labcd/rE;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Labcd/OJ;->u7:Labcd/YJ;

    iget-object v2, p0, Labcd/OJ;->j3:Labcd/uE;

    invoke-virtual {v1, v2, v4}, Labcd/YJ;->j6(Labcd/uE;I)V

    new-instance v1, Labcd/YC;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v2

    iget-object v2, v2, Lorg/eclipse/jgit/JGitText;->corruptObjectInvalidMode3:Ljava/lang/String;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    const/4 v0, 0x1

    iget-object v4, p0, Labcd/OJ;->j3:Labcd/uE;

    invoke-virtual {v4}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    iget-object v0, p0, Labcd/OJ;->u7:Labcd/YJ;

    invoke-virtual {v0}, Labcd/YJ;->Hw()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-virtual {p1}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v6

    invoke-static {v2, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Labcd/YC;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    iget-object v0, p0, Labcd/OJ;->u7:Labcd/YJ;

    iget-object v2, p0, Labcd/OJ;->j3:Labcd/uE;

    invoke-virtual {v0, v2, v4}, Labcd/YJ;->j6(Labcd/uE;I)V

    iget-object v0, p0, Labcd/OJ;->gn:Labcd/qG;

    iget-object v2, p0, Labcd/OJ;->j3:Labcd/uE;

    invoke-virtual {v0, v2, v1}, Labcd/qG;->j6(Labcd/YD;I)Labcd/iG;

    move-result-object v0

    iget-object v1, p0, Labcd/OJ;->tp:Labcd/fG;

    invoke-virtual {v0, v1}, Labcd/iG;->j6(Labcd/fG;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Labcd/OJ;->u7:Labcd/YJ;

    iget-object v2, p0, Labcd/OJ;->j3:Labcd/uE;

    invoke-virtual {v0, v2, v4}, Labcd/YJ;->j6(Labcd/uE;I)V

    iget-object v0, p0, Labcd/OJ;->gn:Labcd/qG;

    iget-object v2, p0, Labcd/OJ;->j3:Labcd/uE;

    invoke-virtual {v0, v2, v1}, Labcd/qG;->j6(Labcd/YD;I)Labcd/iG;

    move-result-object v0

    iget-object v1, p0, Labcd/OJ;->tp:Labcd/fG;

    invoke-virtual {v0, v1}, Labcd/iG;->DW(Labcd/fG;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Labcd/OJ;->tp:Labcd/fG;

    invoke-virtual {v0, v1}, Labcd/iG;->j6(Labcd/fG;)V

    iget-object v0, p0, Labcd/OJ;->u7:Labcd/YJ;

    invoke-virtual {v0}, Labcd/YJ;->j6()V

    goto/16 :goto_0
.end method

.method private j6(Labcd/yE;)V
    .registers 9

    const/4 v6, 0x0

    const/4 v4, 0x1

    :try_start_0
    instance-of v1, p1, Labcd/iG;

    if-eqz v1, :cond_2

    move-object v0, p1

    check-cast v0, Labcd/iG;

    move-object v1, v0

    iget-object v2, p0, Labcd/OJ;->tp:Labcd/fG;

    invoke-virtual {v1, v2}, Labcd/iG;->DW(Labcd/fG;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Labcd/OJ;->gn:Labcd/qG;

    invoke-virtual {v2, v1}, Labcd/qG;->DW(Labcd/iG;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    invoke-virtual {v1}, Labcd/iG;->aM()I

    move-result v2

    if-eq v2, v4, :cond_6

    const/4 v3, 0x2

    if-eq v2, v3, :cond_5

    const/4 v3, 0x3

    if-eq v2, v3, :cond_4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    invoke-direct {p0, v1}, Labcd/OJ;->v5(Labcd/iG;)V

    :goto_1
    iget-object v1, p0, Labcd/OJ;->Mr:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v1, p0, Labcd/OJ;->gn:Labcd/qG;

    invoke-virtual {v1, p1}, Labcd/qG;->Zo(Labcd/YD;)Labcd/iG;

    move-result-object v1

    iget-object v2, p0, Labcd/OJ;->tp:Labcd/fG;

    invoke-virtual {v1, v2}, Labcd/iG;->DW(Labcd/fG;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_3
    new-instance v1, Labcd/yD;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v2

    iget-object v2, v2, Lorg/eclipse/jgit/JGitText;->unknownObjectType:Ljava/lang/String;

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Labcd/yD;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    invoke-direct {p0, v1}, Labcd/OJ;->FH(Labcd/iG;)V

    goto :goto_1

    :cond_5
    invoke-direct {p0, v1}, Labcd/OJ;->Zo(Labcd/iG;)V

    goto :goto_1

    :cond_6
    invoke-direct {p0, v1}, Labcd/OJ;->Hw(Labcd/iG;)V

    goto :goto_1

    :catch_0
    move-exception v1

    new-instance v2, Labcd/yD;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v3

    iget-object v3, v3, Lorg/eclipse/jgit/JGitText;->cannotRead:Ljava/lang/String;

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Labcd/yD;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private j6(Ljava/util/Collection;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Labcd/ME;",
            ">;)V"
        }
    .end annotation

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/ME;

    invoke-interface {v0}, Labcd/ME;->DW()Labcd/yE;

    move-result-object v3

    :try_start_0
    iget-object v0, p0, Labcd/OJ;->gn:Labcd/qG;

    invoke-virtual {v0, v3}, Labcd/qG;->Zo(Labcd/YD;)Labcd/iG;

    move-result-object v0

    iget-object v4, p0, Labcd/OJ;->tp:Labcd/fG;

    invoke-virtual {v0, v4}, Labcd/iG;->DW(Labcd/fG;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Labcd/OJ;->EQ:Labcd/fG;

    invoke-virtual {v0, v4}, Labcd/iG;->j6(Labcd/fG;)V

    iget-object v4, p0, Labcd/OJ;->J8:Ljava/util/LinkedList;

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Labcd/fD; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Labcd/OJ;->J8:Ljava/util/LinkedList;

    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v1, Labcd/yD;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v2

    iget-object v2, v2, Lorg/eclipse/jgit/JGitText;->cannotRead:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v3}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v5

    invoke-static {v2, v4}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Labcd/yD;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private j6(Ljava/util/Set;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Labcd/yE;",
            ">;)V"
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Labcd/OJ;->Hw:Labcd/UE;

    invoke-virtual {v0}, Labcd/UE;->v5()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/yE;

    :try_start_0
    iget-object v2, p0, Labcd/OJ;->gn:Labcd/qG;

    invoke-virtual {v2, v0}, Labcd/qG;->Zo(Labcd/YD;)Labcd/iG;

    move-result-object v2

    invoke-direct {p0, v2}, Labcd/OJ;->j6(Labcd/iG;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    new-instance v2, Labcd/yD;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v3

    iget-object v3, v3, Lorg/eclipse/jgit/JGitText;->transportExceptionMissingAssumed:Ljava/lang/String;

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Labcd/yD;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/ME;

    :try_start_1
    iget-object v2, p0, Labcd/OJ;->gn:Labcd/qG;

    invoke-interface {v0}, Labcd/ME;->DW()Labcd/yE;

    move-result-object v3

    invoke-virtual {v2, v3}, Labcd/qG;->Zo(Labcd/YD;)Labcd/iG;

    move-result-object v2

    invoke-direct {p0, v2}, Labcd/OJ;->j6(Labcd/iG;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    new-instance v2, Labcd/yD;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v3

    iget-object v3, v3, Lorg/eclipse/jgit/JGitText;->localRefIsMissingObjects:Ljava/lang/String;

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v0}, Labcd/ME;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Labcd/yD;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private j6(Labcd/YD;)Z
    .registers 8

    :try_start_0
    iget-object v0, p0, Labcd/OJ;->rN:Labcd/IE;

    invoke-virtual {v0, p1}, Labcd/IE;->DW(Labcd/YD;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Labcd/yD;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v2

    iget-object v2, v2, Lorg/eclipse/jgit/JGitText;->cannotReadObject:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Labcd/yD;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private j6(Labcd/YD;Ljava/lang/String;Labcd/RJ;)Z
    .registers 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p3, p2}, Labcd/RJ;->Hw(Ljava/lang/String;)Labcd/RJ$a;

    move-result-object v2

    invoke-virtual {v2}, Labcd/RJ$a;->j6()[B

    move-result-object v2

    invoke-direct {p0, p1, v2}, Labcd/OJ;->j6(Labcd/YD;[B)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :catch_0
    move-exception v2

    new-instance v3, Labcd/yD;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v4

    iget-object v4, v4, Lorg/eclipse/jgit/JGitText;->cannotDownload:Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v1

    invoke-static {v4, v0}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, v2}, Labcd/yD;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :catch_1
    move-exception v0

    invoke-direct {p0, p1, v0}, Labcd/OJ;->j6(Labcd/YD;Ljava/lang/Throwable;)V

    move v0, v1

    goto :goto_0
.end method

.method private u7()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
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
    .registers 2

    iget-object v0, p0, Labcd/OJ;->a8:Ljava/util/List;

    return-object v0
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
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/LE;",
            "Ljava/util/Collection",
            "<",
            "Labcd/ME;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Labcd/yE;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p3}, Labcd/OJ;->j6(Ljava/util/Set;)V

    invoke-direct {p0, p2}, Labcd/OJ;->j6(Ljava/util/Collection;)V

    :goto_0
    invoke-interface {p1}, Labcd/LE;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Labcd/OJ;->J8:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Labcd/OJ;->J8:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/yE;

    instance-of v0, v1, Labcd/iG;

    if-eqz v0, :cond_2

    move-object v0, v1

    check-cast v0, Labcd/iG;

    iget-object v2, p0, Labcd/OJ;->tp:Labcd/fG;

    invoke-virtual {v0, v2}, Labcd/iG;->DW(Labcd/fG;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    invoke-direct {p0, p1, v1}, Labcd/OJ;->j6(Labcd/LE;Labcd/YD;)V

    :cond_3
    invoke-direct {p0, v1}, Labcd/OJ;->j6(Labcd/yE;)V

    goto :goto_0
.end method

.method public Hw()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
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

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Labcd/OJ;->Zo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/RJ;

    invoke-virtual {v0}, Labcd/RJ;->j6()V

    goto :goto_1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/OJ$a;

    iget-object v0, v0, Labcd/OJ$a;->Hw:Ljava/io/File;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0
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
