.class public final Lcom/google/android/gms/ads/internal/M;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# instance fields
.field private final DW:Ljava/lang/Runnable;

.field private FH:Lcom/google/android/gms/internal/ads/zzwb;

.field private Hw:Z

.field private Zo:J

.field private final j6:Lcom/google/android/gms/ads/internal/O;

.field private v5:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/internal/a;)V
    .registers 4

    new-instance v0, Lcom/google/android/gms/ads/internal/O;

    sget-object v1, Lcom/google/android/gms/internal/ads/Nk;->j6:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/internal/O;-><init>(Landroid/os/Handler;)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/ads/internal/M;-><init>(Lcom/google/android/gms/ads/internal/a;Lcom/google/android/gms/ads/internal/O;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/ads/internal/a;Lcom/google/android/gms/ads/internal/O;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/M;->Hw:Z

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/M;->v5:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/ads/internal/M;->Zo:J

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/M;->j6:Lcom/google/android/gms/ads/internal/O;

    new-instance p2, Lcom/google/android/gms/ads/internal/N;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p2, p0, v0}, Lcom/google/android/gms/ads/internal/N;-><init>(Lcom/google/android/gms/ads/internal/M;Ljava/lang/ref/WeakReference;)V

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/M;->DW:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic j6(Lcom/google/android/gms/ads/internal/M;)Lcom/google/android/gms/internal/ads/zzwb;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/ads/internal/M;->FH:Lcom/google/android/gms/internal/ads/zzwb;

    return-object p0
.end method

.method static synthetic j6(Lcom/google/android/gms/ads/internal/M;Z)Z
    .registers 2

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/ads/internal/M;->Hw:Z

    return p1
.end method


# virtual methods
.method public final DW()V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/M;->v5:Z

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/M;->Hw:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/M;->j6:Lcom/google/android/gms/ads/internal/O;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/M;->DW:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/O;->j6(Ljava/lang/Runnable;)V

    :cond_e
    return-void
.end method

.method public final DW(Lcom/google/android/gms/internal/ads/zzwb;)V
    .registers 4

    const-wide/32 v0, 0xea60

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/gms/ads/internal/M;->j6(Lcom/google/android/gms/internal/ads/zzwb;J)V

    return-void
.end method

.method public final FH()V
    .registers 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/M;->v5:Z

    iget-boolean v1, p0, Lcom/google/android/gms/ads/internal/M;->Hw:Z

    if-eqz v1, :cond_10

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/M;->Hw:Z

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/M;->FH:Lcom/google/android/gms/internal/ads/zzwb;

    iget-wide v1, p0, Lcom/google/android/gms/ads/internal/M;->Zo:J

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gms/ads/internal/M;->j6(Lcom/google/android/gms/internal/ads/zzwb;J)V

    :cond_10
    return-void
.end method

.method public final Hw()V
    .registers 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/M;->v5:Z

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/M;->Hw:Z

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/M;->FH:Lcom/google/android/gms/internal/ads/zzwb;

    if-eqz v0, :cond_12

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzwb;->FH:Landroid/os/Bundle;

    if-eqz v0, :cond_12

    const-string v1, "_ad"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_12
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/M;->FH:Lcom/google/android/gms/internal/ads/zzwb;

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gms/ads/internal/M;->j6(Lcom/google/android/gms/internal/ads/zzwb;J)V

    return-void
.end method

.method public final j6()V
    .registers 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/M;->Hw:Z

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/M;->j6:Lcom/google/android/gms/ads/internal/O;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/M;->DW:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/O;->j6(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/zzwb;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/M;->FH:Lcom/google/android/gms/internal/ads/zzwb;

    return-void
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/zzwb;J)V
    .registers 5

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/M;->Hw:Z

    if-eqz v0, :cond_a

    const-string p1, "An ad refresh is already scheduled."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    return-void

    :cond_a
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/M;->FH:Lcom/google/android/gms/internal/ads/zzwb;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/ads/internal/M;->Hw:Z

    iput-wide p2, p0, Lcom/google/android/gms/ads/internal/M;->Zo:J

    iget-boolean p1, p0, Lcom/google/android/gms/ads/internal/M;->v5:Z

    if-nez p1, :cond_37

    new-instance p1, Ljava/lang/StringBuilder;

    const/16 v0, 0x41

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Scheduling ad refresh "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " milliseconds from now."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/M;->j6:Lcom/google/android/gms/ads/internal/O;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/M;->DW:Ljava/lang/Runnable;

    invoke-virtual {p1, v0, p2, p3}, Lcom/google/android/gms/ads/internal/O;->j6(Ljava/lang/Runnable;J)Z

    :cond_37
    return-void
.end method

.method public final v5()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/M;->Hw:Z

    return v0
.end method
