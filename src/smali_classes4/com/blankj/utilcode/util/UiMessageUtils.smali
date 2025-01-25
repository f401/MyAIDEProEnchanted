.class public final Lcom/blankj/utilcode/util/UiMessageUtils;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/blankj/utilcode/util/UiMessageUtils$LazyHolder;,
        Lcom/blankj/utilcode/util/UiMessageUtils$UiMessage;,
        Lcom/blankj/utilcode/util/UiMessageUtils$UiMessageCallback;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "UiMessageUtils"


# instance fields
.field private final mDefensiveCopyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/blankj/utilcode/util/UiMessageUtils$UiMessageCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mListenersSpecific:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/blankj/utilcode/util/UiMessageUtils$UiMessageCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mListenersUniversal:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/blankj/utilcode/util/UiMessageUtils$UiMessageCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mMessage:Lcom/blankj/utilcode/util/UiMessageUtils$UiMessage;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lcom/blankj/utilcode/util/UtilsBridge;->isAppDebug()Z

    move-result v0

    sput-boolean v0, Lcom/blankj/utilcode/util/UiMessageUtils;->DEBUG:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 4

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/blankj/utilcode/util/UiMessageUtils;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/blankj/utilcode/util/UiMessageUtils$UiMessage;

    invoke-direct {v0, v2, v2}, Lcom/blankj/utilcode/util/UiMessageUtils$UiMessage;-><init>(Landroid/os/Message;Lcom/blankj/utilcode/util/UiMessageUtils$1;)V

    iput-object v0, p0, Lcom/blankj/utilcode/util/UiMessageUtils;->mMessage:Lcom/blankj/utilcode/util/UiMessageUtils$UiMessage;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/blankj/utilcode/util/UiMessageUtils;->mListenersSpecific:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/blankj/utilcode/util/UiMessageUtils;->mListenersUniversal:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/blankj/utilcode/util/UiMessageUtils;->mDefensiveCopyList:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/blankj/utilcode/util/UiMessageUtils$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/blankj/utilcode/util/UiMessageUtils;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/blankj/utilcode/util/UiMessageUtils;
    .registers 1

    invoke-static {}, Lcom/blankj/utilcode/util/UiMessageUtils$LazyHolder;->access$100()Lcom/blankj/utilcode/util/UiMessageUtils;

    move-result-object v0

    return-object v0
.end method

