.class final Lorg/xutils/common/task/TaskProxy$InternalHandler;
.super Landroid/os/Handler;
.source "TaskProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xutils/common/task/TaskProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "InternalHandler"
.end annotation


# static fields
.field static final $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 173
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 176
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 177
    return-void
.end method

.method private constructor <init>(Landroid/os/Looper;)V
    .registers 2

    .line 180
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 181
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Looper;Lorg/xutils/common/task/TaskProxy$1;)V
    .registers 3

    .line 173
    invoke-direct {p0, p1}, Lorg/xutils/common/task/TaskProxy$InternalHandler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/xutils/common/task/TaskProxy$1;)V
    .registers 2

    .line 173
    invoke-direct {p0}, Lorg/xutils/common/task/TaskProxy$InternalHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7

    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 186
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_ba

    .line 191
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lorg/xutils/common/task/TaskProxy;

    if-eqz v0, :cond_1a

    .line 192
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/xutils/common/task/TaskProxy;

    move-object v1, v2

    move-object v3, v0

    .line 198
    :goto_12
    if-eqz v3, :cond_b2

    .line 203
    :try_start_14
    iget v0, p1, Landroid/os/Message;->what:I
    :try_end_16
    .catchall {:try_start_14 .. :try_end_16} :catchall_3d

    packed-switch v0, :pswitch_data_c6

    .line 252
    :cond_19
    :goto_19
    return-void

    .line 193
    :cond_1a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lorg/xutils/common/task/TaskProxy$ArgsObj;

    if-eqz v0, :cond_c2

    .line 194
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/xutils/common/task/TaskProxy$ArgsObj;

    .line 195
    iget-object v2, v0, Lorg/xutils/common/task/TaskProxy$ArgsObj;->taskProxy:Lorg/xutils/common/task/TaskProxy;

    .line 196
    iget-object v0, v0, Lorg/xutils/common/task/TaskProxy$ArgsObj;->args:[Ljava/lang/Object;

    move-object v1, v0

    move-object v3, v2

    goto :goto_12

    .line 235
    :pswitch_2b  #0x3b9aca07
    :try_start_2b
    invoke-static {v3}, Lorg/xutils/common/task/TaskProxy;->access$400(Lorg/xutils/common/task/TaskProxy;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 236
    const/4 v0, 0x1

    invoke-static {v3, v0}, Lorg/xutils/common/task/TaskProxy;->access$402(Lorg/xutils/common/task/TaskProxy;Z)Z

    .line 237
    invoke-static {v3}, Lorg/xutils/common/task/TaskProxy;->access$300(Lorg/xutils/common/task/TaskProxy;)Lorg/xutils/common/task/AbsTask;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xutils/common/task/AbsTask;->onFinished()V
    :try_end_3c
    .catchall {:try_start_2b .. :try_end_3c} :catchall_3d

    goto :goto_19

    .line 244
    :catchall_3d
    move-exception v0

    .line 245
    sget-object v1, Lorg/xutils/common/task/AbsTask$State;->ERROR:Lorg/xutils/common/task/AbsTask$State;

    invoke-virtual {v3, v1}, Lorg/xutils/common/task/TaskProxy;->setState(Lorg/xutils/common/task/AbsTask$State;)V

    .line 246
    iget v1, p1, Landroid/os/Message;->what:I

    const v2, 0x3b9aca04

    if-eq v1, v2, :cond_a6

    .line 247
    invoke-static {v3}, Lorg/xutils/common/task/TaskProxy;->access$300(Lorg/xutils/common/task/TaskProxy;)Lorg/xutils/common/task/AbsTask;

    move-result-object v1

    invoke-virtual {v1, v0, v4}, Lorg/xutils/common/task/AbsTask;->onError(Ljava/lang/Throwable;Z)V

    goto :goto_19

    .line 228
    :pswitch_52  #0x3b9aca06
    :try_start_52
    invoke-static {v3}, Lorg/xutils/common/task/TaskProxy;->access$200(Lorg/xutils/common/task/TaskProxy;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 229
    const/4 v0, 0x1

    invoke-static {v3, v0}, Lorg/xutils/common/task/TaskProxy;->access$202(Lorg/xutils/common/task/TaskProxy;Z)Z

    .line 230
    invoke-static {v3}, Lorg/xutils/common/task/TaskProxy;->access$300(Lorg/xutils/common/task/TaskProxy;)Lorg/xutils/common/task/AbsTask;

    move-result-object v2

    const/4 v0, 0x0

    aget-object v0, v1, v0

    check-cast v0, Lorg/xutils/common/Callback$CancelledException;

    invoke-virtual {v2, v0}, Lorg/xutils/common/task/AbsTask;->onCancelled(Lorg/xutils/common/Callback$CancelledException;)V

    goto :goto_19

    .line 224
    :pswitch_69  #0x3b9aca05
    invoke-static {v3}, Lorg/xutils/common/task/TaskProxy;->access$300(Lorg/xutils/common/task/TaskProxy;)Lorg/xutils/common/task/AbsTask;

    move-result-object v0

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v2, v1}, Lorg/xutils/common/task/AbsTask;->onUpdate(I[Ljava/lang/Object;)V

    goto :goto_19

    .line 217
    :pswitch_73  #0x3b9aca04
    const/4 v0, 0x0

    aget-object v0, v1, v0

    check-cast v0, Ljava/lang/Throwable;

    .line 219
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/xutils/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 220
    invoke-static {v3}, Lorg/xutils/common/task/TaskProxy;->access$300(Lorg/xutils/common/task/TaskProxy;)Lorg/xutils/common/task/AbsTask;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/xutils/common/task/AbsTask;->onError(Ljava/lang/Throwable;Z)V

    goto :goto_19

    .line 213
    :pswitch_88  #0x3b9aca03
    invoke-static {v3}, Lorg/xutils/common/task/TaskProxy;->access$300(Lorg/xutils/common/task/TaskProxy;)Lorg/xutils/common/task/AbsTask;

    move-result-object v0

    invoke-virtual {v3}, Lorg/xutils/common/task/TaskProxy;->getResult()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/xutils/common/task/AbsTask;->onSuccess(Ljava/lang/Object;)V

    goto :goto_19

    .line 209
    :pswitch_94  #0x3b9aca02
    invoke-static {v3}, Lorg/xutils/common/task/TaskProxy;->access$300(Lorg/xutils/common/task/TaskProxy;)Lorg/xutils/common/task/AbsTask;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xutils/common/task/AbsTask;->onStarted()V

    goto/16 :goto_19

    .line 205
    :pswitch_9d  #0x3b9aca01
    invoke-static {v3}, Lorg/xutils/common/task/TaskProxy;->access$300(Lorg/xutils/common/task/TaskProxy;)Lorg/xutils/common/task/AbsTask;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xutils/common/task/AbsTask;->onWaiting()V
    :try_end_a4
    .catchall {:try_start_52 .. :try_end_a4} :catchall_3d

    goto/16 :goto_19

    .line 248
    :cond_a6
    invoke-static {}, Lorg/xutils/x;->isDebug()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 249
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 199
    :cond_b2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "msg.obj not instanceof TaskProxy"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 187
    :cond_ba
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "msg must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c2
    move-object v1, v2

    move-object v3, v2

    goto/16 :goto_12

    .line 203
    :pswitch_data_c6
    .packed-switch 0x3b9aca01
        :pswitch_9d  #3b9aca01
        :pswitch_94  #3b9aca02
        :pswitch_88  #3b9aca03
        :pswitch_73  #3b9aca04
        :pswitch_69  #3b9aca05
        :pswitch_52  #3b9aca06
        :pswitch_2b  #3b9aca07
    .end packed-switch
.end method
