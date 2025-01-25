.class public final Lcom/google/android/gms/internal/ads/r;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# instance fields
.field private DW:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private FH:Landroid/content/Context;

.field private Hw:Ljava/lang/String;

.field private j6:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/r;->FH:Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/r;->Hw:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/r;->FH:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/r;->Hw:Ljava/lang/String;

    sget-object p2, Lcom/google/android/gms/internal/ads/p;->XX:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/r;->j6:Ljava/lang/String;

    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/r;->DW:Ljava/util/Map;

    const-string v0, "s"

    const-string v1, "gmob_sdk"

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/r;->DW:Ljava/util/Map;

    const-string v0, "v"

    const-string v1, "3"

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/r;->DW:Ljava/util/Map;

    const-string v0, "os"

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/r;->DW:Ljava/util/Map;

    const-string v0, "sdk"

    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/r;->DW:Ljava/util/Map;

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->v5()Lcom/google/android/gms/internal/ads/Nk;

    const-string v0, "device"

    invoke-static {}, Lcom/google/android/gms/internal/ads/Nk;->DW()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/r;->DW:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_62

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_66

    :cond_62
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :goto_66
    const-string v1, "app"

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/r;->DW:Ljava/util/Map;

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->v5()Lcom/google/android/gms/internal/ads/Nk;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Nk;->we(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_79

    const-string p1, "1"

    goto :goto_7b

    :cond_79
    const-string p1, "0"

    :goto_7b
    const-string v0, "is_lite_sdk"

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->QX()Lcom/google/android/gms/internal/ads/Li;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/r;->FH:Landroid/content/Context;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/Li;->j6(Landroid/content/Context;)Ljava/util/concurrent/Future;

    move-result-object p1

    :try_start_8a
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/r;->DW:Ljava/util/Map;

    const-string v0, "network_coarse"

    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/Ji;

    iget v1, v1, Lcom/google/android/gms/internal/ads/Ji;->Ws:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/r;->DW:Ljava/util/Map;

    const-string v0, "network_fine"

    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/Ji;

    iget p1, p1, Lcom/google/android/gms/internal/ads/Ji;->QX:I

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b3
    .catch Ljava/lang/Exception; {:try_start_8a .. :try_end_b3} :catch_b4

    return-void

    :catch_b4
    move-exception p1

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->u7()Lcom/google/android/gms/internal/ads/pk;

    move-result-object p2

    const-string v0, "CsiConfiguration.CsiConfiguration"

    invoke-virtual {p2, p1, v0}, Lcom/google/android/gms/internal/ads/pk;->j6(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method final DW()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/r;->Hw:Ljava/lang/String;

    return-object v0
.end method

.method final FH()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/r;->j6:Ljava/lang/String;

    return-object v0
.end method

.method final Hw()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/r;->DW:Ljava/util/Map;

    return-object v0
.end method

.method final j6()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/r;->FH:Landroid/content/Context;

    return-object v0
.end method
