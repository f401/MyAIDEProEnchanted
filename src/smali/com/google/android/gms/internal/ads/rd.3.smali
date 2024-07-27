.class public final Lcom/google/android/gms/internal/ads/rd;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# instance fields
.field private final DW:Landroid/content/Context;

.field private final FH:Ljava/lang/String;

.field private final Hw:Lcom/google/android/gms/internal/ads/zzbbi;

.field private VH:Lcom/google/android/gms/internal/ads/Ld;

.field private Zo:Lcom/google/android/gms/internal/ads/sl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/sl",
            "<",
            "Lcom/google/android/gms/internal/ads/gd;",
            ">;"
        }
    .end annotation
.end field

.field private gn:I

.field private final j6:Ljava/lang/Object;

.field private v5:Lcom/google/android/gms/internal/ads/sl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/sl",
            "<",
            "Lcom/google/android/gms/internal/ads/gd;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbbi;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/rd;->j6:Ljava/lang/Object;

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/rd;->gn:I

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/rd;->FH:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/rd;->DW:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/rd;->Hw:Lcom/google/android/gms/internal/ads/zzbbi;

    new-instance v0, Lcom/google/android/gms/internal/ads/Gd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/Gd;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/rd;->v5:Lcom/google/android/gms/internal/ads/sl;

    new-instance v0, Lcom/google/android/gms/internal/ads/Gd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/Gd;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/rd;->Zo:Lcom/google/android/gms/internal/ads/sl;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbbi;Ljava/lang/String;Lcom/google/android/gms/internal/ads/sl;Lcom/google/android/gms/internal/ads/sl;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/internal/ads/zzbbi;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/sl",
            "<",
            "Lcom/google/android/gms/internal/ads/gd;",
            ">;",
            "Lcom/google/android/gms/internal/ads/sl",
            "<",
            "Lcom/google/android/gms/internal/ads/gd;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/rd;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbbi;Ljava/lang/String;)V

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/rd;->v5:Lcom/google/android/gms/internal/ads/sl;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/rd;->Zo:Lcom/google/android/gms/internal/ads/sl;

    return-void
.end method

.method static synthetic DW(Lcom/google/android/gms/internal/ads/rd;)Lcom/google/android/gms/internal/ads/Ld;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rd;->VH:Lcom/google/android/gms/internal/ads/Ld;

    return-object v0
.end method

.method static synthetic FH(Lcom/google/android/gms/internal/ads/rd;)Lcom/google/android/gms/internal/ads/sl;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rd;->v5:Lcom/google/android/gms/internal/ads/sl;

    return-object v0
.end method

