.class public final Lcom/google/android/gms/internal/ads/Ja;
.super Lcom/google/android/gms/ads/formats/a$b;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# instance fields
.field private final DW:Landroid/graphics/drawable/Drawable;

.field private final FH:Landroid/net/Uri;

.field private final Hw:D

.field private final j6:Lcom/google/android/gms/internal/ads/Ga;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/Ga;)V
    .registers 6

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/ads/formats/a$b;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Ja;->j6:Lcom/google/android/gms/internal/ads/Ga;

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ja;->j6:Lcom/google/android/gms/internal/ads/Ga;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Ga;->T6()Labcd/ox;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Labcd/px;->j6(Labcd/ox;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Ja;->DW:Landroid/graphics/drawable/Drawable;

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ja;->j6:Lcom/google/android/gms/internal/ads/Ga;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Ga;->getUri()Landroid/net/Uri;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    :goto_1
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/Ja;->FH:Landroid/net/Uri;

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    :try_start_2
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Ja;->j6:Lcom/google/android/gms/internal/ads/Ga;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/Ga;->qP()D
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-wide v0

    :goto_2
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/Ja;->Hw:D

    return-void

    :catch_0
    move-exception v0

    const-string v2, ""

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v2, ""

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_2
    move-exception v2

    const-string v3, ""

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method


# virtual methods
.method public final DW()D
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/Ja;->Hw:D

    return-wide v0
.end method

.method public final FH()Landroid/net/Uri;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ja;->FH:Landroid/net/Uri;

    return-object v0
.end method

.method public final j6()Landroid/graphics/drawable/Drawable;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ja;->DW:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method
