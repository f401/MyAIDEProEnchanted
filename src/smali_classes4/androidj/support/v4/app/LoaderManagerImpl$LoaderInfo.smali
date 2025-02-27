.class final Landroidj/support/v4/app/LoaderManagerImpl$LoaderInfo;
.super Ljava/lang/Object;

# interfaces
.implements Landroidj/support/v4/content/Loader$OnLoadCompleteListener;
.implements Landroidj/support/v4/content/Loader$OnLoadCanceledListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/app/LoaderManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "LoaderInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidj/support/v4/content/Loader$OnLoadCompleteListener",
        "<",
        "Ljava/lang/Object;",
        ">;",
        "Landroidj/support/v4/content/Loader$OnLoadCanceledListener",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final mArgs:Landroid/os/Bundle;

.field mCallbacks:Landroidj/support/v4/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidj/support/v4/app/LoaderManager$LoaderCallbacks",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field mData:Ljava/lang/Object;

.field mDeliveredData:Z

.field mDestroyed:Z

.field mHaveData:Z

.field final mId:I

.field mListenerRegistered:Z

.field mLoader:Landroidj/support/v4/content/Loader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidj/support/v4/content/Loader",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field mPendingLoader:Landroidj/support/v4/app/LoaderManagerImpl$LoaderInfo;

.field mReportNextStart:Z

.field mRetaining:Z

.field mRetainingStarted:Z

.field mStarted:Z

.field final this$0:Landroidj/support/v4/app/LoaderManagerImpl;


