.class final Lcom/google/common/eventbus/Dispatcher$PerThreadQueuedDispatcher$Event;
.super Ljava/lang/Object;
.source "Dispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/eventbus/Dispatcher$PerThreadQueuedDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Event"
.end annotation


# instance fields
.field private final event:Ljava/lang/Object;

.field private final subscribers:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Lcom/google/common/eventbus/Subscriber;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Object;Ljava/util/Iterator;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Iterator",
            "<",
            "Lcom/google/common/eventbus/Subscriber;",
            ">;)V"
        }
    .end annotation

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    iput-object p1, p0, Lcom/google/common/eventbus/Dispatcher$PerThreadQueuedDispatcher$Event;->event:Ljava/lang/Object;

    .line 124
    iput-object p2, p0, Lcom/google/common/eventbus/Dispatcher$PerThreadQueuedDispatcher$Event;->subscribers:Ljava/util/Iterator;

    .line 125
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Object;Ljava/util/Iterator;Lcom/google/common/eventbus/Dispatcher$1;)V
    .registers 4

    .line 118
    invoke-direct {p0, p1, p2}, Lcom/google/common/eventbus/Dispatcher$PerThreadQueuedDispatcher$Event;-><init>(Ljava/lang/Object;Ljava/util/Iterator;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/common/eventbus/Dispatcher$PerThreadQueuedDispatcher$Event;)Ljava/util/Iterator;
    .registers 2

    .line 118
    iget-object v0, p0, Lcom/google/common/eventbus/Dispatcher$PerThreadQueuedDispatcher$Event;->subscribers:Ljava/util/Iterator;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/common/eventbus/Dispatcher$PerThreadQueuedDispatcher$Event;)Ljava/lang/Object;
    .registers 2

    .line 118
    iget-object v0, p0, Lcom/google/common/eventbus/Dispatcher$PerThreadQueuedDispatcher$Event;->event:Ljava/lang/Object;

    return-object v0
.end method
