.class public final synthetic Lorg/apache/commons/lang3/concurrent/TimedSemaphore$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final f$0:Lorg/apache/commons/lang3/concurrent/TimedSemaphore;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/lang3/concurrent/TimedSemaphore;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/lang3/concurrent/TimedSemaphore$$ExternalSyntheticLambda0;->f$0:Lorg/apache/commons/lang3/concurrent/TimedSemaphore;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/lang3/concurrent/TimedSemaphore$$ExternalSyntheticLambda0;->f$0:Lorg/apache/commons/lang3/concurrent/TimedSemaphore;

    invoke-virtual {v0}, Lorg/apache/commons/lang3/concurrent/TimedSemaphore;->endOfPeriod()V

    return-void
.end method
