.class public final Lcom/google/android/gms/internal/ads/AE;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/OE;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# instance fields
.field private final DW:Lcom/google/android/gms/internal/ads/Mo;

.field private final FH:Lcom/google/android/gms/ads/internal/gmsg/B;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/ads/internal/gmsg/B",
            "<",
            "Lcom/google/android/gms/internal/ads/Mo;",
            ">;"
        }
    .end annotation
.end field

.field private final Hw:Lcom/google/android/gms/ads/internal/gmsg/B;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/ads/internal/gmsg/B",
            "<",
            "Lcom/google/android/gms/internal/ads/Mo;",
            ">;"
        }
    .end annotation
.end field

.field private final j6:Lcom/google/android/gms/internal/ads/sE;

.field private final v5:Lcom/google/android/gms/ads/internal/gmsg/B;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/ads/internal/gmsg/B",
            "<",
            "Lcom/google/android/gms/internal/ads/Mo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/sE;Lcom/google/android/gms/internal/ads/Mo;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/BE;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/BE;-><init>(Lcom/google/android/gms/internal/ads/AE;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/AE;->FH:Lcom/google/android/gms/ads/internal/gmsg/B;

    new-instance v0, Lcom/google/android/gms/internal/ads/CE;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/CE;-><init>(Lcom/google/android/gms/internal/ads/AE;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/AE;->Hw:Lcom/google/android/gms/ads/internal/gmsg/B;

    new-instance v0, Lcom/google/android/gms/internal/ads/DE;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/DE;-><init>(Lcom/google/android/gms/internal/ads/AE;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/AE;->v5:Lcom/google/android/gms/ads/internal/gmsg/B;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/AE;->j6:Lcom/google/android/gms/internal/ads/sE;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/AE;->DW:Lcom/google/android/gms/internal/ads/Mo;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/AE;->DW:Lcom/google/android/gms/internal/ads/Mo;

    const-string v1, "/updateActiveView"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/AE;->FH:Lcom/google/android/gms/ads/internal/gmsg/B;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/Mo;->j6(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/B;)V

    const-string v1, "/untrackActiveViewUnit"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/AE;->Hw:Lcom/google/android/gms/ads/internal/gmsg/B;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/Mo;->j6(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/B;)V

    const-string v1, "/visibilityChanged"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/AE;->v5:Lcom/google/android/gms/ads/internal/gmsg/B;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/Mo;->j6(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/B;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/AE;->j6:Lcom/google/android/gms/internal/ads/sE;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/sE;->v5:Lcom/google/android/gms/internal/ads/qE;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/qE;->Hw()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Custom JS tracking ad unit: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "Custom JS tracking ad unit: "

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/ads/AE;)Lcom/google/android/gms/internal/ads/sE;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/AE;->j6:Lcom/google/android/gms/internal/ads/sE;

    return-object v0
.end method


# virtual methods
.method public final DW()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/AE;->DW:Lcom/google/android/gms/internal/ads/Mo;

    const-string v1, "/visibilityChanged"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/AE;->v5:Lcom/google/android/gms/ads/internal/gmsg/B;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/Mo;->DW(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/B;)V

    const-string v1, "/untrackActiveViewUnit"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/AE;->Hw:Lcom/google/android/gms/ads/internal/gmsg/B;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/Mo;->DW(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/B;)V

    const-string v1, "/updateActiveView"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/AE;->FH:Lcom/google/android/gms/ads/internal/gmsg/B;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/Mo;->DW(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/B;)V

    return-void
.end method

.method public final j6(Lorg/json/JSONObject;Z)V
    .registers 5

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/AE;->DW:Lcom/google/android/gms/internal/ads/Mo;

    const-string v1, "AFMA_updateActiveView"

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/ads/qd;->DW(Ljava/lang/String;Lorg/json/JSONObject;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/AE;->j6:Lcom/google/android/gms/internal/ads/sE;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/sE;->DW(Lcom/google/android/gms/internal/ads/OE;)V

    goto :goto_0
.end method

.method public final j6()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
