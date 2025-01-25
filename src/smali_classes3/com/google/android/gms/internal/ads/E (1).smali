.class public final Lcom/google/android/gms/internal/ads/E;
.super Lcom/google/android/gms/internal/ads/H;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# instance fields
.field private final DW:Ljava/lang/String;

.field private final FH:Ljava/lang/String;

.field private final j6:Lcom/google/android/gms/ads/internal/g;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/internal/g;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/H;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/E;->j6:Lcom/google/android/gms/ads/internal/g;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/E;->DW:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/E;->FH:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final E4()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/E;->DW:Ljava/lang/String;

    return-object v0
.end method

.method public final EQ()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/E;->j6:Lcom/google/android/gms/ads/internal/g;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/g;->dH()V

    return-void
.end method

.method public final U2(Labcd/ox;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/E;->j6:Lcom/google/android/gms/ads/internal/g;

    invoke-static {p1}, Labcd/px;->j6(Labcd/ox;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/internal/g;->DW(Landroid/view/View;)V

    return-void
.end method

.method public final Yi()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/E;->j6:Lcom/google/android/gms/ads/internal/g;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/g;->C()V

    return-void
.end method

.method public final getContent()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/E;->FH:Ljava/lang/String;

    return-object v0
.end method
