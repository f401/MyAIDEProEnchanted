.class public Landroidx/loader/content/Loader;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/loader/content/Loader$ForceLoadContentObserver;,
        Landroidx/loader/content/Loader$OnLoadCanceledListener;,
        Landroidx/loader/content/Loader$OnLoadCompleteListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field mAbandoned:Z

.field mContentChanged:Z

.field mContext:Landroid/content/Context;

.field mId:I

.field mListener:Landroidx/loader/content/Loader$OnLoadCompleteListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/loader/content/Loader$OnLoadCompleteListener",
            "<TD;>;"
        }
    .end annotation
.end field

.field mOnLoadCanceledListener:Landroidx/loader/content/Loader$OnLoadCanceledListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/loader/content/Loader$OnLoadCanceledListener",
            "<TD;>;"
        }
    .end annotation
.end field

.field mProcessingChange:Z

.field mReset:Z

.field mStarted:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Landroidx/loader/content/Loader;->mStarted:Z

    iput-boolean v1, p0, Landroidx/loader/content/Loader;->mAbandoned:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/loader/content/Loader;->mReset:Z

    iput-boolean v1, p0, Landroidx/loader/content/Loader;->mContentChanged:Z

    iput-boolean v1, p0, Landroidx/loader/content/Loader;->mProcessingChange:Z

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroidx/loader/content/Loader;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public abandon()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/loader/content/Loader;->mAbandoned:Z

    invoke-virtual {p0}, Landroidx/loader/content/Loader;->onAbandon()V

    return-void
.end method

.method public cancelLoad()Z
    .registers 2

    invoke-virtual {p0}, Landroidx/loader/content/Loader;->onCancelLoad()Z

    move-result v0

    return v0
.end method

.method public commitContentChanged()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/loader/content/Loader;->mProcessingChange:Z

    return-void
.end method

.method public dataToString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {p1, v0}, Landroidx/core/util/DebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public deliverCancellation()V
    .registers 2

    iget-object v0, p0, Landroidx/loader/content/Loader;->mOnLoadCanceledListener:Landroidx/loader/content/Loader$OnLoadCanceledListener;

    if-eqz v0, :cond_7

    invoke-interface {v0, p0}, Landroidx/loader/content/Loader$OnLoadCanceledListener;->onLoadCanceled(Landroidx/loader/content/Loader;)V

    :cond_7
    return-void
.end method

.method public deliverResult(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    iget-object v0, p0, Landroidx/loader/content/Loader;->mListener:Landroidx/loader/content/Loader$OnLoadCompleteListener;

    if-eqz v0, :cond_7

    invoke-interface {v0, p0, p1}, Landroidx/loader/content/Loader$OnLoadCompleteListener;->onLoadComplete(Landroidx/loader/content/Loader;Ljava/lang/Object;)V

    :cond_7
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mId="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroidx/loader/content/Loader;->mId:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mListener="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/loader/content/Loader;->mListener:Landroidx/loader/content/Loader$OnLoadCompleteListener;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-boolean v0, p0, Landroidx/loader/content/Loader;->mStarted:Z

    if-nez v0, :cond_23

    iget-boolean v0, p0, Landroidx/loader/content/Loader;->mContentChanged:Z

    if-nez v0, :cond_23

    iget-boolean v0, p0, Landroidx/loader/content/Loader;->mProcessingChange:Z

    if-eqz v0, :cond_44

    :cond_23
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mStarted="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/loader/content/Loader;->mStarted:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mContentChanged="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/loader/content/Loader;->mContentChanged:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mProcessingChange="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/loader/content/Loader;->mProcessingChange:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    :cond_44
    iget-boolean v0, p0, Landroidx/loader/content/Loader;->mAbandoned:Z

    if-nez v0, :cond_4c

    iget-boolean v0, p0, Landroidx/loader/content/Loader;->mReset:Z

    if-eqz v0, :cond_63

    :cond_4c
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mAbandoned="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/loader/content/Loader;->mAbandoned:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mReset="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/loader/content/Loader;->mReset:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    :cond_63
    return-void
.end method

.method public forceLoad()V
    .registers 1

    invoke-virtual {p0}, Landroidx/loader/content/Loader;->onForceLoad()V

    return-void
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Landroidx/loader/content/Loader;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getId()I
    .registers 2

    iget v0, p0, Landroidx/loader/content/Loader;->mId:I

    return v0
.end method

.method public isAbandoned()Z
    .registers 2

    iget-boolean v0, p0, Landroidx/loader/content/Loader;->mAbandoned:Z

    return v0
.end method

.method public isReset()Z
    .registers 2

    iget-boolean v0, p0, Landroidx/loader/content/Loader;->mReset:Z

    return v0
.end method

.method public isStarted()Z
    .registers 2

    iget-boolean v0, p0, Landroidx/loader/content/Loader;->mStarted:Z

    return v0
.end method

.method protected onAbandon()V
    .registers 1

    return-void
.end method

.method protected onCancelLoad()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public onContentChanged()V
    .registers 2

    iget-boolean v0, p0, Landroidx/loader/content/Loader;->mStarted:Z

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Landroidx/loader/content/Loader;->forceLoad()V

    :goto_7
    return-void

    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/loader/content/Loader;->mContentChanged:Z

    goto :goto_7
.end method

.method protected onForceLoad()V
    .registers 1

    return-void
.end method

.method protected onReset()V
    .registers 1

    return-void
.end method

.method protected onStartLoading()V
    .registers 1

    return-void
.end method

.method protected onStopLoading()V
    .registers 1

    return-void
.end method

.method public registerListener(ILandroidx/loader/content/Loader$OnLoadCompleteListener;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/loader/content/Loader$OnLoadCompleteListener",
            "<TD;>;)V"
        }
    .end annotation

    iget-object v0, p0, Landroidx/loader/content/Loader;->mListener:Landroidx/loader/content/Loader$OnLoadCompleteListener;

    if-nez v0, :cond_9

    iput-object p2, p0, Landroidx/loader/content/Loader;->mListener:Landroidx/loader/content/Loader$OnLoadCompleteListener;

    iput p1, p0, Landroidx/loader/content/Loader;->mId:I

    return-void

    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "There is already a listener registered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public registerOnLoadCanceledListener(Landroidx/loader/content/Loader$OnLoadCanceledListener;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader$OnLoadCanceledListener",
            "<TD;>;)V"
        }
    .end annotation

    iget-object v0, p0, Landroidx/loader/content/Loader;->mOnLoadCanceledListener:Landroidx/loader/content/Loader$OnLoadCanceledListener;

    if-nez v0, :cond_7

    iput-object p1, p0, Landroidx/loader/content/Loader;->mOnLoadCanceledListener:Landroidx/loader/content/Loader$OnLoadCanceledListener;

    return-void

    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "There is already a listener registered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reset()V
    .registers 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroidx/loader/content/Loader;->onReset()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/loader/content/Loader;->mReset:Z

    iput-boolean v1, p0, Landroidx/loader/content/Loader;->mStarted:Z

    iput-boolean v1, p0, Landroidx/loader/content/Loader;->mAbandoned:Z

    iput-boolean v1, p0, Landroidx/loader/content/Loader;->mContentChanged:Z

    iput-boolean v1, p0, Landroidx/loader/content/Loader;->mProcessingChange:Z

    return-void
