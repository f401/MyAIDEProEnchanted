.class final synthetic Lcom/google/android/gms/internal/ads/To;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/qm;


# instance fields
.field private final DW:Lcom/google/android/gms/internal/ads/ix;

.field private final FH:Lcom/google/android/gms/internal/ads/zzbbi;

.field private final Hw:Lcom/google/android/gms/ads/internal/ta;

.field private final j6:Landroid/content/Context;

.field private final v5:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/ix;Lcom/google/android/gms/internal/ads/zzbbi;Lcom/google/android/gms/ads/internal/ta;Ljava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/To;->j6:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/To;->DW:Lcom/google/android/gms/internal/ads/ix;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/To;->FH:Lcom/google/android/gms/internal/ads/zzbbi;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/To;->Hw:Lcom/google/android/gms/ads/internal/ta;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/To;->v5:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final j6(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/Hm;
    .registers 14

    const/4 v7, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/To;->j6:Landroid/content/Context;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/To;->DW:Lcom/google/android/gms/internal/ads/ix;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/To;->FH:Lcom/google/android/gms/internal/ads/zzbbi;

    iget-object v9, p0, Lcom/google/android/gms/internal/ads/To;->Hw:Lcom/google/android/gms/ads/internal/ta;

    iget-object v11, p0, Lcom/google/android/gms/internal/ads/To;->v5:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->Zo()Lcom/google/android/gms/internal/ads/So;

    invoke-static {}, Lcom/google/android/gms/internal/ads/yp;->DW()Lcom/google/android/gms/internal/ads/yp;

    move-result-object v1

    const-string v2, ""

    invoke-static {}, Lcom/google/android/gms/internal/ads/YF;->j6()Lcom/google/android/gms/internal/ads/YF;

    move-result-object v10

    move v4, v3

    move-object v8, v7

    invoke-static/range {v0 .. v10}, Lcom/google/android/gms/internal/ads/So;->j6(Landroid/content/Context;Lcom/google/android/gms/internal/ads/yp;Ljava/lang/String;ZZLcom/google/android/gms/internal/ads/ix;Lcom/google/android/gms/internal/ads/zzbbi;Lcom/google/android/gms/internal/ads/D;Lcom/google/android/gms/ads/internal/P;Lcom/google/android/gms/ads/internal/ta;Lcom/google/android/gms/internal/ads/YF;)Lcom/google/android/gms/internal/ads/Mo;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Qm;->FH(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/Qm;

    move-result-object v1

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Mo;->ei()Lcom/google/android/gms/internal/ads/tp;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/ads/Vo;

    invoke-direct {v3, v1}, Lcom/google/android/gms/internal/ads/Vo;-><init>(Lcom/google/android/gms/internal/ads/Qm;)V

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/tp;->j6(Lcom/google/android/gms/internal/ads/up;)V

    invoke-interface {v0, v11}, Lcom/google/android/gms/internal/ads/Mo;->loadUrl(Ljava/lang/String;)V

    return-object v1
.end method
