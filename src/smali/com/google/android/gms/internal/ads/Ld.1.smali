.class public final Lcom/google/android/gms/internal/ads/Ld;
.super Lcom/google/android/gms/internal/ads/Xm;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/Xm",
        "<",
        "Lcom/google/android/gms/internal/ads/gd;",
        ">;"
    }
.end annotation


# instance fields
.field private VH:Z

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

.field private final v5:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/sl;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/sl",
            "<",
            "Lcom/google/android/gms/internal/ads/gd;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Xm;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Ld;->v5:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Ld;->Zo:Lcom/google/android/gms/internal/ads/sl;

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/Ld;->VH:Z

    iput v1, p0, Lcom/google/android/gms/internal/ads/Ld;->gn:I

    return-void
.end method

.method private final Zo()V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Ld;->v5:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/Ld;->gn:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->DW(Z)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Ld;->VH:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/ads/Ld;->gn:I

    if-nez v0, :cond_1

    const-string v0, "No reference is left (including root). Cleaning up engine."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Ek;->Zo(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/Od;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/Od;-><init>(Lcom/google/android/gms/internal/ads/Ld;)V

    new-instance v2, Lcom/google/android/gms/internal/ads/Vm;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/Vm;-><init>()V

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/internal/ads/Xm;->j6(Lcom/google/android/gms/internal/ads/Wm;Lcom/google/android/gms/internal/ads/Um;)V

    :goto_1
    monitor-exit v1

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const-string v0, "There are still references to the engine. Not destroying."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Ek;->Zo(Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/ads/Ld;)Lcom/google/android/gms/internal/ads/sl;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ld;->Zo:Lcom/google/android/gms/internal/ads/sl;

    return-object v0
.end method


# virtual methods
.method public final FH()Lcom/google/android/gms/internal/ads/Hd;
    .registers 5

    new-instance v1, Lcom/google/android/gms/internal/ads/Hd;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/Hd;-><init>(Lcom/google/android/gms/internal/ads/Ld;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Ld;->v5:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/ads/Md;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/Md;-><init>(Lcom/google/android/gms/internal/ads/Ld;Lcom/google/android/gms/internal/ads/Hd;)V

    new-instance v3, Lcom/google/android/gms/internal/ads/Nd;

    invoke-direct {v3, p0, v1}, Lcom/google/android/gms/internal/ads/Nd;-><init>(Lcom/google/android/gms/internal/ads/Ld;Lcom/google/android/gms/internal/ads/Hd;)V

    invoke-virtual {p0, v0, v3}, Lcom/google/android/gms/internal/ads/Xm;->j6(Lcom/google/android/gms/internal/ads/Wm;Lcom/google/android/gms/internal/ads/Um;)V

    iget v0, p0, Lcom/google/android/gms/internal/ads/Ld;->gn:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->DW(Z)V

    iget v0, p0, Lcom/google/android/gms/internal/ads/Ld;->gn:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/Ld;->gn:I

    monitor-exit v2

    return-object v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected final Hw()V
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Ld;->v5:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/Ld;->gn:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->DW(Z)V

    const-string v0, "Releasing 1 reference for JS Engine"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Ek;->Zo(Ljava/lang/String;)V

    iget v0, p0, Lcom/google/android/gms/internal/ads/Ld;->gn:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/Ld;->gn:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Ld;->Zo()V

    monitor-exit v1

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final v5()V
    .registers 4

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Ld;->v5:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v2, p0, Lcom/google/android/gms/internal/ads/Ld;->gn:I

    if-ltz v2, :cond_0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->DW(Z)V

    const-string v0, "Releasing root reference. JS Engine will be destroyed once other references are released."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Ek;->Zo(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/Ld;->VH:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Ld;->Zo()V

    monitor-exit v1

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
