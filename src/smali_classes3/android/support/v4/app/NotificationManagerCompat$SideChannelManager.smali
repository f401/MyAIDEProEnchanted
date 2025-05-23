.class Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/NotificationManagerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SideChannelManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$a;
    }
.end annotation


# instance fields
.field private final DW:Landroid/os/HandlerThread;

.field private final FH:Landroid/os/Handler;

.field private final Hw:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/content/ComponentName;",
            "Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$a;",
            ">;"
        }
    .end annotation
.end field

.field private final j6:Landroid/content/Context;

.field private v5:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->Hw:Ljava/util/Map;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->v5:Ljava/util/Set;

    iput-object p1, p0, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->j6:Landroid/content/Context;

    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "NotificationManagerCompat"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->DW:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->FH:Landroid/os/Handler;

    return-void
.end method

.method private DW(Landroid/content/ComponentName;)V
    .registers 3

    iget-object v0, p0, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->Hw:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$a;

    if-eqz p1, :cond_d

    invoke-direct {p0, p1}, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->DW(Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$a;)V

    :cond_d
    return-void
.end method

.method private DW(Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$a;)V
    .registers 3

    iget-boolean v0, p1, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$a;->DW:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->j6:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$a;->DW:Z

    :cond_c
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$a;->FH:Landroid/support/v4/app/S;

    return-void
.end method

.method private FH(Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$a;)V
    .registers 7

    const-string v0, "NotifManCompat"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_32

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Processing component "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$a;->j6:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$a;->Hw:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " queued tasks"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_32
    iget-object v2, p1, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$a;->Hw:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3b

    return-void

    :cond_3b
    invoke-direct {p0, p1}, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->j6(Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$a;)Z

    move-result v2

    if-eqz v2, :cond_b7

    iget-object v2, p1, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$a;->FH:Landroid/support/v4/app/S;

    if-nez v2, :cond_46

    goto :goto_b7

    :cond_46
    :goto_46
    iget-object v2, p1, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$a;->Hw:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/NotificationManagerCompat$b;

    if-nez v2, :cond_51

    goto :goto_ab

    :cond_51
    :try_start_51
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_6b

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sending task "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6b
    iget-object v3, p1, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$a;->FH:Landroid/support/v4/app/S;

    invoke-interface {v2, v3}, Landroid/support/v4/app/NotificationManagerCompat$b;->j6(Landroid/support/v4/app/S;)V

    iget-object v2, p1, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$a;->Hw:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;
    :try_end_75
    .catch Landroid/os/DeadObjectException; {:try_start_51 .. :try_end_75} :catch_8e
    .catch Landroid/os/RemoteException; {:try_start_51 .. :try_end_75} :catch_76

    goto :goto_46

    :catch_76
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException communicating with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$a;->j6:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_ab

    :catch_8e
    move-exception v2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_ab

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remote service has died: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$a;->j6:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ab
    :goto_ab
    iget-object v0, p1, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$a;->Hw:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b6

    invoke-direct {p0, p1}, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->Hw(Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$a;)V

    :cond_b6
    return-void

    :cond_b7
    :goto_b7
    invoke-direct {p0, p1}, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->Hw(Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$a;)V

    return-void
.end method

