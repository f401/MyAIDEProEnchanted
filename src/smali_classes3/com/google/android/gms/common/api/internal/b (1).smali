.class public Lcom/google/android/gms/common/api/internal/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
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
            "Ljava/util/Map<",
            "Lcom/google/android/gms/common/api/internal/E<",
            "*>;",
            "Lcom/google/android/gms/common/api/internal/b$a<",
            "*>;>;"
        }
    .end annotation
.end field

.field private J8:Lcom/google/android/gms/common/api/internal/j;

.field private final QX:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/internal/E<",
            "*>;>;"
        }
    .end annotation
.end field

.field private VH:J

.field private final Ws:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/internal/E<",
            "*>;>;"
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

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const-string v1, "Sign-out occurred while this API call was in progress."

    const/4 v2, 0x4

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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lcom/google/android/gms/common/api/internal/b;->v5:J

    const-wide/32 v0, 0x1d4c0

    iput-wide v0, p0, Lcom/google/android/gms/common/api/internal/b;->Zo:J

    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lcom/google/android/gms/common/api/internal/b;->VH:J

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/b;->EQ:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/b;->we:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v2, 0x5

    const/high16 v3, 0x3f400000  # 0.75f

    invoke-direct {v0, v2, v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

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

    new-instance p1, Labcd/Bx;

    invoke-direct {p1, p2, p0}, Labcd/Bx;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/b;->XL:Landroid/os/Handler;

    iput-object p3, p0, Lcom/google/android/gms/common/api/internal/b;->u7:Lcom/google/android/gms/common/b;

    new-instance p2, Lcom/google/android/gms/common/internal/j;

    invoke-direct {p2, p3}, Lcom/google/android/gms/common/internal/j;-><init>(Lcom/google/android/gms/common/c;)V

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/b;->tp:Lcom/google/android/gms/common/internal/j;

    const/4 p2, 0x6

    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method static synthetic DW(Lcom/google/android/gms/common/api/internal/b;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/b;->gn:Landroid/content/Context;

    return-object p0
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
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/b;->Ws:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic Zo(Lcom/google/android/gms/common/api/internal/b;)Lcom/google/android/gms/common/api/internal/j;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/b;->J8:Lcom/google/android/gms/common/api/internal/j;

    return-object p0
.end method

.method static synthetic gn(Lcom/google/android/gms/common/api/internal/b;)Lcom/google/android/gms/common/b;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/b;->u7:Lcom/google/android/gms/common/b;

    return-object p0
.end method

.method static synthetic j6(Lcom/google/android/gms/common/api/internal/b;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/b;->XL:Landroid/os/Handler;

    return-object p0
.end method

.method public static j6(Landroid/content/Context;)Lcom/google/android/gms/common/api/internal/b;
    .registers 5

    sget-object v0, Lcom/google/android/gms/common/api/internal/b;->FH:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/google/android/gms/common/api/internal/b;->Hw:Lcom/google/android/gms/common/api/internal/b;

    if-nez v1, :cond_26

    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "GoogleApiHandler"

    const/16 v3, 0x9

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/common/api/internal/b;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {}, Lcom/google/android/gms/common/b;->j6()Lcom/google/android/gms/common/b;

    move-result-object v3

    invoke-direct {v2, p0, v1, v3}, Lcom/google/android/gms/common/api/internal/b;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/b;)V

    sput-object v2, Lcom/google/android/gms/common/api/internal/b;->Hw:Lcom/google/android/gms/common/api/internal/b;

    :cond_26
    sget-object p0, Lcom/google/android/gms/common/api/internal/b;->Hw:Lcom/google/android/gms/common/api/internal/b;

    monitor-exit v0

    return-object p0

    :catchall_2a
    move-exception p0

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_2a

    throw p0
.end method

.method static synthetic j6()Ljava/lang/Object;
    .registers 1

    sget-object v0, Lcom/google/android/gms/common/api/internal/b;->FH:Ljava/lang/Object;

    return-object v0
.end method

.method private final j6(Lcom/google/android/gms/common/api/e;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/e<",
            "*>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/e;->FH()Lcom/google/android/gms/common/api/internal/E;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/b;->J0:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/internal/b$a;

    if-nez v1, :cond_18

    new-instance v1, Lcom/google/android/gms/common/api/internal/b$a;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/common/api/internal/b$a;-><init>(Lcom/google/android/gms/common/api/internal/b;Lcom/google/android/gms/common/api/e;)V

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/b;->J0:Ljava/util/Map;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_18
    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/b$a;->Hw()Z

    move-result p1

    if-eqz p1, :cond_23

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/b;->QX:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_23
    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/b$a;->j6()V

    return-void
.end method

.method static synthetic tp(Lcom/google/android/gms/common/api/internal/b;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/b;->J0:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic u7(Lcom/google/android/gms/common/api/internal/b;)J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/common/api/internal/b;->VH:J

    return-wide v0
.end method

.method static synthetic v5(Lcom/google/android/gms/common/api/internal/b;)Lcom/google/android/gms/common/internal/j;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/b;->tp:Lcom/google/android/gms/common/internal/j;

    return-object p0
.end method


# virtual methods
.method final DW(Lcom/google/android/gms/common/ConnectionResult;I)Z
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/b;->u7:Lcom/google/android/gms/common/b;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/b;->gn:Landroid/content/Context;

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/gms/common/b;->j6(Landroid/content/Context;Lcom/google/android/gms/common/ConnectionResult;I)Z

    move-result p1

    return p1
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
    .registers 9

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const-string v2, "GoogleApiManager"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/32 v5, 0x493e0

    packed-switch v0, :pswitch_data_2c8

    new-instance p1, Ljava/lang/StringBuilder;

    const/16 v1, 0x1f

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unknown message id: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :pswitch_24  #0x10
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/common/api/internal/b$b;

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/b;->J0:Ljava/util/Map;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/b$b;->j6(Lcom/google/android/gms/common/api/internal/b$b;)Lcom/google/android/gms/common/api/internal/E;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c7

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/b;->J0:Ljava/util/Map;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/b$b;->j6(Lcom/google/android/gms/common/api/internal/b$b;)Lcom/google/android/gms/common/api/internal/E;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/b$a;

    invoke-static {v0, p1}, Lcom/google/android/gms/common/api/internal/b$a;->DW(Lcom/google/android/gms/common/api/internal/b$a;Lcom/google/android/gms/common/api/internal/b$b;)V

    goto/16 :goto_2c7

    :pswitch_45  #0xf
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/common/api/internal/b$b;

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/b;->J0:Ljava/util/Map;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/b$b;->j6(Lcom/google/android/gms/common/api/internal/b$b;)Lcom/google/android/gms/common/api/internal/E;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c7

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/b;->J0:Ljava/util/Map;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/b$b;->j6(Lcom/google/android/gms/common/api/internal/b$b;)Lcom/google/android/gms/common/api/internal/E;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/b$a;

    invoke-static {v0, p1}, Lcom/google/android/gms/common/api/internal/b$a;->j6(Lcom/google/android/gms/common/api/internal/b$a;Lcom/google/android/gms/common/api/internal/b$b;)V

    goto/16 :goto_2c7

    :pswitch_66  #0xe
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/common/api/internal/k;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/k;->DW()Lcom/google/android/gms/common/api/internal/E;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/b;->J0:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7f

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/k;->j6()Labcd/Zx;

    move-result-object p1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_93

    :cond_7f
    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/b;->J0:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/b$a;

    invoke-static {v0, v4}, Lcom/google/android/gms/common/api/internal/b$a;->j6(Lcom/google/android/gms/common/api/internal/b$a;Z)Z

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/k;->j6()Labcd/Zx;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_93
    invoke-virtual {p1, v0}, Labcd/Zx;->j6(Ljava/lang/Object;)V

    goto/16 :goto_2c7

    :pswitch_98  #0xc
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/b;->J0:Ljava/util/Map;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c7

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/b;->J0:Ljava/util/Map;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/internal/b$a;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/b$a;->we()Z

    goto/16 :goto_2c7

    :pswitch_b1  #0xb
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/b;->J0:Ljava/util/Map;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c7

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/b;->J0:Ljava/util/Map;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/internal/b$a;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/b$a;->VH()V

    goto/16 :goto_2c7

    :pswitch_ca  #0xa
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/b;->QX:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_d0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/E;

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/b;->J0:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/b$a;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/b$a;->gn()V

    goto :goto_d0

    :cond_e8
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/b;->QX:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    goto/16 :goto_2c7

    :pswitch_ef  #0x9
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/b;->J0:Ljava/util/Map;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c7

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/b;->J0:Ljava/util/Map;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/internal/b$a;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/b$a;->v5()V

    goto/16 :goto_2c7

    :pswitch_108  #0x7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/common/api/e;

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/b;->j6(Lcom/google/android/gms/common/api/e;)V

    goto/16 :goto_2c7

    :pswitch_111  #0x6
    invoke-static {}, Lcom/google/android/gms/common/util/o;->j6()Z

    move-result p1

    if-eqz p1, :cond_2c7

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/b;->gn:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    instance-of p1, p1, Landroid/app/Application;

    if-eqz p1, :cond_2c7

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/b;->gn:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/a;->j6(Landroid/app/Application;)V

    invoke-static {}, Lcom/google/android/gms/common/api/internal/a;->j6()Lcom/google/android/gms/common/api/internal/a;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/common/api/internal/m;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/api/internal/m;-><init>(Lcom/google/android/gms/common/api/internal/b;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/internal/a;->j6(Lcom/google/android/gms/common/api/internal/a$a;)V

    invoke-static {}, Lcom/google/android/gms/common/api/internal/a;->j6()Lcom/google/android/gms/common/api/internal/a;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/common/api/internal/a;->j6(Z)Z

    move-result p1

    if-nez p1, :cond_2c7

    iput-wide v5, p0, Lcom/google/android/gms/common/api/internal/b;->VH:J

    goto/16 :goto_2c7

    :pswitch_146  #0x5
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/common/ConnectionResult;

    iget-object v4, p0, Lcom/google/android/gms/common/api/internal/b;->J0:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_156
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_169

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/common/api/internal/b$a;

    invoke-virtual {v5}, Lcom/google/android/gms/common/api/internal/b$a;->DW()I

    move-result v6

    if-ne v6, v0, :cond_156

    move-object v3, v5

    :cond_169
    if-eqz v3, :cond_1b1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/b;->u7:Lcom/google/android/gms/common/b;

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->DW()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/b;->j6(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->FH()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x45

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Error resolution was canceled by the user, original error message: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 v0, 0x11

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v0, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-virtual {v3, p1}, Lcom/google/android/gms/common/api/internal/b$a;->j6(Lcom/google/android/gms/common/api/Status;)V

    goto/16 :goto_2c7

    :cond_1b1
    new-instance p1, Ljava/lang/StringBuilder;

    const/16 v3, 0x4c

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Could not find API instance "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " while trying to fail enqueued calls."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    invoke-static {v2, p1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2c7

    :pswitch_1d3  #0x4, 0x8, 0xd
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/common/api/internal/t;

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/b;->J0:Ljava/util/Map;

    iget-object v2, p1, Lcom/google/android/gms/common/api/internal/t;->FH:Lcom/google/android/gms/common/api/e;

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/e;->FH()Lcom/google/android/gms/common/api/internal/E;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/b$a;

    if-nez v0, :cond_1fa

    iget-object v0, p1, Lcom/google/android/gms/common/api/internal/t;->FH:Lcom/google/android/gms/common/api/e;

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/internal/b;->j6(Lcom/google/android/gms/common/api/e;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/b;->J0:Ljava/util/Map;

    iget-object v2, p1, Lcom/google/android/gms/common/api/internal/t;->FH:Lcom/google/android/gms/common/api/e;

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/e;->FH()Lcom/google/android/gms/common/api/internal/E;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/b$a;

    :cond_1fa
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/b$a;->Hw()Z

    move-result v2

    if-eqz v2, :cond_216

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/b;->we:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    iget v3, p1, Lcom/google/android/gms/common/api/internal/t;->DW:I

    if-eq v2, v3, :cond_216

    iget-object p1, p1, Lcom/google/android/gms/common/api/internal/t;->j6:Lcom/google/android/gms/common/api/internal/l;

    sget-object v2, Lcom/google/android/gms/common/api/internal/b;->j6:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p1, v2}, Lcom/google/android/gms/common/api/internal/l;->j6(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/b$a;->gn()V

    goto/16 :goto_2c7

    :cond_216
    iget-object p1, p1, Lcom/google/android/gms/common/api/internal/t;->j6:Lcom/google/android/gms/common/api/internal/l;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/internal/b$a;->j6(Lcom/google/android/gms/common/api/internal/l;)V

    goto/16 :goto_2c7

    :pswitch_21d  #0x3
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/b;->J0:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_227
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/b$a;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/b$a;->tp()V

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/b$a;->j6()V

    goto :goto_227

    :pswitch_23a  #0x2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/common/api/internal/F;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/F;->j6()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_246
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2c7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/internal/E;

    iget-object v4, p0, Lcom/google/android/gms/common/api/internal/b;->J0:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/common/api/internal/b$a;

    if-nez v4, :cond_267

    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v4, 0xd

    invoke-direct {v0, v4}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    invoke-virtual {p1, v2, v0, v3}, Lcom/google/android/gms/common/api/internal/F;->j6(Lcom/google/android/gms/common/api/internal/E;Lcom/google/android/gms/common/ConnectionResult;Ljava/lang/String;)V

    goto :goto_2c7

    :cond_267
    invoke-virtual {v4}, Lcom/google/android/gms/common/api/internal/b$a;->FH()Z

    move-result v5

    if-eqz v5, :cond_27b

    sget-object v5, Lcom/google/android/gms/common/ConnectionResult;->j6:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v4}, Lcom/google/android/gms/common/api/internal/b$a;->Zo()Lcom/google/android/gms/common/api/a$f;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/gms/common/api/a$f;->getEndpointPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v2, v5, v4}, Lcom/google/android/gms/common/api/internal/F;->j6(Lcom/google/android/gms/common/api/internal/E;Lcom/google/android/gms/common/ConnectionResult;Ljava/lang/String;)V

    goto :goto_246

    :cond_27b
    invoke-virtual {v4}, Lcom/google/android/gms/common/api/internal/b$a;->EQ()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v5

    if-eqz v5, :cond_289

    invoke-virtual {v4}, Lcom/google/android/gms/common/api/internal/b$a;->EQ()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v4

    invoke-virtual {p1, v2, v4, v3}, Lcom/google/android/gms/common/api/internal/F;->j6(Lcom/google/android/gms/common/api/internal/E;Lcom/google/android/gms/common/ConnectionResult;Ljava/lang/String;)V

    goto :goto_246

    :cond_289
    invoke-virtual {v4, p1}, Lcom/google/android/gms/common/api/internal/b$a;->j6(Lcom/google/android/gms/common/api/internal/F;)V

    invoke-virtual {v4}, Lcom/google/android/gms/common/api/internal/b$a;->j6()V

    goto :goto_246

    :pswitch_290  #0x1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_29c

    const-wide/16 v5, 0x2710

    :cond_29c
    iput-wide v5, p0, Lcom/google/android/gms/common/api/internal/b;->VH:J

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/b;->XL:Landroid/os/Handler;

    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/b;->J0:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2af
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2c7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/internal/E;

    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/b;->XL:Landroid/os/Handler;

    invoke-virtual {v3, v0, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    iget-wide v4, p0, Lcom/google/android/gms/common/api/internal/b;->VH:J

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_2af

    :cond_2c7
    :goto_2c7
    return v1

    :pswitch_data_2c8
    .packed-switch 0x1
        :pswitch_290  #00000001
        :pswitch_23a  #00000002
        :pswitch_21d  #00000003
        :pswitch_1d3  #00000004
        :pswitch_146  #00000005
        :pswitch_111  #00000006
        :pswitch_108  #00000007
        :pswitch_1d3  #00000008
        :pswitch_ef  #00000009
        :pswitch_ca  #0000000a
        :pswitch_b1  #0000000b
        :pswitch_98  #0000000c
        :pswitch_1d3  #0000000d
        :pswitch_66  #0000000e
        :pswitch_45  #0000000f
        :pswitch_24  #00000010
    .end packed-switch
.end method

.method public final j6(Lcom/google/android/gms/common/ConnectionResult;I)V
    .registers 6

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/common/api/internal/b;->DW(Lcom/google/android/gms/common/ConnectionResult;I)Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/b;->XL:Landroid/os/Handler;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_11
    return-void
.end method
