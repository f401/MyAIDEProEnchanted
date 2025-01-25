.class public abstract Lcom/google/android/gms/common/internal/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/os/IInterface;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final CONNECT_STATE_CONNECTED:I = 0x4

.field public static final CONNECT_STATE_DISCONNECTED:I = 0x1

.field public static final CONNECT_STATE_DISCONNECTING:I = 0x5

.field public static final DEFAULT_ACCOUNT:Ljava/lang/String; = "<<default account>>"

.field public static final GOOGLE_PLUS_REQUIRED_FEATURES:[Ljava/lang/String;

.field public static final KEY_PENDING_INTENT:Ljava/lang/String; = "pendingIntent"

.field private static final zzbs:[Lcom/google/android/gms/common/Feature;


# instance fields
.field private final mContext:Landroid/content/Context;

.field final mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private zzbt:I

.field private zzbu:J

.field private zzbv:J

.field private zzbw:I

.field private zzbx:J

.field private zzby:Lcom/google/android/gms/common/internal/K;

.field private final zzbz:Landroid/os/Looper;

.field private final zzca:Lcom/google/android/gms/common/internal/i;

.field private final zzcb:Lcom/google/android/gms/common/c;

.field private final zzcc:Ljava/lang/Object;

.field private zzcd:Lcom/google/android/gms/common/internal/o;

.field protected zzce:Lcom/google/android/gms/common/internal/c$c;

.field private zzcf:Landroid/os/IInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final zzcg:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/common/internal/c$h<",
            "*>;>;"
        }
    .end annotation
.end field

.field private zzch:Lcom/google/android/gms/common/internal/c$j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/internal/c$j;"
        }
    .end annotation
.end field

.field private zzci:I

.field private final zzcj:Lcom/google/android/gms/common/internal/c$a;

.field private final zzck:Lcom/google/android/gms/common/internal/c$b;

.field private final zzcl:I

.field private final zzcm:Ljava/lang/String;

.field private zzcn:Lcom/google/android/gms/common/ConnectionResult;

.field private zzco:Z

.field private volatile zzcp:Lcom/google/android/gms/common/internal/zzb;