.method private Hw(Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$a;)V
    .registers 7

    iget-object v0, p0, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->FH:Landroid/os/Handler;

    iget-object v1, p1, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$a;->j6:Landroid/content/ComponentName;

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    return-void

    :cond_c
    iget v0, p1, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$a;->v5:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$a;->v5:I

    iget v0, p1, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$a;->v5:I

    const/4 v3, 0x6

    const-string v4, "NotifManCompat"

    if-le v0, v3, :cond_52

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Giving up on delivering "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$a;->Hw:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " tasks to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$a;->j6:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " after "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$a;->v5:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " retries"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p1, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$a;->Hw:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->clear()V

    return-void

    :cond_52
    sub-int/2addr v0, v1

    shl-int v0, v1, v0

    mul-int/lit16 v0, v0, 0x3e8

    invoke-static {v4, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_76

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Scheduling retry for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " ms"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_76
    iget-object v1, p0, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->FH:Landroid/os/Handler;

    iget-object p1, p1, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$a;->j6:Landroid/content/ComponentName;

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object v1, p0, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->FH:Landroid/os/Handler;

    int-to-long v2, v0

    invoke-virtual {v1, p1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private j6()V
    .registers 9

    iget-object v0, p0, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->j6:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/app/NotificationManagerCompat;->j6(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->v5:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    return-void

    :cond_f
    iput-object v0, p0, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->v5:Ljava/util/Set;

    iget-object v1, p0, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->j6:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "android.support.BIND_NOTIFICATION_SIDE_CHANNEL"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_30
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, "NotifManCompat"

    if-eqz v3, :cond_7a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_49

    goto :goto_30

    :cond_49
    new-instance v5, Landroid/content/ComponentName;

    iget-object v6, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v7, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    if-eqz v3, :cond_76

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Permission present on component "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", not adding listener record."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_30

    :cond_76
    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_30

    :cond_7a
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7e
    :goto_7e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v3, 0x3

    if-eqz v1, :cond_b8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    iget-object v5, p0, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->Hw:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7e

    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_ad

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Adding listener record for "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ad
    iget-object v3, p0, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->Hw:Ljava/util/Map;

    new-instance v5, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$a;

    invoke-direct {v5, v1}, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$a;-><init>(Landroid/content/ComponentName;)V

    invoke-interface {v3, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7e

    :cond_b8
    iget-object v0, p0, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->Hw:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_c2
    :goto_c2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_103

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c2

    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_f6

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Removing listener record for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f6
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$a;

    invoke-direct {p0, v1}, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->DW(Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$a;)V

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_c2

    :cond_103
    return-void
.end method

.method private j6(Landroid/content/ComponentName;)V
    .registers 3

    iget-object v0, p0, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->Hw:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$a;

    if-eqz p1, :cond_d

    invoke-direct {p0, p1}, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->FH(Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$a;)V

    :cond_d
    return-void
.end method

.method private j6(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 4

    iget-object v0, p0, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->Hw:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$a;

    if-eqz p1, :cond_16

    invoke-static {p2}, Landroid/support/v4/app/S$a;->j6(Landroid/os/IBinder;)Landroid/support/v4/app/S;

    move-result-object p2

    iput-object p2, p1, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$a;->FH:Landroid/support/v4/app/S;

    const/4 p2, 0x0

    iput p2, p1, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$a;->v5:I

    invoke-direct {p0, p1}, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->FH(Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$a;)V

    :cond_16
    return-void
.end method

.method private j6(Landroid/support/v4/app/NotificationManagerCompat$b;)V
    .registers 5

    invoke-direct {p0}, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->j6()V

    iget-object v0, p0, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->Hw:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$a;

    iget-object v2, v1, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$a;->Hw:Ljava/util/LinkedList;

    invoke-virtual {v2, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v1}, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->FH(Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$a;)V

    goto :goto_d

    :cond_22
    return-void
.end method

.method private j6(Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$a;)Z
    .registers 5

    iget-boolean v0, p1, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$a;->DW:Z

    if-eqz v0, :cond_6

    const/4 p1, 0x1

    return p1

    :cond_6
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.support.BIND_NOTIFICATION_SIDE_CHANNEL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$a;->j6:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->j6:Landroid/content/Context;

    const/16 v2, 0x21

    invoke-virtual {v1, v0, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    iput-boolean v0, p1, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$a;->DW:Z

    iget-boolean v0, p1, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$a;->DW:Z

    if-eqz v0, :cond_25

    const/4 v0, 0x0

    iput v0, p1, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$a;->v5:I

    goto :goto_42

    :cond_25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to bind to listener "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$a;->j6:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "NotifManCompat"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->j6:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :goto_42
    iget-boolean p1, p1, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$a;->DW:Z

    return p1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 5

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eqz v0, :cond_2b

    if-eq v0, v1, :cond_1f

    const/4 v2, 0x2

    if-eq v0, v2, :cond_17

    const/4 v2, 0x3

    if-eq v0, v2, :cond_f

    const/4 p1, 0x0

    return p1

    :cond_f
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/content/ComponentName;

    invoke-direct {p0, p1}, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->j6(Landroid/content/ComponentName;)V

    return v1

    :cond_17
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/content/ComponentName;

    invoke-direct {p0, p1}, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->DW(Landroid/content/ComponentName;)V

    return v1

    :cond_1f
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/support/v4/app/NotificationManagerCompat$a;

    iget-object v0, p1, Landroid/support/v4/app/NotificationManagerCompat$a;->j6:Landroid/content/ComponentName;

    iget-object p1, p1, Landroid/support/v4/app/NotificationManagerCompat$a;->DW:Landroid/os/IBinder;

    invoke-direct {p0, v0, p1}, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->j6(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    return v1

    :cond_2b
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/support/v4/app/NotificationManagerCompat$b;

    invoke-direct {p0, p1}, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->j6(Landroid/support/v4/app/NotificationManagerCompat$b;)V

    return v1
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6

    const/4 v0, 0x3

    const-string v1, "NotifManCompat"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connected to service "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    iget-object v0, p0, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->FH:Landroid/os/Handler;

    new-instance v1, Landroid/support/v4/app/NotificationManagerCompat$a;

    invoke-direct {v1, p1, p2}, Landroid/support/v4/app/NotificationManagerCompat$a;-><init>(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5

    const/4 v0, 0x3

    const-string v1, "NotifManCompat"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Disconnected from service "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    iget-object v0, p0, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->FH:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
