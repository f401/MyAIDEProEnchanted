.class final Lcom/google/android/gms/common/internal/H;
.super Lcom/google/android/gms/common/internal/i;

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field private final FH:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/google/android/gms/common/internal/i$a;",
            "Lcom/google/android/gms/common/internal/I;",
            ">;"
        }
    .end annotation
.end field

.field private final Hw:Landroid/content/Context;

.field private final VH:J

.field private final Zo:Lcom/google/android/gms/common/stats/a;

.field private final gn:J

.field private final v5:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/i;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/H;->FH:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/internal/H;->Hw:Landroid/content/Context;

    new-instance v0, Labcd/Fx;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Labcd/Fx;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/H;->v5:Landroid/os/Handler;

    invoke-static {}, Lcom/google/android/gms/common/stats/a;->j6()Lcom/google/android/gms/common/stats/a;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/common/internal/H;->Zo:Lcom/google/android/gms/common/stats/a;

    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lcom/google/android/gms/common/internal/H;->VH:J

    const-wide/32 v0, 0x493e0

    iput-wide v0, p0, Lcom/google/android/gms/common/internal/H;->gn:J

    return-void
.end method

.method static synthetic DW(Lcom/google/android/gms/common/internal/H;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/common/internal/H;->v5:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic FH(Lcom/google/android/gms/common/internal/H;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/common/internal/H;->Hw:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic Hw(Lcom/google/android/gms/common/internal/H;)Lcom/google/android/gms/common/stats/a;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/common/internal/H;->Zo:Lcom/google/android/gms/common/stats/a;

    return-object p0
.end method

.method static synthetic j6(Lcom/google/android/gms/common/internal/H;)Ljava/util/HashMap;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/common/internal/H;->FH:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic v5(Lcom/google/android/gms/common/internal/H;)J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/common/internal/H;->gn:J

    return-wide v0
.end method


# virtual methods
.method protected final DW(Lcom/google/android/gms/common/internal/i$a;Landroid/content/ServiceConnection;Ljava/lang/String;)V
    .registers 7

    const-string v0, "ServiceConnection must not be null"

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/common/internal/H;->FH:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_8
    iget-object v1, p0, Lcom/google/android/gms/common/internal/H;->FH:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/internal/I;

    if-eqz v1, :cond_56

    invoke-virtual {v1, p2}, Lcom/google/android/gms/common/internal/I;->j6(Landroid/content/ServiceConnection;)Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-virtual {v1, p2, p3}, Lcom/google/android/gms/common/internal/I;->DW(Landroid/content/ServiceConnection;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/I;->v5()Z

    move-result p2

    if-eqz p2, :cond_2f

    iget-object p2, p0, Lcom/google/android/gms/common/internal/H;->v5:Landroid/os/Handler;

    const/4 p3, 0x0

    invoke-virtual {p2, p3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/common/internal/H;->v5:Landroid/os/Handler;

    iget-wide v1, p0, Lcom/google/android/gms/common/internal/H;->VH:J

    invoke-virtual {p2, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_2f
    monitor-exit v0

    return-void

    :cond_31
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 p3, p3, 0x4c

    invoke-direct {v1, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p3, "Trying to unbind a GmsServiceConnection  that was not bound before.  config="

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_56
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 p3, p3, 0x32

    invoke-direct {v1, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p3, "Nonexistent connection status for service config: "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :catchall_7b
    move-exception p1

    monitor-exit v0
    :try_end_7d
    .catchall {:try_start_8 .. :try_end_7d} :catchall_7b

    throw p1
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .registers 8

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eqz v0, :cond_69

    if-eq v0, v1, :cond_9

    const/4 p1, 0x0

    return p1

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/common/internal/H;->FH:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_c
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/common/internal/i$a;

    iget-object v2, p0, Lcom/google/android/gms/common/internal/H;->FH:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/internal/I;

    if-eqz v2, :cond_64

    invoke-virtual {v2}, Lcom/google/android/gms/common/internal/I;->FH()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_64

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x2f

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Timeout waiting for ServiceConnection callback "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/Exception;

    invoke-direct {v4}, Ljava/lang/Exception;-><init>()V

    const-string v5, "GmsClientSupervisor"

    invoke-static {v5, v3, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v2}, Lcom/google/android/gms/common/internal/I;->DW()Landroid/content/ComponentName;

    move-result-object v3

    if-nez v3, :cond_54

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/i$a;->j6()Landroid/content/ComponentName;

    move-result-object v3

    :cond_54
    if-nez v3, :cond_61

    new-instance v3, Landroid/content/ComponentName;

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/i$a;->DW()Ljava/lang/String;

    move-result-object p1

    const-string v4, "unknown"

    invoke-direct {v3, p1, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_61
    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/internal/I;->onServiceDisconnected(Landroid/content/ComponentName;)V

    :cond_64
    monitor-exit v0

    return v1

    :catchall_66
    move-exception p1

    monitor-exit v0
    :try_end_68
    .catchall {:try_start_c .. :try_end_68} :catchall_66

    throw p1

    :cond_69
    iget-object v0, p0, Lcom/google/android/gms/common/internal/H;->FH:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_6c
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/common/internal/i$a;

    iget-object v2, p0, Lcom/google/android/gms/common/internal/H;->FH:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/internal/I;

    if-eqz v2, :cond_90

    invoke-virtual {v2}, Lcom/google/android/gms/common/internal/I;->v5()Z

    move-result v3

    if-eqz v3, :cond_90

    invoke-virtual {v2}, Lcom/google/android/gms/common/internal/I;->Hw()Z

    move-result v3

    if-eqz v3, :cond_8b

    const-string v3, "GmsClientSupervisor"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/internal/I;->DW(Ljava/lang/String;)V

    :cond_8b
    iget-object v2, p0, Lcom/google/android/gms/common/internal/H;->FH:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_90
    monitor-exit v0

    return v1

    :catchall_92
    move-exception p1

    monitor-exit v0
    :try_end_94
    .catchall {:try_start_6c .. :try_end_94} :catchall_92

    throw p1
.end method

.method protected final j6(Lcom/google/android/gms/common/internal/i$a;Landroid/content/ServiceConnection;Ljava/lang/String;)Z
    .registers 8

    const-string v0, "ServiceConnection must not be null"

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/common/internal/H;->FH:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_8
    iget-object v1, p0, Lcom/google/android/gms/common/internal/H;->FH:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/internal/I;

    if-nez v1, :cond_23

    new-instance v1, Lcom/google/android/gms/common/internal/I;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/common/internal/I;-><init>(Lcom/google/android/gms/common/internal/H;Lcom/google/android/gms/common/internal/i$a;)V

    invoke-virtual {v1, p2, p3}, Lcom/google/android/gms/common/internal/I;->j6(Landroid/content/ServiceConnection;Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Lcom/google/android/gms/common/internal/I;->j6(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/google/android/gms/common/internal/H;->FH:Ljava/util/HashMap;

    invoke-virtual {p2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4c

    :cond_23
    iget-object v2, p0, Lcom/google/android/gms/common/internal/H;->v5:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    invoke-virtual {v1, p2}, Lcom/google/android/gms/common/internal/I;->j6(Landroid/content/ServiceConnection;)Z

    move-result v2

    if-nez v2, :cond_52

    invoke-virtual {v1, p2, p3}, Lcom/google/android/gms/common/internal/I;->j6(Landroid/content/ServiceConnection;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/I;->FH()I

    move-result p1

    const/4 v2, 0x1

    if-eq p1, v2, :cond_41

    const/4 p2, 0x2

    if-eq p1, p2, :cond_3d

    goto :goto_4c

    :cond_3d
    invoke-virtual {v1, p3}, Lcom/google/android/gms/common/internal/I;->j6(Ljava/lang/String;)V

    goto :goto_4c

    :cond_41
    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/I;->DW()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/I;->j6()Landroid/os/IBinder;

    move-result-object p3

    invoke-interface {p2, p1, p3}, Landroid/content/ServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    :goto_4c
    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/I;->Hw()Z

    move-result p1

    monitor-exit v0

    return p1

    :cond_52
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 p3, p3, 0x51

    invoke-direct {v1, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p3, "Trying to bind a GmsServiceConnection that was already connected before.  config="

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :catchall_77
    move-exception p1

    monitor-exit v0
    :try_end_79
    .catchall {:try_start_8 .. :try_end_79} :catchall_77

    throw p1
.end method
