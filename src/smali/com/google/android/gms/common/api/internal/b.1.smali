.class public Lcom/google/android/gms/common/api/internal/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/api/internal/b$b;,
        Lcom/google/android/gms/common/api/internal/b$c;
    }
.end annotation


# static fields
.field private static final DW:Lcom/google/android/gms/common/api/Status;

.field private static final FH:Ljava/lang/Object;

.field private static Hw:Lcom/google/android/gms/common/api/internal/b;

.field public static final j6:Lcom/google/android/gms/common/api/Status;


# instance fields
.field private final EQ:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final J0:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/internal/E",
            "<*>;",
            "Lcom/google/android/gms/common/api/internal/b$a",
            "<*>;>;"
        }
    .end annotation
.end field

.field private J8:Lcom/google/android/gms/common/api/internal/j;

.field private final QX:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/internal/E",
            "<*>;>;"
        }
    .end annotation
.end field

.field private VH:J

.field private final Ws:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/internal/E",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final XL:Landroid/os/Handler;

.field private Zo:J

.field private final gn:Landroid/content/Context;

.field private final tp:Lcom/google/android/gms/common/internal/j;

.field private final u7:Lcom/google/android/gms/common/b;

.field private v5:J

.field private final we:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v2, 0x4

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const-string v1, "Sign-out occurred while this API call was in progress."

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/common/api/internal/b;->j6:Lcom/google/android/gms/common/api/Status;

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const-string v1, "The user must be signed in to make this API call."

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/common/api/internal/b;->DW:Lcom/google/android/gms/common/api/Status;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/api/internal/b;->FH:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/b;)V
    .registers 8

    const/4 v3, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lcom/google/android/gms/common/api/internal/b;->v5:J

    const-wide/32 v0, 0x1d4c0

    iput-wide v0, p0, Lcom/google/android/gms/common/api/internal/b;->Zo:J

    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lcom/google/android/gms/common/api/internal/b;->VH:J

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/b;->EQ:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/b;->we:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x5

    const/high16 v2, 0x3f400000    # 0.75f

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/b;->J0:Ljava/util/Map;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/b;->J8:Lcom/google/android/gms/common/api/internal/j;

    new-instance v0, Labcd/m;

    invoke-direct {v0}, Labcd/m;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/b;->Ws:Ljava/util/Set;

    new-instance v0, Labcd/m;

    invoke-direct {v0}, Labcd/m;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/b;->QX:Ljava/util/Set;

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/b;->gn:Landroid/content/Context;

    new-instance v0, Labcd/Bx;

    invoke-direct {v0, p2, p0}, Labcd/Bx;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/b;->XL:Landroid/os/Handler;

    iput-object p3, p0, Lcom/google/android/gms/common/api/internal/b;->u7:Lcom/google/android/gms/common/b;

    new-instance v0, Lcom/google/android/gms/common/internal/j;

    invoke-direct {v0, p3}, Lcom/google/android/gms/common/internal/j;-><init>(Lcom/google/android/gms/common/c;)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/b;->tp:Lcom/google/android/gms/common/internal/j;

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/b;->XL:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method static synthetic DW(Lcom/google/android/gms/common/api/internal/b;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/b;->gn:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic DW()Lcom/google/android/gms/common/api/Status;
    .registers 1

    sget-object v0, Lcom/google/android/gms/common/api/internal/b;->DW:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method static synthetic FH(Lcom/google/android/gms/common/api/internal/b;)J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/common/api/internal/b;->v5:J

    return-wide v0
.end method

.method static synthetic Hw(Lcom/google/android/gms/common/api/internal/b;)J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/common/api/internal/b;->Zo:J

    return-wide v0
.end method

.method static synthetic VH(Lcom/google/android/gms/common/api/internal/b;)Ljava/util/Set;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/b;->Ws:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic Zo(Lcom/google/android/gms/common/api/internal/b;)Lcom/google/android/gms/common/api/internal/j;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/b;->J8:Lcom/google/android/gms/common/api/internal/j;

    return-object v0
.end method

.method static synthetic gn(Lcom/google/android/gms/common/api/internal/b;)Lcom/google/android/gms/common/b;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/b;->u7:Lcom/google/android/gms/common/b;

    return-object v0
.end method

.method static synthetic j6(Lcom/google/android/gms/common/api/internal/b;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/b;->XL:Landroid/os/Handler;

    return-object v0
.end method

.method public static j6(Landroid/content/Context;)Lcom/google/android/gms/common/api/internal/b;
    .registers 6

    sget-object v1, Lcom/google/android/gms/common/api/internal/b;->FH:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/common/api/internal/b;->Hw:Lcom/google/android/gms/common/api/internal/b;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "GoogleApiHandler"

    const/16 v3, 0x9

    invoke-direct {v0, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/common/api/internal/b;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/common/b;->j6()Lcom/google/android/gms/common/b;

    move-result-object v4

    invoke-direct {v2, v3, v0, v4}, Lcom/google/android/gms/common/api/internal/b;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/b;)V

    sput-object v2, Lcom/google/android/gms/common/api/internal/b;->Hw:Lcom/google/android/gms/common/api/internal/b;

    :cond_0
    sget-object v0, Lcom/google/android/gms/common/api/internal/b;->Hw:Lcom/google/android/gms/common/api/internal/b;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic j6()Ljava/lang/Object;
    .registers 1

    sget-object v0, Lcom/google/android/gms/common/api/internal/b;->FH:Ljava/lang/Object;

    return-object v0
.end method

.method private final j6(Lcom/google/android/gms/common/api/e;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/e",
            "<*>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/e;->FH()Lcom/google/android/gms/common/api/internal/E;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/b;->J0:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/b$a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/common/api/internal/b$a;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/common/api/internal/b$a;-><init>(Lcom/google/android/gms/common/api/internal/b;Lcom/google/android/gms/common/api/e;)V

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/b;->J0:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/b$a;->Hw()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/b;->QX:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/b$a;->j6()V

    return-void
.end method

.method static synthetic tp(Lcom/google/android/gms/common/api/internal/b;)Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/b;->J0:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic u7(Lcom/google/android/gms/common/api/internal/b;)J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/common/api/internal/b;->VH:J

    return-wide v0
.end method

.method static synthetic v5(Lcom/google/android/gms/common/api/internal/b;)Lcom/google/android/gms/common/internal/j;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/b;->tp:Lcom/google/android/gms/common/internal/j;

    return-object v0
.end method


# virtual methods
.method final DW(Lcom/google/android/gms/common/ConnectionResult;I)Z
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/b;->u7:Lcom/google/android/gms/common/b;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/b;->gn:Landroid/content/Context;

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/gms/common/b;->j6(Landroid/content/Context;Lcom/google/android/gms/common/ConnectionResult;I)Z

    move-result v0

    return v0
.end method

.method public final FH()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/b;->XL:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 11

    const-wide/32 v2, 0x493e0

    const/16 v8, 0xc

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v4, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x1f

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unknown message id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "GoogleApiManager"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v4

    :goto_0
    return v0

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/common/api/internal/b$b;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/b;->J0:Ljava/util/Map;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/b$b;->j6(Lcom/google/android/gms/common/api/internal/b$b;)Lcom/google/android/gms/common/api/internal/E;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/b;->J0:Ljava/util/Map;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/b$b;->j6(Lcom/google/android/gms/common/api/internal/b$b;)Lcom/google/android/gms/common/api/internal/E;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/internal/b$a;

    invoke-static {v1, v0}, Lcom/google/android/gms/common/api/internal/b$a;->DW(Lcom/google/android/gms/common/api/internal/b$a;Lcom/google/android/gms/common/api/internal/b$b;)V

    :cond_0
    :goto_1
    move v0, v5

    goto :goto_0

    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/common/api/internal/b$b;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/b;->J0:Ljava/util/Map;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/b$b;->j6(Lcom/google/android/gms/common/api/internal/b$b;)Lcom/google/android/gms/common/api/internal/E;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/b;->J0:Ljava/util/Map;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/b$b;->j6(Lcom/google/android/gms/common/api/internal/b$b;)Lcom/google/android/gms/common/api/internal/E;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/internal/b$a;

    invoke-static {v1, v0}, Lcom/google/android/gms/common/api/internal/b$a;->j6(Lcom/google/android/gms/common/api/internal/b$a;Lcom/google/android/gms/common/api/internal/b$b;)V

    goto :goto_1

    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/common/api/internal/k;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/k;->DW()Lcom/google/android/gms/common/api/internal/E;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/b;->J0:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/k;->j6()Labcd/Zx;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Labcd/Zx;->j6(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/b;->J0:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/internal/b$a;

    invoke-static {v1, v4}, Lcom/google/android/gms/common/api/internal/b$a;->j6(Lcom/google/android/gms/common/api/internal/b$a;Z)Z

    move-result v1

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/k;->j6()Labcd/Zx;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Labcd/Zx;->j6(Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_3
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/b;->J0:Ljava/util/Map;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/b;->J0:Ljava/util/Map;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/b$a;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/b$a;->we()Z

    goto :goto_1

    :pswitch_4
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/b;->J0:Ljava/util/Map;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/b;->J0:Ljava/util/Map;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/b$a;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/b$a;->VH()V

    goto/16 :goto_1

    :pswitch_5
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/b;->QX:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/E;

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/b;->J0:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/b$a;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/b$a;->gn()V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/b;->QX:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    goto/16 :goto_1

    :pswitch_6
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/b;->J0:Ljava/util/Map;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/b;->J0:Ljava/util/Map;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/b$a;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/b$a;->v5()V

    goto/16 :goto_1

    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/common/api/e;

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/internal/b;->j6(Lcom/google/android/gms/common/api/e;)V

    goto/16 :goto_1

    :pswitch_8
    invoke-static {}, Lcom/google/android/gms/common/util/o;->j6()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/b;->gn:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Application;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/b;->gn:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/a;->j6(Landroid/app/Application;)V

    invoke-static {}, Lcom/google/android/gms/common/api/internal/a;->j6()Lcom/google/android/gms/common/api/internal/a;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/common/api/internal/m;

    invoke-direct {v1, p0}, Lcom/google/android/gms/common/api/internal/m;-><init>(Lcom/google/android/gms/common/api/internal/b;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/a;->j6(Lcom/google/android/gms/common/api/internal/a$a;)V

    invoke-static {}, Lcom/google/android/gms/common/api/internal/a;->j6()Lcom/google/android/gms/common/api/internal/a;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/google/android/gms/common/api/internal/a;->j6(Z)Z

    move-result v0

    if-nez v0, :cond_0

    iput-wide v2, p0, Lcom/google/android/gms/common/api/internal/b;->VH:J

    goto/16 :goto_1

    :pswitch_9
    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/common/ConnectionResult;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/b;->J0:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/internal/b$a;

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/b$a;->DW()I

    move-result v4

    if-ne v4, v2, :cond_3

    :goto_3
    if-eqz v1, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/b;->u7:Lcom/google/android/gms/common/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->DW()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/b;->j6(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->FH()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x45

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v4, v6

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Error resolution was canceled by the user, original error message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v2, 0x11

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/google/android/gms/common/api/internal/b$a;->j6(Lcom/google/android/gms/common/api/Status;)V

    goto/16 :goto_1

    :cond_4
    move-object v1, v6

    goto :goto_3

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x4c

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Could not find API instance "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " while trying to fail enqueued calls."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "GoogleApiManager"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-static {v1, v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    :pswitch_a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/common/api/internal/t;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/b;->J0:Ljava/util/Map;

    iget-object v2, v0, Lcom/google/android/gms/common/api/internal/t;->FH:Lcom/google/android/gms/common/api/e;

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/e;->FH()Lcom/google/android/gms/common/api/internal/E;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/internal/b$a;

    if-nez v1, :cond_6

    iget-object v1, v0, Lcom/google/android/gms/common/api/internal/t;->FH:Lcom/google/android/gms/common/api/e;

    invoke-direct {p0, v1}, Lcom/google/android/gms/common/api/internal/b;->j6(Lcom/google/android/gms/common/api/e;)V

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/b;->J0:Ljava/util/Map;

    iget-object v2, v0, Lcom/google/android/gms/common/api/internal/t;->FH:Lcom/google/android/gms/common/api/e;

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/e;->FH()Lcom/google/android/gms/common/api/internal/E;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/internal/b$a;

    :cond_6
    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/b$a;->Hw()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/b;->we:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    iget v3, v0, Lcom/google/android/gms/common/api/internal/t;->DW:I

    if-eq v2, v3, :cond_7

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/t;->j6:Lcom/google/android/gms/common/api/internal/l;

    sget-object v2, Lcom/google/android/gms/common/api/internal/b;->j6:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/api/internal/l;->j6(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/b$a;->gn()V

    goto/16 :goto_1

    :cond_7
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/t;->j6:Lcom/google/android/gms/common/api/internal/l;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/common/api/internal/b$a;->j6(Lcom/google/android/gms/common/api/internal/l;)V

    goto/16 :goto_1

    :pswitch_b
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/b;->J0:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/b$a;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/b$a;->tp()V

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/b$a;->j6()V

    goto :goto_4

    :pswitch_c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/common/api/internal/F;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/F;->j6()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/google/android/gms/common/api/internal/E;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/b;->J0:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/internal/b$a;

    if-nez v1, :cond_8

    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v3, 0xd

    invoke-direct {v1, v3}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    invoke-virtual {v0, v2, v1, v6}, Lcom/google/android/gms/common/api/internal/F;->j6(Lcom/google/android/gms/common/api/internal/E;Lcom/google/android/gms/common/ConnectionResult;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_8
    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/b$a;->FH()Z

    move-result v4

    if-eqz v4, :cond_9

    sget-object v4, Lcom/google/android/gms/common/ConnectionResult;->j6:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/b$a;->Zo()Lcom/google/android/gms/common/api/a$f;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/api/a$f;->getEndpointPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v4, v1}, Lcom/google/android/gms/common/api/internal/F;->j6(Lcom/google/android/gms/common/api/internal/E;Lcom/google/android/gms/common/ConnectionResult;Ljava/lang/String;)V

    goto :goto_5

    :cond_9
    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/b$a;->EQ()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v4

    if-eqz v4, :cond_a

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/b$a;->EQ()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v1

    invoke-virtual {v0, v2, v1, v6}, Lcom/google/android/gms/common/api/internal/F;->j6(Lcom/google/android/gms/common/api/internal/E;Lcom/google/android/gms/common/ConnectionResult;Ljava/lang/String;)V

    goto :goto_5

    :cond_a
    invoke-virtual {v1, v0}, Lcom/google/android/gms/common/api/internal/b$a;->j6(Lcom/google/android/gms/common/api/internal/F;)V

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/b$a;->j6()V

    goto :goto_5

    :pswitch_d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_b

    const-wide/16 v0, 0x2710

    :goto_6
    iput-wide v0, p0, Lcom/google/android/gms/common/api/internal/b;->VH:J

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/b;->XL:Landroid/os/Handler;

    invoke-virtual {v0, v8}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/b;->J0:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/E;

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/b;->XL:Landroid/os/Handler;

    invoke-virtual {v2, v8, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-wide v6, p0, Lcom/google/android/gms/common/api/internal/b;->VH:J

    invoke-virtual {v2, v0, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_7

    :cond_b
    move-wide v0, v2

    goto :goto_6

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_a
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_a
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final j6(Lcom/google/android/gms/common/ConnectionResult;I)V
    .registers 6

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/common/api/internal/b;->DW(Lcom/google/android/gms/common/ConnectionResult;I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/b;->XL:Landroid/os/Handler;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method
