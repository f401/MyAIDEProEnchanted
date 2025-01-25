.class final Lcom/google/android/gms/internal/ads/jH;
.super Lcom/google/android/gms/internal/ads/pH;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/pH<",
        "Lcom/google/android/gms/internal/ads/IH;",
        ">;"
    }
.end annotation


# instance fields
.field private final DW:Landroid/content/Context;

.field private final FH:Lcom/google/android/gms/internal/ads/zzwf;

.field private final Hw:Ljava/lang/String;

.field private final Zo:Lcom/google/android/gms/internal/ads/iH;

.field private final v5:Lcom/google/android/gms/internal/ads/Ge;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/iH;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzwf;Ljava/lang/String;Lcom/google/android/gms/internal/ads/Ge;)V
    .registers 6

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/jH;->Zo:Lcom/google/android/gms/internal/ads/iH;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/jH;->DW:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/jH;->FH:Lcom/google/android/gms/internal/ads/zzwf;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/jH;->Hw:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/jH;->v5:Lcom/google/android/gms/internal/ads/Ge;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/pH;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic DW()Ljava/lang/Object;
    .registers 8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jH;->Zo:Lcom/google/android/gms/internal/ads/iH;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/iH;->j6(Lcom/google/android/gms/internal/ads/iH;)Lcom/google/android/gms/internal/ads/aH;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/jH;->DW:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/jH;->FH:Lcom/google/android/gms/internal/ads/zzwf;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/jH;->Hw:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/jH;->v5:Lcom/google/android/gms/internal/ads/Ge;

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/aH;->j6(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzwf;Ljava/lang/String;Lcom/google/android/gms/internal/ads/Ge;I)Lcom/google/android/gms/internal/ads/IH;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic j6()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jH;->DW:Landroid/content/Context;

    const-string v1, "banner"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/iH;->j6(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/BI;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/BI;-><init>()V

    return-object v0
.end method

.method public final synthetic j6(Lcom/google/android/gms/internal/ads/TH;)Ljava/lang/Object;
    .registers 9

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jH;->DW:Landroid/content/Context;

    invoke-static {v0}, Labcd/px;->j6(Ljava/lang/Object;)Labcd/ox;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/jH;->FH:Lcom/google/android/gms/internal/ads/zzwf;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/jH;->Hw:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/jH;->v5:Lcom/google/android/gms/internal/ads/Ge;

    const v6, 0xda3360

    move-object v1, p1

    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/TH;->createBannerAdManager(Labcd/ox;Lcom/google/android/gms/internal/ads/zzwf;Ljava/lang/String;Lcom/google/android/gms/internal/ads/Ge;I)Lcom/google/android/gms/internal/ads/IH;

    move-result-object p1

    return-object p1
.end method
