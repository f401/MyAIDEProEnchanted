.class public Lcom/google/android/gms/ads/mediation/f;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field protected DW:Z

.field protected FH:Landroid/os/Bundle;

.field protected Hw:Landroid/view/View;

.field private VH:Z

.field private Zo:Lcom/google/android/gms/ads/h;

.field protected j6:Z

.field private v5:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/mediation/f;->FH:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final DW()Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/f;->FH:Landroid/os/Bundle;

    return-object v0
.end method

.method public DW(Landroid/view/View;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public final DW(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/gms/ads/mediation/f;->j6:Z

    return-void
.end method

.method public FH(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method public final FH()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/ads/mediation/f;->DW:Z

    return v0
.end method

.method public final Hw()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/ads/mediation/f;->j6:Z

    return v0
.end method

.method public VH()V
    .registers 1

    return-void
.end method

.method public Zo()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/ads/mediation/f;->VH:Z

    return v0
.end method

.method public final gn()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/f;->v5:Landroid/view/View;

    return-object v0
.end method

.method public j6()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/f;->Hw:Landroid/view/View;

    return-object v0
.end method

.method public j6(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method public j6(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public final j6(Lcom/google/android/gms/ads/h;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/ads/mediation/f;->Zo:Lcom/google/android/gms/ads/h;

    return-void
.end method

.method public final j6(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/gms/ads/mediation/f;->DW:Z

    return-void
.end method

.method public final v5()Lcom/google/android/gms/ads/h;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/f;->Zo:Lcom/google/android/gms/ads/h;

    return-object v0
.end method
