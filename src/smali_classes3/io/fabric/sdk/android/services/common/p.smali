.class final Lio/fabric/sdk/android/services/common/p;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/fabric/sdk/android/services/common/r;->FH(Ljava/lang/String;)Ljava/util/concurrent/ThreadFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final DW:Ljava/util/concurrent/atomic/AtomicLong;

.field final j6:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicLong;)V
    .registers 3

    iput-object p1, p0, Lio/fabric/sdk/android/services/common/p;->j6:Ljava/lang/String;

    iput-object p2, p0, Lio/fabric/sdk/android/services/common/p;->DW:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 5

    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    new-instance v1, Lio/fabric/sdk/android/services/common/o;

    invoke-direct {v1, p0, p1}, Lio/fabric/sdk/android/services/common/o;-><init>(Lio/fabric/sdk/android/services/common/p;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lio/fabric/sdk/android/services/common/p;->j6:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/fabric/sdk/android/services/common/p;->DW:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    return-object p1
.end method
