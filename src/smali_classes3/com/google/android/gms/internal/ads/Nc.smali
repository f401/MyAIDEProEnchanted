.class final Lcom/google/android/gms/internal/ads/Nc;
.super Ljava/lang/Object;


# instance fields
.field DW:Lcom/google/android/gms/internal/ads/zzwb;

.field FH:Lcom/google/android/gms/internal/ads/gc;

.field Hw:J

.field private final VH:Lcom/google/android/gms/internal/ads/Mc;

.field Zo:Z

.field j6:Lcom/google/android/gms/ads/internal/m;

.field v5:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/Mc;Lcom/google/android/gms/internal/ads/fc;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Nc;->VH:Lcom/google/android/gms/internal/ads/Mc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Mc;->j6(Lcom/google/android/gms/internal/ads/Mc;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/fc;->DW(Ljava/lang/String;)Lcom/google/android/gms/ads/internal/m;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Nc;->j6:Lcom/google/android/gms/ads/internal/m;

    new-instance p1, Lcom/google/android/gms/internal/ads/gc;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/gc;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Nc;->FH:Lcom/google/android/gms/internal/ads/gc;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/Nc;->j6:Lcom/google/android/gms/ads/internal/m;

    new-instance v0, Lcom/google/android/gms/internal/ads/hc;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/hc;-><init>(Lcom/google/android/gms/internal/ads/gc;)V

    invoke-virtual {p2, v0}, Lcom/google/android/gms/ads/internal/a;->DW(Lcom/google/android/gms/internal/ads/xH;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/pc;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/pc;-><init>(Lcom/google/android/gms/internal/ads/gc;)V

    invoke-virtual {p2, v0}, Lcom/google/android/gms/ads/internal/a;->j6(Lcom/google/android/gms/internal/ads/QH;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/rc;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/rc;-><init>(Lcom/google/android/gms/internal/ads/gc;)V

    invoke-virtual {p2, v0}, Lcom/google/android/gms/ads/internal/fa;->j6(Lcom/google/android/gms/internal/ads/J;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/tc;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/tc;-><init>(Lcom/google/android/gms/internal/ads/gc;)V

    invoke-virtual {p2, v0}, Lcom/google/android/gms/ads/internal/a;->j6(Lcom/google/android/gms/internal/ads/tH;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/vc;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/vc;-><init>(Lcom/google/android/gms/internal/ads/gc;)V

    invoke-virtual {p2, v0}, Lcom/google/android/gms/ads/internal/a;->j6(Lcom/google/android/gms/internal/ads/jj;)V

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/ads/Mc;Lcom/google/android/gms/internal/ads/fc;Lcom/google/android/gms/internal/ads/zzwb;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/Nc;-><init>(Lcom/google/android/gms/internal/ads/Mc;Lcom/google/android/gms/internal/ads/fc;)V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/Nc;->DW:Lcom/google/android/gms/internal/ads/zzwb;

    return-void
.end method


# virtual methods
.method final j6()Z
    .registers 4

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Nc;->v5:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nc;->DW:Lcom/google/android/gms/internal/ads/zzwb;

    if-eqz v0, :cond_b

    goto :goto_11

    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Nc;->VH:Lcom/google/android/gms/internal/ads/Mc;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Mc;->DW(Lcom/google/android/gms/internal/ads/Mc;)Lcom/google/android/gms/internal/ads/zzwb;

    move-result-object v0

    :goto_11
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Kc;->DW(Lcom/google/android/gms/internal/ads/zzwb;)Lcom/google/android/gms/internal/ads/zzwb;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Nc;->j6:Lcom/google/android/gms/ads/internal/m;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/internal/a;->j6(Lcom/google/android/gms/internal/ads/zzwb;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/Nc;->Zo:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/Nc;->v5:Z

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->we()Lcom/google/android/gms/common/util/e;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/e;->j6()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/Nc;->Hw:J

    return v0
.end method
