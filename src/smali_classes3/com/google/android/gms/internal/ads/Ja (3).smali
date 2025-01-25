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
    .registers 4

    const-string v0, ""

    invoke-direct {p0}, Lcom/google/android/gms/ads/formats/a$b;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Ja;->j6:Lcom/google/android/gms/internal/ads/Ga;

    const/4 v1, 0x0

    :try_start_8
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/Ga;->T6()Labcd/ox;

    move-result-object p1

    if-eqz p1, :cond_19

    invoke-static {p1}, Labcd/px;->j6(Labcd/ox;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/Drawable;
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_14} :catch_15

    goto :goto_1a

    :catch_15
    move-exception p1

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_19
    move-object p1, v1

    :goto_1a
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Ja;->DW:Landroid/graphics/drawable/Drawable;

    :try_start_1c
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Ja;->j6:Lcom/google/android/gms/internal/ads/Ga;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/Ga;->getUri()Landroid/net/Uri;

    move-result-object v1
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_22} :catch_23

    goto :goto_27

    :catch_23
    move-exception p1

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_27
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/Ja;->FH:Landroid/net/Uri;

    :try_start_29
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Ja;->j6:Lcom/google/android/gms/internal/ads/Ga;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/Ga;->qP()D

    move-result-wide v0
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_2f} :catch_30

    goto :goto_36

    :catch_30
    move-exception p1

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-wide/high16 v0, 0x3ff0000000000000L  # 1.0

    :goto_36
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/Ja;->Hw:D

    return-void
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
