.class Lio/fabric/sdk/android/d;
.super Ljava/lang/Object;

# interfaces
.implements Lio/fabric/sdk/android/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/fabric/sdk/android/Fabric;->createKitInitializationCallback(I)Lio/fabric/sdk/android/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final DW:I

.field final FH:Lio/fabric/sdk/android/Fabric;

.field final j6:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lio/fabric/sdk/android/Fabric;I)V
    .registers 5

    iput-object p1, p0, Lio/fabric/sdk/android/d;->FH:Lio/fabric/sdk/android/Fabric;

    iput p2, p0, Lio/fabric/sdk/android/d;->DW:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    iget v1, p0, Lio/fabric/sdk/android/d;->DW:I

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lio/fabric/sdk/android/d;->j6:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public j6(Ljava/lang/Exception;)V
    .registers 3

    iget-object v0, p0, Lio/fabric/sdk/android/d;->FH:Lio/fabric/sdk/android/Fabric;

    invoke-static {v0}, Lio/fabric/sdk/android/Fabric;->access$300(Lio/fabric/sdk/android/Fabric;)Lio/fabric/sdk/android/h;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/fabric/sdk/android/h;->j6(Ljava/lang/Exception;)V

    return-void
.end method

.method public j6(Ljava/lang/Object;)V
    .registers 6

    iget-object v0, p0, Lio/fabric/sdk/android/d;->j6:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    iget-object v0, p0, Lio/fabric/sdk/android/d;->j6:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/fabric/sdk/android/d;->FH:Lio/fabric/sdk/android/Fabric;

    invoke-static {v0}, Lio/fabric/sdk/android/Fabric;->access$200(Lio/fabric/sdk/android/Fabric;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lio/fabric/sdk/android/d;->FH:Lio/fabric/sdk/android/Fabric;

    invoke-static {v0}, Lio/fabric/sdk/android/Fabric;->access$300(Lio/fabric/sdk/android/Fabric;)Lio/fabric/sdk/android/h;

    move-result-object v0

    iget-object v1, p0, Lio/fabric/sdk/android/d;->FH:Lio/fabric/sdk/android/Fabric;

    invoke-interface {v0, v1}, Lio/fabric/sdk/android/h;->j6(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