# direct methods
.method public constructor <init>(Landroidj/support/v4/app/LoaderManagerImpl;ILandroid/os/Bundle;Landroidj/support/v4/app/LoaderManager$LoaderCallbacks;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            "Landroidj/support/v4/app/LoaderManager$LoaderCallbacks",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidj/support/v4/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroidj/support/v4/app/LoaderManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Landroidj/support/v4/app/LoaderManagerImpl$LoaderInfo;->mId:I

    iput-object p3, p0, Landroidj/support/v4/app/LoaderManagerImpl$LoaderInfo;->mArgs:Landroid/os/Bundle;

    iput-object p4, p0, Landroidj/support/v4/app/LoaderManagerImpl$LoaderInfo;->mCallbacks:Landroidj/support/v4/app/LoaderManager$LoaderCallbacks;

    return-void
.end method


# virtual methods
.method callOnLoadFinished(Landroidj/support/v4/content/Loader;Ljava/lang/Object;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidj/support/v4/content/Loader",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Landroidj/support/v4/app/LoaderManagerImpl$LoaderInfo;->mCallbacks:Landroidj/support/v4/app/LoaderManager$LoaderCallbacks;

    if-eqz v0, :cond_5d

    iget-object v0, p0, Landroidj/support/v4/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroidj/support/v4/app/LoaderManagerImpl;

    iget-object v0, v0, Landroidj/support/v4/app/LoaderManagerImpl;->mHost:Landroidj/support/v4/app/FragmentHostCallback;

    if-eqz v0, :cond_6e

    iget-object v0, p0, Landroidj/support/v4/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroidj/support/v4/app/LoaderManagerImpl;

    iget-object v0, v0, Landroidj/support/v4/app/LoaderManagerImpl;->mHost:Landroidj/support/v4/app/FragmentHostCallback;

    iget-object v0, v0, Landroidj/support/v4/app/FragmentHostCallback;->mFragmentManager:Landroidj/support/v4/app/FragmentManagerImpl;

    iget-object v0, v0, Landroidj/support/v4/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    iget-object v1, p0, Landroidj/support/v4/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroidj/support/v4/app/LoaderManagerImpl;

    iget-object v1, v1, Landroidj/support/v4/app/LoaderManagerImpl;->mHost:Landroidj/support/v4/app/FragmentHostCallback;

    iget-object v1, v1, Landroidj/support/v4/app/FragmentHostCallback;->mFragmentManager:Landroidj/support/v4/app/FragmentManagerImpl;

    const-string v2, "onLoadFinished"

    iput-object v2, v1, Landroidj/support/v4/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    move-object v1, v0

    :goto_1d
    :try_start_1d
    sget-boolean v0, Landroidj/support/v4/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_47

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LoaderManager"

    const-string v3, "  onLoadFinished in "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ": "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1, p2}, Landroidj/support/v4/content/Loader;->dataToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_47
    iget-object v0, p0, Landroidj/support/v4/app/LoaderManagerImpl$LoaderInfo;->mCallbacks:Landroidj/support/v4/app/LoaderManager$LoaderCallbacks;

    invoke-interface {v0, p1, p2}, Landroidj/support/v4/app/LoaderManager$LoaderCallbacks;->onLoadFinished(Landroidj/support/v4/content/Loader;Ljava/lang/Object;)V
    :try_end_4c
    .catchall {:try_start_1d .. :try_end_4c} :catchall_5e

    iget-object v0, p0, Landroidj/support/v4/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroidj/support/v4/app/LoaderManagerImpl;

    iget-object v0, v0, Landroidj/support/v4/app/LoaderManagerImpl;->mHost:Landroidj/support/v4/app/FragmentHostCallback;

    if-eqz v0, :cond_5a

    iget-object v0, p0, Landroidj/support/v4/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroidj/support/v4/app/LoaderManagerImpl;

    iget-object v0, v0, Landroidj/support/v4/app/LoaderManagerImpl;->mHost:Landroidj/support/v4/app/FragmentHostCallback;

    iget-object v0, v0, Landroidj/support/v4/app/FragmentHostCallback;->mFragmentManager:Landroidj/support/v4/app/FragmentManagerImpl;

    iput-object v1, v0, Landroidj/support/v4/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    :cond_5a
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidj/support/v4/app/LoaderManagerImpl$LoaderInfo;->mDeliveredData:Z

    :cond_5d
    return-void

    :catchall_5e
    move-exception v0

    iget-object v2, p0, Landroidj/support/v4/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroidj/support/v4/app/LoaderManagerImpl;

    iget-object v2, v2, Landroidj/support/v4/app/LoaderManagerImpl;->mHost:Landroidj/support/v4/app/FragmentHostCallback;

    if-eqz v2, :cond_6d

    iget-object v2, p0, Landroidj/support/v4/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroidj/support/v4/app/LoaderManagerImpl;

    iget-object v2, v2, Landroidj/support/v4/app/LoaderManagerImpl;->mHost:Landroidj/support/v4/app/FragmentHostCallback;

    iget-object v2, v2, Landroidj/support/v4/app/FragmentHostCallback;->mFragmentManager:Landroidj/support/v4/app/FragmentManagerImpl;

    iput-object v1, v2, Landroidj/support/v4/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    :cond_6d
    throw v0

    :cond_6e
    const/4 v0, 0x0

    move-object v1, v0

    goto :goto_1d
.end method

.method cancel()Z
    .registers 4

    sget-boolean v0, Landroidj/support/v4/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_1c

    const-string v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Canceling: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    iget-boolean v0, p0, Landroidj/support/v4/app/LoaderManagerImpl$LoaderInfo;->mStarted:Z

    if-eqz v0, :cond_36

    iget-object v0, p0, Landroidj/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroidj/support/v4/content/Loader;

    if-eqz v0, :cond_36

    iget-boolean v0, p0, Landroidj/support/v4/app/LoaderManagerImpl$LoaderInfo;->mListenerRegistered:Z

    if-eqz v0, :cond_36

    iget-object v0, p0, Landroidj/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroidj/support/v4/content/Loader;

    invoke-virtual {v0}, Landroidj/support/v4/content/Loader;->cancelLoad()Z

    move-result v0

    if-nez v0, :cond_35

    iget-object v1, p0, Landroidj/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroidj/support/v4/content/Loader;

    invoke-virtual {p0, v1}, Landroidj/support/v4/app/LoaderManagerImpl$LoaderInfo;->onLoadCanceled(Landroidj/support/v4/content/Loader;)V

    :cond_35
    :goto_35
    return v0

    :cond_36
    const/4 v0, 0x0

    goto :goto_35
.end method

.method destroy()V
    .registers 6

    const/4 v4, 0x0

    const/4 v2, 0x0

    sget-boolean v0, Landroidj/support/v4/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_1e

    const-string v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Destroying: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidj/support/v4/app/LoaderManagerImpl$LoaderInfo;->mDestroyed:Z

    iget-boolean v0, p0, Landroidj/support/v4/app/LoaderManagerImpl$LoaderInfo;->mDeliveredData:Z

    iput-boolean v4, p0, Landroidj/support/v4/app/LoaderManagerImpl$LoaderInfo;->mDeliveredData:Z

    iget-object v1, p0, Landroidj/support/v4/app/LoaderManagerImpl$LoaderInfo;->mCallbacks:Landroidj/support/v4/app/LoaderManager$LoaderCallbacks;

    if-eqz v1, :cond_7d

    iget-object v1, p0, Landroidj/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroidj/support/v4/content/Loader;

    if-eqz v1, :cond_7d

    iget-boolean v1, p0, Landroidj/support/v4/app/LoaderManagerImpl$LoaderInfo;->mHaveData:Z

    if-eqz v1, :cond_7d

    if-eqz v0, :cond_7d

    sget-boolean v0, Landroidj/support/v4/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_4f

    const-string v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Resetting: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4f
    iget-object v0, p0, Landroidj/support/v4/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroidj/support/v4/app/LoaderManagerImpl;

    iget-object v0, v0, Landroidj/support/v4/app/LoaderManagerImpl;->mHost:Landroidj/support/v4/app/FragmentHostCallback;

    if-eqz v0, :cond_b6

    iget-object v0, p0, Landroidj/support/v4/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroidj/support/v4/app/LoaderManagerImpl;

    iget-object v0, v0, Landroidj/support/v4/app/LoaderManagerImpl;->mHost:Landroidj/support/v4/app/FragmentHostCallback;

    iget-object v0, v0, Landroidj/support/v4/app/FragmentHostCallback;->mFragmentManager:Landroidj/support/v4/app/FragmentManagerImpl;

    iget-object v0, v0, Landroidj/support/v4/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    iget-object v1, p0, Landroidj/support/v4/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroidj/support/v4/app/LoaderManagerImpl;

    iget-object v1, v1, Landroidj/support/v4/app/LoaderManagerImpl;->mHost:Landroidj/support/v4/app/FragmentHostCallback;

    iget-object v1, v1, Landroidj/support/v4/app/FragmentHostCallback;->mFragmentManager:Landroidj/support/v4/app/FragmentManagerImpl;

    const-string v3, "onLoaderReset"

    iput-object v3, v1, Landroidj/support/v4/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    move-object v1, v0

    :goto_68
    :try_start_68
    iget-object v0, p0, Landroidj/support/v4/app/LoaderManagerImpl$LoaderInfo;->mCallbacks:Landroidj/support/v4/app/LoaderManager$LoaderCallbacks;

    iget-object v3, p0, Landroidj/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroidj/support/v4/content/Loader;

    invoke-interface {v0, v3}, Landroidj/support/v4/app/LoaderManager$LoaderCallbacks;->onLoaderReset(Landroidj/support/v4/content/Loader;)V
    :try_end_6f
    .catchall {:try_start_68 .. :try_end_6f} :catchall_a6

    iget-object v0, p0, Landroidj/support/v4/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroidj/support/v4/app/LoaderManagerImpl;

    iget-object v0, v0, Landroidj/support/v4/app/LoaderManagerImpl;->mHost:Landroidj/support/v4/app/FragmentHostCallback;

    if-eqz v0, :cond_7d

    iget-object v0, p0, Landroidj/support/v4/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroidj/support/v4/app/LoaderManagerImpl;

    iget-object v0, v0, Landroidj/support/v4/app/LoaderManagerImpl;->mHost:Landroidj/support/v4/app/FragmentHostCallback;

    iget-object v0, v0, Landroidj/support/v4/app/FragmentHostCallback;->mFragmentManager:Landroidj/support/v4/app/FragmentManagerImpl;

    iput-object v1, v0, Landroidj/support/v4/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    :cond_7d
    iput-object v2, p0, Landroidj/support/v4/app/LoaderManagerImpl$LoaderInfo;->mCallbacks:Landroidj/support/v4/app/LoaderManager$LoaderCallbacks;

    iput-object v2, p0, Landroidj/support/v4/app/LoaderManagerImpl$LoaderInfo;->mData:Ljava/lang/Object;

    iput-boolean v4, p0, Landroidj/support/v4/app/LoaderManagerImpl$LoaderInfo;->mHaveData:Z

    iget-object v0, p0, Landroidj/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroidj/support/v4/content/Loader;

    if-eqz v0, :cond_9c

    iget-boolean v0, p0, Landroidj/support/v4/app/LoaderManagerImpl$LoaderInfo;->mListenerRegistered:Z

    if-eqz v0, :cond_97

    iput-boolean v4, p0, Landroidj/support/v4/app/LoaderManagerImpl$LoaderInfo;->mListenerRegistered:Z

    iget-object v0, p0, Landroidj/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroidj/support/v4/content/Loader;

    invoke-virtual {v0, p0}, Landroidj/support/v4/content/Loader;->unregisterListener(Landroidj/support/v4/content/Loader$OnLoadCompleteListener;)V

    iget-object v0, p0, Landroidj/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroidj/support/v4/content/Loader;

    invoke-virtual {v0, p0}, Landroidj/support/v4/content/Loader;->unregisterOnLoadCanceledListener(Landroidj/support/v4/content/Loader$OnLoadCanceledListener;)V

    :cond_97
    iget-object v0, p0, Landroidj/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroidj/support/v4/content/Loader;

    invoke-virtual {v0}, Landroidj/support/v4/content/Loader;->reset()V

    :cond_9c
    iget-object v0, p0, Landroidj/support/v4/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Landroidj/support/v4/app/LoaderManagerImpl$LoaderInfo;

    if-eqz v0, :cond_a5

    iget-object v0, p0, Landroidj/support/v4/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Landroidj/support/v4/app/LoaderManagerImpl$LoaderInfo;

    invoke-virtual {v0}, Landroidj/support/v4/app/LoaderManagerImpl$LoaderInfo;->destroy()V

    :cond_a5
    return-void

    :catchall_a6
    move-exception v0

    iget-object v2, p0, Landroidj/support/v4/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroidj/support/v4/app/LoaderManagerImpl;

    iget-object v2, v2, Landroidj/support/v4/app/LoaderManagerImpl;->mHost:Landroidj/support/v4/app/FragmentHostCallback;

    if-eqz v2, :cond_b5

    iget-object v2, p0, Landroidj/support/v4/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroidj/support/v4/app/LoaderManagerImpl;

    iget-object v2, v2, Landroidj/support/v4/app/LoaderManagerImpl;->mHost:Landroidj/support/v4/app/FragmentHostCallback;

    iget-object v2, v2, Landroidj/support/v4/app/FragmentHostCallback;->mFragmentManager:Landroidj/support/v4/app/FragmentManagerImpl;

    iput-object v1, v2, Landroidj/support/v4/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    :cond_b5
    throw v0

    :cond_b6
    move-object v1, v2

    goto :goto_68
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mId="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroidj/support/v4/app/LoaderManagerImpl$LoaderInfo;->mId:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mArgs="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidj/support/v4/app/LoaderManagerImpl$LoaderInfo;->mArgs:Landroid/os/Bundle;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mCallbacks="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidj/support/v4/app/LoaderManagerImpl$LoaderInfo;->mCallbacks:Landroidj/support/v4/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLoader="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidj/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroidj/support/v4/content/Loader;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-object v0, p0, Landroidj/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroidj/support/v4/content/Loader;

    if-eqz v0, :cond_4d

    iget-object v0, p0, Landroidj/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroidj/support/v4/content/Loader;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Landroidj/support/v4/content/Loader;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_4d
    iget-boolean v0, p0, Landroidj/support/v4/app/LoaderManagerImpl$LoaderInfo;->mHaveData:Z

    if-nez v0, :cond_55

    iget-boolean v0, p0, Landroidj/support/v4/app/LoaderManagerImpl$LoaderInfo;->mDeliveredData:Z

    if-eqz v0, :cond_79

    :cond_55
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mHaveData="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidj/support/v4/app/LoaderManagerImpl$LoaderInfo;->mHaveData:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, "  mDeliveredData="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidj/support/v4/app/LoaderManagerImpl$LoaderInfo;->mDeliveredData:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mData="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidj/support/v4/app/LoaderManagerImpl$LoaderInfo;->mData:Ljava/lang/Object;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_79
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mStarted="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidj/support/v4/app/LoaderManagerImpl$LoaderInfo;->mStarted:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mReportNextStart="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidj/support/v4/app/LoaderManagerImpl$LoaderInfo;->mReportNextStart:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mDestroyed="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidj/support/v4/app/LoaderManagerImpl$LoaderInfo;->mDestroyed:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mRetaining="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidj/support/v4/app/LoaderManagerImpl$LoaderInfo;->mRetaining:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mRetainingStarted="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidj/support/v4/app/LoaderManagerImpl$LoaderInfo;->mRetainingStarted:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mListenerRegistered="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidj/support/v4/app/LoaderManagerImpl$LoaderInfo;->mListenerRegistered:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    iget-object v0, p0, Landroidj/support/v4/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Landroidj/support/v4/app/LoaderManagerImpl$LoaderInfo;

    if-eqz v0, :cond_e9

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Pending Loader "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Landroidj/support/v4/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Landroidj/support/v4/app/LoaderManagerImpl$LoaderInfo;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v0, ":"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Landroidj/support/v4/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Landroidj/support/v4/app/LoaderManagerImpl$LoaderInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Landroidj/support/v4/app/LoaderManagerImpl$LoaderInfo;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_e9
    return-void
.end method

.method finishRetain()V
    .registers 4

    iget-boolean v0, p0, Landroidj/support/v4/app/LoaderManagerImpl$LoaderInfo;->mRetaining:Z

    if-eqz v0, :cond_30

    sget-boolean v0, Landroidj/support/v4/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_20

    const-string v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Finished Retaining: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidj/support/v4/app/LoaderManagerImpl$LoaderInfo;->mRetaining:Z

    iget-boolean v0, p0, Landroidj/support/v4/app/LoaderManagerImpl$LoaderInfo;->mStarted:Z

    iget-boolean v1, p0, Landroidj/support/v4/app/LoaderManagerImpl$LoaderInfo;->mRetainingStarted:Z

    if-eq v0, v1, :cond_30

    iget-boolean v0, p0, Landroidj/support/v4/app/LoaderManagerImpl$LoaderInfo;->mStarted:Z

    if-nez v0, :cond_30

    invoke-virtual {p0}, Landroidj/support/v4/app/LoaderManagerImpl$LoaderInfo;->stop()V

    :cond_30
    iget-boolean v0, p0, Landroidj/support/v4/app/LoaderManagerImpl$LoaderInfo;->mStarted:Z

    if-eqz v0, :cond_43

    iget-boolean v0, p0, Landroidj/support/v4/app/LoaderManagerImpl$LoaderInfo;->mHaveData:Z

    if-eqz v0, :cond_43

    iget-boolean v0, p0, Landroidj/support/v4/app/LoaderManagerImpl$LoaderInfo;->mReportNextStart:Z

    if-nez v0, :cond_43

    iget-object v0, p0, Landroidj/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroidj/support/v4/content/Loader;

    iget-object v1, p0, Landroidj/support/v4/app/LoaderManagerImpl$LoaderInfo;->mData:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Landroidj/support/v4/app/LoaderManagerImpl$LoaderInfo;->callOnLoadFinished(Landroidj/support/v4/content/Loader;Ljava/lang/Object;)V

    :cond_43
    return-void
.end method

.method public onLoadCanceled(Landroidj/support/v4/content/Loader;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidj/support/v4/content/Loader",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v4, 0x0

    sget-boolean v0, Landroidj/support/v4/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_1d

    const-string v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLoadCanceled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    iget-boolean v0, p0, Landroidj/support/v4/app/LoaderManagerImpl$LoaderInfo;->mDestroyed:Z

    if-eqz v0, :cond_2d

    sget-boolean v0, Landroidj/support/v4/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_2c

    const-string v0, "LoaderManager"

    const-string v1, "  Ignoring load canceled -- destroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2c
    :goto_2c
    return-void

    :cond_2d
    iget-object v0, p0, Landroidj/support/v4/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroidj/support/v4/app/LoaderManagerImpl;

    iget-object v0, v0, Landroidj/support/v4/app/LoaderManagerImpl;->mLoaders:Landroidj/support/v4/util/SparseArrayCompat;

    iget v1, p0, Landroidj/support/v4/app/LoaderManagerImpl$LoaderInfo;->mId:I

    invoke-virtual {v0, v1}, Landroidj/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p0, :cond_45

    sget-boolean v0, Landroidj/support/v4/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_2c

    const-string v0, "LoaderManager"

    const-string v1, "  Ignoring load canceled -- not active"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2c

    :cond_45
    iget-object v0, p0, Landroidj/support/v4/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Landroidj/support/v4/app/LoaderManagerImpl$LoaderInfo;

    if-eqz v0, :cond_2c

    sget-boolean v1, Landroidj/support/v4/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_65

    const-string v1, "LoaderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Switching to pending loader: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_65
    iput-object v4, p0, Landroidj/support/v4/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Landroidj/support/v4/app/LoaderManagerImpl$LoaderInfo;

    iget-object v1, p0, Landroidj/support/v4/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroidj/support/v4/app/LoaderManagerImpl;

    iget-object v1, v1, Landroidj/support/v4/app/LoaderManagerImpl;->mLoaders:Landroidj/support/v4/util/SparseArrayCompat;

    iget v2, p0, Landroidj/support/v4/app/LoaderManagerImpl$LoaderInfo;->mId:I

    invoke-virtual {v1, v2, v4}, Landroidj/support/v4/util/SparseArrayCompat;->put(ILjava/lang/Object;)V

    invoke-virtual {p0}, Landroidj/support/v4/app/LoaderManagerImpl$LoaderInfo;->destroy()V

    iget-object v1, p0, Landroidj/support/v4/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroidj/support/v4/app/LoaderManagerImpl;

    invoke-virtual {v1, v0}, Landroidj/support/v4/app/LoaderManagerImpl;->installLoader(Landroidj/support/v4/app/LoaderManagerImpl$LoaderInfo;)V

    goto :goto_2c
.end method

.method public onLoadComplete(Landroidj/support/v4/content/Loader;Ljava/lang/Object;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidj/support/v4/content/Loader",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    const/4 v4, 0x0

    sget-boolean v0, Landroidj/support/v4/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_1d

    const-string v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLoadComplete: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    iget-boolean v0, p0, Landroidj/support/v4/app/LoaderManagerImpl$LoaderInfo;->mDestroyed:Z

    if-eqz v0, :cond_2d

    sget-boolean v0, Landroidj/support/v4/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_2c

    const-string v0, "LoaderManager"

    const-string v1, "  Ignoring load complete -- destroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2c
    :goto_2c
    return-void

    :cond_2d
    iget-object v0, p0, Landroidj/support/v4/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroidj/support/v4/app/LoaderManagerImpl;

    iget-object v0, v0, Landroidj/support/v4/app/LoaderManagerImpl;->mLoaders:Landroidj/support/v4/util/SparseArrayCompat;

    iget v1, p0, Landroidj/support/v4/app/LoaderManagerImpl$LoaderInfo;->mId:I

    invoke-virtual {v0, v1}, Landroidj/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p0, :cond_45

    sget-boolean v0, Landroidj/support/v4/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_2c

    const-string v0, "LoaderManager"

    const-string v1, "  Ignoring load complete -- not active"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2c

    :cond_45
    iget-object v0, p0, Landroidj/support/v4/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Landroidj/support/v4/app/LoaderManagerImpl$LoaderInfo;

    if-eqz v0, :cond_79

    sget-boolean v1, Landroidj/support/v4/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_65

    const-string v1, "LoaderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Switching to pending loader: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_65
    iput-object v4, p0, Landroidj/support/v4/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Landroidj/support/v4/app/LoaderManagerImpl$LoaderInfo;

    iget-object v1, p0, Landroidj/support/v4/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroidj/support/v4/app/LoaderManagerImpl;

    iget-object v1, v1, Landroidj/support/v4/app/LoaderManagerImpl;->mLoaders:Landroidj/support/v4/util/SparseArrayCompat;

    iget v2, p0, Landroidj/support/v4/app/LoaderManagerImpl$LoaderInfo;->mId:I

    invoke-virtual {v1, v2, v4}, Landroidj/support/v4/util/SparseArrayCompat;->put(ILjava/lang/Object;)V

    invoke-virtual {p0}, Landroidj/support/v4/app/LoaderManagerImpl$LoaderInfo;->destroy()V

    iget-object v1, p0, Landroidj/support/v4/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroidj/support/v4/app/LoaderManagerImpl;

    invoke-virtual {v1, v0}, Landroidj/support/v4/app/LoaderManagerImpl;->installLoader(Landroidj/support/v4/app/LoaderManagerImpl$LoaderInfo;)V

    goto :goto_2c

    :cond_79
    iget-object v0, p0, Landroidj/support/v4/app/LoaderManagerImpl$LoaderInfo;->mData:Ljava/lang/Object;

    if-ne v0, p2, :cond_81

    iget-boolean v0, p0, Landroidj/support/v4/app/LoaderManagerImpl$LoaderInfo;->mHaveData:Z

    if-nez v0, :cond_8d

    :cond_81
    iput-object p2, p0, Landroidj/support/v4/app/LoaderManagerImpl$LoaderInfo;->mData:Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidj/support/v4/app/LoaderManagerImpl$LoaderInfo;->mHaveData:Z

    iget-boolean v0, p0, Landroidj/support/v4/app/LoaderManagerImpl$LoaderInfo;->mStarted:Z

    if-eqz v0, :cond_8d

    invoke-virtual {p0, p1, p2}, Landroidj/support/v4/app/LoaderManagerImpl$LoaderInfo;->callOnLoadFinished(Landroidj/support/v4/content/Loader;Ljava/lang/Object;)V

    :cond_8d
    iget-object v0, p0, Landroidj/support/v4/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroidj/support/v4/app/LoaderManagerImpl;

    iget-object v0, v0, Landroidj/support/v4/app/LoaderManagerImpl;->mInactiveLoaders:Landroidj/support/v4/util/SparseArrayCompat;

    iget v1, p0, Landroidj/support/v4/app/LoaderManagerImpl$LoaderInfo;->mId:I

    invoke-virtual {v0, v1}, Landroidj/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/app/LoaderManagerImpl$LoaderInfo;

    if-eqz v0, :cond_ac

    if-eq v0, p0, :cond_ac

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidj/support/v4/app/LoaderManagerImpl$LoaderInfo;->mDeliveredData:Z

    invoke-virtual {v0}, Landroidj/support/v4/app/LoaderManagerImpl$LoaderInfo;->destroy()V

    iget-object v0, p0, Landroidj/support/v4/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroidj/support/v4/app/LoaderManagerImpl;

    iget-object v0, v0, Landroidj/support/v4/app/LoaderManagerImpl;->mInactiveLoaders:Landroidj/support/v4/util/SparseArrayCompat;

    iget v1, p0, Landroidj/support/v4/app/LoaderManagerImpl$LoaderInfo;->mId:I

    invoke-virtual {v0, v1}, Landroidj/support/v4/util/SparseArrayCompat;->remove(I)V

    :cond_ac
    iget-object v0, p0, Landroidj/support/v4/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroidj/support/v4/app/LoaderManagerImpl;

    iget-object v0, v0, Landroidj/support/v4/app/LoaderManagerImpl;->mHost:Landroidj/support/v4/app/FragmentHostCallback;

    if-eqz v0, :cond_2c

    iget-object v0, p0, Landroidj/support/v4/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroidj/support/v4/app/LoaderManagerImpl;

    invoke-virtual {v0}, Landroidj/support/v4/app/LoaderManagerImpl;->hasRunningLoaders()Z

    move-result v0

    if-nez v0, :cond_2c

    iget-object v0, p0, Landroidj/support/v4/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroidj/support/v4/app/LoaderManagerImpl;

    iget-object v0, v0, Landroidj/support/v4/app/LoaderManagerImpl;->mHost:Landroidj/support/v4/app/FragmentHostCallback;

    iget-object v0, v0, Landroidj/support/v4/app/FragmentHostCallback;->mFragmentManager:Landroidj/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroidj/support/v4/app/FragmentManagerImpl;->startPendingDeferredFragments()V

    goto/16 :goto_2c
.end method

.method reportStart()V
    .registers 3

    iget-boolean v0, p0, Landroidj/support/v4/app/LoaderManagerImpl$LoaderInfo;->mStarted:Z

    if-eqz v0, :cond_1a

    iget-boolean v0, p0, Landroidj/support/v4/app/LoaderManagerImpl$LoaderInfo;->mReportNextStart:Z

    if-eqz v0, :cond_1a

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidj/support/v4/app/LoaderManagerImpl$LoaderInfo;->mReportNextStart:Z

    iget-boolean v0, p0, Landroidj/support/v4/app/LoaderManagerImpl$LoaderInfo;->mHaveData:Z

    if-eqz v0, :cond_1a

    iget-boolean v0, p0, Landroidj/support/v4/app/LoaderManagerImpl$LoaderInfo;->mRetaining:Z

    if-nez v0, :cond_1a

    iget-object v0, p0, Landroidj/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroidj/support/v4/content/Loader;

    iget-object v1, p0, Landroidj/support/v4/app/LoaderManagerImpl$LoaderInfo;->mData:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Landroidj/support/v4/app/LoaderManagerImpl$LoaderInfo;->callOnLoadFinished(Landroidj/support/v4/content/Loader;Ljava/lang/Object;)V

    :cond_1a
    return-void
.end method

.method retain()V
    .registers 4

    sget-boolean v0, Landroidj/support/v4/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_1c

    const-string v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Retaining: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidj/support/v4/app/LoaderManagerImpl$LoaderInfo;->mRetaining:Z

    iget-boolean v0, p0, Landroidj/support/v4/app/LoaderManagerImpl$LoaderInfo;->mStarted:Z

    iput-boolean v0, p0, Landroidj/support/v4/app/LoaderManagerImpl$LoaderInfo;->mRetainingStarted:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidj/support/v4/app/LoaderManagerImpl$LoaderInfo;->mStarted:Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroidj/support/v4/app/LoaderManagerImpl$LoaderInfo;->mCallbacks:Landroidj/support/v4/app/LoaderManager$LoaderCallbacks;

    return-void
.end method

.method start()V
    .registers 5

    const/4 v3, 0x1

    iget-boolean v0, p0, Landroidj/support/v4/app/LoaderManagerImpl$LoaderInfo;->mRetaining:Z

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Landroidj/support/v4/app/LoaderManagerImpl$LoaderInfo;->mRetainingStarted:Z

    if-eqz v0, :cond_c

    iput-boolean v3, p0, Landroidj/support/v4/app/LoaderManagerImpl$LoaderInfo;->mStarted:Z

    :cond_b
    :goto_b
    return-void

    :cond_c
    iget-boolean v0, p0, Landroidj/support/v4/app/LoaderManagerImpl$LoaderInfo;->mStarted:Z

    if-nez v0, :cond_b

    iput-boolean v3, p0, Landroidj/support/v4/app/LoaderManagerImpl$LoaderInfo;->mStarted:Z

    sget-boolean v0, Landroidj/support/v4/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_2e

    const-string v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Starting: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2e
    iget-object v0, p0, Landroidj/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroidj/support/v4/content/Loader;

    if-nez v0, :cond_42

    iget-object v0, p0, Landroidj/support/v4/app/LoaderManagerImpl$LoaderInfo;->mCallbacks:Landroidj/support/v4/app/LoaderManager$LoaderCallbacks;

    if-eqz v0, :cond_42

    iget-object v0, p0, Landroidj/support/v4/app/LoaderManagerImpl$LoaderInfo;->mCallbacks:Landroidj/support/v4/app/LoaderManager$LoaderCallbacks;

    iget v1, p0, Landroidj/support/v4/app/LoaderManagerImpl$LoaderInfo;->mId:I

    iget-object v2, p0, Landroidj/support/v4/app/LoaderManagerImpl$LoaderInfo;->mArgs:Landroid/os/Bundle;

    invoke-interface {v0, v1, v2}, Landroidj/support/v4/app/LoaderManager$LoaderCallbacks;->onCreateLoader(ILandroid/os/Bundle;)Landroidj/support/v4/content/Loader;

    move-result-object v0

    iput-object v0, p0, Landroidj/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroidj/support/v4/content/Loader;

    :cond_42
    iget-object v0, p0, Landroidj/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroidj/support/v4/content/Loader;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroidj/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroidj/support/v4/content/Loader;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isMemberClass()Z

    move-result v0

    if-eqz v0, :cond_7d

    iget-object v0, p0, Landroidj/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroidj/support/v4/content/Loader;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-nez v0, :cond_7d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Object returned from onCreateLoader must not be a non-static inner member class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroidj/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroidj/support/v4/content/Loader;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7d
    iget-boolean v0, p0, Landroidj/support/v4/app/LoaderManagerImpl$LoaderInfo;->mListenerRegistered:Z

    if-nez v0, :cond_8f

    iget-object v0, p0, Landroidj/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroidj/support/v4/content/Loader;

    iget v1, p0, Landroidj/support/v4/app/LoaderManagerImpl$LoaderInfo;->mId:I

    invoke-virtual {v0, v1, p0}, Landroidj/support/v4/content/Loader;->registerListener(ILandroidj/support/v4/content/Loader$OnLoadCompleteListener;)V

    iget-object v0, p0, Landroidj/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroidj/support/v4/content/Loader;

    invoke-virtual {v0, p0}, Landroidj/support/v4/content/Loader;->registerOnLoadCanceledListener(Landroidj/support/v4/content/Loader$OnLoadCanceledListener;)V

    iput-boolean v3, p0, Landroidj/support/v4/app/LoaderManagerImpl$LoaderInfo;->mListenerRegistered:Z

    :cond_8f
    iget-object v0, p0, Landroidj/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroidj/support/v4/content/Loader;

    invoke-virtual {v0}, Landroidj/support/v4/content/Loader;->startLoading()V

    goto/16 :goto_b
.end method

.method stop()V
    .registers 5

    const/4 v3, 0x0

    sget-boolean v0, Landroidj/support/v4/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_1d

    const-string v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Stopping: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    iput-boolean v3, p0, Landroidj/support/v4/app/LoaderManagerImpl$LoaderInfo;->mStarted:Z

    iget-boolean v0, p0, Landroidj/support/v4/app/LoaderManagerImpl$LoaderInfo;->mRetaining:Z

    if-nez v0, :cond_3c

    iget-object v0, p0, Landroidj/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroidj/support/v4/content/Loader;

    if-eqz v0, :cond_3c

    iget-boolean v0, p0, Landroidj/support/v4/app/LoaderManagerImpl$LoaderInfo;->mListenerRegistered:Z

    if-eqz v0, :cond_3c

    iput-boolean v3, p0, Landroidj/support/v4/app/LoaderManagerImpl$LoaderInfo;->mListenerRegistered:Z

    iget-object v0, p0, Landroidj/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroidj/support/v4/content/Loader;

    invoke-virtual {v0, p0}, Landroidj/support/v4/content/Loader;->unregisterListener(Landroidj/support/v4/content/Loader$OnLoadCompleteListener;)V

    iget-object v0, p0, Landroidj/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroidj/support/v4/content/Loader;

    invoke-virtual {v0, p0}, Landroidj/support/v4/content/Loader;->unregisterOnLoadCanceledListener(Landroidj/support/v4/content/Loader$OnLoadCanceledListener;)V

    iget-object v0, p0, Landroidj/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroidj/support/v4/content/Loader;

    invoke-virtual {v0}, Landroidj/support/v4/content/Loader;->stopLoading()V

    :cond_3c
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "LoaderInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidj/support/v4/app/LoaderManagerImpl$LoaderInfo;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidj/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroidj/support/v4/content/Loader;

    invoke-static {v1, v0}, Landroidj/support/v4/util/DebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    const-string v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
