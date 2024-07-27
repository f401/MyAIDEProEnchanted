.class public final Lcom/google/android/gms/internal/ads/zzqs;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation


# instance fields
.field private final DW:Z

.field private EQ:J

.field private final FH:J

.field private final Hw:J

.field private VH:J

.field private Zo:J

.field private gn:Z

.field private final j6:Lcom/google/android/gms/internal/ads/eE;

.field private tp:J

.field private u7:J

.field private v5:J


# direct methods
.method public constructor <init>()V
    .registers 3

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzqs;-><init>(D)V

    return-void
.end method

.method private constructor <init>(D)V
    .registers 8

    const-wide/16 v2, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    cmpl-double v0, p1, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzqs;->DW:Z

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzqs;->DW:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/internal/ads/eE;->j6()Lcom/google/android/gms/internal/ads/eE;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzqs;->j6:Lcom/google/android/gms/internal/ads/eE;

    const-wide v0, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr v0, p1

    double-to-long v0, v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzqs;->FH:J

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzqs;->FH:J

    const-wide/16 v2, 0x50

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x64

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzqs;->Hw:J

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzqs;->j6:Lcom/google/android/gms/internal/ads/eE;

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzqs;->FH:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzqs;->Hw:J

    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRefreshRate()F

    move-result v0

    float-to-double v0, v0

    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzqs;-><init>(D)V

    return-void

    :cond_0
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    goto :goto_0
.end method

.method private final DW(JJ)Z
    .registers 10

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzqs;->tp:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzqs;->u7:J

    sub-long v2, p3, v2

    sub-long v0, p1, v0

    sub-long v0, v2, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/32 v2, 0x1312d00

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final DW()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzqs;->gn:Z

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzqs;->DW:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqs;->j6:Lcom/google/android/gms/internal/ads/eE;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/eE;->DW()V

    :cond_0
    return-void
.end method

.method public final j6(JJ)J
    .registers 16

    const-wide/16 v8, 0x0

    const/4 v6, 0x0

    const-wide/16 v0, 0x3e8

    mul-long v2, v0, p1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzqs;->gn:Z

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzqs;->v5:J

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzqs;->EQ:J

    const-wide/16 v4, 0x1

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzqs;->EQ:J

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzqs;->VH:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzqs;->Zo:J

    :cond_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzqs;->EQ:J

    const-wide/16 v4, 0x6

    cmp-long v4, v0, v4

    if-ltz v4, :cond_5

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzqs;->tp:J

    sub-long v4, v2, v4

    div-long v0, v4, v0

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzqs;->Zo:J

    add-long/2addr v0, v4

    invoke-direct {p0, v0, v1, p3, p4}, Lcom/google/android/gms/internal/ads/zzqs;->DW(JJ)Z

    move-result v4

    if-eqz v4, :cond_4

    iput-boolean v6, p0, Lcom/google/android/gms/internal/ads/zzqs;->gn:Z

    :cond_1
    :goto_0
    move-wide v0, v2

    move-wide v4, p3

    :goto_1
    iget-boolean v6, p0, Lcom/google/android/gms/internal/ads/zzqs;->gn:Z

    if-nez v6, :cond_2

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzqs;->tp:J

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzqs;->u7:J

    iput-wide v8, p0, Lcom/google/android/gms/internal/ads/zzqs;->EQ:J

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzqs;->gn:Z

    :cond_2
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzqs;->v5:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzqs;->VH:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqs;->j6:Lcom/google/android/gms/internal/ads/eE;

    if-eqz v0, :cond_3

    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/eE;->DW:J

    cmp-long v0, v0, v8

    if-nez v0, :cond_6

    :cond_3
    :goto_2
    return-wide v4

    :cond_4
    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzqs;->u7:J

    add-long/2addr v4, v0

    iget-wide v6, p0, Lcom/google/android/gms/internal/ads/zzqs;->tp:J

    sub-long/2addr v4, v6

    goto :goto_1

    :cond_5
    invoke-direct {p0, v2, v3, p3, p4}, Lcom/google/android/gms/internal/ads/zzqs;->DW(JJ)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean v6, p0, Lcom/google/android/gms/internal/ads/zzqs;->gn:Z

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqs;->j6:Lcom/google/android/gms/internal/ads/eE;

    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/eE;->DW:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzqs;->FH:J

    sub-long v6, v4, v0

    div-long/2addr v6, v2

    mul-long/2addr v6, v2

    add-long/2addr v6, v0

    cmp-long v0, v4, v6

    if-gtz v0, :cond_7

    sub-long v2, v6, v2

    move-wide v0, v6

    :goto_3
    sub-long v6, v0, v4

    sub-long/2addr v4, v2

    cmp-long v4, v6, v4

    if-gez v4, :cond_8

    :goto_4
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzqs;->Hw:J

    sub-long v4, v0, v2

    goto :goto_2

    :cond_7
    add-long v0, v2, v6

    move-wide v2, v6

    goto :goto_3

    :cond_8
    move-wide v0, v2

    goto :goto_4
.end method

.method public final j6()V
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzqs;->DW:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqs;->j6:Lcom/google/android/gms/internal/ads/eE;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/eE;->FH()V

    :cond_0
    return-void
.end method
