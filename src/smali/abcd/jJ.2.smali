.class public abstract Labcd/jJ;
.super Ljava/lang/Object;


# static fields
.field public static final DW:Labcd/WI;

.field public static final FH:Labcd/WI;

.field private static Hw:[I

.field private static final j6:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Labcd/DJ;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private EQ:Ljava/lang/String;

.field private J0:Z

.field private J8:Z

.field private QX:Z

.field private VH:Ljava/lang/String;

.field private Ws:Z

.field private XL:I

.field protected final Zo:Labcd/HJ;

.field private aM:Labcd/NH;

.field private gn:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Labcd/WI;",
            ">;"
        }
    .end annotation
.end field

.field private j3:Labcd/kI;

.field private tp:Z

.field private u7:Labcd/eJ;

.field protected final v5:Labcd/UE;

.field private we:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Labcd/WI;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Labcd/jJ;->j6:Ljava/util/List;

    sget-object v0, Labcd/zJ;->Mr:Labcd/DJ;

    invoke-static {v0}, Labcd/jJ;->j6(Labcd/DJ;)V

    sget-object v0, Labcd/oJ;->Mr:Labcd/DJ;

    invoke-static {v0}, Labcd/jJ;->j6(Labcd/DJ;)V

    sget-object v0, Labcd/lJ;->Mr:Labcd/DJ;

    invoke-static {v0}, Labcd/jJ;->j6(Labcd/DJ;)V

    sget-object v0, Labcd/qJ;->Mr:Labcd/DJ;

    invoke-static {v0}, Labcd/jJ;->j6(Labcd/DJ;)V

    sget-object v0, Labcd/GJ;->a8:Labcd/DJ;

    invoke-static {v0}, Labcd/jJ;->j6(Labcd/DJ;)V

    sget-object v0, Labcd/xJ;->a8:Labcd/DJ;

    invoke-static {v0}, Labcd/jJ;->j6(Labcd/DJ;)V

    sget-object v0, Labcd/xJ;->U2:Labcd/DJ;

    invoke-static {v0}, Labcd/jJ;->j6(Labcd/DJ;)V

    sget-object v0, Labcd/tJ;->a8:Labcd/DJ;

    invoke-static {v0}, Labcd/jJ;->j6(Labcd/DJ;)V

    invoke-static {}, Labcd/jJ;->aM()V

    new-instance v0, Labcd/WI;

    const-string v1, "refs/tags/*:refs/tags/*"

    invoke-direct {v0, v1}, Labcd/WI;-><init>(Ljava/lang/String;)V

    sput-object v0, Labcd/jJ;->DW:Labcd/WI;

    new-instance v0, Labcd/WI;

    const-string v1, "refs/heads/*:refs/heads/*"

    invoke-direct {v0, v1}, Labcd/WI;-><init>(Ljava/lang/String;)V

    sput-object v0, Labcd/jJ;->FH:Labcd/WI;

    return-void
.end method

