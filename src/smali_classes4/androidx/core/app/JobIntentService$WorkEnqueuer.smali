.class abstract Landroidx/core/app/JobIntentService$WorkEnqueuer;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/JobIntentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "WorkEnqueuer"
.end annotation


# instance fields
.field final mComponentName:Landroid/content/ComponentName;

.field mHasJobId:Z

.field mJobId:I


# direct methods
.method constructor <init>(Landroid/content/ComponentName;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/app/JobIntentService$WorkEnqueuer;->mComponentName:Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method abstract enqueueWork(Landroid/content/Intent;)V
.end method

.method ensureJobId(I)V
    .registers 4

    iget-boolean v0, p0, Landroidx/core/app/JobIntentService$WorkEnqueuer;->mHasJobId:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/core/app/JobIntentService$WorkEnqueuer;->mHasJobId:Z

    iput p1, p0, Landroidx/core/app/JobIntentService$WorkEnqueuer;->mJobId:I

    :cond_9
    return-void

    :cond_a
    iget v0, p0, Landroidx/core/app/JobIntentService$WorkEnqueuer;->mJobId:I

    if-eq v0, p1, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Given job ID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is different than previous "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/core/app/JobIntentService$WorkEnqueuer;->mJobId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public serviceProcessingFinished()V
    .registers 1

    return-void
.end method

.method public serviceProcessingStarted()V
    .registers 1

    return-void
.end method

.method public serviceStartReceived()V
    .registers 1

    return-void
.end method
