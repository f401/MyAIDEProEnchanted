.class public Lcom/google/android/gms/common/stats/a;
.super Ljava/lang/Object;


# static fields
.field private static volatile DW:Lcom/google/android/gms/common/stats/a;

.field private static FH:Z

.field private static final j6:Ljava/lang/Object;


# instance fields
.field private final Hw:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final VH:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final Zo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final v5:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/stats/a;->j6:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/gms/common/stats/a;->FH:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/gms/common/stats/a;->Hw:Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/gms/common/stats/a;->v5:Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/gms/common/stats/a;->Zo:Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/gms/common/stats/a;->VH:Ljava/util/List;

    return-void
.end method

.method public static j6()Lcom/google/android/gms/common/stats/a;
    .registers 2

    sget-object v0, Lcom/google/android/gms/common/stats/a;->DW:Lcom/google/android/gms/common/stats/a;

    if-nez v0, :cond_17

    sget-object v0, Lcom/google/android/gms/common/stats/a;->j6:Ljava/lang/Object;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/google/android/gms/common/stats/a;->DW:Lcom/google/android/gms/common/stats/a;

    if-nez v1, :cond_12

    new-instance v1, Lcom/google/android/gms/common/stats/a;

    invoke-direct {v1}, Lcom/google/android/gms/common/stats/a;-><init>()V

    sput-object v1, Lcom/google/android/gms/common/stats/a;->DW:Lcom/google/android/gms/common/stats/a;

    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    :cond_17
    :goto_17
    sget-object v0, Lcom/google/android/gms/common/stats/a;->DW:Lcom/google/android/gms/common/stats/a;

    return-object v0
.end method


# virtual methods
.method public j6(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    .registers 3

    invoke-virtual {p1, p2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method

.method public j6(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    .registers 12

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/common/stats/a;->j6(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    return p1
.end method

.method public final j6(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    .registers 7

    invoke-virtual {p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p2

    const/4 v0, 0x0

    if-nez p2, :cond_9

    const/4 p2, 0x0

    goto :goto_11

    :cond_9
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/google/android/gms/common/util/d;->DW(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p2

    :goto_11
    if-eqz p2, :cond_1b

    const-string p1, "ConnectionTracker"

    const-string p2, "Attempted to bind to a service in a STOPPED package."

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1b
    invoke-virtual {p1, p3, p4, p5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    return p1
.end method