.method protected constructor <init>(Labcd/UE;Labcd/HJ;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "git-upload-pack"

    iput-object v0, p0, Labcd/jJ;->VH:Ljava/lang/String;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Labcd/jJ;->gn:Ljava/util/List;

    sget-object v0, Labcd/eJ;->DW:Labcd/eJ;

    iput-object v0, p0, Labcd/jJ;->u7:Labcd/eJ;

    const/4 v0, 0x1

    iput-boolean v0, p0, Labcd/jJ;->tp:Z

    const-string v0, "git-receive-pack"

    iput-object v0, p0, Labcd/jJ;->EQ:Ljava/lang/String;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Labcd/jJ;->we:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Labcd/jJ;->J0:Z

    invoke-virtual {p1}, Labcd/UE;->Zo()Labcd/jF;

    move-result-object v0

    sget-object v1, Labcd/iJ;->j6:Labcd/gE$b;

    invoke-virtual {v0, v1}, Labcd/gE;->j6(Labcd/gE$b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/iJ;

    iput-object p1, p0, Labcd/jJ;->v5:Labcd/UE;

    iput-object p2, p0, Labcd/jJ;->Zo:Labcd/HJ;

    invoke-virtual {v0}, Labcd/iJ;->j6()Z

    move-result v0

    iput-boolean v0, p0, Labcd/jJ;->Ws:Z

    invoke-static {}, Labcd/kI;->j6()Labcd/kI;

    move-result-object v0

    iput-object v0, p0, Labcd/jJ;->j3:Labcd/kI;

    return-void
.end method

.method public static DW(Labcd/UE;Labcd/XI;Labcd/jJ$a;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/UE;",
            "Labcd/XI;",
            "Labcd/jJ$a;",
            ")",
            "Ljava/util/List",
            "<",
            "Labcd/jJ;",
            ">;"
        }
    .end annotation

    invoke-static {p1, p2}, Labcd/jJ;->j6(Labcd/XI;Labcd/jJ$a;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/HJ;

    invoke-virtual {p1}, Labcd/XI;->DW()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v0, v3}, Labcd/jJ;->j6(Labcd/UE;Labcd/HJ;Ljava/lang/String;)Labcd/jJ;

    move-result-object v0

    invoke-virtual {v0, p1}, Labcd/jJ;->j6(Labcd/XI;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static DW(Labcd/UE;Ljava/lang/String;Labcd/jJ$a;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/UE;",
            "Ljava/lang/String;",
            "Labcd/jJ$a;",
            ")",
            "Ljava/util/List",
            "<",
            "Labcd/jJ;",
            ">;"
        }
    .end annotation

    new-instance v0, Labcd/XI;

    invoke-virtual {p0}, Labcd/UE;->Zo()Labcd/jF;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Labcd/XI;-><init>(Labcd/gE;Ljava/lang/String;)V

    invoke-static {v0}, Labcd/jJ;->DW(Labcd/XI;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v1, Labcd/HJ;

    invoke-direct {v1, p1}, Labcd/HJ;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Labcd/jJ;->j6(Labcd/UE;Labcd/HJ;Ljava/lang/String;)Labcd/jJ;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, v0, p2}, Labcd/jJ;->DW(Labcd/UE;Labcd/XI;Labcd/jJ$a;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method private static DW(Labcd/XI;)Z
    .registers 2

    invoke-virtual {p0}, Labcd/XI;->gn()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Labcd/XI;->Hw()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static aM()V
    .registers 3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-nez v0, :cond_1

    const-class v0, Labcd/jJ;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    move-object v1, v0

    :goto_0
    invoke-static {v1}, Labcd/jJ;->j6(Ljava/lang/ClassLoader;)Ljava/util/Enumeration;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URL;

    invoke-static {v1, v0}, Labcd/jJ;->j6(Ljava/lang/ClassLoader;Ljava/net/URL;)V

    goto :goto_1

    :cond_1
    move-object v1, v0

    goto :goto_0
.end method

.method public static j6(Labcd/UE;Labcd/HJ;Ljava/lang/String;)Labcd/jJ;
    .registers 7

    sget-object v0, Labcd/jJ;->j6:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/DJ;

    if-nez v1, :cond_1

    sget-object v1, Labcd/jJ;->j6:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v1, p1, p0, p2}, Labcd/DJ;->j6(Labcd/HJ;Labcd/UE;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1, p1, p0, p2}, Labcd/DJ;->DW(Labcd/HJ;Labcd/UE;Ljava/lang/String;)Labcd/jJ;

    move-result-object v0

    return-object v0

    :cond_2
    new-instance v0, Labcd/jD;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->URINotSupported:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Labcd/jD;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static j6(Labcd/UE;Labcd/XI;Labcd/jJ$a;)Labcd/jJ;
    .registers 8

    const/4 v4, 0x0

    invoke-static {p1, p2}, Labcd/jJ;->j6(Labcd/XI;Labcd/jJ$a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/HJ;

    invoke-virtual {p1}, Labcd/XI;->DW()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Labcd/jJ;->j6(Labcd/UE;Labcd/HJ;Ljava/lang/String;)Labcd/jJ;

    move-result-object v0

    invoke-virtual {v0, p1}, Labcd/jJ;->j6(Labcd/XI;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->remoteConfigHasNoURIAssociated:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Labcd/XI;->DW()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static j6(Labcd/UE;Ljava/lang/String;)Labcd/jJ;
    .registers 3

    sget-object v0, Labcd/jJ$a;->j6:Labcd/jJ$a;

    invoke-static {p0, p1, v0}, Labcd/jJ;->j6(Labcd/UE;Ljava/lang/String;Labcd/jJ$a;)Labcd/jJ;

    move-result-object v0

    return-object v0
.end method

.method public static j6(Labcd/UE;Ljava/lang/String;Labcd/jJ$a;)Labcd/jJ;
    .registers 5

    new-instance v0, Labcd/XI;

    invoke-virtual {p0}, Labcd/UE;->Zo()Labcd/jF;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Labcd/XI;-><init>(Labcd/gE;Ljava/lang/String;)V

    invoke-static {v0}, Labcd/jJ;->DW(Labcd/XI;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Labcd/HJ;

    invoke-direct {v0, p1}, Labcd/HJ;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Labcd/jJ;->j6(Labcd/UE;Labcd/HJ;Ljava/lang/String;)Labcd/jJ;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, v0, p2}, Labcd/jJ;->j6(Labcd/UE;Labcd/XI;Labcd/jJ$a;)Labcd/jJ;

    move-result-object v0

    goto :goto_0
.end method

.method private static j6(Ljava/lang/String;Ljava/util/Collection;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Labcd/WI;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/WI;

    invoke-virtual {v0, p0}, Labcd/WI;->v5(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Labcd/WI;->Hw()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0, p0}, Labcd/WI;->DW(Ljava/lang/String;)Labcd/WI;

    move-result-object v0

    invoke-virtual {v0}, Labcd/WI;->j6()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Labcd/WI;->j6()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static j6(Labcd/UE;Ljava/util/Collection;)Ljava/util/Collection;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/UE;",
            "Ljava/util/Collection",
            "<",
            "Labcd/WI;",
            ">;)",
            "Ljava/util/Collection",
            "<",
            "Labcd/WI;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Labcd/UE;->v5()Ljava/util/Map;

    move-result-object v2

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    return-object v3

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/WI;

    invoke-virtual {v0}, Labcd/WI;->Hw()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/ME;

    invoke-virtual {v0, v1}, Labcd/WI;->DW(Labcd/ME;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v0, v1}, Labcd/WI;->j6(Labcd/ME;)Labcd/WI;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-interface {v3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static j6(Labcd/UE;Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/Collection;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/UE;",
            "Ljava/util/Collection",
            "<",
            "Labcd/WI;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Labcd/WI;",
            ">;)",
            "Ljava/util/Collection",
            "<",
            "Labcd/YI;",
            ">;"
        }
    .end annotation

    if-nez p2, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p2

    :cond_0
    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    invoke-static {p0, p1}, Labcd/jJ;->j6(Labcd/UE;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    return-object v7

    :cond_1
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Labcd/WI;

    invoke-virtual {v1}, Labcd/WI;->DW()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Labcd/UE;->j6(Ljava/lang/String;)Labcd/ME;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Labcd/ME;->getName()Ljava/lang/String;

    move-result-object v2

    :cond_2
    invoke-virtual {v1}, Labcd/WI;->j6()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    move-object v3, v2

    :cond_3
    if-eqz v0, :cond_4

    const-string v4, "refs/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-interface {v0}, Labcd/ME;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    const/16 v6, 0x2f

    const/4 v9, 0x5

    invoke-virtual {v0, v6, v9}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_4
    new-instance v0, Labcd/YI;

    invoke-virtual {v1}, Labcd/WI;->FH()Z

    move-result v4

    invoke-static {v3, p2}, Labcd/jJ;->j6(Ljava/lang/String;Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Labcd/YI;-><init>(Labcd/UE;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Labcd/yE;)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private static j6(Ljava/lang/ClassLoader;)Ljava/util/Enumeration;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "META-INF/services/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Labcd/jJ;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    goto :goto_0
.end method

.method private static j6(Labcd/XI;Labcd/jJ$a;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/XI;",
            "Labcd/jJ$a;",
            ")",
            "Ljava/util/List",
            "<",
            "Labcd/HJ;",
            ">;"
        }
    .end annotation

    invoke-static {}, Labcd/jJ;->j6()[I

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Labcd/XI;->Hw()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Labcd/XI;->gn()Ljava/util/List;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {p0}, Labcd/XI;->gn()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public static j6(Labcd/DJ;)V
    .registers 4

    sget-object v0, Labcd/jJ;->j6:Ljava/util/List;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private static j6(Ljava/lang/ClassLoader;Ljava/lang/String;)V
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p1, v1, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    array-length v3, v2

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_0

    :goto_1
    return-void

    :cond_0
    aget-object v0, v2, v1

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v4

    and-int/lit8 v4, v4, 0x8

    const/16 v5, 0x8

    if-ne v4, v5, :cond_1

    const-class v4, Labcd/DJ;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/DJ;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v0, :cond_1

    invoke-static {v0}, Labcd/jJ;->j6(Labcd/DJ;)V

    :cond_1
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_2
.end method

.method private static j6(Ljava/lang/ClassLoader;Ljava/net/URL;)V
    .registers 6

    :try_start_0
    invoke-virtual {p1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    const-string v3, "UTF-8"

    invoke-direct {v2, v0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    if-nez v0, :cond_1

    :goto_1
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    return-void

    :cond_1
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    const-string v2, "#"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p0, v0}, Labcd/jJ;->j6(Ljava/lang/ClassLoader;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :goto_3
    throw v0

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_2
.end method

.method static synthetic j6()[I
    .registers 3

    sget-object v0, Labcd/jJ;->Hw:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Labcd/jJ$a;->values()[Labcd/jJ$a;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Labcd/jJ$a;->j6:Labcd/jJ$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    :try_start_1
    sget-object v1, Labcd/jJ$a;->DW:Labcd/jJ$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    sput-object v0, Labcd/jJ;->Hw:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public static u7()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Labcd/DJ;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    sget-object v0, Labcd/jJ;->j6:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    sget-object v0, Labcd/jJ;->j6:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/DJ;

    if-eqz v1, :cond_1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    sget-object v1, Labcd/jJ;->j6:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public DW(Labcd/LE;Ljava/util/Collection;)Labcd/NI;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/LE;",
            "Ljava/util/Collection",
            "<",
            "Labcd/YI;",
            ">;)",
            "Labcd/NI;"
        }
    .end annotation

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :try_start_0
    iget-object v0, p0, Labcd/jJ;->we:Ljava/util/List;

    invoke-virtual {p0, v0}, Labcd/jJ;->j6(Ljava/util/Collection;)Ljava/util/Collection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    new-instance v0, Labcd/MI;

    invoke-direct {v0, p0, p2}, Labcd/MI;-><init>(Labcd/jJ;Ljava/util/Collection;)V

    invoke-virtual {v0, p1}, Labcd/MI;->j6(Labcd/LE;)Labcd/NI;

    move-result-object v0

    return-object v0

    :cond_2
    new-instance v0, Labcd/yD;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->nothingToPush:Ljava/lang/String;

    invoke-direct {v0, v1}, Labcd/yD;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    new-instance v1, Labcd/yD;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v2

    iget-object v2, v2, Lorg/eclipse/jgit/JGitText;->problemWithResolvingPushRefSpecsLocally:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Labcd/yD;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public abstract DW()V
.end method

.method public DW(Ljava/lang/String;)V
    .registers 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iput-object p1, p0, Labcd/jJ;->VH:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    const-string v0, "git-upload-pack"

    iput-object v0, p0, Labcd/jJ;->VH:Ljava/lang/String;

    goto :goto_0
.end method

.method public DW(Z)V
    .registers 2

    iput-boolean p1, p0, Labcd/jJ;->J8:Z

    return-void
.end method

.method public EQ()Z
    .registers 2

    iget-boolean v0, p0, Labcd/jJ;->Ws:Z

    return v0
.end method

.method public FH()Labcd/kI;
    .registers 2

    iget-object v0, p0, Labcd/jJ;->j3:Labcd/kI;

    return-object v0
.end method

.method public FH(Z)V
    .registers 2

    iput-boolean p1, p0, Labcd/jJ;->tp:Z

    return-void
.end method

.method public Hw()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Labcd/jJ;->EQ:Ljava/lang/String;

    return-object v0
.end method

.method public Hw(Z)V
    .registers 2

    iput-boolean p1, p0, Labcd/jJ;->J0:Z

    return-void
.end method

.method public J0()Z
    .registers 2

    iget-boolean v0, p0, Labcd/jJ;->tp:Z

    return v0
.end method

.method public J8()Z
    .registers 2

    iget-boolean v0, p0, Labcd/jJ;->J0:Z

    return v0
.end method

.method public abstract QX()Labcd/nI;
.end method

.method public VH()Labcd/eJ;
    .registers 2

    iget-object v0, p0, Labcd/jJ;->u7:Labcd/eJ;

    return-object v0
.end method

.method public Ws()Z
    .registers 2

    iget-boolean v0, p0, Labcd/jJ;->QX:Z

    return v0
.end method

.method public abstract XL()Labcd/LI;
.end method

.method public Zo()Labcd/NH;
    .registers 3

    iget-object v0, p0, Labcd/jJ;->aM:Labcd/NH;

    if-nez v0, :cond_0

    new-instance v0, Labcd/NH;

    iget-object v1, p0, Labcd/jJ;->v5:Labcd/UE;

    invoke-direct {v0, v1}, Labcd/NH;-><init>(Labcd/UE;)V

    iput-object v0, p0, Labcd/jJ;->aM:Labcd/NH;

    :cond_0
    iget-object v0, p0, Labcd/jJ;->aM:Labcd/NH;

    return-object v0
.end method

.method public gn()I
    .registers 2

    iget v0, p0, Labcd/jJ;->XL:I

    return v0
.end method

.method public j6(Labcd/LE;Ljava/util/Collection;)Labcd/qI;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/LE;",
            "Ljava/util/Collection",
            "<",
            "Labcd/WI;",
            ">;)",
            "Labcd/qI;"
        }
    .end annotation

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Labcd/jJ;->gn:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object p2, p0, Labcd/jJ;->gn:Ljava/util/List;

    :cond_1
    :goto_0
    new-instance v0, Labcd/qI;

    invoke-direct {v0}, Labcd/qI;-><init>()V

    new-instance v1, Labcd/pI;

    invoke-direct {v1, p0, p2}, Labcd/pI;-><init>(Labcd/jJ;Ljava/util/Collection;)V

    invoke-virtual {v1, p1, v0}, Labcd/pI;->j6(Labcd/LE;Labcd/qI;)V

    return-object v0

    :cond_2
    iget-object v0, p0, Labcd/jJ;->gn:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    move-object p2, v1

    goto :goto_0

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/WI;

    invoke-virtual {v0}, Labcd/WI;->DW()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Labcd/jJ;->gn:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/WI;

    invoke-virtual {v0}, Labcd/WI;->DW()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Labcd/WI;->j6()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    if-eqz v6, :cond_5

    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    new-instance v0, Labcd/yD;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v1

    iget-object v1, v1, Lorg/eclipse/jgit/JGitText;->nothingToFetch:Ljava/lang/String;

    invoke-direct {v0, v1}, Labcd/yD;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public j6(Ljava/util/Collection;)Ljava/util/Collection;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Labcd/WI;",
            ">;)",
            "Ljava/util/Collection",
            "<",
            "Labcd/YI;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Labcd/jJ;->v5:Labcd/UE;

    iget-object v1, p0, Labcd/jJ;->gn:Ljava/util/List;

    invoke-static {v0, p1, v1}, Labcd/jJ;->j6(Labcd/UE;Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public j6(I)V
    .registers 2

    iput p1, p0, Labcd/jJ;->XL:I

    return-void
.end method

.method public j6(Labcd/XI;)V
    .registers 3

    invoke-virtual {p1}, Labcd/XI;->u7()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Labcd/jJ;->DW(Ljava/lang/String;)V

    invoke-virtual {p1}, Labcd/XI;->v5()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Labcd/jJ;->j6(Ljava/lang/String;)V

    invoke-virtual {p1}, Labcd/XI;->Zo()Labcd/eJ;

    move-result-object v0

    invoke-virtual {p0, v0}, Labcd/jJ;->j6(Labcd/eJ;)V

    invoke-virtual {p1}, Labcd/XI;->j6()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Labcd/jJ;->gn:Ljava/util/List;

    invoke-virtual {p1}, Labcd/XI;->FH()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Labcd/jJ;->we:Ljava/util/List;

    invoke-virtual {p1}, Labcd/XI;->VH()I

    move-result v0

    iput v0, p0, Labcd/jJ;->XL:I

    return-void
.end method

.method public j6(Labcd/eJ;)V
    .registers 2

    if-eqz p1, :cond_0

    :goto_0
    iput-object p1, p0, Labcd/jJ;->u7:Labcd/eJ;

    return-void

    :cond_0
    sget-object p1, Labcd/eJ;->j6:Labcd/eJ;

    goto :goto_0
.end method

.method public j6(Labcd/kI;)V
    .registers 2

    iput-object p1, p0, Labcd/jJ;->j3:Labcd/kI;

    return-void
.end method

.method public j6(Ljava/lang/String;)V
    .registers 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iput-object p1, p0, Labcd/jJ;->EQ:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    const-string v0, "git-receive-pack"

    iput-object v0, p0, Labcd/jJ;->EQ:Ljava/lang/String;

    goto :goto_0
.end method

.method public j6(Z)V
    .registers 2

    iput-boolean p1, p0, Labcd/jJ;->Ws:Z

    return-void
.end method

.method public tp()Labcd/HJ;
    .registers 2

    iget-object v0, p0, Labcd/jJ;->Zo:Labcd/HJ;

    return-object v0
.end method

.method public v5()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Labcd/jJ;->VH:Ljava/lang/String;

    return-object v0
.end method

.method public v5(Z)V
    .registers 2

    iput-boolean p1, p0, Labcd/jJ;->QX:Z

    return-void
.end method

.method public we()Z
    .registers 2

    iget-boolean v0, p0, Labcd/jJ;->J8:Z

    return v0
.end method
