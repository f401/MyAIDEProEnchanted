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
            "Lcom/google/android/gms/internal/ads/sl<",
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
            "Lcom/google/android/gms/internal/ads/sl<",
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

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/rd;->DW:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/rd;->Hw:Lcom/google/android/gms/internal/ads/zzbbi;

    new-instance p1, Lcom/google/android/gms/internal/ads/Gd;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/Gd;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/rd;->v5:Lcom/google/android/gms/internal/ads/sl;

    new-instance p1, Lcom/google/android/gms/internal/ads/Gd;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/Gd;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/rd;->Zo:Lcom/google/android/gms/internal/ads/sl;

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
            "Lcom/google/android/gms/internal/ads/sl<",
            "Lcom/google/android/gms/internal/ads/gd;",
            ">;",
            "Lcom/google/android/gms/internal/ads/sl<",
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
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/rd;->VH:Lcom/google/android/gms/internal/ads/Ld;

    return-object p0
.end method

.method static synthetic FH(Lcom/google/android/gms/internal/ads/rd;)Lcom/google/android/gms/internal/ads/sl;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/rd;->v5:Lcom/google/android/gms/internal/ads/sl;

    return-object p0
.end method

.method static synthetic Hw(Lcom/google/android/gms/internal/ads/rd;)I
    .registers 1

    iget p0, p0, Lcom/google/android/gms/internal/ads/rd;->gn:I

    return p0
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
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/rd;->j6:Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public final DW(Lcom/google/android/gms/internal/ads/ix;)Lcom/google/android/gms/internal/ads/Hd;
    .registers 6

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/rd;->j6:Ljava/lang/Object;

    monitor-enter p1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rd;->j6:Ljava/lang/Object;

    monitor-enter v0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_7a

    :try_start_6
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/rd;->VH:Lcom/google/android/gms/internal/ads/Ld;

    if-eqz v1, :cond_2c

    iget v1, p0, Lcom/google/android/gms/internal/ads/rd;->gn:I

    if-nez v1, :cond_2c

    sget-object v1, Lcom/google/android/gms/internal/ads/p;->VH:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2c

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/rd;->VH:Lcom/google/android/gms/internal/ads/Ld;

    new-instance v2, Lcom/google/android/gms/internal/ads/td;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/td;-><init>(Lcom/google/android/gms/internal/ads/rd;)V

    sget-object v3, Lcom/google/android/gms/internal/ads/ud;->j6:Lcom/google/android/gms/internal/ads/Um;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/Xm;->j6(Lcom/google/android/gms/internal/ads/Wm;Lcom/google/android/gms/internal/ads/Um;)V

    :cond_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_6 .. :try_end_2d} :catchall_77

    :try_start_2d
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rd;->VH:Lcom/google/android/gms/internal/ads/Ld;

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz v0, :cond_69

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Xm;->j6()I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_3b

    goto :goto_69

    :cond_3b
    iget v0, p0, Lcom/google/android/gms/internal/ads/rd;->gn:I

    if-nez v0, :cond_47

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rd;->VH:Lcom/google/android/gms/internal/ads/Ld;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Ld;->FH()Lcom/google/android/gms/internal/ads/Hd;

    move-result-object v0

    monitor-exit p1

    return-object v0

    :cond_47
    const/4 v3, 0x1

    if-ne v0, v3, :cond_57

    iput v2, p0, Lcom/google/android/gms/internal/ads/rd;->gn:I

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/rd;->j6(Lcom/google/android/gms/internal/ads/ix;)Lcom/google/android/gms/internal/ads/Ld;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rd;->VH:Lcom/google/android/gms/internal/ads/Ld;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Ld;->FH()Lcom/google/android/gms/internal/ads/Hd;

    move-result-object v0

    monitor-exit p1

    return-object v0

    :cond_57
    if-ne v0, v2, :cond_61

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rd;->VH:Lcom/google/android/gms/internal/ads/Ld;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Ld;->FH()Lcom/google/android/gms/internal/ads/Hd;

    move-result-object v0

    monitor-exit p1

    return-object v0

    :cond_61
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rd;->VH:Lcom/google/android/gms/internal/ads/Ld;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Ld;->FH()Lcom/google/android/gms/internal/ads/Hd;

    move-result-object v0

    monitor-exit p1

    return-object v0

    :cond_69
    :goto_69
    iput v2, p0, Lcom/google/android/gms/internal/ads/rd;->gn:I

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/rd;->j6(Lcom/google/android/gms/internal/ads/ix;)Lcom/google/android/gms/internal/ads/Ld;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/rd;->VH:Lcom/google/android/gms/internal/ads/Ld;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Ld;->FH()Lcom/google/android/gms/internal/ads/Hd;

    move-result-object v0

    monitor-exit p1
    :try_end_76
    .catchall {:try_start_2d .. :try_end_76} :catchall_7a

    return-object v0

    :catchall_77
    move-exception v1

    :try_start_78
    monitor-exit v0
    :try_end_79
    .catchall {:try_start_78 .. :try_end_79} :catchall_77

    :try_start_79
    throw v1

    :catchall_7a
    move-exception v0

    monitor-exit p1
    :try_end_7c
    .catchall {:try_start_79 .. :try_end_7c} :catchall_7a

    throw v0
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

    new-instance p1, Lcom/google/android/gms/internal/ads/Dd;

    invoke-direct {p1, p0, v0}, Lcom/google/android/gms/internal/ads/Dd;-><init>(Lcom/google/android/gms/internal/ads/rd;Lcom/google/android/gms/internal/ads/Ld;)V

    new-instance v1, Lcom/google/android/gms/internal/ads/Ed;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/ads/Ed;-><init>(Lcom/google/android/gms/internal/ads/rd;Lcom/google/android/gms/internal/ads/Ld;)V

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/Xm;->j6(Lcom/google/android/gms/internal/ads/Wm;Lcom/google/android/gms/internal/ads/Um;)V

    return-object v0