.field protected zzcq:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x0

    new-array v1, v0, [Lcom/google/android/gms/common/Feature;

    sput-object v1, Lcom/google/android/gms/common/internal/c;->zzbs:[Lcom/google/android/gms/common/Feature;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "service_esmobile"

    aput-object v2, v1, v0

    const/4 v0, 0x1

    const-string v2, "service_googleme"

    aput-object v2, v1, v0

    sput-object v1, Lcom/google/android/gms/common/internal/c;->GOOGLE_PLUS_REQUIRED_FEATURES:[Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/gms/common/internal/i;Lcom/google/android/gms/common/c;ILcom/google/android/gms/common/internal/c$a;Lcom/google/android/gms/common/internal/c$b;)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/c;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/c;->zzcc:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/c;->zzcg:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/common/internal/c;->zzci:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/internal/c;->zzcn:Lcom/google/android/gms/common/ConnectionResult;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/gms/common/internal/c;->zzco:Z

    iput-object v0, p0, Lcom/google/android/gms/common/internal/c;->zzcp:Lcom/google/android/gms/common/internal/zzb;

    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v2, p0, Lcom/google/android/gms/common/internal/c;->zzcq:Ljava/util/concurrent/atomic/AtomicInteger;

    const-string v1, "Context must not be null"

    invoke-static {p1, v1}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Landroid/content/Context;

    iput-object p1, p0, Lcom/google/android/gms/common/internal/c;->mContext:Landroid/content/Context;

    const-string p1, "Handler must not be null"

    invoke-static {p2, p1}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, p2

    check-cast p1, Landroid/os/Handler;

    iput-object p2, p0, Lcom/google/android/gms/common/internal/c;->mHandler:Landroid/os/Handler;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/common/internal/c;->zzbz:Landroid/os/Looper;

    const-string p1, "Supervisor must not be null"

    invoke-static {p3, p1}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, p3

    check-cast p1, Lcom/google/android/gms/common/internal/i;

    iput-object p3, p0, Lcom/google/android/gms/common/internal/c;->zzca:Lcom/google/android/gms/common/internal/i;

    const-string p1, "API availability must not be null"

    invoke-static {p4, p1}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, p4

    check-cast p1, Lcom/google/android/gms/common/c;

    iput-object p4, p0, Lcom/google/android/gms/common/internal/c;->zzcb:Lcom/google/android/gms/common/c;

    iput p5, p0, Lcom/google/android/gms/common/internal/c;->zzcl:I

    iput-object p6, p0, Lcom/google/android/gms/common/internal/c;->zzcj:Lcom/google/android/gms/common/internal/c$a;

    iput-object p7, p0, Lcom/google/android/gms/common/internal/c;->zzck:Lcom/google/android/gms/common/internal/c$b;

    iput-object v0, p0, Lcom/google/android/gms/common/internal/c;->zzcm:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/c$a;Lcom/google/android/gms/common/internal/c$b;Ljava/lang/String;)V
    .registers 16

    invoke-static {p1}, Lcom/google/android/gms/common/internal/i;->j6(Landroid/content/Context;)Lcom/google/android/gms/common/internal/i;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/common/c;->j6()Lcom/google/android/gms/common/c;

    move-result-object v4

    invoke-static {p4}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p4

    check-cast v0, Lcom/google/android/gms/common/internal/c$a;

    invoke-static {p5}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p5

    check-cast v0, Lcom/google/android/gms/common/internal/c$b;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/common/internal/c;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/i;Lcom/google/android/gms/common/c;ILcom/google/android/gms/common/internal/c$a;Lcom/google/android/gms/common/internal/c$b;Ljava/lang/String;)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/i;Lcom/google/android/gms/common/c;ILcom/google/android/gms/common/internal/c$a;Lcom/google/android/gms/common/internal/c$b;Ljava/lang/String;)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/c;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/c;->zzcc:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/c;->zzcg:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/common/internal/c;->zzci:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/internal/c;->zzcn:Lcom/google/android/gms/common/ConnectionResult;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/gms/common/internal/c;->zzco:Z

    iput-object v0, p0, Lcom/google/android/gms/common/internal/c;->zzcp:Lcom/google/android/gms/common/internal/zzb;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/c;->zzcq:Ljava/util/concurrent/atomic/AtomicInteger;

    const-string v0, "Context must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    iput-object p1, p0, Lcom/google/android/gms/common/internal/c;->mContext:Landroid/content/Context;

    const-string p1, "Looper must not be null"

    invoke-static {p2, p1}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, p2

    check-cast p1, Landroid/os/Looper;

    iput-object p2, p0, Lcom/google/android/gms/common/internal/c;->zzbz:Landroid/os/Looper;

    const-string p1, "Supervisor must not be null"

    invoke-static {p3, p1}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, p3

    check-cast p1, Lcom/google/android/gms/common/internal/i;

    iput-object p3, p0, Lcom/google/android/gms/common/internal/c;->zzca:Lcom/google/android/gms/common/internal/i;

    const-string p1, "API availability must not be null"

    invoke-static {p4, p1}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, p4

    check-cast p1, Lcom/google/android/gms/common/c;

    iput-object p4, p0, Lcom/google/android/gms/common/internal/c;->zzcb:Lcom/google/android/gms/common/c;

    new-instance p1, Lcom/google/android/gms/common/internal/c$g;

    invoke-direct {p1, p0, p2}, Lcom/google/android/gms/common/internal/c$g;-><init>(Lcom/google/android/gms/common/internal/c;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/google/android/gms/common/internal/c;->mHandler:Landroid/os/Handler;

    iput p5, p0, Lcom/google/android/gms/common/internal/c;->zzcl:I

    iput-object p6, p0, Lcom/google/android/gms/common/internal/c;->zzcj:Lcom/google/android/gms/common/internal/c$a;

    iput-object p7, p0, Lcom/google/android/gms/common/internal/c;->zzck:Lcom/google/android/gms/common/internal/c$b;

    iput-object p8, p0, Lcom/google/android/gms/common/internal/c;->zzcm:Ljava/lang/String;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/common/internal/c;Lcom/google/android/gms/common/ConnectionResult;)Lcom/google/android/gms/common/ConnectionResult;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/common/internal/c;->zzcn:Lcom/google/android/gms/common/ConnectionResult;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/common/internal/c;Lcom/google/android/gms/common/internal/o;)Lcom/google/android/gms/common/internal/o;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/common/internal/c;->zzcd:Lcom/google/android/gms/common/internal/o;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/common/internal/c;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/common/internal/c;->zzcc:Ljava/lang/Object;

    return-object p0
.end method

