.class public final Lcom/google/firebase/iid/E;
.super Landroid/os/Binder;


# instance fields
.field private final j6:Lcom/google/firebase/iid/zzb;


# direct methods
.method constructor <init>(Lcom/google/firebase/iid/zzb;)V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/iid/E;->j6:Lcom/google/firebase/iid/zzb;

    return-void
.end method

.method static synthetic j6(Lcom/google/firebase/iid/E;)Lcom/google/firebase/iid/zzb;
    .registers 1

    iget-object p0, p0, Lcom/google/firebase/iid/E;->j6:Lcom/google/firebase/iid/zzb;

    return-object p0
.end method


# virtual methods
.method public final j6(Lcom/google/firebase/iid/C;)V
    .registers 6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-ne v0, v1, :cond_3e

    const-string v0, "EnhancedIntentService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_18

    const-string v2, "service received new intent via bind strategy"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    iget-object v2, p0, Lcom/google/firebase/iid/E;->j6:Lcom/google/firebase/iid/zzb;

    iget-object v3, p1, Lcom/google/firebase/iid/C;->j6:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Lcom/google/firebase/iid/zzb;->DW(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-virtual {p1}, Lcom/google/firebase/iid/C;->j6()V

    return-void

    :cond_26
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_31

    const-string v1, "intent being queued for bg execution"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_31
    iget-object v0, p0, Lcom/google/firebase/iid/E;->j6:Lcom/google/firebase/iid/zzb;

    iget-object v0, v0, Lcom/google/firebase/iid/zzb;->j6:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/firebase/iid/F;

    invoke-direct {v1, p0, p1}, Lcom/google/firebase/iid/F;-><init>(Lcom/google/firebase/iid/E;Lcom/google/firebase/iid/C;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_3e
    new-instance p1, Ljava/lang/SecurityException;

    const-string v0, "Binding only allowed within app"

    invoke-direct {p1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
