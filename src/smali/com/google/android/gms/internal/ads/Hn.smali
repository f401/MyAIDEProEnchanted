.class public final Lcom/google/android/gms/internal/ads/Hn;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# instance fields
.field private final DW:Lcom/google/android/gms/internal/ads/In;

.field private FH:Z

.field private Hw:Z

.field private Zo:F

.field private final j6:Landroid/media/AudioManager;

.field private v5:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/In;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/google/android/gms/internal/ads/Hn;->Zo:F

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Hn;->j6:Landroid/media/AudioManager;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Hn;->DW:Lcom/google/android/gms/internal/ads/In;

    return-void
.end method

.method private final Hw()V
    .registers 6

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/Hn;->Hw:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/Hn;->v5:Z

    if-nez v2, :cond_2

    iget v2, p0, Lcom/google/android/gms/internal/ads/Hn;->Zo:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    move v2, v0

    :goto_0
    if-eqz v2, :cond_4

    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/Hn;->FH:Z

    if-nez v3, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Hn;->j6:Landroid/media/AudioManager;

    if-eqz v2, :cond_0

    if-eqz v3, :cond_3

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Hn;->DW:Lcom/google/android/gms/internal/ads/In;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/In;->j6()V

    :cond_1
    :goto_2
    return-void

    :cond_2
    move v2, v1

    goto :goto_0

    :cond_3
    const/4 v3, 0x3

    const/4 v4, 0x2

    invoke-virtual {v2, p0, v3, v4}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v2

    if-ne v2, v0, :cond_8

    :goto_3
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/Hn;->FH:Z

    goto :goto_1

    :cond_4
    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/Hn;->FH:Z

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/Hn;->j6:Landroid/media/AudioManager;

    if-eqz v3, :cond_5

    if-nez v2, :cond_6

    :cond_5
    :goto_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Hn;->DW:Lcom/google/android/gms/internal/ads/In;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/In;->j6()V

    goto :goto_2

    :cond_6
    invoke-virtual {v3, p0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    move-result v2

    if-nez v2, :cond_7

    :goto_5
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/Hn;->FH:Z

    goto :goto_4

    :cond_7
    move v0, v1

    goto :goto_5

    :cond_8
    move v0, v1

    goto :goto_3
.end method


# virtual methods
.method public final DW()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/Hn;->Hw:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Hn;->Hw()V

    return-void
.end method

.method public final FH()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/Hn;->Hw:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Hn;->Hw()V

    return-void
.end method

.method public final j6()F
    .registers 4

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Hn;->v5:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/Hn;->FH:Z

    if-eqz v2, :cond_1

    :goto_1
    return v0

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/Hn;->Zo:F

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public final j6(F)V
    .registers 2

    iput p1, p0, Lcom/google/android/gms/internal/ads/Hn;->Zo:F

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Hn;->Hw()V

    return-void
.end method

.method public final j6(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/Hn;->v5:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Hn;->Hw()V

    return-void
.end method

.method public final onAudioFocusChange(I)V
    .registers 3

    if-lez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/Hn;->FH:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Hn;->DW:Lcom/google/android/gms/internal/ads/In;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/In;->j6()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