.method private final zza(ILandroid/os/IInterface;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x4

    if-ne p1, v2, :cond_7

    const/4 v3, 0x1

    goto :goto_8

    :cond_7
    const/4 v3, 0x0

    :goto_8
    if-eqz p2, :cond_c

    const/4 v4, 0x1

    goto :goto_d

    :cond_c
    const/4 v4, 0x0

    :goto_d
    if-ne v3, v4, :cond_11

    const/4 v3, 0x1

    goto :goto_12

    :cond_11
    const/4 v3, 0x0

    :goto_12
    invoke-static {v3}, Lcom/google/android/gms/common/internal/r;->j6(Z)V

    iget-object v3, p0, Lcom/google/android/gms/common/internal/c;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_18
    iput p1, p0, Lcom/google/android/gms/common/internal/c;->zzci:I

    iput-object p2, p0, Lcom/google/android/gms/common/internal/c;->zzcf:Landroid/os/IInterface;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/common/internal/c;->onSetConnectState(ILandroid/os/IInterface;)V

    const/4 v4, 0x0

    if-eq p1, v1, :cond_13c

    const/4 v5, 0x2

    const/4 v6, 0x3

    if-eq p1, v5, :cond_31

    if-eq p1, v6, :cond_31

    if-eq p1, v2, :cond_2c

    goto/16 :goto_157

    :cond_2c
    invoke-virtual {p0, p2}, Lcom/google/android/gms/common/internal/c;->onConnectedLocked(Landroid/os/IInterface;)V

    goto/16 :goto_157

    :cond_31
    iget-object p1, p0, Lcom/google/android/gms/common/internal/c;->zzch:Lcom/google/android/gms/common/internal/c$j;

    if-eqz p1, :cond_96

    iget-object p1, p0, Lcom/google/android/gms/common/internal/c;->zzby:Lcom/google/android/gms/common/internal/K;

    if-eqz p1, :cond_96

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/K;->FH()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/common/internal/c;->zzby:Lcom/google/android/gms/common/internal/K;

    invoke-virtual {p2}, Lcom/google/android/gms/common/internal/K;->j6()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    new-instance v7, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x46

    add-int/2addr v2, v5

    invoke-direct {v7, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Calling connect() while still connected, missing disconnect() for "

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " on "

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "GmsClient"

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/google/android/gms/common/internal/c;->zzca:Lcom/google/android/gms/common/internal/i;

    iget-object p1, p0, Lcom/google/android/gms/common/internal/c;->zzby:Lcom/google/android/gms/common/internal/K;

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/K;->FH()Ljava/lang/String;

    move-result-object v8

    iget-object p1, p0, Lcom/google/android/gms/common/internal/c;->zzby:Lcom/google/android/gms/common/internal/K;

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/K;->j6()Ljava/lang/String;

    move-result-object v9

    iget-object p1, p0, Lcom/google/android/gms/common/internal/c;->zzby:Lcom/google/android/gms/common/internal/K;

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/K;->DW()I

    move-result v10

    iget-object v11, p0, Lcom/google/android/gms/common/internal/c;->zzch:Lcom/google/android/gms/common/internal/c$j;

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/c;->zzj()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {v7 .. v12}, Lcom/google/android/gms/common/internal/i;->j6(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ServiceConnection;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/common/internal/c;->zzcq:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    :cond_96
    new-instance p1, Lcom/google/android/gms/common/internal/c$j;

    iget-object p2, p0, Lcom/google/android/gms/common/internal/c;->zzcq:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p2

    invoke-direct {p1, p0, p2}, Lcom/google/android/gms/common/internal/c$j;-><init>(Lcom/google/android/gms/common/internal/c;I)V

    iput-object p1, p0, Lcom/google/android/gms/common/internal/c;->zzch:Lcom/google/android/gms/common/internal/c$j;

    iget p1, p0, Lcom/google/android/gms/common/internal/c;->zzci:I

    const/16 p2, 0x81

    if-ne p1, v6, :cond_c1

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/c;->getLocalStartServiceAction()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_c1

    new-instance p1, Lcom/google/android/gms/common/internal/K;

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/c;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/c;->getLocalStartServiceAction()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v0, v2, v1, p2}, Lcom/google/android/gms/common/internal/K;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    goto :goto_ce

    :cond_c1
    new-instance p1, Lcom/google/android/gms/common/internal/K;

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/c;->getStartServicePackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/c;->getStartServiceAction()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v1, v2, v0, p2}, Lcom/google/android/gms/common/internal/K;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    :goto_ce
    iput-object p1, p0, Lcom/google/android/gms/common/internal/c;->zzby:Lcom/google/android/gms/common/internal/K;

    iget-object p2, p0, Lcom/google/android/gms/common/internal/c;->zzca:Lcom/google/android/gms/common/internal/i;

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/K;->FH()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/c;->zzby:Lcom/google/android/gms/common/internal/K;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/K;->j6()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/internal/c;->zzby:Lcom/google/android/gms/common/internal/K;

    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/K;->DW()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/common/internal/c;->zzch:Lcom/google/android/gms/common/internal/c$j;

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/c;->zzj()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/google/android/gms/common/internal/i$a;

    invoke-direct {v6, p1, v0, v1}, Lcom/google/android/gms/common/internal/i$a;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p2, v6, v2, v5}, Lcom/google/android/gms/common/internal/i;->j6(Lcom/google/android/gms/common/internal/i$a;Landroid/content/ServiceConnection;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_157

    iget-object p1, p0, Lcom/google/android/gms/common/internal/c;->zzby:Lcom/google/android/gms/common/internal/K;

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/K;->FH()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/common/internal/c;->zzby:Lcom/google/android/gms/common/internal/K;

    invoke-virtual {p2}, Lcom/google/android/gms/common/internal/K;->j6()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x22

    add-int/2addr v0, v1

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "unable to connect to service: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " on "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "GmsClient"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/google/android/gms/common/internal/c;->zzcq:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    const/16 p2, 0x10

    invoke-virtual {p0, p2, v4, p1}, Lcom/google/android/gms/common/internal/c;->zza(ILandroid/os/Bundle;I)V

    goto :goto_157

    :cond_13c
    iget-object p1, p0, Lcom/google/android/gms/common/internal/c;->zzch:Lcom/google/android/gms/common/internal/c$j;

    if-eqz p1, :cond_157

    iget-object v5, p0, Lcom/google/android/gms/common/internal/c;->zzca:Lcom/google/android/gms/common/internal/i;

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/c;->getStartServiceAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/c;->getStartServicePackage()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x81

    iget-object v9, p0, Lcom/google/android/gms/common/internal/c;->zzch:Lcom/google/android/gms/common/internal/c$j;

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/c;->zzj()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {v5 .. v10}, Lcom/google/android/gms/common/internal/i;->j6(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ServiceConnection;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/google/android/gms/common/internal/c;->zzch:Lcom/google/android/gms/common/internal/c$j;

    :cond_157
    :goto_157
    monitor-exit v3

    return-void

    :catchall_159
    move-exception p1

    monitor-exit v3
    :try_end_15b
    .catchall {:try_start_18 .. :try_end_15b} :catchall_159

    throw p1
.end method

.method static synthetic zza(Lcom/google/android/gms/common/internal/c;I)V
    .registers 2

    const/16 p1, 0x10

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/internal/c;->zzb(I)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/common/internal/c;ILandroid/os/IInterface;)V
    .registers 3

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/internal/c;->zza(ILandroid/os/IInterface;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/common/internal/c;Lcom/google/android/gms/common/internal/zzb;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/internal/c;->zza(Lcom/google/android/gms/common/internal/zzb;)V

    return-void
.end method

.method private final zza(Lcom/google/android/gms/common/internal/zzb;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/common/internal/c;->zzcp:Lcom/google/android/gms/common/internal/zzb;

    return-void
.end method

.method private final zza(IILandroid/os/IInterface;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IITT;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/internal/c;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget v1, p0, Lcom/google/android/gms/common/internal/c;->zzci:I

    if-eq v1, p1, :cond_a

    monitor-exit v0

    const/4 p1, 0x0

    return p1

    :cond_a
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/common/internal/c;->zza(ILandroid/os/IInterface;)V

    monitor-exit v0

    const/4 p1, 0x1

    return p1

    :catchall_10
    move-exception p1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p1
.end method

.method static synthetic zza(Lcom/google/android/gms/common/internal/c;IILandroid/os/IInterface;)Z
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/common/internal/c;->zza(IILandroid/os/IInterface;)Z

    move-result p0

    return p0
.end method

.method private final zzb(I)V
    .registers 5

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/c;->zzk()Z

    move-result p1

    if-eqz p1, :cond_b

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/common/internal/c;->zzco:Z

    const/4 p1, 0x5

    goto :goto_c

    :cond_b
    const/4 p1, 0x4

    :goto_c
    iget-object v0, p0, Lcom/google/android/gms/common/internal/c;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/c;->zzcq:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/16 v2, 0x10

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/common/internal/c;)Z
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/c;->zzl()Z

    move-result p0

    return p0
.end method

.method static synthetic zzc(Lcom/google/android/gms/common/internal/c;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/google/android/gms/common/internal/c;->zzco:Z

    return p0
.end method

.method static synthetic zzd(Lcom/google/android/gms/common/internal/c;)Lcom/google/android/gms/common/ConnectionResult;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/common/internal/c;->zzcn:Lcom/google/android/gms/common/ConnectionResult;

    return-object p0
.end method

.method static synthetic zze(Lcom/google/android/gms/common/internal/c;)Lcom/google/android/gms/common/internal/c$a;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/common/internal/c;->zzcj:Lcom/google/android/gms/common/internal/c$a;

    return-object p0
.end method

.method static synthetic zzf(Lcom/google/android/gms/common/internal/c;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/common/internal/c;->zzcg:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic zzg(Lcom/google/android/gms/common/internal/c;)Lcom/google/android/gms/common/internal/c$b;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/common/internal/c;->zzck:Lcom/google/android/gms/common/internal/c$b;

    return-object p0
.end method

.method private final zzj()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/c;->zzcm:Ljava/lang/String;

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/google/android/gms/common/internal/c;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    :cond_e
    return-object v0
.end method

.method private final zzk()Z
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/common/internal/c;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget v1, p0, Lcom/google/android/gms/common/internal/c;->zzci:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    monitor-exit v0

    return v1

    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method private final zzl()Z
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/gms/common/internal/c;->zzco:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return v1

    :cond_6
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/c;->getServiceDescriptor()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    return v1

    :cond_11
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/c;->getLocalStartServiceAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1c

    return v1

    :cond_1c
    :try_start_1c
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/c;->getServiceDescriptor()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_23
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1c .. :try_end_23} :catch_25

    const/4 v0, 0x1

    return v0

    :catch_25
    move-exception v0

    return v1
.end method


# virtual methods
.method public checkAvailabilityAndConnect()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/common/internal/c;->zzcb:Lcom/google/android/gms/common/c;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/c;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/c;->getMinApkVersion()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/c;->j6(Landroid/content/Context;I)I

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/google/android/gms/common/internal/c;->zza(ILandroid/os/IInterface;)V

    new-instance v1, Lcom/google/android/gms/common/internal/c$d;

    invoke-direct {v1, p0}, Lcom/google/android/gms/common/internal/c$d;-><init>(Lcom/google/android/gms/common/internal/c;)V

    invoke-virtual {p0, v1, v0, v2}, Lcom/google/android/gms/common/internal/c;->triggerNotAvailable(Lcom/google/android/gms/common/internal/c$c;ILandroid/app/PendingIntent;)V

    return-void

    :cond_1c
    new-instance v0, Lcom/google/android/gms/common/internal/c$d;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/internal/c$d;-><init>(Lcom/google/android/gms/common/internal/c;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/internal/c;->connect(Lcom/google/android/gms/common/internal/c$c;)V

    return-void
.end method

.method protected final checkConnected()V
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/c;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not connected. Call connect() and wait for onConnected() to be called."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public connect(Lcom/google/android/gms/common/internal/c$c;)V
    .registers 3

    const-string v0, "Connection progress callbacks cannot be null."

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/common/internal/c$c;

    iput-object p1, p0, Lcom/google/android/gms/common/internal/c;->zzce:Lcom/google/android/gms/common/internal/c$c;

    const/4 p1, 0x2

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/common/internal/c;->zza(ILandroid/os/IInterface;)V

    return-void
.end method

.method protected abstract createServiceInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            ")TT;"
        }
    .end annotation
.end method

.method public disconnect()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/common/internal/c;->zzcq:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object v0, p0, Lcom/google/android/gms/common/internal/c;->zzcg:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_8
    iget-object v1, p0, Lcom/google/android/gms/common/internal/c;->zzcg:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_f
    if-ge v2, v1, :cond_1f

    iget-object v3, p0, Lcom/google/android/gms/common/internal/c;->zzcg:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/common/internal/c$h;

    invoke-virtual {v3}, Lcom/google/android/gms/common/internal/c$h;->j6()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_1f
    iget-object v1, p0, Lcom/google/android/gms/common/internal/c;->zzcg:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_34

    iget-object v1, p0, Lcom/google/android/gms/common/internal/c;->zzcc:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_29
    iput-object v0, p0, Lcom/google/android/gms/common/internal/c;->zzcd:Lcom/google/android/gms/common/internal/o;

    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_31

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/common/internal/c;->zza(ILandroid/os/IInterface;)V

    return-void

    :catchall_31
    move-exception v0

    :try_start_32
    monitor-exit v1
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    throw v0

    :catchall_34
    move-exception v1

    :try_start_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    goto :goto_38

    :goto_37
    throw v1

    :goto_38
    goto :goto_37
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 14

    iget-object p2, p0, Lcom/google/android/gms/common/internal/c;->mLock:Ljava/lang/Object;

    monitor-enter p2

    :try_start_3
    iget p4, p0, Lcom/google/android/gms/common/internal/c;->zzci:I

    iget-object v0, p0, Lcom/google/android/gms/common/internal/c;->zzcf:Landroid/os/IInterface;

    monitor-exit p2
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_170

    iget-object v1, p0, Lcom/google/android/gms/common/internal/c;->zzcc:Ljava/lang/Object;

    monitor-enter v1

    :try_start_b
    iget-object p2, p0, Lcom/google/android/gms/common/internal/c;->zzcd:Lcom/google/android/gms/common/internal/o;

    monitor-exit v1
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_16d

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    const-string v2, "mConnectState="

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p4, v2, :cond_35

    if-eq p4, v1, :cond_32

    const/4 v3, 0x3

    if-eq p4, v3, :cond_2f

    const/4 v3, 0x4

    if-eq p4, v3, :cond_2c

    const/4 v3, 0x5

    if-eq p4, v3, :cond_29

    const-string p4, "UNKNOWN"

    goto :goto_37

    :cond_29
    const-string p4, "DISCONNECTING"

    goto :goto_37

    :cond_2c
    const-string p4, "CONNECTED"

    goto :goto_37

    :cond_2f
    const-string p4, "LOCAL_CONNECTING"

    goto :goto_37

    :cond_32
    const-string p4, "REMOTE_CONNECTING"

    goto :goto_37

    :cond_35
    const-string p4, "DISCONNECTED"

    :goto_37
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p4, " mService="

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    if-nez v0, :cond_47

    const-string p4, "null"

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    goto :goto_64

    :cond_47
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/c;->getServiceDescriptor()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p4

    const-string v3, "@"

    invoke-virtual {p4, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p4

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    :goto_64
    const-string p4, " mServiceBroker="

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    if-nez p2, :cond_71

    const-string p2, "null"

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_86

    :cond_71
    const-string p4, "IGmsServiceBroker@"

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p4

    invoke-interface {p2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_86
    new-instance p2, Ljava/text/SimpleDateFormat;

    const-string p4, "yyyy-MM-dd HH:mm:ss.SSS"

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {p2, p4, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iget-wide v3, p0, Lcom/google/android/gms/common/internal/c;->zzbv:J

    const-wide/16 v5, 0x0

    cmp-long p4, v3, v5

    if-lez p4, :cond_cd

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p4

    const-string v0, "lastConnectedTime="

    invoke-virtual {p4, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p4

    iget-wide v3, p0, Lcom/google/android/gms/common/internal/c;->zzbv:J

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0x15

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_cd
    iget-wide v3, p0, Lcom/google/android/gms/common/internal/c;->zzbu:J

    cmp-long p4, v3, v5

    if-lez p4, :cond_121

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p4

    const-string v0, "lastSuspendedCause="

    invoke-virtual {p4, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    iget p4, p0, Lcom/google/android/gms/common/internal/c;->zzbt:I

    if-eq p4, v2, :cond_ea

    if-eq p4, v1, :cond_e7

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p4

    goto :goto_ec

    :cond_e7
    const-string p4, "CAUSE_NETWORK_LOST"

    goto :goto_ec

    :cond_ea
    const-string p4, "CAUSE_SERVICE_DISCONNECTED"

    :goto_ec
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    const-string p4, " lastSuspendedTime="

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p4

    iget-wide v0, p0, Lcom/google/android/gms/common/internal/c;->zzbu:J

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p2, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x15

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_121
    iget-wide v0, p0, Lcom/google/android/gms/common/internal/c;->zzbx:J

    cmp-long p4, v0, v5

    if-lez p4, :cond_16c

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p1

    const-string p4, "lastFailedStatus="

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p1

    iget p4, p0, Lcom/google/android/gms/common/internal/c;->zzbw:I

    invoke-static {p4}, Lcom/google/android/gms/common/api/d;->j6(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    const-string p1, " lastFailedTime="

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p1

    iget-wide p3, p0, Lcom/google/android/gms/common/internal/c;->zzbx:J

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p3, p4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x15

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, " "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_16c
    return-void

    :catchall_16d
    move-exception p1

    :try_start_16e
    monitor-exit v1
    :try_end_16f
    .catchall {:try_start_16e .. :try_end_16f} :catchall_16d

    throw p1

    :catchall_170
    move-exception p1

    :try_start_171
    monitor-exit p2
    :try_end_172
    .catchall {:try_start_171 .. :try_end_172} :catchall_170

    throw p1
.end method

.method public getAccount()Landroid/accounts/Account;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getApiFeatures()[Lcom/google/android/gms/common/Feature;
    .registers 2

    sget-object v0, Lcom/google/android/gms/common/internal/c;->zzbs:[Lcom/google/android/gms/common/Feature;

    return-object v0
.end method

.method public final getAvailableFeatures()[Lcom/google/android/gms/common/Feature;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/c;->zzcp:Lcom/google/android/gms/common/internal/zzb;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    :cond_6
    iget-object v0, v0, Lcom/google/android/gms/common/internal/zzb;->DW:[Lcom/google/android/gms/common/Feature;

    return-object v0
.end method

.method public getConnectionHint()Landroid/os/Bundle;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/c;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getEndpointPackageName()Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/c;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/google/android/gms/common/internal/c;->zzby:Lcom/google/android/gms/common/internal/K;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/K;->j6()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_f
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed to connect when checking package"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected getGetServiceRequestExtraArgs()Landroid/os/Bundle;
    .registers 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method protected getLocalStartServiceAction()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getLooper()Landroid/os/Looper;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/c;->zzbz:Landroid/os/Looper;

    return-object v0
.end method

.method public getMinApkVersion()I
    .registers 2

    sget v0, Lcom/google/android/gms/common/c;->j6:I

    return v0
.end method

.method public getRemoteService(Lcom/google/android/gms/common/internal/k;Ljava/util/Set;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/internal/k;",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/c;->getGetServiceRequestExtraArgs()Landroid/os/Bundle;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/common/internal/GetServiceRequest;

    iget v2, p0, Lcom/google/android/gms/common/internal/c;->zzcl:I

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/internal/GetServiceRequest;-><init>(I)V

    iget-object v2, p0, Lcom/google/android/gms/common/internal/c;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/gms/common/internal/GetServiceRequest;->Hw:Ljava/lang/String;

    iput-object v0, v1, Lcom/google/android/gms/common/internal/GetServiceRequest;->VH:Landroid/os/Bundle;

    if-eqz p2, :cond_25

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/gms/common/api/Scope;

    invoke-interface {p2, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lcom/google/android/gms/common/api/Scope;

    iput-object p2, v1, Lcom/google/android/gms/common/internal/GetServiceRequest;->Zo:[Lcom/google/android/gms/common/api/Scope;

    :cond_25
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/c;->requiresSignIn()Z

    move-result p2

    if-eqz p2, :cond_4a

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/c;->getAccount()Landroid/accounts/Account;

    move-result-object p2

    if-eqz p2, :cond_36

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/c;->getAccount()Landroid/accounts/Account;

    move-result-object p2

    goto :goto_3f

    :cond_36
    new-instance p2, Landroid/accounts/Account;

    const-string v0, "<<default account>>"

    const-string v2, "com.google"

    invoke-direct {p2, v0, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3f
    iput-object p2, v1, Lcom/google/android/gms/common/internal/GetServiceRequest;->gn:Landroid/accounts/Account;

    if-eqz p1, :cond_56

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    iput-object p1, v1, Lcom/google/android/gms/common/internal/GetServiceRequest;->v5:Landroid/os/IBinder;

    goto :goto_56

    :cond_4a
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/c;->requiresAccount()Z

    move-result p1

    if-eqz p1, :cond_56

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/c;->getAccount()Landroid/accounts/Account;

    move-result-object p1

    iput-object p1, v1, Lcom/google/android/gms/common/internal/GetServiceRequest;->gn:Landroid/accounts/Account;

    :cond_56
    :goto_56
    sget-object p1, Lcom/google/android/gms/common/internal/c;->zzbs:[Lcom/google/android/gms/common/Feature;

    iput-object p1, v1, Lcom/google/android/gms/common/internal/GetServiceRequest;->u7:[Lcom/google/android/gms/common/Feature;

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/c;->getApiFeatures()[Lcom/google/android/gms/common/Feature;

    move-result-object p1

    iput-object p1, v1, Lcom/google/android/gms/common/internal/GetServiceRequest;->tp:[Lcom/google/android/gms/common/Feature;

    :try_start_60
    iget-object p1, p0, Lcom/google/android/gms/common/internal/c;->zzcc:Ljava/lang/Object;

    monitor-enter p1
    :try_end_63
    .catch Landroid/os/DeadObjectException; {:try_start_60 .. :try_end_63} :catch_9b
    .catch Ljava/lang/SecurityException; {:try_start_60 .. :try_end_63} :catch_99
    .catch Landroid/os/RemoteException; {:try_start_60 .. :try_end_63} :catch_84
    .catch Ljava/lang/RuntimeException; {:try_start_60 .. :try_end_63} :catch_82

    :try_start_63
    iget-object p2, p0, Lcom/google/android/gms/common/internal/c;->zzcd:Lcom/google/android/gms/common/internal/o;

    if-eqz p2, :cond_76

    new-instance v0, Lcom/google/android/gms/common/internal/c$i;

    iget-object v2, p0, Lcom/google/android/gms/common/internal/c;->zzcq:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-direct {v0, p0, v2}, Lcom/google/android/gms/common/internal/c$i;-><init>(Lcom/google/android/gms/common/internal/c;I)V

    invoke-interface {p2, v0, v1}, Lcom/google/android/gms/common/internal/o;->j6(Lcom/google/android/gms/common/internal/m;Lcom/google/android/gms/common/internal/GetServiceRequest;)V

    goto :goto_7d

    :cond_76
    const-string p2, "GmsClient"

    const-string v0, "mServiceBroker is null, client disconnected"

    invoke-static {p2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7d
    monitor-exit p1

    return-void

    :catchall_7f
    move-exception p2

    monitor-exit p1
    :try_end_81
    .catchall {:try_start_63 .. :try_end_81} :catchall_7f

    :try_start_81
    throw p2
    :try_end_82
    .catch Landroid/os/DeadObjectException; {:try_start_81 .. :try_end_82} :catch_9b
    .catch Ljava/lang/SecurityException; {:try_start_81 .. :try_end_82} :catch_99
    .catch Landroid/os/RemoteException; {:try_start_81 .. :try_end_82} :catch_84
    .catch Ljava/lang/RuntimeException; {:try_start_81 .. :try_end_82} :catch_82

    :catch_82
    move-exception p1

    goto :goto_85

    :catch_84
    move-exception p1

    :goto_85
    const-string p2, "GmsClient"

    const-string v0, "IGmsServiceBroker.getService failed"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object p1, p0, Lcom/google/android/gms/common/internal/c;->zzcq:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    const/16 p2, 0x8

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0, v0, p1}, Lcom/google/android/gms/common/internal/c;->onPostInitHandler(ILandroid/os/IBinder;Landroid/os/Bundle;I)V

    return-void

    :catch_99
    move-exception p1

    throw p1

    :catch_9b
    move-exception p1

    const-string p2, "GmsClient"

    const-string v0, "IGmsServiceBroker.getService failed"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/internal/c;->triggerConnectionSuspended(I)V

    return-void
.end method

.method protected getScopes()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation

    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    return-object v0
.end method

.method public final getService()Landroid/os/IInterface;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/internal/c;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget v1, p0, Lcom/google/android/gms/common/internal/c;->zzci:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1b

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/c;->checkConnected()V

    iget-object v1, p0, Lcom/google/android/gms/common/internal/c;->zzcf:Landroid/os/IInterface;

    if-eqz v1, :cond_11

    const/4 v1, 0x1

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    const-string v2, "Client is connected but service is null"

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/r;->DW(ZLjava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/common/internal/c;->zzcf:Landroid/os/IInterface;

    monitor-exit v0

    return-object v1

    :cond_1b
    new-instance v1, Landroid/os/DeadObjectException;

    invoke-direct {v1}, Landroid/os/DeadObjectException;-><init>()V

    throw v1

    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw v1
.end method

.method public getServiceBrokerBinder()Landroid/os/IBinder;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/common/internal/c;->zzcc:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/common/internal/c;->zzcd:Lcom/google/android/gms/common/internal/o;

    if-nez v1, :cond_a

    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    :cond_a
    invoke-interface {v1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method protected abstract getServiceDescriptor()Ljava/lang/String;
.end method

.method public getSignInIntent()Landroid/content/Intent;
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not a sign in API"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected abstract getStartServiceAction()Ljava/lang/String;
.end method

.method protected getStartServicePackage()Ljava/lang/String;
    .registers 2

    const-string v0, "com.google.android.gms"

    return-object v0
.end method

.method public isConnected()Z
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/common/internal/c;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget v1, p0, Lcom/google/android/gms/common/internal/c;->zzci:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    monitor-exit v0

    return v1

    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public isConnecting()Z
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/common/internal/c;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget v1, p0, Lcom/google/android/gms/common/internal/c;->zzci:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_e

    const/4 v2, 0x3

    if-ne v1, v2, :cond_c

    goto :goto_e

    :cond_c
    const/4 v1, 0x0

    goto :goto_f

    :cond_e
    :goto_e
    const/4 v1, 0x1

    :goto_f
    monitor-exit v0

    return v1

    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method protected onConnectedLocked(Landroid/os/IInterface;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/common/internal/c;->zzbv:J

    return-void
.end method

.method protected onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 4

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->DW()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/common/internal/c;->zzbw:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/common/internal/c;->zzbx:J

    return-void
.end method

.method protected onConnectionSuspended(I)V
    .registers 4

    iput p1, p0, Lcom/google/android/gms/common/internal/c;->zzbt:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/common/internal/c;->zzbu:J

    return-void
.end method

.method protected onPostInitHandler(ILandroid/os/IBinder;Landroid/os/Bundle;I)V
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/common/internal/c;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/common/internal/c$k;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/gms/common/internal/c$k;-><init>(Lcom/google/android/gms/common/internal/c;ILandroid/os/IBinder;Landroid/os/Bundle;)V

    const/4 p1, 0x1

    const/4 p2, -0x1

    invoke-virtual {v0, p1, p4, p2, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method onSetConnectState(ILandroid/os/IInterface;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    return-void
.end method

.method public onUserSignOut(Lcom/google/android/gms/common/internal/c$e;)V
    .registers 2

    invoke-interface {p1}, Lcom/google/android/gms/common/internal/c$e;->j6()V

    return-void
.end method

.method public providesSignIn()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public requiresAccount()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public requiresGooglePlayServices()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public requiresSignIn()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public triggerConnectionSuspended(I)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/common/internal/c;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/c;->zzcq:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/4 v2, 0x6

    invoke-virtual {v0, v2, v1, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected triggerNotAvailable(Lcom/google/android/gms/common/internal/c$c;ILandroid/app/PendingIntent;)V
    .registers 6

    const-string v0, "Connection progress callbacks cannot be null."

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/common/internal/c$c;

    iput-object p1, p0, Lcom/google/android/gms/common/internal/c;->zzce:Lcom/google/android/gms/common/internal/c$c;

    iget-object p1, p0, Lcom/google/android/gms/common/internal/c;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/google/android/gms/common/internal/c;->zzcq:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0, p2, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected final zza(ILandroid/os/Bundle;I)V
    .registers 6

    iget-object p2, p0, Lcom/google/android/gms/common/internal/c;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/gms/common/internal/c$l;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/gms/common/internal/c$l;-><init>(Lcom/google/android/gms/common/internal/c;ILandroid/os/Bundle;)V

    const/4 p1, 0x7

    const/4 v1, -0x1

    invoke-virtual {p2, p1, p3, v1, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
