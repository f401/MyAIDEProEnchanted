.class public final Lcom/google/android/gms/internal/ads/zzauj;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/Ei;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# instance fields
.field private DW:Lcom/google/android/gms/internal/ads/Ud;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/Ud",
            "<",
            "Lorg/json/JSONObject;",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private j6:Lcom/google/android/gms/internal/ads/Ud;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/Ud",
            "<",
            "Lorg/json/JSONObject;",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->Mr()Lcom/google/android/gms/internal/ads/Vd;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbi;->DW()Lcom/google/android/gms/internal/ads/zzbbi;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/Vd;->j6(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbbi;)Lcom/google/android/gms/internal/ads/ce;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/_d;->DW:Lcom/google/android/gms/internal/ads/Yd;

    const-string v2, "google.afma.request.getAdDictionary"

    invoke-virtual {v0, v2, v1, v1}, Lcom/google/android/gms/internal/ads/ce;->j6(Ljava/lang/String;Lcom/google/android/gms/internal/ads/Xd;Lcom/google/android/gms/internal/ads/Wd;)Lcom/google/android/gms/internal/ads/Ud;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzauj;->j6:Lcom/google/android/gms/internal/ads/Ud;

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->Mr()Lcom/google/android/gms/internal/ads/Vd;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbi;->DW()Lcom/google/android/gms/internal/ads/zzbbi;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/Vd;->j6(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbbi;)Lcom/google/android/gms/internal/ads/ce;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/_d;->DW:Lcom/google/android/gms/internal/ads/Yd;

    const-string v2, "google.afma.sdkConstants.getSdkConstants"

    invoke-virtual {v0, v2, v1, v1}, Lcom/google/android/gms/internal/ads/ce;->j6(Ljava/lang/String;Lcom/google/android/gms/internal/ads/Xd;Lcom/google/android/gms/internal/ads/Wd;)Lcom/google/android/gms/internal/ads/Ud;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzauj;->DW:Lcom/google/android/gms/internal/ads/Ud;

    return-void
.end method


# virtual methods
.method public final VH()Lcom/google/android/gms/internal/ads/Ud;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/Ud",
            "<",
            "Lorg/json/JSONObject;",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzauj;->DW:Lcom/google/android/gms/internal/ads/Ud;

    return-object v0
.end method

.method public final Zo()Lcom/google/android/gms/internal/ads/Ud;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/Ud",
            "<",
            "Lorg/json/JSONObject;",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzauj;->j6:Lcom/google/android/gms/internal/ads/Ud;

    return-object v0
.end method