.end method

.method final synthetic j6(Lcom/google/android/gms/internal/ads/Ld;Lcom/google/android/gms/internal/ads/gd;)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rd;->j6:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Xm;->j6()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_28

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Xm;->j6()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_12

    goto :goto_28

    :cond_12
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Xm;->DW()V

    sget-object p1, Lcom/google/android/gms/internal/ads/Mm;->j6:Ljava/util/concurrent/Executor;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/xd;->j6(Lcom/google/android/gms/internal/ads/gd;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    const-string p1, "Could not receive loaded message in a timely manner. Rejecting."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Ek;->Zo(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :cond_28
    :goto_28
    monitor-exit v0

    return-void

    :catchall_2a
    move-exception p1

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_2a

    throw p1
.end method

.method final synthetic j6(Lcom/google/android/gms/internal/ads/gd;)V
    .registers 2

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/gd;->isDestroyed()Z

    move-result p1

    if-eqz p1, :cond_9

    const/4 p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/rd;->gn:I

    :cond_9
    return-void
.end method

.method final synthetic j6(Lcom/google/android/gms/internal/ads/ix;Lcom/google/android/gms/internal/ads/Ld;)V
    .registers 7

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rd;->DW:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/rd;->Hw:Lcom/google/android/gms/internal/ads/zzbbi;

    sget-object v2, Lcom/google/android/gms/internal/ads/p;->Q6:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1c

    new-instance v2, Lcom/google/android/gms/internal/ads/Tc;

    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/internal/ads/Tc;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbbi;)V

    goto :goto_22

    :cond_1c
    new-instance v2, Lcom/google/android/gms/internal/ads/id;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, p1, v3}, Lcom/google/android/gms/internal/ads/id;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbbi;Lcom/google/android/gms/internal/ads/ix;Lcom/google/android/gms/ads/internal/ta;)V
    :try_end_22
    .catchall {:try_start_0 .. :try_end_22} :catchall_79

    :goto_22
    new-instance v0, Lcom/google/android/gms/internal/ads/vd;

    invoke-direct {v0, p0, p2, v2}, Lcom/google/android/gms/internal/ads/vd;-><init>(Lcom/google/android/gms/internal/ads/rd;Lcom/google/android/gms/internal/ads/Ld;Lcom/google/android/gms/internal/ads/gd;)V

    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/ads/gd;->j6(Lcom/google/android/gms/internal/ads/hd;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zd;

    invoke-direct {v0, p0, p2, v2}, Lcom/google/android/gms/internal/ads/zd;-><init>(Lcom/google/android/gms/internal/ads/rd;Lcom/google/android/gms/internal/ads/Ld;Lcom/google/android/gms/internal/ads/gd;)V

    const-string v1, "/jsLoaded"

    invoke-interface {v2, v1, v0}, Lcom/google/android/gms/internal/ads/Qd;->j6(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/B;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/Pl;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/Pl;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/ads/Ad;

    invoke-direct {v1, p0, p1, v2, v0}, Lcom/google/android/gms/internal/ads/Ad;-><init>(Lcom/google/android/gms/internal/ads/rd;Lcom/google/android/gms/internal/ads/ix;Lcom/google/android/gms/internal/ads/gd;Lcom/google/android/gms/internal/ads/Pl;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/Pl;->j6(Ljava/lang/Object;)V

    const-string p1, "/requestReload"

    invoke-interface {v2, p1, v1}, Lcom/google/android/gms/internal/ads/Qd;->j6(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/B;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/rd;->FH:Ljava/lang/String;

    const-string v0, ".js"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_56

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/rd;->FH:Ljava/lang/String;

    invoke-interface {v2, p1}, Lcom/google/android/gms/internal/ads/gd;->v5(Ljava/lang/String;)V

    goto :goto_6b

    :cond_56
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/rd;->FH:Ljava/lang/String;

    const-string v0, "<html>"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_66

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/rd;->FH:Ljava/lang/String;

    invoke-interface {v2, p1}, Lcom/google/android/gms/internal/ads/gd;->Zo(Ljava/lang/String;)V

    goto :goto_6b

    :cond_66
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/rd;->FH:Ljava/lang/String;

    invoke-interface {v2, p1}, Lcom/google/android/gms/internal/ads/gd;->Hw(Ljava/lang/String;)V

    :goto_6b
    sget-object p1, Lcom/google/android/gms/internal/ads/Nk;->j6:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/gms/internal/ads/Bd;

    invoke-direct {v0, p0, p2, v2}, Lcom/google/android/gms/internal/ads/Bd;-><init>(Lcom/google/android/gms/internal/ads/rd;Lcom/google/android/gms/internal/ads/Ld;Lcom/google/android/gms/internal/ads/gd;)V

    sget p2, Lcom/google/android/gms/internal/ads/Fd;->j6:I

    int-to-long v1, p2

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :catchall_79
    move-exception p1

    const-string v0, "Error creating webview."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->u7()Lcom/google/android/gms/internal/ads/pk;

    move-result-object v0

    const-string v1, "SdkJavascriptFactory.loadJavascriptEngine"

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/pk;->j6(Ljava/lang/Throwable;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/Xm;->DW()V

    return-void
.end method
