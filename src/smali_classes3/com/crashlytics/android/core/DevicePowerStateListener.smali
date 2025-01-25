.class Lcom/crashlytics/android/core/DevicePowerStateListener;
.super Ljava/lang/Object;


# static fields
.field private static final DW:Landroid/content/IntentFilter;

.field private static final FH:Landroid/content/IntentFilter;

.field private static final j6:Landroid/content/IntentFilter;


# instance fields
.field private final Hw:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final VH:Landroid/content/BroadcastReceiver;

.field private final Zo:Landroid/content/BroadcastReceiver;

.field private gn:Z

.field private final v5:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/crashlytics/android/core/DevicePowerStateListener;->j6:Landroid/content/IntentFilter;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/crashlytics/android/core/DevicePowerStateListener;->DW:Landroid/content/IntentFilter;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/crashlytics/android/core/DevicePowerStateListener;->FH:Landroid/content/IntentFilter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/crashlytics/android/core/DevicePowerStateListener;->v5:Landroid/content/Context;

    new-instance p1, Lcom/crashlytics/android/core/oa;

    invoke-direct {p1, p0}, Lcom/crashlytics/android/core/oa;-><init>(Lcom/crashlytics/android/core/DevicePowerStateListener;)V

    iput-object p1, p0, Lcom/crashlytics/android/core/DevicePowerStateListener;->VH:Landroid/content/BroadcastReceiver;

    new-instance p1, Lcom/crashlytics/android/core/pa;

    invoke-direct {p1, p0}, Lcom/crashlytics/android/core/pa;-><init>(Lcom/crashlytics/android/core/DevicePowerStateListener;)V

    iput-object p1, p0, Lcom/crashlytics/android/core/DevicePowerStateListener;->Zo:Landroid/content/BroadcastReceiver;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/crashlytics/android/core/DevicePowerStateListener;->Hw:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method static synthetic j6(Lcom/crashlytics/android/core/DevicePowerStateListener;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/crashlytics/android/core/DevicePowerStateListener;->gn:Z

    return p1
.end method


# virtual methods
.method public DW()V
    .registers 5

    iget-object v0, p0, Lcom/crashlytics/android/core/DevicePowerStateListener;->Hw:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_a

    return-void

    :cond_a
    iget-object v0, p0, Lcom/crashlytics/android/core/DevicePowerStateListener;->v5:Landroid/content/Context;

    const/4 v2, 0x0

    sget-object v3, Lcom/crashlytics/android/core/DevicePowerStateListener;->j6:Landroid/content/IntentFilter;

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    const/4 v2, -0x1

    if-eqz v0, :cond_1c

    const-string v3, "status"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    :cond_1c
    const/4 v0, 0x2

    if-eq v2, v0, :cond_24

    const/4 v0, 0x5

    if-ne v2, v0, :cond_23

    goto :goto_24

    :cond_23
    const/4 v1, 0x0

    :cond_24
    :goto_24
    iput-boolean v1, p0, Lcom/crashlytics/android/core/DevicePowerStateListener;->gn:Z

    iget-object v0, p0, Lcom/crashlytics/android/core/DevicePowerStateListener;->v5:Landroid/content/Context;

    iget-object v1, p0, Lcom/crashlytics/android/core/DevicePowerStateListener;->VH:Landroid/content/BroadcastReceiver;

    sget-object v2, Lcom/crashlytics/android/core/DevicePowerStateListener;->DW:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/crashlytics/android/core/DevicePowerStateListener;->v5:Landroid/content/Context;

    iget-object v1, p0, Lcom/crashlytics/android/core/DevicePowerStateListener;->Zo:Landroid/content/BroadcastReceiver;

    sget-object v2, Lcom/crashlytics/android/core/DevicePowerStateListener;->FH:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public FH()Z
    .registers 2

    iget-boolean v0, p0, Lcom/crashlytics/android/core/DevicePowerStateListener;->gn:Z

    return v0
.end method

.method public j6()V
    .registers 3

    iget-object v0, p0, Lcom/crashlytics/android/core/DevicePowerStateListener;->Hw:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_a

    return-void

    :cond_a
    iget-object v0, p0, Lcom/crashlytics/android/core/DevicePowerStateListener;->v5:Landroid/content/Context;

    iget-object v1, p0, Lcom/crashlytics/android/core/DevicePowerStateListener;->VH:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/crashlytics/android/core/DevicePowerStateListener;->v5:Landroid/content/Context;

    iget-object v1, p0, Lcom/crashlytics/android/core/DevicePowerStateListener;->Zo:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
