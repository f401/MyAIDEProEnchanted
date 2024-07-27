.class final Lcom/google/android/gms/internal/ads/nH;
.super Lcom/google/android/gms/internal/ads/pH;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/pH",
        "<",
        "Lcom/google/android/gms/internal/ads/DH;",
        ">;"
    }
.end annotation


# instance fields
.field private final DW:Landroid/content/Context;

.field private final FH:Ljava/lang/String;

.field private final Hw:Lcom/google/android/gms/internal/ads/Ge;

.field private final v5:Lcom/google/android/gms/internal/ads/iH;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/iH;Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/Ge;)V
    .registers 5

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/nH;->v5:Lcom/google/android/gms/internal/ads/iH;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/nH;->DW:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/nH;->FH:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/nH;->Hw:Lcom/google/android/gms/internal/ads/Ge;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/pH;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic DW()Ljava/lang/Object;
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nH;->v5:Lcom/google/android/gms/internal/ads/iH;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/iH;->DW(Lcom/google/android/gms/internal/ads/iH;)Lcom/google/android/gms/internal/ads/_G;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/nH;->DW:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/nH;->FH:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/nH;->Hw:Lcom/google/android/gms/internal/ads/Ge;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/_G;->j6(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/Ge;)Lcom/google/android/gms/internal/ads/DH;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic j6()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nH;->DW:Landroid/content/Context;

    const-string v1, "native_ad"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/iH;->j6(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/xI;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/xI;-><init>()V

    return-object v0
.end method

.method public final synthetic j6(Lcom/google/android/gms/internal/ads/TH;)Ljava/lang/Object;
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nH;->DW:Landroid/content/Context;

    invoke-static {v0}, Labcd/px;->j6(Ljava/lang/Object;)Labcd/ox;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/nH;->FH:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/nH;->Hw:Lcom/google/android/gms/internal/ads/Ge;

    const v3, 0xda3360

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/TH;->createAdLoaderBuilder(Labcd/ox;Ljava/lang/String;Lcom/google/android/gms/internal/ads/Ge;I)Lcom/google/android/gms/internal/ads/DH;

    move-result-object v0

    return-object v0
.end method
