.class public final Lcom/google/android/gms/internal/ads/Ld;
.super Lcom/google/android/gms/internal/ads/Xm;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/Xm<",
        "Lcom/google/android/gms/internal/ads/gd;",
        ">;"
    }
.end annotation


# instance fields
.field private VH:Z

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

.field private final v5:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/sl;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/sl<",
            "Lcom/google/android/gms/internal/ads/gd;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Xm;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Ld;->v5:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Ld;->Zo:Lcom/google/android/gms/internal/ads/sl;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/Ld;->VH:Z

    iput p1, p0, Lcom/google/android/gms/internal/ads/Ld;->gn:I

    return-void
.end method

.method private final Zo()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ld;->v5:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget v1, p0, Lcom/google/android/gms/internal/ads/Ld;->gn:I

    if-ltz v1, :cond_9

    const/4 v1, 0x1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    invoke-static {v1}, Lcom/google/android/gms/common/internal/r;->DW(Z)V

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/Ld;->VH:Z

    if-eqz v1, :cond_28

    iget v1, p0, Lcom/google/android/gms/internal/ads/Ld;->gn:I

    if-nez v1, :cond_28

    const-string v1, "No reference is left (including root). Cleaning up engine."

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/Ek;->Zo(Ljava/lang/String;)V

    new-instance v1, Lcom/google/android/gms/internal/ads/Od;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/Od;-><init>(Lcom/google/android/gms/internal/ads/Ld;)V

    new-instance v2, Lcom/google/android/gms/internal/ads/Vm;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/Vm;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/ads/Xm;->j6(Lcom/google/android/gms/internal/ads/Wm;Lcom/google/android/gms/internal/ads/Um;)V

    goto :goto_2d

    :cond_28
    const-string v1, "There are still references to the engine. Not destroying."

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/Ek;->Zo(Ljava/lang/String;)V

    :goto_2d
    monitor-exit v0

    return-void

    :catchall_2f
    move-exception v1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    throw v1
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/ads/Ld;)Lcom/google/android/gms/internal/ads/sl;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/Ld;->Zo:Lcom/google/android/gms/internal/ads/sl;

    return-object p0
.end method


# virtual methods
.method public final FH()Lcom/google/android/gms/internal/ads/Hd;
    .registers 5

    new-instance v0, Lcom/google/android/gms/internal/ads/Hd;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/Hd;-><init>(Lcom/google/android/gms/internal/ads/Ld;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Ld;->v5:Ljava/lang/Object;

    monitor-enter v1

    :try_start_8
    new-instance v2, Lcom/google/android/gms/internal/ads/Md;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/ads/Md;-><init>(Lcom/google/android/gms/internal/ads/Ld;Lcom/google/android/gms/internal/ads/Hd;)V

    new-instance v3, Lcom/google/android/gms/internal/ads/Nd;

    invoke-direct {v3, p0, v0}, Lcom/google/android/gms/internal/ads/Nd;-><init>(Lcom/google/android/gms/internal/ads/Ld;Lcom/google/android/gms/internal/ads/Hd;)V

    invoke-virtual {p0, v2, v3}, Lcom/google/android/gms/internal/ads/Xm;->j6(Lcom/google/android/gms/internal/ads/Wm;Lcom/google/android/gms/internal/ads/Um;)V

    iget v2, p0, Lcom/google/android/gms/internal/ads/Ld;->gn:I

    const/4 v3, 0x1

    if-ltz v2, :cond_1c

    const/4 v2, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v2, 0x0

    :goto_1d
    invoke-static {v2}, Lcom/google/android/gms/common/internal/r;->DW(Z)V

    iget v2, p0, Lcom/google/android/gms/internal/ads/Ld;->gn:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/google/android/gms/internal/ads/Ld;->gn:I

    monitor-exit v1

    return-object v0

    :catchall_27
    move-exception v0

    monitor-exit v1
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_27

    throw v0
.end method

.method protected final Hw()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ld;->v5:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget v1, p0, Lcom/google/android/gms/internal/ads/Ld;->gn:I

    const/4 v2, 0x1

    if-lez v1, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    invoke-static {v1}, Lcom/google/android/gms/common/internal/r;->DW(Z)V

    const-string v1, "Releasing 1 reference for JS Engine"

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/Ek;->Zo(Ljava/lang/String;)V

    iget v1, p0, Lcom/google/android/gms/internal/ads/Ld;->gn:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/gms/internal/ads/Ld;->gn:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Ld;->Zo()V

    monitor-exit v0

    return-void

    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method public final v5()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ld;->v5:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget v1, p0, Lcom/google/android/gms/internal/ads/Ld;->gn:I

    const/4 v2, 0x1

    if-ltz v1, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    invoke-static {v1}, Lcom/google/android/gms/common/internal/r;->DW(Z)V

    const-string v1, "Releasing root reference. JS Engine will be destroyed once other references are released."

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/Ek;->Zo(Ljava/lang/String;)V

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/Ld;->VH:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Ld;->Zo()V

    monitor-exit v0

    return-void

    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v1
.end method
