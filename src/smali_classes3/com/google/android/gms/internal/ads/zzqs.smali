.class public final Lcom/google/android/gms/internal/ads/zzqs;
.super Ljava/lang/Object;


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

    const-wide/high16 v0, -0x4010000000000000L  # -1.0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzqs;-><init>(D)V

    return-void
.end method

.method private constructor <init>(D)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x4010000000000000L  # -1.0

    cmpl-double v2, p1, v0

    if-eqz v2, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzqs;->DW:Z

    if-eqz v0, :cond_29

    invoke-static {}, Lcom/google/android/gms/internal/ads/eE;->j6()Lcom/google/android/gms/internal/ads/eE;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzqs;->j6:Lcom/google/android/gms/internal/ads/eE;

    const-wide v0, 0x41cdcd6500000000L  # 1.0E9

    div-double/2addr v0, p1

    double-to-long p1, v0

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzqs;->FH:J

    const-wide/16 v0, 0x50

    mul-long p1, p1, v0

    const-wide/16 v0, 0x64

    div-long/2addr p1, v0

    :goto_26
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzqs;->Hw:J

    return-void

    :cond_29
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqs;->j6:Lcom/google/android/gms/internal/ads/eE;

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzqs;->FH:J

    goto :goto_26
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_18

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getRefreshRate()F

    move-result p1

    float-to-double v0, p1

    goto :goto_1a

    :cond_18
    const-wide/high16 v0, -0x4010000000000000L  # -1.0

    :goto_1a
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzqs;-><init>(D)V

    return-void
.end method

.method private final DW(JJ)Z
    .registers 9

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzqs;->tp:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzqs;->u7:J

    sub-long/2addr p3, v2

    sub-long/2addr p1, v0

    sub-long/2addr p3, p1

    invoke-static {p3, p4}, Ljava/lang/Math;->abs(J)J

    move-result-wide p1

    const-wide/32 p3, 0x1312d00

    cmp-long v0, p1, p3

    if-lez v0, :cond_14

    const/4 p1, 0x1

    return p1

    :cond_14
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public final DW()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzqs;->gn:Z

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzqs;->DW:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqs;->j6:Lcom/google/android/gms/internal/ads/eE;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/eE;->DW()V

    :cond_c
    return-void
.end method

.method public final j6(JJ)J
    .registers 16

    const-wide/16 v0, 0x3e8

    mul-long v0, v0, p1

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzqs;->gn:Z

    if-eqz v2, :cond_40

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzqs;->v5:J

    cmp-long v4, p1, v2

    if-eqz v4, :cond_19

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzqs;->EQ:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzqs;->EQ:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzqs;->VH:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzqs;->Zo:J

    :cond_19
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzqs;->EQ:J

    const-wide/16 v4, 0x6

    const/4 v6, 0x0

    cmp-long v7, v2, v4

    if-ltz v7, :cond_38

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzqs;->tp:J

    sub-long v4, v0, v4

    div-long/2addr v4, v2

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzqs;->Zo:J

    add-long/2addr v2, v4

    invoke-direct {p0, v2, v3, p3, p4}, Lcom/google/android/gms/internal/ads/zzqs;->DW(JJ)Z

    move-result v4

    if-eqz v4, :cond_31

    goto :goto_3e

    :cond_31
    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzqs;->u7:J

    add-long/2addr v4, v2

    iget-wide v6, p0, Lcom/google/android/gms/internal/ads/zzqs;->tp:J

    sub-long/2addr v4, v6

    goto :goto_42

    :cond_38
    invoke-direct {p0, v0, v1, p3, p4}, Lcom/google/android/gms/internal/ads/zzqs;->DW(JJ)Z

    move-result v2

    if-eqz v2, :cond_40

    :goto_3e
    iput-boolean v6, p0, Lcom/google/android/gms/internal/ads/zzqs;->gn:Z

    :cond_40
    move-wide v4, p3

    move-wide v2, v0

    :goto_42
    iget-boolean v6, p0, Lcom/google/android/gms/internal/ads/zzqs;->gn:Z

    const-wide/16 v7, 0x0

    if-nez v6, :cond_51

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzqs;->tp:J

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzqs;->u7:J

    iput-wide v7, p0, Lcom/google/android/gms/internal/ads/zzqs;->EQ:J

    const/4 p3, 0x1

    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzqs;->gn:Z

    :cond_51
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzqs;->v5:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzqs;->VH:J

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzqs;->j6:Lcom/google/android/gms/internal/ads/eE;

    if-eqz p1, :cond_84

    iget-wide p1, p1, Lcom/google/android/gms/internal/ads/eE;->DW:J

    cmp-long p3, p1, v7

    if-nez p3, :cond_60

    goto :goto_84

    :cond_60
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzqs;->j6:Lcom/google/android/gms/internal/ads/eE;

    iget-wide p1, p1, Lcom/google/android/gms/internal/ads/eE;->DW:J

    iget-wide p3, p0, Lcom/google/android/gms/internal/ads/zzqs;->FH:J

    sub-long v0, v4, p1

    div-long/2addr v0, p3

    mul-long v0, v0, p3

    add-long/2addr p1, v0

    cmp-long v0, v4, p1

    if-gtz v0, :cond_73

    sub-long p3, p1, p3

    goto :goto_77

    :cond_73
    add-long/2addr p3, p1

    move-wide v9, p1

    move-wide p1, p3

    move-wide p3, v9

    :goto_77
    sub-long v0, p1, v4

    sub-long/2addr v4, p3

    cmp-long v2, v0, v4

    if-gez v2, :cond_7f

    goto :goto_80

    :cond_7f
    move-wide p1, p3

    :goto_80
    iget-wide p3, p0, Lcom/google/android/gms/internal/ads/zzqs;->Hw:J

    sub-long/2addr p1, p3

    return-wide p1

    :cond_84
    :goto_84
    return-wide v4
.end method

.method public final j6()V
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzqs;->DW:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqs;->j6:Lcom/google/android/gms/internal/ads/eE;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/eE;->FH()V

    :cond_9
    return-void
.end method
