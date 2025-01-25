.class public final synthetic Lorg/apache/commons/lang3/concurrent/locks/LockingVisitors$ReadWriteLockVisitor$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final f$0:Ljava/util/concurrent/locks/ReadWriteLock;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/locks/ReadWriteLock;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/lang3/concurrent/locks/LockingVisitors$ReadWriteLockVisitor$$ExternalSyntheticLambda1;->f$0:Ljava/util/concurrent/locks/ReadWriteLock;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/lang3/concurrent/locks/LockingVisitors$ReadWriteLockVisitor$$ExternalSyntheticLambda1;->f$0:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    return-object v0
.end method