.method private logMessageHandling(Lcom/blankj/utilcode/util/UiMessageUtils$UiMessage;)V
    .registers 7

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/blankj/utilcode/util/UiMessageUtils;->mListenersSpecific:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/blankj/utilcode/util/UiMessageUtils$UiMessage;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_15

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_44

    :cond_15
    iget-object v1, p0, Lcom/blankj/utilcode/util/UiMessageUtils;->mListenersUniversal:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_44

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Delivering FAILED for message ID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/blankj/utilcode/util/UiMessageUtils$UiMessage;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ". No listeners. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/blankj/utilcode/util/UiMessageUtils$UiMessage;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "UiMessageUtils"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_43
    return-void

    :cond_44
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Delivering message ID "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/blankj/utilcode/util/UiMessageUtils$UiMessage;->getId()I

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Specific listeners: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_62

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_8b

    :cond_62
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_65
    const-string v0, ", Universal listeners: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/blankj/utilcode/util/UiMessageUtils;->mListenersUniversal:Ljava/util/List;

    monitor-enter v1

    :try_start_6d
    iget-object v0, p0, Lcom/blankj/utilcode/util/UiMessageUtils;->mListenersUniversal:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_c6

    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_79
    monitor-exit v1
    :try_end_7a
    .catchall {:try_start_6d .. :try_end_7a} :catchall_108

    invoke-virtual {p1}, Lcom/blankj/utilcode/util/UiMessageUtils$UiMessage;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "UiMessageUtils"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_43

    :cond_8b
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ["

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, v3

    :goto_98
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_c0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/blankj/utilcode/util/UiMessageUtils$UiMessageCallback;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v2, v1, :cond_bc

    const-string v1, ","

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_bc
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_98

    :cond_c0
    const-string v0, "]"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_65

    :cond_c6
    :try_start_c6
    iget-object v0, p0, Lcom/blankj/utilcode/util/UiMessageUtils;->mListenersUniversal:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " ["

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_d4
    iget-object v0, p0, Lcom/blankj/utilcode/util/UiMessageUtils;->mListenersUniversal:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_101

    iget-object v0, p0, Lcom/blankj/utilcode/util/UiMessageUtils;->mListenersUniversal:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/blankj/utilcode/util/UiMessageUtils$UiMessageCallback;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/blankj/utilcode/util/UiMessageUtils;->mListenersUniversal:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v3, v0, :cond_fe

    const-string v0, ","

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_fe
    add-int/lit8 v3, v3, 0x1

    goto :goto_d4

    :cond_101
    const-string v0, "], Message: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_79

    :catchall_108
    move-exception v0

    monitor-exit v1
    :try_end_10a
    .catchall {:try_start_c6 .. :try_end_10a} :catchall_108

    throw v0
.end method


# virtual methods
.method public addListener(ILcom/blankj/utilcode/util/UiMessageUtils$UiMessageCallback;)V
    .registers 6

    iget-object v1, p0, Lcom/blankj/utilcode/util/UiMessageUtils;->mListenersSpecific:Landroid/util/SparseArray;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/blankj/utilcode/util/UiMessageUtils;->mListenersSpecific:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_17

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/blankj/utilcode/util/UiMessageUtils;->mListenersSpecific:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_17
    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_20
    monitor-exit v1

    return-void

    :catchall_22
    move-exception v0

    monitor-exit v1
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw v0
.end method

.method public addListener(Lcom/blankj/utilcode/util/UiMessageUtils$UiMessageCallback;)V
    .registers 5

    iget-object v1, p0, Lcom/blankj/utilcode/util/UiMessageUtils;->mListenersUniversal:Ljava/util/List;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/blankj/utilcode/util/UiMessageUtils;->mListenersUniversal:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/blankj/utilcode/util/UiMessageUtils;->mListenersUniversal:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_10
    :goto_10
    monitor-exit v1

    return-void

    :cond_12
    sget-boolean v0, Lcom/blankj/utilcode/util/UiMessageUtils;->DEBUG:Z

    if-eqz v0, :cond_10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Listener is already added. "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "UiMessageUtils"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    :catchall_31
    move-exception v0

    monitor-exit v1
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_31

    throw v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 6

    iget-object v0, p0, Lcom/blankj/utilcode/util/UiMessageUtils;->mMessage:Lcom/blankj/utilcode/util/UiMessageUtils$UiMessage;

    invoke-static {v0, p1}, Lcom/blankj/utilcode/util/UiMessageUtils$UiMessage;->access$200(Lcom/blankj/utilcode/util/UiMessageUtils$UiMessage;Landroid/os/Message;)V

    sget-boolean v0, Lcom/blankj/utilcode/util/UiMessageUtils;->DEBUG:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/blankj/utilcode/util/UiMessageUtils;->mMessage:Lcom/blankj/utilcode/util/UiMessageUtils$UiMessage;

    invoke-direct {p0, v0}, Lcom/blankj/utilcode/util/UiMessageUtils;->logMessageHandling(Lcom/blankj/utilcode/util/UiMessageUtils$UiMessage;)V

    :cond_e
    iget-object v1, p0, Lcom/blankj/utilcode/util/UiMessageUtils;->mListenersSpecific:Landroid/util/SparseArray;

    monitor-enter v1

    :try_start_11
    iget-object v0, p0, Lcom/blankj/utilcode/util/UiMessageUtils;->mListenersSpecific:Landroid/util/SparseArray;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_2a

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_58

    iget-object v0, p0, Lcom/blankj/utilcode/util/UiMessageUtils;->mListenersSpecific:Landroid/util/SparseArray;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->remove(I)V

    :cond_2a
    :goto_2a
    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_11 .. :try_end_2b} :catchall_75

    iget-object v1, p0, Lcom/blankj/utilcode/util/UiMessageUtils;->mListenersUniversal:Ljava/util/List;

    monitor-enter v1

    :try_start_2e
    iget-object v0, p0, Lcom/blankj/utilcode/util/UiMessageUtils;->mListenersUniversal:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_83

    iget-object v0, p0, Lcom/blankj/utilcode/util/UiMessageUtils;->mDefensiveCopyList:Ljava/util/List;

    iget-object v2, p0, Lcom/blankj/utilcode/util/UiMessageUtils;->mListenersUniversal:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/blankj/utilcode/util/UiMessageUtils;->mDefensiveCopyList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_43
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/blankj/utilcode/util/UiMessageUtils$UiMessageCallback;

    iget-object v3, p0, Lcom/blankj/utilcode/util/UiMessageUtils;->mMessage:Lcom/blankj/utilcode/util/UiMessageUtils$UiMessage;

    invoke-interface {v0, v3}, Lcom/blankj/utilcode/util/UiMessageUtils$UiMessageCallback;->handleMessage(Lcom/blankj/utilcode/util/UiMessageUtils$UiMessage;)V

    goto :goto_43

    :catchall_55
    move-exception v0

    monitor-exit v1
    :try_end_57
    .catchall {:try_start_2e .. :try_end_57} :catchall_55

    throw v0

    :cond_58
    :try_start_58
    iget-object v2, p0, Lcom/blankj/utilcode/util/UiMessageUtils;->mDefensiveCopyList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/blankj/utilcode/util/UiMessageUtils;->mDefensiveCopyList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_63
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_78

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/blankj/utilcode/util/UiMessageUtils$UiMessageCallback;

    iget-object v3, p0, Lcom/blankj/utilcode/util/UiMessageUtils;->mMessage:Lcom/blankj/utilcode/util/UiMessageUtils$UiMessage;

    invoke-interface {v0, v3}, Lcom/blankj/utilcode/util/UiMessageUtils$UiMessageCallback;->handleMessage(Lcom/blankj/utilcode/util/UiMessageUtils$UiMessage;)V

    goto :goto_63

    :catchall_75
    move-exception v0

    monitor-exit v1
    :try_end_77
    .catchall {:try_start_58 .. :try_end_77} :catchall_75

    throw v0

    :cond_78
    :try_start_78
    iget-object v0, p0, Lcom/blankj/utilcode/util/UiMessageUtils;->mDefensiveCopyList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_7d
    .catchall {:try_start_78 .. :try_end_7d} :catchall_75

    goto :goto_2a

    :cond_7e
    :try_start_7e
    iget-object v0, p0, Lcom/blankj/utilcode/util/UiMessageUtils;->mDefensiveCopyList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_83
    monitor-exit v1
    :try_end_84
    .catchall {:try_start_7e .. :try_end_84} :catchall_55

    iget-object v0, p0, Lcom/blankj/utilcode/util/UiMessageUtils;->mMessage:Lcom/blankj/utilcode/util/UiMessageUtils$UiMessage;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/UiMessageUtils$UiMessage;->access$200(Lcom/blankj/utilcode/util/UiMessageUtils$UiMessage;Landroid/os/Message;)V

    const/4 v0, 0x1

    return v0
