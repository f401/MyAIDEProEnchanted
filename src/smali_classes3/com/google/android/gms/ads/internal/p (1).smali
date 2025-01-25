.class final Lcom/google/android/gms/ads/internal/p;
.super Lcom/google/android/gms/internal/ads/Ak;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# instance fields
.field private final Hw:I

.field final v5:Lcom/google/android/gms/ads/internal/m;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/internal/m;I)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/p;->v5:Lcom/google/android/gms/ads/internal/m;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Ak;-><init>()V

    iput p2, p0, Lcom/google/android/gms/ads/internal/p;->Hw:I

    return-void
.end method


# virtual methods
.method public final DW()V
    .registers 1

    return-void
.end method

.method public final Hw()V
    .registers 22

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/p;->v5:Lcom/google/android/gms/ads/internal/m;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-boolean v3, v1, Lcom/google/android/gms/ads/internal/Y;->dx:Z

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->v5()Lcom/google/android/gms/internal/ads/Nk;

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/p;->v5:Lcom/google/android/gms/ads/internal/m;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/Y;->FH:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/Nk;->Ws(Landroid/content/Context;)Z

    move-result v4

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/p;->v5:Lcom/google/android/gms/ads/internal/m;

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/m;->j6(Lcom/google/android/gms/ads/internal/m;)Z

    move-result v5

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/p;->v5:Lcom/google/android/gms/ads/internal/m;

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/m;->DW(Lcom/google/android/gms/ads/internal/m;)F

    move-result v6

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/p;->v5:Lcom/google/android/gms/ads/internal/m;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-boolean v1, v1, Lcom/google/android/gms/ads/internal/Y;->dx:Z

    const/4 v11, -0x1

    if-eqz v1, :cond_2e

    iget v1, v0, Lcom/google/android/gms/ads/internal/p;->Hw:I

    move v7, v1

    goto :goto_2f

    :cond_2e
    const/4 v7, -0x1

    :goto_2f
    iget-object v1, v0, Lcom/google/android/gms/ads/internal/p;->v5:Lcom/google/android/gms/ads/internal/m;

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/m;->FH(Lcom/google/android/gms/ads/internal/m;)Z

    move-result v8

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/p;->v5:Lcom/google/android/gms/ads/internal/m;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/Y;->tp:Lcom/google/android/gms/internal/ads/kk;

    new-instance v20, Lcom/google/android/gms/ads/internal/zzaq;

    iget-boolean v9, v1, Lcom/google/android/gms/internal/ads/kk;->ef:Z

    iget-boolean v10, v1, Lcom/google/android/gms/internal/ads/kk;->g3:Z

    move-object/from16 v2, v20

    invoke-direct/range {v2 .. v10}, Lcom/google/android/gms/ads/internal/zzaq;-><init>(ZZZFIZZZ)V

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/p;->v5:Lcom/google/android/gms/ads/internal/m;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/Y;->tp:Lcom/google/android/gms/internal/ads/kk;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/kk;->DW:Lcom/google/android/gms/internal/ads/Mo;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/Mo;->getRequestedOrientation()I

    move-result v1

    if-ne v1, v11, :cond_5c

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/p;->v5:Lcom/google/android/gms/ads/internal/m;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/Y;->tp:Lcom/google/android/gms/internal/ads/kk;

    iget v1, v1, Lcom/google/android/gms/internal/ads/kk;->gn:I

    :cond_5c
    move/from16 v17, v1

    iget-object v15, v0, Lcom/google/android/gms/ads/internal/p;->v5:Lcom/google/android/gms/ads/internal/m;

    iget-object v1, v15, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v2, v1, Lcom/google/android/gms/ads/internal/Y;->tp:Lcom/google/android/gms/internal/ads/kk;

    new-instance v3, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v4, v2, Lcom/google/android/gms/internal/ads/kk;->DW:Lcom/google/android/gms/internal/ads/Mo;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/Y;->v5:Lcom/google/android/gms/internal/ads/zzbbi;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/kk;->P8:Ljava/lang/String;

    move-object v12, v3

    move-object v13, v15

    move-object v14, v15

    move-object/from16 v16, v4

    move-object/from16 v18, v1

    move-object/from16 v19, v2

    invoke-direct/range {v12 .. v20}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/internal/ads/WG;Lcom/google/android/gms/ads/internal/overlay/m;Lcom/google/android/gms/ads/internal/overlay/s;Lcom/google/android/gms/internal/ads/Mo;ILcom/google/android/gms/internal/ads/zzbbi;Ljava/lang/String;Lcom/google/android/gms/ads/internal/zzaq;)V

    sget-object v1, Lcom/google/android/gms/internal/ads/Nk;->j6:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/ads/internal/q;

    invoke-direct {v2, v0, v3}, Lcom/google/android/gms/ads/internal/q;-><init>(Lcom/google/android/gms/ads/internal/p;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