.method static synthetic Hw(Lcom/google/android/gms/internal/ads/rd;)I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/rd;->gn:I

    return v0
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/ads/rd;I)I
    .registers 2

    iput p1, p0, Lcom/google/android/gms/internal/ads/rd;->gn:I

    return p1
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/ads/rd;Lcom/google/android/gms/internal/ads/Ld;)Lcom/google/android/gms/internal/ads/Ld;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/rd;->VH:Lcom/google/android/gms/internal/ads/Ld;

    return-object p1
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/ads/rd;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rd;->j6:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public final DW(Lcom/google/android/gms/internal/ads/ix;)Lcom/google/android/gms/internal/ads/Hd;
    .registers 8

    const/4 v5, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/rd;->j6:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/rd;->j6:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rd;->VH:Lcom/google/android/gms/internal/ads/Ld;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/rd;->gn:I

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/ads/p;->VH:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rd;->VH:Lcom/google/android/gms/internal/ads/Ld;

    new-instance v3, Lcom/google/android/gms/internal/ads/td;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/ads/td;-><init>(Lcom/google/android/gms/internal/ads/rd;)V

    sget-object v4, Lcom/google/android/gms/internal/ads/ud;->j6:Lcom/google/android/gms/internal/ads/Um;

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/internal/ads/Xm;->j6(Lcom/google/android/gms/internal/ads/Wm;Lcom/google/android/gms/internal/ads/Um;)V

    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rd;->VH:Lcom/google/android/gms/internal/ads/Ld;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rd;->VH:Lcom/google/android/gms/internal/ads/Ld;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Xm;->j6()I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    :cond_1
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/ads/rd;->gn:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/rd;->j6(Lcom/google/android/gms/internal/ads/ix;)Lcom/google/android/gms/internal/ads/Ld;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/rd;->VH:Lcom/google/android/gms/internal/ads/Ld;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rd;->VH:Lcom/google/android/gms/internal/ads/Ld;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Ld;->FH()Lcom/google/android/gms/internal/ads/Hd;

    move-result-object v0

    monitor-exit v1

    :goto_0
    return-object v0

    :cond_2
    iget v0, p0, Lcom/google/android/gms/internal/ads/rd;->gn:I

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rd;->VH:Lcom/google/android/gms/internal/ads/Ld;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Ld;->FH()Lcom/google/android/gms/internal/ads/Hd;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_3
    :try_start_3
    iget v0, p0, Lcom/google/android/gms/internal/ads/rd;->gn:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/ads/rd;->gn:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/rd;->j6(Lcom/google/android/gms/internal/ads/ix;)Lcom/google/android/gms/internal/ads/Ld;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rd;->VH:Lcom/google/android/gms/internal/ads/Ld;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Ld;->FH()Lcom/google/android/gms/internal/ads/Hd;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/ads/rd;->gn:I

    if-ne v0, v5, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rd;->VH:Lcom/google/android/gms/internal/ads/Ld;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Ld;->FH()Lcom/google/android/gms/internal/ads/Hd;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rd;->VH:Lcom/google/android/gms/internal/ads/Ld;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Ld;->FH()Lcom/google/android/gms/internal/ads/Hd;

    move-result-object v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method protected final j6(Lcom/google/android/gms/internal/ads/ix;)Lcom/google/android/gms/internal/ads/Ld;
    .registers 5

    new-instance v0, Lcom/google/android/gms/internal/ads/Ld;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/rd;->Zo:Lcom/google/android/gms/internal/ads/sl;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/Ld;-><init>(Lcom/google/android/gms/internal/ads/sl;)V

    sget-object v1, Lcom/google/android/gms/internal/ads/Mm;->j6:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/google/android/gms/internal/ads/sd;

    invoke-direct {v2, p0, p1, v0}, Lcom/google/android/gms/internal/ads/sd;-><init>(Lcom/google/android/gms/internal/ads/rd;Lcom/google/android/gms/internal/ads/ix;Lcom/google/android/gms/internal/ads/Ld;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    new-instance v1, Lcom/google/android/gms/internal/ads/Dd;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/ads/Dd;-><init>(Lcom/google/android/gms/internal/ads/rd;Lcom/google/android/gms/internal/ads/Ld;)V

    new-instance v2, Lcom/google/android/gms/internal/ads/Ed;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/ads/Ed;-><init>(Lcom/google/android/gms/internal/ads/rd;Lcom/google/android/gms/internal/ads/Ld;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/Xm;->j6(Lcom/google/android/gms/internal/ads/Wm;Lcom/google/android/gms/internal/ads/Um;)V

    return-object v0
.end method

.method final synthetic j6(Lcom/google/android/gms/internal/ads/Ld;Lcom/google/android/gms/internal/ads/gd;)V
    .registers 6

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/rd;->j6:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Xm;->j6()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Xm;->j6()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    :cond_0
    monitor-exit v1

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Xm;->DW()V

    sget-object v0, Lcom/google/android/gms/internal/ads/Mm;->j6:Ljava/util/concurrent/Executor;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/xd;->j6(Lcom/google/android/gms/internal/ads/gd;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    const-string v0, "Could not receive loaded message in a timely manner. Rejecting."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Ek;->Zo(Ljava/lang/String;)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method final synthetic j6(Lcom/google/android/gms/internal/ads/gd;)V
    .registers 3

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/gd;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/rd;->gn:I

    :cond_0
    return-void
.end method

.method final synthetic j6(Lcom/google/android/gms/internal/ads/ix;Lcom/google/android/gms/internal/ads/Ld;)V
    .registers 9

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/rd;->DW:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/rd;->Hw:Lcom/google/android/gms/internal/ads/zzbbi;

    sget-object v0, Lcom/google/android/gms/internal/ads/p;->Q6:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ads/Tc;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/Tc;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbbi;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v1, Lcom/google/android/gms/internal/ads/vd;

    invoke-direct {v1, p0, p2, v0}, Lcom/google/android/gms/internal/ads/vd;-><init>(Lcom/google/android/gms/internal/ads/rd;Lcom/google/android/gms/internal/ads/Ld;Lcom/google/android/gms/internal/ads/gd;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/gd;->j6(Lcom/google/android/gms/internal/ads/hd;)V

    const-string v1, "/jsLoaded"

    new-instance v2, Lcom/google/android/gms/internal/ads/zd;

    invoke-direct {v2, p0, p2, v0}, Lcom/google/android/gms/internal/ads/zd;-><init>(Lcom/google/android/gms/internal/ads/rd;Lcom/google/android/gms/internal/ads/Ld;Lcom/google/android/gms/internal/ads/gd;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/Qd;->j6(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/B;)V

    new-instance v1, Lcom/google/android/gms/internal/ads/Pl;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/Pl;-><init>()V

    new-instance v2, Lcom/google/android/gms/internal/ads/Ad;

    invoke-direct {v2, p0, p1, v0, v1}, Lcom/google/android/gms/internal/ads/Ad;-><init>(Lcom/google/android/gms/internal/ads/rd;Lcom/google/android/gms/internal/ads/ix;Lcom/google/android/gms/internal/ads/gd;Lcom/google/android/gms/internal/ads/Pl;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/Pl;->j6(Ljava/lang/Object;)V

    const-string v1, "/requestReload"

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/Qd;->j6(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/B;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/rd;->FH:Ljava/lang/String;

    const-string v2, ".js"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/rd;->FH:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/gd;->v5(Ljava/lang/String;)V

    :goto_1
    sget-object v1, Lcom/google/android/gms/internal/ads/Nk;->j6:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/internal/ads/Bd;

    invoke-direct {v2, p0, p2, v0}, Lcom/google/android/gms/internal/ads/Bd;-><init>(Lcom/google/android/gms/internal/ads/rd;Lcom/google/android/gms/internal/ads/Ld;Lcom/google/android/gms/internal/ads/gd;)V

    sget v0, Lcom/google/android/gms/internal/ads/Fd;->j6:I

    int-to-long v4, v0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_2
    return-void

    :cond_0
    :try_start_1
    new-instance v0, Lcom/google/android/gms/internal/ads/id;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/google/android/gms/internal/ads/id;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbbi;Lcom/google/android/gms/internal/ads/ix;Lcom/google/android/gms/ads/internal/ta;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Error creating webview."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->u7()Lcom/google/android/gms/internal/ads/pk;

    move-result-object v1

    const-string v2, "SdkJavascriptFactory.loadJavascriptEngine"

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/pk;->j6(Ljava/lang/Throwable;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/Xm;->DW()V

    goto :goto_2

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/rd;->FH:Ljava/lang/String;

    const-string v2, "<html>"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/rd;->FH:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/gd;->Zo(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/rd;->FH:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/gd;->Hw(Ljava/lang/String;)V

    goto :goto_1
.end method