.end method

.method public rollbackContentChanged()V
    .registers 2

    iget-boolean v0, p0, Landroidx/loader/content/Loader;->mProcessingChange:Z

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Landroidx/loader/content/Loader;->onContentChanged()V

    :cond_7
    return-void
.end method

.method public final startLoading()V
    .registers 3

    const/4 v1, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/loader/content/Loader;->mStarted:Z

    iput-boolean v1, p0, Landroidx/loader/content/Loader;->mReset:Z

    iput-boolean v1, p0, Landroidx/loader/content/Loader;->mAbandoned:Z

    invoke-virtual {p0}, Landroidx/loader/content/Loader;->onStartLoading()V

    return-void
.end method

.method public stopLoading()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/loader/content/Loader;->mStarted:Z

    invoke-virtual {p0}, Landroidx/loader/content/Loader;->onStopLoading()V

    return-void
.end method

.method public takeContentChanged()Z
    .registers 3

    iget-boolean v0, p0, Landroidx/loader/content/Loader;->mContentChanged:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/loader/content/Loader;->mContentChanged:Z

    iget-boolean v1, p0, Landroidx/loader/content/Loader;->mProcessingChange:Z

    or-int/2addr v1, v0

    iput-boolean v1, p0, Landroidx/loader/content/Loader;->mProcessingChange:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {p0, v0}, Landroidx/core/util/DebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    const-string v1, " id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/loader/content/Loader;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unregisterListener(Landroidx/loader/content/Loader$OnLoadCompleteListener;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader$OnLoadCompleteListener",
            "<TD;>;)V"
        }
    .end annotation

    iget-object v0, p0, Landroidx/loader/content/Loader;->mListener:Landroidx/loader/content/Loader$OnLoadCompleteListener;

    if-eqz v0, :cond_12

    if-ne v0, p1, :cond_a

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/loader/content/Loader;->mListener:Landroidx/loader/content/Loader$OnLoadCompleteListener;

    return-void

    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Attempting to unregister the wrong listener"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No listener register"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unregisterOnLoadCanceledListener(Landroidx/loader/content/Loader$OnLoadCanceledListener;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader$OnLoadCanceledListener",
            "<TD;>;)V"
        }
    .end annotation

    iget-object v0, p0, Landroidx/loader/content/Loader;->mOnLoadCanceledListener:Landroidx/loader/content/Loader$OnLoadCanceledListener;

    if-eqz v0, :cond_12

    if-ne v0, p1, :cond_a

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/loader/content/Loader;->mOnLoadCanceledListener:Landroidx/loader/content/Loader$OnLoadCanceledListener;

    return-void

    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Attempting to unregister the wrong listener"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No listener register"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
