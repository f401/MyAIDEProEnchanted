.class final Landroid/support/v4/media/MediaBrowserServiceCompat$l;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaBrowserServiceCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "l"
.end annotation


# instance fields
.field final DW:Landroid/support/v4/media/MediaBrowserServiceCompat;

.field private final j6:Landroid/support/v4/media/MediaBrowserServiceCompat$i;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaBrowserServiceCompat;)V
    .registers 3

    iput-object p1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$l;->DW:Landroid/support/v4/media/MediaBrowserServiceCompat;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Landroid/support/v4/media/MediaBrowserServiceCompat$i;

    invoke-direct {v0, p1}, Landroid/support/v4/media/MediaBrowserServiceCompat$i;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat;)V

    iput-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$l;->j6:Landroid/support/v4/media/MediaBrowserServiceCompat$i;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    const-string v2, "data_callback_token"

    const-string v3, "data_root_hints"

    const-string v4, "data_result_receiver"

    const-string v5, "data_media_item_id"

    packed-switch v1, :pswitch_data_10c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unhandled message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n  Service version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n  Client version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "MBServiceCompat"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10b

    :pswitch_3c  #0x9
    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$l;->j6:Landroid/support/v4/media/MediaBrowserServiceCompat$i;

    const-string v2, "data_custom_action"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "data_custom_action_extras"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/support/v4/os/ResultReceiver;

    new-instance v4, Landroid/support/v4/media/MediaBrowserServiceCompat$k;

    iget-object p1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-direct {v4, p1}, Landroid/support/v4/media/MediaBrowserServiceCompat$k;-><init>(Landroid/os/Messenger;)V

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/support/v4/media/MediaBrowserServiceCompat$i;->DW(Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v4/os/ResultReceiver;Landroid/support/v4/media/MediaBrowserServiceCompat$j;)V

    goto/16 :goto_10b

    :pswitch_5c  #0x8
    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$l;->j6:Landroid/support/v4/media/MediaBrowserServiceCompat$i;

    const-string v2, "data_search_query"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "data_search_extras"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/support/v4/os/ResultReceiver;

    new-instance v4, Landroid/support/v4/media/MediaBrowserServiceCompat$k;

    iget-object p1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-direct {v4, p1}, Landroid/support/v4/media/MediaBrowserServiceCompat$k;-><init>(Landroid/os/Messenger;)V

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/support/v4/media/MediaBrowserServiceCompat$i;->j6(Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v4/os/ResultReceiver;Landroid/support/v4/media/MediaBrowserServiceCompat$j;)V

    goto/16 :goto_10b

    :pswitch_7c  #0x7
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$l;->j6:Landroid/support/v4/media/MediaBrowserServiceCompat$i;

    new-instance v1, Landroid/support/v4/media/MediaBrowserServiceCompat$k;

    iget-object p1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-direct {v1, p1}, Landroid/support/v4/media/MediaBrowserServiceCompat$k;-><init>(Landroid/os/Messenger;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/media/MediaBrowserServiceCompat$i;->DW(Landroid/support/v4/media/MediaBrowserServiceCompat$j;)V

    goto/16 :goto_10b

    :pswitch_8a  #0x6
    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$l;->j6:Landroid/support/v4/media/MediaBrowserServiceCompat$i;

    new-instance v2, Landroid/support/v4/media/MediaBrowserServiceCompat$k;

    iget-object p1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-direct {v2, p1}, Landroid/support/v4/media/MediaBrowserServiceCompat$k;-><init>(Landroid/os/Messenger;)V

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Landroid/support/v4/media/MediaBrowserServiceCompat$i;->j6(Landroid/support/v4/media/MediaBrowserServiceCompat$j;Landroid/os/Bundle;)V

    goto :goto_10b

    :pswitch_9b  #0x5
    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$l;->j6:Landroid/support/v4/media/MediaBrowserServiceCompat$i;

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/support/v4/os/ResultReceiver;

    new-instance v3, Landroid/support/v4/media/MediaBrowserServiceCompat$k;

    iget-object p1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-direct {v3, p1}, Landroid/support/v4/media/MediaBrowserServiceCompat$k;-><init>(Landroid/os/Messenger;)V

    invoke-virtual {v1, v2, v0, v3}, Landroid/support/v4/media/MediaBrowserServiceCompat$i;->j6(Ljava/lang/String;Landroid/support/v4/os/ResultReceiver;Landroid/support/v4/media/MediaBrowserServiceCompat$j;)V

    goto :goto_10b

    :pswitch_b2  #0x4
    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$l;->j6:Landroid/support/v4/media/MediaBrowserServiceCompat$i;

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2}, Landroid/support/v4/app/i;->j6(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    new-instance v2, Landroid/support/v4/media/MediaBrowserServiceCompat$k;

    iget-object p1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-direct {v2, p1}, Landroid/support/v4/media/MediaBrowserServiceCompat$k;-><init>(Landroid/os/Messenger;)V

    invoke-virtual {v1, v3, v0, v2}, Landroid/support/v4/media/MediaBrowserServiceCompat$i;->j6(Ljava/lang/String;Landroid/os/IBinder;Landroid/support/v4/media/MediaBrowserServiceCompat$j;)V

    goto :goto_10b

    :pswitch_c7  #0x3
    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$l;->j6:Landroid/support/v4/media/MediaBrowserServiceCompat$i;

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2}, Landroid/support/v4/app/i;->j6(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    const-string v4, "data_options"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    new-instance v4, Landroid/support/v4/media/MediaBrowserServiceCompat$k;

    iget-object p1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-direct {v4, p1}, Landroid/support/v4/media/MediaBrowserServiceCompat$k;-><init>(Landroid/os/Messenger;)V

    invoke-virtual {v1, v3, v2, v0, v4}, Landroid/support/v4/media/MediaBrowserServiceCompat$i;->j6(Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;Landroid/support/v4/media/MediaBrowserServiceCompat$j;)V

    goto :goto_10b

    :pswitch_e2  #0x2
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$l;->j6:Landroid/support/v4/media/MediaBrowserServiceCompat$i;

    new-instance v1, Landroid/support/v4/media/MediaBrowserServiceCompat$k;

    iget-object p1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-direct {v1, p1}, Landroid/support/v4/media/MediaBrowserServiceCompat$k;-><init>(Landroid/os/Messenger;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/media/MediaBrowserServiceCompat$i;->j6(Landroid/support/v4/media/MediaBrowserServiceCompat$j;)V

    goto :goto_10b

    :pswitch_ef  #0x1
    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$l;->j6:Landroid/support/v4/media/MediaBrowserServiceCompat$i;

    const-string v2, "data_package_name"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "data_calling_uid"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    new-instance v3, Landroid/support/v4/media/MediaBrowserServiceCompat$k;

    iget-object p1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-direct {v3, p1}, Landroid/support/v4/media/MediaBrowserServiceCompat$k;-><init>(Landroid/os/Messenger;)V

    invoke-virtual {v1, v2, v4, v0, v3}, Landroid/support/v4/media/MediaBrowserServiceCompat$i;->j6(Ljava/lang/String;ILandroid/os/Bundle;Landroid/support/v4/media/MediaBrowserServiceCompat$j;)V

    :goto_10b
    return-void

    :pswitch_data_10c
    .packed-switch 0x1
        :pswitch_ef  #00000001
        :pswitch_e2  #00000002
        :pswitch_c7  #00000003
        :pswitch_b2  #00000004
        :pswitch_9b  #00000005
        :pswitch_8a  #00000006
        :pswitch_7c  #00000007
        :pswitch_5c  #00000008
        :pswitch_3c  #00000009
    .end packed-switch
.end method

.method public j6(Ljava/lang/Runnable;)V
    .registers 4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_12

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_15

    :cond_12
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_15
    return-void
.end method

.method public sendMessageAtTime(Landroid/os/Message;J)Z
    .registers 7

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-class v1, Landroid/support/v4/media/MediaBrowserCompat;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v1, "data_calling_uid"

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-super {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    move-result p1

    return p1
.end method
