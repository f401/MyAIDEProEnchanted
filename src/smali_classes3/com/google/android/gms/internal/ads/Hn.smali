.class public final Lcom/google/android/gms/internal/ads/Hn;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
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

    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Lcom/google/android/gms/internal/ads/Hn;->Zo:F

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Hn;->j6:Landroid/media/AudioManager;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Hn;->DW:Lcom/google/android/gms/internal/ads/In;

    return-void
.end method

.method private final Hw()V
    .registers 6

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Hn;->Hw:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_13

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Hn;->v5:Z

    if-nez v0, :cond_13

    iget v0, p0, Lcom/google/android/gms/internal/ads/Hn;->Zo:F

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    if-eqz v0, :cond_33

    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/Hn;->FH:Z

    if-nez v3, :cond_33

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Hn;->j6:Landroid/media/AudioManager;

    if-eqz v0, :cond_2d

    if-eqz v3, :cond_21

    goto :goto_2d

    :cond_21
    const/4 v3, 0x3

    const/4 v4, 0x2

    invoke-virtual {v0, p0, v3, v4}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    if-ne v0, v1, :cond_2a

    goto :goto_2b

    :cond_2a
    const/4 v1, 0x0

    :goto_2b
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/Hn;->FH:Z

    :cond_2d
    :goto_2d
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Hn;->DW:Lcom/google/android/gms/internal/ads/In;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/In;->j6()V

    return-void

    :cond_33
    if-nez v0, :cond_4f

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Hn;->FH:Z

    if-eqz v0, :cond_4f

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/Hn;->j6:Landroid/media/AudioManager;

    if-eqz v3, :cond_4a

    if-nez v0, :cond_40

    goto :goto_4a

    :cond_40
    invoke-virtual {v3, p0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    move-result v0

    if-nez v0, :cond_47

    goto :goto_48

    :cond_47
    const/4 v1, 0x0

    :goto_48
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/Hn;->FH:Z

    :cond_4a
    :goto_4a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Hn;->DW:Lcom/google/android/gms/internal/ads/In;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/In;->j6()V

    :cond_4f
    return-void
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

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Hn;->v5:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    goto :goto_9

    :cond_7
    iget v0, p0, Lcom/google/android/gms/internal/ads/Hn;->Zo:F

    :goto_9
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/Hn;->FH:Z

    if-eqz v2, :cond_e

    return v0

    :cond_e
    return v1
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
    .registers 2

    if-lez p1, :cond_4

    const/4 p1, 0x1

    goto :goto_5

    :cond_4
    const/4 p1, 0x0

    :goto_5
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/Hn;->FH:Z

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Hn;->DW:Lcom/google/android/gms/internal/ads/In;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/In;->j6()V

    return-void
.end method
