.class public final Lcom/google/android/gms/internal/ads/lk;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# instance fields
.field public final DW:Lcom/google/android/gms/internal/ads/zzasm;

.field public final FH:Lcom/google/android/gms/internal/ads/qe;

.field public final Hw:Lcom/google/android/gms/internal/ads/zzwf;

.field public final VH:J

.field public final Zo:J

.field public final gn:Lorg/json/JSONObject;

.field public final j6:Lcom/google/android/gms/internal/ads/zzasi;

.field public final tp:Z

.field public final u7:Lcom/google/android/gms/internal/ads/YF;

.field public final v5:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzasi;Lcom/google/android/gms/internal/ads/zzasm;Lcom/google/android/gms/internal/ads/qe;Lcom/google/android/gms/internal/ads/zzwf;IJJLorg/json/JSONObject;Lcom/google/android/gms/internal/ads/YF;Ljava/lang/Boolean;)V
    .registers 13

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/lk;->j6:Lcom/google/android/gms/internal/ads/zzasi;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/lk;->DW:Lcom/google/android/gms/internal/ads/zzasm;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/lk;->FH:Lcom/google/android/gms/internal/ads/qe;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/lk;->Hw:Lcom/google/android/gms/internal/ads/zzwf;

    iput p5, p0, Lcom/google/android/gms/internal/ads/lk;->v5:I

    iput-wide p6, p0, Lcom/google/android/gms/internal/ads/lk;->Zo:J

    iput-wide p8, p0, Lcom/google/android/gms/internal/ads/lk;->VH:J

    iput-object p10, p0, Lcom/google/android/gms/internal/ads/lk;->gn:Lorg/json/JSONObject;

    iput-object p11, p0, Lcom/google/android/gms/internal/ads/lk;->u7:Lcom/google/android/gms/internal/ads/YF;

    if-eqz p12, :cond_1e

    invoke-virtual {p12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    :goto_1b
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/lk;->tp:Z

    return-void

    :cond_1e
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzasi;->FH:Lcom/google/android/gms/internal/ads/zzwb;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzwb;->J0:Landroid/os/Bundle;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Rl;->j6(Landroid/os/Bundle;)Z

    move-result p1

    goto :goto_1b
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzasi;Lcom/google/android/gms/internal/ads/zzasm;Lcom/google/android/gms/internal/ads/qe;Lcom/google/android/gms/internal/ads/zzwf;IJJLorg/json/JSONObject;Lcom/google/android/gms/internal/ads/zzur;)V
    .registers 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/lk;->j6:Lcom/google/android/gms/internal/ads/zzasi;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/lk;->DW:Lcom/google/android/gms/internal/ads/zzasm;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/lk;->FH:Lcom/google/android/gms/internal/ads/qe;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/lk;->Hw:Lcom/google/android/gms/internal/ads/zzwf;

    iput p5, p0, Lcom/google/android/gms/internal/ads/lk;->v5:I

    iput-wide p6, p0, Lcom/google/android/gms/internal/ads/lk;->Zo:J

    iput-wide p8, p0, Lcom/google/android/gms/internal/ads/lk;->VH:J

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/lk;->gn:Lorg/json/JSONObject;

    new-instance p1, Lcom/google/android/gms/internal/ads/YF;

    invoke-direct {p1, p11}, Lcom/google/android/gms/internal/ads/YF;-><init>(Lcom/google/android/gms/internal/ads/zzur;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/lk;->u7:Lcom/google/android/gms/internal/ads/YF;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/lk;->tp:Z

    return-void
.end method
