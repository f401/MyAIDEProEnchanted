.class final Lcom/google/android/gms/ads/internal/ia;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final DW:Lcom/google/android/gms/internal/ads/Wj;

.field private final FH:Lcom/google/android/gms/internal/ads/D;

.field final Hw:Lcom/google/android/gms/ads/internal/fa;

.field final j6:Lcom/google/android/gms/internal/ads/lk;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/fa;Lcom/google/android/gms/internal/ads/lk;Lcom/google/android/gms/internal/ads/Wj;Lcom/google/android/gms/internal/ads/D;)V
    .registers 5

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/ia;->Hw:Lcom/google/android/gms/ads/internal/fa;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/ia;->j6:Lcom/google/android/gms/internal/ads/lk;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/ia;->DW:Lcom/google/android/gms/internal/ads/Wj;

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/ia;->FH:Lcom/google/android/gms/internal/ads/D;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 14

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/ia;->j6:Lcom/google/android/gms/internal/ads/lk;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/lk;->DW:Lcom/google/android/gms/internal/ads/zzasm;

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzasm;->Mr:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_4a

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/ia;->Hw:Lcom/google/android/gms/ads/internal/fa;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/Y;->P8:Lcom/google/android/gms/internal/ads/J;

    if-eqz v1, :cond_4a

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzasm;->FH:Ljava/lang/String;

    if-eqz v0, :cond_23

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->v5()Lcom/google/android/gms/internal/ads/Nk;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/ia;->j6:Lcom/google/android/gms/internal/ads/lk;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/lk;->DW:Lcom/google/android/gms/internal/ads/zzasm;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzasm;->FH:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Nk;->j6(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_24

    :cond_23
    const/4 v0, 0x0

    :goto_24
    new-instance v1, Lcom/google/android/gms/internal/ads/E;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/ia;->Hw:Lcom/google/android/gms/ads/internal/fa;

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/ia;->j6:Lcom/google/android/gms/internal/ads/lk;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/lk;->DW:Lcom/google/android/gms/internal/ads/zzasm;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzasm;->Hw:Ljava/lang/String;

    invoke-direct {v1, v3, v0, v4}, Lcom/google/android/gms/internal/ads/E;-><init>(Lcom/google/android/gms/ads/internal/g;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/ia;->Hw:Lcom/google/android/gms/ads/internal/fa;

    iget-object v3, v0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    const/4 v4, 0x1

    iput v4, v3, Lcom/google/android/gms/ads/internal/Y;->cb:I

    :try_start_38
    iput-boolean v2, v0, Lcom/google/android/gms/ads/internal/a;->Hw:Z

    iget-object v0, v3, Lcom/google/android/gms/ads/internal/Y;->P8:Lcom/google/android/gms/internal/ads/J;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/J;->j6(Lcom/google/android/gms/internal/ads/G;)V
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_38 .. :try_end_3f} :catch_40

    return-void

    :catch_40
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/ia;->Hw:Lcom/google/android/gms/ads/internal/fa;

    iput-boolean v4, v0, Lcom/google/android/gms/ads/internal/a;->Hw:Z

    :cond_4a
    new-instance v0, Lcom/google/android/gms/ads/internal/ua;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/ia;->Hw:Lcom/google/android/gms/ads/internal/fa;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/Y;->FH:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/ia;->DW:Lcom/google/android/gms/internal/ads/Wj;

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/ia;->j6:Lcom/google/android/gms/internal/ads/lk;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/lk;->DW:Lcom/google/android/gms/internal/ads/zzasm;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzasm;->KD:Lcom/google/android/gms/internal/ads/zzaso;

    invoke-direct {v0, v1, v3, v4}, Lcom/google/android/gms/ads/internal/ua;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/Wj;Lcom/google/android/gms/internal/ads/zzaso;)V

    :try_start_5d
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/ia;->Hw:Lcom/google/android/gms/ads/internal/fa;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/ia;->j6:Lcom/google/android/gms/internal/ads/lk;

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/ia;->DW:Lcom/google/android/gms/internal/ads/Wj;

    invoke-virtual {v1, v3, v0, v4}, Lcom/google/android/gms/ads/internal/fa;->j6(Lcom/google/android/gms/internal/ads/lk;Lcom/google/android/gms/ads/internal/ua;Lcom/google/android/gms/internal/ads/Wj;)Lcom/google/android/gms/internal/ads/Mo;

    move-result-object v9
    :try_end_67
    .catch Lcom/google/android/gms/internal/ads/Wo; {:try_start_5d .. :try_end_67} :catch_a3

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/ia;->Hw:Lcom/google/android/gms/ads/internal/fa;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/Y;->EQ:Lcom/google/android/gms/internal/ads/lk;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/lk;->DW:Lcom/google/android/gms/internal/ads/zzasm;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/zzasm;->lp:Z

    invoke-interface {v9, v1}, Lcom/google/android/gms/internal/ads/Mo;->FH(Z)V

    new-instance v1, Lcom/google/android/gms/ads/internal/ka;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/ads/internal/ka;-><init>(Lcom/google/android/gms/ads/internal/ia;Lcom/google/android/gms/ads/internal/ua;)V

    invoke-interface {v9, v1}, Lcom/google/android/gms/internal/ads/Mo;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v1, Lcom/google/android/gms/ads/internal/la;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/ads/internal/la;-><init>(Lcom/google/android/gms/ads/internal/ia;Lcom/google/android/gms/ads/internal/ua;)V

    invoke-interface {v9, v1}, Lcom/google/android/gms/internal/ads/Mo;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/ia;->Hw:Lcom/google/android/gms/ads/internal/fa;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iput v2, v0, Lcom/google/android/gms/ads/internal/Y;->cb:I

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->Hw()Lcom/google/android/gms/internal/ads/zg;

    iget-object v11, p0, Lcom/google/android/gms/ads/internal/ia;->Hw:Lcom/google/android/gms/ads/internal/fa;

    iget-object v1, v11, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v5, v1, Lcom/google/android/gms/ads/internal/Y;->FH:Landroid/content/Context;

    iget-object v7, p0, Lcom/google/android/gms/ads/internal/ia;->j6:Lcom/google/android/gms/internal/ads/lk;

    iget-object v8, v1, Lcom/google/android/gms/ads/internal/Y;->Hw:Lcom/google/android/gms/internal/ads/ix;

    iget-object v10, v11, Lcom/google/android/gms/ads/internal/aa;->J0:Lcom/google/android/gms/internal/ads/Ge;

    iget-object v12, p0, Lcom/google/android/gms/ads/internal/ia;->FH:Lcom/google/android/gms/internal/ads/D;

    move-object v6, v11

    invoke-static/range {v5 .. v12}, Lcom/google/android/gms/internal/ads/zg;->j6(Landroid/content/Context;Lcom/google/android/gms/ads/internal/a;Lcom/google/android/gms/internal/ads/lk;Lcom/google/android/gms/internal/ads/ix;Lcom/google/android/gms/internal/ads/Mo;Lcom/google/android/gms/internal/ads/Ge;Lcom/google/android/gms/internal/ads/Ag;Lcom/google/android/gms/internal/ads/D;)Lcom/google/android/gms/internal/ads/hl;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/Y;->gn:Lcom/google/android/gms/internal/ads/hl;

    return-void

    :catch_a3
    move-exception v0

    const-string v1, "Could not obtain webview."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/Nk;->j6:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/ads/internal/ja;

    invoke-direct {v1, p0}, Lcom/google/android/gms/ads/internal/ja;-><init>(Lcom/google/android/gms/ads/internal/ia;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
