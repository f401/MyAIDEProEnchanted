.class public abstract Labcd/jJ;
.super Ljava/lang/Object;


# static fields
.field public static final DW:Labcd/WI;

.field public static final FH:Labcd/WI;

.field private static Hw:[I

.field private static final j6:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
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
            "Ljava/util/List<",
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
            "Ljava/util/List<",
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

    move-result p1

    iput-boolean p1, p0, Labcd/jJ;->Ws:Z

    invoke-static {}, Labcd/kI;->j6()Labcd/kI;

    move-result-object p1

    iput-object p1, p0, Labcd/jJ;->j3:Labcd/kI;

    return-void
.end method

.method public static DW(Labcd/UE;Labcd/XI;Labcd/jJ$a;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/UE;",
            "Labcd/XI;",
            "Labcd/jJ$a;",
            ")",
            "Ljava/util/List<",
            "Labcd/jJ;",
            ">;"
        }
    .end annotation

    invoke-static {p1, p2}, Labcd/jJ;->j6(Labcd/XI;Labcd/jJ$a;)Ljava/util/List;

    move-result-object p2

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_11
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_18

    return-object v0

    :cond_18
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/HJ;

    invoke-virtual {p1}, Labcd/XI;->DW()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Labcd/jJ;->j6(Labcd/UE;Labcd/HJ;Ljava/lang/String;)Labcd/jJ;

    move-result-object v1

    invoke-virtual {v1, p1}, Labcd/jJ;->j6(Labcd/XI;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11
.end method

.method public static DW(Labcd/UE;Ljava/lang/String;Labcd/jJ$a;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/UE;",
            "Ljava/lang/String;",
            "Labcd/jJ$a;",
            ")",
            "Ljava/util/List<",
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

    if-eqz v1, :cond_23

    new-instance p2, Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v0, Labcd/HJ;

    invoke-direct {v0, p1}, Labcd/HJ;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-static {p0, v0, p1}, Labcd/jJ;->j6(Labcd/UE;Labcd/HJ;Ljava/lang/String;)Labcd/jJ;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p2

    :cond_23
    invoke-static {p0, v0, p2}, Labcd/jJ;->DW(Labcd/UE;Labcd/XI;Labcd/jJ$a;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static DW(Labcd/XI;)Z
    .registers 2

    invoke-virtual {p0}, Labcd/XI;->gn()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Labcd/XI;->Hw()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_16

    const/4 p0, 0x1

    return p0

    :cond_16
    const/4 p0, 0x0

    return p0
.end method

.method private static aM()V
    .registers 3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-nez v0, :cond_10

    const-class v0, Labcd/jJ;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    :cond_10
    invoke-static {v0}, Labcd/jJ;->j6(Ljava/lang/ClassLoader;)Ljava/util/Enumeration;

    move-result-object v1

    :goto_14
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-nez v2, :cond_1b

    return-void

    :cond_1b
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/URL;

    invoke-static {v0, v2}, Labcd/jJ;->j6(Ljava/lang/ClassLoader;Ljava/net/URL;)V

    goto :goto_14
.end method

.method public static j6(Labcd/UE;Labcd/HJ;Ljava/lang/String;)Labcd/jJ;
    .registers 6

    sget-object v0, Labcd/jJ;->j6:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Labcd/DJ;

    if-nez v2, :cond_20

    sget-object v2, Labcd/jJ;->j6:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_20
    invoke-virtual {v2, p1, p0, p2}, Labcd/DJ;->j6(Labcd/HJ;Labcd/UE;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v2, p1, p0, p2}, Labcd/DJ;->DW(Labcd/HJ;Labcd/UE;Ljava/lang/String;)Labcd/jJ;

    move-result-object p0

    return-object p0

    :cond_2b
    new-instance p0, Labcd/jD;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object p2

    iget-object p2, p2, Lorg/eclipse/jgit/JGitText;->URINotSupported:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p2, v0}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Labcd/jD;-><init>(Ljava/lang/String;)V

    goto :goto_42

    :goto_41
    throw p0

    :goto_42
    goto :goto_41
.end method

.method public static j6(Labcd/UE;Labcd/XI;Labcd/jJ$a;)Labcd/jJ;
    .registers 5

    invoke-static {p1, p2}, Labcd/jJ;->j6(Labcd/XI;Labcd/jJ$a;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1d

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Labcd/HJ;

    invoke-virtual {p1}, Labcd/XI;->DW()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p2, v0}, Labcd/jJ;->j6(Labcd/UE;Labcd/HJ;Ljava/lang/String;)Labcd/jJ;

    move-result-object p0

    invoke-virtual {p0, p1}, Labcd/jJ;->j6(Labcd/XI;)V

    return-object p0

    :cond_1d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object p2

    iget-object p2, p2, Lorg/eclipse/jgit/JGitText;->remoteConfigHasNoURIAssociated:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Labcd/XI;->DW()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-static {p2, v0}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static j6(Labcd/UE;Ljava/lang/String;)Labcd/jJ;
    .registers 3

    sget-object v0, Labcd/jJ$a;->j6:Labcd/jJ$a;

    invoke-static {p0, p1, v0}, Labcd/jJ;->j6(Labcd/UE;Ljava/lang/String;Labcd/jJ$a;)Labcd/jJ;

    move-result-object p0

    return-object p0
.end method

.method public static j6(Labcd/UE;Ljava/lang/String;Labcd/jJ$a;)Labcd/jJ;
    .registers 5

    new-instance v0, Labcd/XI;

    invoke-virtual {p0}, Labcd/UE;->Zo()Labcd/jF;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Labcd/XI;-><init>(Labcd/gE;Ljava/lang/String;)V

    invoke-static {v0}, Labcd/jJ;->DW(Labcd/XI;)Z

    move-result v1

    if-eqz v1, :cond_1a

    new-instance p2, Labcd/HJ;

    invoke-direct {p2, p1}, Labcd/HJ;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-static {p0, p2, p1}, Labcd/jJ;->j6(Labcd/UE;Labcd/HJ;Ljava/lang/String;)Labcd/jJ;

    move-result-object p0

    return-object p0

    :cond_1a
    invoke-static {p0, v0, p2}, Labcd/jJ;->j6(Labcd/UE;Labcd/XI;Labcd/jJ$a;)Labcd/jJ;

    move-result-object p0

    return-object p0
.end method

.method private static j6(Ljava/lang/String;Ljava/util/Collection;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Labcd/WI;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 p0, 0x0

    return-object p0

    :cond_c
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/WI;

    invoke-virtual {v0, p0}, Labcd/WI;->v5(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Labcd/WI;->Hw()Z

    move-result p1

    if-eqz p1, :cond_27

    invoke-virtual {v0, p0}, Labcd/WI;->DW(Ljava/lang/String;)Labcd/WI;

    move-result-object p0

    invoke-virtual {p0}, Labcd/WI;->j6()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_27
    invoke-virtual {v0}, Labcd/WI;->j6()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static j6(Labcd/UE;Ljava/util/Collection;)Ljava/util/Collection;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/UE;",
            "Ljava/util/Collection<",
            "Labcd/WI;",
            ">;)",
            "Ljava/util/Collection<",
            "Labcd/WI;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Labcd/UE;->v5()Ljava/util/Map;

    move-result-object p0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_14

    return-object v0

    :cond_14
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/WI;

    invoke-virtual {v1}, Labcd/WI;->Hw()Z

    move-result v2

    if-eqz v2, :cond_43

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_28
    :goto_28
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2f

    goto :goto_d

    :cond_2f
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Labcd/ME;

    invoke-virtual {v1, v3}, Labcd/WI;->DW(Labcd/ME;)Z

    move-result v4

    if-eqz v4, :cond_28

    invoke-virtual {v1, v3}, Labcd/WI;->j6(Labcd/ME;)Labcd/WI;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_28

    :cond_43
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_d
.end method

.method public static j6(Labcd/UE;Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/Collection;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/UE;",
            "Ljava/util/Collection<",
            "Labcd/WI;",
            ">;",
            "Ljava/util/Collection<",
            "Labcd/WI;",
            ">;)",
            "Ljava/util/Collection<",
            "Labcd/YI;",
            ">;"
        }
    .end annotation

    if-nez p2, :cond_6

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p2

    :cond_6
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-static {p0, p1}, Labcd/jJ;->j6(Labcd/UE;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_13
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1a

    return-object v0

    :cond_1a
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/WI;

    invoke-virtual {v1}, Labcd/WI;->DW()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Labcd/UE;->j6(Ljava/lang/String;)Labcd/ME;

    move-result-object v3

    if-eqz v3, :cond_2e

    invoke-interface {v3}, Labcd/ME;->getName()Ljava/lang/String;

    move-result-object v2

    :cond_2e
    move-object v6, v2

    invoke-virtual {v1}, Labcd/WI;->j6()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_36

    move-object v2, v6

    :cond_36
    if-eqz v3, :cond_62

    const-string v4, "refs/"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_62

    invoke-interface {v3}, Labcd/ME;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x2f

    const/4 v7, 0x5

    invoke-virtual {v3, v5, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    const/4 v7, 0x0

    invoke-virtual {v3, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_62
    move-object v7, v2

    new-instance v2, Labcd/YI;

    invoke-virtual {v1}, Labcd/WI;->FH()Z

    move-result v8

    invoke-static {v7, p2}, Labcd/jJ;->j6(Ljava/lang/String;Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    move-object v4, v2

    move-object v5, p0

    invoke-direct/range {v4 .. v10}, Labcd/YI;-><init>(Labcd/UE;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Labcd/yE;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_13
.end method

.method private static j6(Ljava/lang/ClassLoader;)Ljava/util/Enumeration;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/util/Enumeration<",
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

    move-result-object p0
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_18} :catch_19

    return-object p0

    :catch_19
    move-exception p0

    new-instance p0, Ljava/util/Vector;

    invoke-direct {p0}, Ljava/util/Vector;-><init>()V

    invoke-virtual {p0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object p0

    return-object p0
.end method

.method private static j6(Labcd/XI;Labcd/jJ$a;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/XI;",
            "Labcd/jJ$a;",
            ")",
            "Ljava/util/List<",
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

    if-eq v0, v1, :cond_29

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1f

    invoke-virtual {p0}, Labcd/XI;->Hw()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-virtual {p0}, Labcd/XI;->gn()Ljava/util/List;

    move-result-object p1

    :cond_1e
    return-object p1

    :cond_1f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_29
    invoke-virtual {p0}, Labcd/XI;->gn()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static j6(Labcd/DJ;)V
    .registers 3

    sget-object v0, Labcd/jJ;->j6:Ljava/util/List;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    const/4 p0, 0x0

    invoke-interface {v0, p0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private static j6(Ljava/lang/ClassLoader;Ljava/lang/String;)V
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p1, v0, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_5} :catch_37

    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object p0

    array-length p1, p0

    :goto_a
    if-lt v0, p1, :cond_d

    return-void

    :cond_d
    aget-object v1, p0, v0

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v2

    const/16 v3, 0x8

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_34

    const-class v2, Labcd/DJ;

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_34

    const/4 v2, 0x0

    :try_start_25
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/DJ;
    :try_end_2b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_25 .. :try_end_2b} :catch_33
    .catch Ljava/lang/IllegalAccessException; {:try_start_25 .. :try_end_2b} :catch_31

    if-eqz v1, :cond_34

    invoke-static {v1}, Labcd/jJ;->j6(Labcd/DJ;)V

    goto :goto_34

    :catch_31
    move-exception v1

    goto :goto_34

    :catch_33
    move-exception v1

    :cond_34
    :goto_34
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :catch_37
    move-exception p0

    return-void
.end method

.method private static j6(Ljava/lang/ClassLoader;Ljava/net/URL;)V
    .registers 5

    :try_start_0
    invoke-virtual {p1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object p1

    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    const-string v2, "UTF-8"

    invoke-direct {v1, p1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_10} :catch_35

    :cond_10
    :goto_10
    :try_start_10
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_17

    goto :goto_31

    :cond_17
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_10

    const-string v1, "#"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_10

    invoke-static {p0, p1}, Labcd/jJ;->j6(Ljava/lang/ClassLoader;Ljava/lang/String;)V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_28} :catch_30
    .catchall {:try_start_10 .. :try_end_28} :catchall_29

    goto :goto_10

    :catchall_29
    move-exception p0

    :try_start_2a
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2d} :catch_2e

    goto :goto_2f

    :catch_2e
    move-exception p1

    :goto_2f
    throw p0

    :catch_30
    move-exception p0

    :goto_31
    :try_start_31
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_34} :catch_35

    goto :goto_36

    :catch_35
    move-exception p0

    :goto_36
    return-void
.end method

.method static synthetic j6()[I
    .registers 3

    sget-object v0, Labcd/jJ;->Hw:[I

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    invoke-static {}, Labcd/jJ$a;->values()[Labcd/jJ$a;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_c
    sget-object v1, Labcd/jJ$a;->j6:Labcd/jJ$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_15} :catch_16

    goto :goto_17

    :catch_16
    move-exception v1

    :goto_17
    :try_start_17
    sget-object v1, Labcd/jJ$a;->DW:Labcd/jJ$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_20} :catch_21

    goto :goto_22

    :catch_21
    move-exception v1

    :goto_22
    sput-object v0, Labcd/jJ;->Hw:[I

    return-object v0
.end method

.method public static u7()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Labcd/DJ;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Labcd/jJ;->j6:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1a

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_1a
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Labcd/DJ;

    if-eqz v3, :cond_2c

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_2c
    sget-object v3, Labcd/jJ;->j6:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_f
.end method


# virtual methods
.method public DW(Labcd/LE;Ljava/util/Collection;)Labcd/NI;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/LE;",
            "Ljava/util/Collection<",
            "Labcd/YI;",
            ">;)",
            "Labcd/NI;"
        }
    .end annotation

    if-eqz p2, :cond_8

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_8
    :try_start_8
    iget-object p2, p0, Labcd/jJ;->we:Ljava/util/List;

    invoke-virtual {p0, p2}, Labcd/jJ;->j6(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p2
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_e} :catch_2a

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1e

    :cond_14
    new-instance v0, Labcd/MI;

    invoke-direct {v0, p0, p2}, Labcd/MI;-><init>(Labcd/jJ;Ljava/util/Collection;)V

    invoke-virtual {v0, p1}, Labcd/MI;->j6(Labcd/LE;)Labcd/NI;

    move-result-object p1

    return-object p1

    :cond_1e
    new-instance p1, Labcd/yD;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object p2

    iget-object p2, p2, Lorg/eclipse/jgit/JGitText;->nothingToPush:Ljava/lang/String;

    invoke-direct {p1, p2}, Labcd/yD;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_2a
    move-exception p1

    new-instance p2, Labcd/yD;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/jgit/JGitText;->problemWithResolvingPushRefSpecsLocally:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Labcd/yD;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public abstract DW()V
.end method

.method public DW(Ljava/lang/String;)V
    .registers 3

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_9

    goto :goto_b

    :cond_9
    const-string p1, "git-upload-pack"

    :goto_b
    iput-object p1, p0, Labcd/jJ;->VH:Ljava/lang/String;

    return-void
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

    if-nez v0, :cond_d

    new-instance v0, Labcd/NH;

    iget-object v1, p0, Labcd/jJ;->v5:Labcd/UE;

    invoke-direct {v0, v1}, Labcd/NH;-><init>(Labcd/UE;)V

    iput-object v0, p0, Labcd/jJ;->aM:Labcd/NH;

    :cond_d
    iget-object v0, p0, Labcd/jJ;->aM:Labcd/NH;

    return-object v0
.end method

.method public gn()I
    .registers 2

    iget v0, p0, Labcd/jJ;->XL:I

    return v0
.end method

.method public j6(Labcd/LE;Ljava/util/Collection;)Labcd/qI;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/LE;",
            "Ljava/util/Collection<",
            "Labcd/WI;",
            ">;)",
            "Labcd/qI;"
        }
    .end annotation

    if-eqz p2, :cond_53

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_53

    :cond_9
    iget-object v0, p0, Labcd/jJ;->gn:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5d

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-nez p2, :cond_22

    move-object p2, v0

    goto :goto_5d

    :cond_22
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Labcd/WI;

    invoke-virtual {p2}, Labcd/WI;->DW()Ljava/lang/String;

    move-result-object v2

    iget-object p2, p0, Labcd/jJ;->gn:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_32
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-nez p2, :cond_39

    goto :goto_1a

    :cond_39
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Labcd/WI;

    invoke-virtual {p2}, Labcd/WI;->DW()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Labcd/WI;->j6()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_32

    if-eqz v5, :cond_32

    invoke-interface {v0, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    :cond_53
    :goto_53
    iget-object p2, p0, Labcd/jJ;->gn:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_6b

    iget-object p2, p0, Labcd/jJ;->gn:Ljava/util/List;

    :cond_5d
    :goto_5d
    new-instance v0, Labcd/qI;

    invoke-direct {v0}, Labcd/qI;-><init>()V

    new-instance v1, Labcd/pI;

    invoke-direct {v1, p0, p2}, Labcd/pI;-><init>(Labcd/jJ;Ljava/util/Collection;)V

    invoke-virtual {v1, p1, v0}, Labcd/pI;->j6(Labcd/LE;Labcd/qI;)V

    return-object v0

    :cond_6b
    new-instance p1, Labcd/yD;

    invoke-static {}, Lorg/eclipse/jgit/JGitText;->j6()Lorg/eclipse/jgit/JGitText;

    move-result-object p2

    iget-object p2, p2, Lorg/eclipse/jgit/JGitText;->nothingToFetch:Ljava/lang/String;

    invoke-direct {p1, p2}, Labcd/yD;-><init>(Ljava/lang/String;)V

    goto :goto_78

    :goto_77
    throw p1

    :goto_78
    goto :goto_77
.end method

.method public j6(Ljava/util/Collection;)Ljava/util/Collection;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Labcd/WI;",
            ">;)",
            "Ljava/util/Collection<",
            "Labcd/YI;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Labcd/jJ;->v5:Labcd/UE;

    iget-object v1, p0, Labcd/jJ;->gn:Ljava/util/List;

    invoke-static {v0, p1, v1}, Labcd/jJ;->j6(Labcd/UE;Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
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

    move-result p1

    iput p1, p0, Labcd/jJ;->XL:I

    return-void
.end method

.method public j6(Labcd/eJ;)V
    .registers 2

    if-eqz p1, :cond_3

    goto :goto_5

    :cond_3
    sget-object p1, Labcd/eJ;->j6:Labcd/eJ;

    :goto_5
    iput-object p1, p0, Labcd/jJ;->u7:Labcd/eJ;

    return-void
.end method

.method public j6(Labcd/kI;)V
    .registers 2

    iput-object p1, p0, Labcd/jJ;->j3:Labcd/kI;

    return-void
.end method

.method public j6(Ljava/lang/String;)V
    .registers 3

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_9

    goto :goto_b

    :cond_9
    const-string p1, "git-receive-pack"

    :goto_b
    iput-object p1, p0, Labcd/jJ;->EQ:Ljava/lang/String;

    return-void
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
