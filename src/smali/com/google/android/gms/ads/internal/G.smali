.class final Lcom/google/android/gms/ads/internal/G;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final DW:I

.field private final FH:Ljava/util/List;

.field private final Hw:Lcom/google/android/gms/ads/internal/C;

.field private final j6:Lcom/google/android/gms/internal/ads/ka;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/C;Lcom/google/android/gms/internal/ads/ka;ILjava/util/List;)V
    .registers 5

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/G;->Hw:Lcom/google/android/gms/ads/internal/C;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/G;->j6:Lcom/google/android/gms/internal/ads/ka;

    iput p3, p0, Lcom/google/android/gms/ads/internal/G;->DW:I

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/G;->FH:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/G;->j6:Lcom/google/android/gms/internal/ads/ka;

    instance-of v2, v2, Lcom/google/android/gms/internal/ads/Y;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/G;->Hw:Lcom/google/android/gms/ads/internal/C;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/Y;->Mr:Lcom/google/android/gms/internal/ads/ub;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/G;->Hw:Lcom/google/android/gms/ads/internal/C;

    iget v3, p0, Lcom/google/android/gms/ads/internal/G;->DW:I

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/G;->FH:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-eq v3, v4, :cond_8

    :goto_0
    iput-boolean v0, v2, Lcom/google/android/gms/ads/internal/a;->Hw:Z

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/G;->j6:Lcom/google/android/gms/internal/ads/ka;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/C;->j6(Lcom/google/android/gms/internal/ads/ka;)Lcom/google/android/gms/internal/ads/da;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/G;->Hw:Lcom/google/android/gms/ads/internal/C;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/Y;->Mr:Lcom/google/android/gms/internal/ads/ub;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/ub;->j6(Lcom/google/android/gms/internal/ads/zb;)V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/G;->Hw:Lcom/google/android/gms/ads/internal/C;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/da;->et()Labcd/ox;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/internal/C;->BT(Labcd/ox;)V

    :goto_1
    return-void

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/G;->j6:Lcom/google/android/gms/internal/ads/ka;

    instance-of v2, v2, Lcom/google/android/gms/internal/ads/Y;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/G;->Hw:Lcom/google/android/gms/ads/internal/C;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/Y;->j3:Lcom/google/android/gms/internal/ads/ib;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/G;->Hw:Lcom/google/android/gms/ads/internal/C;

    iget v3, p0, Lcom/google/android/gms/ads/internal/G;->DW:I

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/G;->FH:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-eq v3, v4, :cond_7

    :goto_2
    iput-boolean v0, v2, Lcom/google/android/gms/ads/internal/a;->Hw:Z

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/G;->j6:Lcom/google/android/gms/internal/ads/ka;

    check-cast v0, Lcom/google/android/gms/internal/ads/Y;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/G;->Hw:Lcom/google/android/gms/ads/internal/C;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/Y;->j3:Lcom/google/android/gms/internal/ads/ib;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/ib;->j6(Lcom/google/android/gms/internal/ads/Xa;)V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/G;->Hw:Lcom/google/android/gms/ads/internal/C;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Y;->et()Labcd/ox;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/internal/C;->BT(Labcd/ox;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/G;->j6:Lcom/google/android/gms/internal/ads/ka;

    instance-of v2, v2, Lcom/google/android/gms/internal/ads/W;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/G;->Hw:Lcom/google/android/gms/ads/internal/C;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/Y;->Mr:Lcom/google/android/gms/internal/ads/ub;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/G;->Hw:Lcom/google/android/gms/ads/internal/C;

    iget v3, p0, Lcom/google/android/gms/ads/internal/G;->DW:I

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/G;->FH:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-eq v3, v4, :cond_6

    :goto_3
    iput-boolean v0, v2, Lcom/google/android/gms/ads/internal/a;->Hw:Z

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/G;->j6:Lcom/google/android/gms/internal/ads/ka;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/C;->j6(Lcom/google/android/gms/internal/ads/ka;)Lcom/google/android/gms/internal/ads/da;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/G;->Hw:Lcom/google/android/gms/ads/internal/C;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/Y;->Mr:Lcom/google/android/gms/internal/ads/ub;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/ub;->j6(Lcom/google/android/gms/internal/ads/zb;)V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/G;->Hw:Lcom/google/android/gms/ads/internal/C;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/da;->et()Labcd/ox;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/internal/C;->BT(Labcd/ox;)V

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/G;->j6:Lcom/google/android/gms/internal/ads/ka;

    instance-of v2, v2, Lcom/google/android/gms/internal/ads/W;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/G;->Hw:Lcom/google/android/gms/ads/internal/C;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/Y;->aM:Lcom/google/android/gms/internal/ads/fb;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/G;->Hw:Lcom/google/android/gms/ads/internal/C;

    iget v3, p0, Lcom/google/android/gms/ads/internal/G;->DW:I

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/G;->FH:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-eq v3, v4, :cond_5

    :goto_4
    iput-boolean v0, v2, Lcom/google/android/gms/ads/internal/a;->Hw:Z

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/G;->j6:Lcom/google/android/gms/internal/ads/ka;

    check-cast v0, Lcom/google/android/gms/internal/ads/W;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/G;->Hw:Lcom/google/android/gms/ads/internal/C;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/a;->Zo:Lcom/google/android/gms/ads/internal/Y;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/Y;->aM:Lcom/google/android/gms/internal/ads/fb;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/fb;->j6(Lcom/google/android/gms/internal/ads/Ta;)V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/G;->Hw:Lcom/google/android/gms/ads/internal/C;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/W;->et()Labcd/ox;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/internal/C;->BT(Labcd/ox;)V

    goto/16 :goto_1

    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/G;->Hw:Lcom/google/android/gms/ads/internal/C;

    iget v3, p0, Lcom/google/android/gms/ads/internal/G;->DW:I

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/G;->FH:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-eq v3, v4, :cond_4

    :goto_5
    const/4 v1, 0x3

    invoke-virtual {v2, v1, v0}, Lcom/google/android/gms/ads/internal/C;->j6(IZ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    :cond_4
    move v0, v1

    goto :goto_5

    :cond_5
    move v0, v1

    goto :goto_4

    :cond_6
    move v0, v1

    goto :goto_3

    :cond_7
    move v0, v1

    goto/16 :goto_2

    :cond_8
    move v0, v1

    goto/16 :goto_0
.end method