.end method

.method public removeListener(ILcom/blankj/utilcode/util/UiMessageUtils$UiMessageCallback;)V
    .registers 6

    iget-object v1, p0, Lcom/blankj/utilcode/util/UiMessageUtils;->mListenersSpecific:Landroid/util/SparseArray;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/blankj/utilcode/util/UiMessageUtils;->mListenersSpecific:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_45

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_45

    sget-boolean v2, Lcom/blankj/utilcode/util/UiMessageUtils;->DEBUG:Z

    if-eqz v2, :cond_3d

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to remove specific listener that is not registered. ID "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "UiMessageUtils"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    :goto_3c
    return-void

    :cond_3d
    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_40
    :goto_40
    monitor-exit v1

    goto :goto_3c

    :catchall_42
    move-exception v0

    monitor-exit v1
    :try_end_44
    .catchall {:try_start_3 .. :try_end_44} :catchall_42

    throw v0

    :cond_45
    :try_start_45
    sget-boolean v0, Lcom/blankj/utilcode/util/UiMessageUtils;->DEBUG:Z

    if-eqz v0, :cond_40

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to remove specific listener that is not registered. ID "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "UiMessageUtils"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_67
    .catchall {:try_start_45 .. :try_end_67} :catchall_42

    goto :goto_40
.end method

.method public removeListener(Lcom/blankj/utilcode/util/UiMessageUtils$UiMessageCallback;)V
    .registers 5

    iget-object v1, p0, Lcom/blankj/utilcode/util/UiMessageUtils;->mListenersUniversal:Ljava/util/List;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, Lcom/blankj/utilcode/util/UiMessageUtils;->DEBUG:Z

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/blankj/utilcode/util/UiMessageUtils;->mListenersUniversal:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to remove a listener that is not registered. "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "UiMessageUtils"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_29
    iget-object v0, p0, Lcom/blankj/utilcode/util/UiMessageUtils;->mListenersUniversal:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_30
    move-exception v0

    monitor-exit v1
    :try_end_32
    .catchall {:try_start_3 .. :try_end_32} :catchall_30

    throw v0
.end method

.method public removeListeners(I)V
    .registers 4

    sget-boolean v0, Lcom/blankj/utilcode/util/UiMessageUtils;->DEBUG:Z

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/blankj/utilcode/util/UiMessageUtils;->mListenersSpecific:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_14

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2a

    :cond_14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Trying to remove specific listeners that are not registered. ID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "UiMessageUtils"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a
    iget-object v1, p0, Lcom/blankj/utilcode/util/UiMessageUtils;->mListenersSpecific:Landroid/util/SparseArray;

    monitor-enter v1

    :try_start_2d
    iget-object v0, p0, Lcom/blankj/utilcode/util/UiMessageUtils;->mListenersSpecific:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->delete(I)V

    monitor-exit v1

    return-void

    :catchall_34
    move-exception v0

    monitor-exit v1
    :try_end_36
    .catchall {:try_start_2d .. :try_end_36} :catchall_34

    throw v0
.end method

.method public final send(I)V
    .registers 3

    iget-object v0, p0, Lcom/blankj/utilcode/util/UiMessageUtils;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final send(ILjava/lang/Object;)V
    .registers 5

    iget-object v0, p0, Lcom/blankj/utilcode/util/UiMessageUtils;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
