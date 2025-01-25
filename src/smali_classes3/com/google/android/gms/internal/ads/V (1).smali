.class public final Lcom/google/android/gms/internal/ads/V;
.super Lcom/google/android/gms/internal/ads/Ha;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# instance fields
.field private final DW:Landroid/net/Uri;

.field private final FH:D

.field private final j6:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/net/Uri;D)V
    .registers 5

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Ha;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/V;->j6:Landroid/graphics/drawable/Drawable;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/V;->DW:Landroid/net/Uri;

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/V;->FH:D

    return-void
.end method


# virtual methods
.method public final T6()Labcd/ox;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/V;->j6:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Labcd/px;->j6(Ljava/lang/Object;)Labcd/ox;

    move-result-object v0

    return-object v0
.end method

.method public final getUri()Landroid/net/Uri;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/V;->DW:Landroid/net/Uri;

    return-object v0
.end method

.method public final qP()D
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/V;->FH:D

    return-wide v0
.end method
