.class public final Lcom/google/android/gms/ads/internal/gmsg/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/internal/gmsg/B;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/ads/internal/gmsg/B<",
        "Lcom/google/android/gms/internal/ads/Mo;",
        ">;"
    }
.end annotation


# static fields
.field private static final j6:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final DW:Lcom/google/android/gms/ads/internal/ua;

.field private final FH:Lcom/google/android/gms/internal/ads/Qf;

.field private final Hw:Lcom/google/android/gms/internal/ads/ag;


# direct methods
.method static constructor <clinit>()V
    .registers 11

    const/4 v0, 0x7

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "resize"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "playVideo"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "storePicture"

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const-string v2, "createCalendarEvent"

    const/4 v6, 0x3

    aput-object v2, v1, v6

    const-string v2, "setOrientationProperties"

    const/4 v7, 0x4

    aput-object v2, v1, v7

    const-string v2, "closeResizedAd"

    const/4 v8, 0x5

    aput-object v2, v1, v8

    const-string v2, "unload"

    const/4 v9, 0x6

    aput-object v2, v1, v9

    new-array v2, v0, [Ljava/lang/Integer;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v2, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v9

    invoke-static {v1, v2}, Lcom/google/android/gms/common/util/f;->j6([Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/ads/internal/gmsg/b;->j6:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/ads/internal/ua;Lcom/google/android/gms/internal/ads/Qf;Lcom/google/android/gms/internal/ads/ag;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/gmsg/b;->DW:Lcom/google/android/gms/ads/internal/ua;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/gmsg/b;->FH:Lcom/google/android/gms/internal/ads/Qf;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/gmsg/b;->Hw:Lcom/google/android/gms/internal/ads/ag;

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;Ljava/util/Map;)V
    .registers 8

    check-cast p1, Lcom/google/android/gms/internal/ads/Mo;

    const-string v0, "a"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/google/android/gms/ads/internal/gmsg/b;->j6:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x7

    const/4 v2, 0x5

    if-eq v0, v2, :cond_2d

    if-eq v0, v1, :cond_2d

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/gmsg/b;->DW:Lcom/google/android/gms/ads/internal/ua;

    if-eqz v3, :cond_2d

    invoke-virtual {v3}, Lcom/google/android/gms/ads/internal/ua;->DW()Z

    move-result v3

    if-nez v3, :cond_2d

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/gmsg/b;->DW:Lcom/google/android/gms/ads/internal/ua;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/google/android/gms/ads/internal/ua;->j6(Ljava/lang/String;)V

    return-void

    :cond_2d
    const/4 v3, 0x1

    if-eq v0, v3, :cond_7c

    const/4 v4, 0x3

    if-eq v0, v4, :cond_73

    const/4 v4, 0x4

    if-eq v0, v4, :cond_6a

    if-eq v0, v2, :cond_61

    const/4 p1, 0x6

    if-eq v0, p1, :cond_5b

    if-eq v0, v1, :cond_43

    const-string p1, "Unknown MRAID command called."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;)V

    goto :goto_5a

    :cond_43
    sget-object p1, Lcom/google/android/gms/internal/ads/p;->OW:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_5a

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/gmsg/b;->Hw:Lcom/google/android/gms/internal/ads/ag;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/ag;->uD()V

    :cond_5a
    :goto_5a
    return-void

    :cond_5b
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/gmsg/b;->FH:Lcom/google/android/gms/internal/ads/Qf;

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/ads/Qf;->j6(Z)V

    return-void

    :cond_61
    new-instance v0, Lcom/google/android/gms/internal/ads/Sf;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/ads/Sf;-><init>(Lcom/google/android/gms/internal/ads/Mo;Ljava/util/Map;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Sf;->j6()V

    return-void

    :cond_6a
    new-instance v0, Lcom/google/android/gms/internal/ads/Mf;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/ads/Mf;-><init>(Lcom/google/android/gms/internal/ads/Mo;Ljava/util/Map;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Mf;->DW()V

    return-void

    :cond_73
    new-instance v0, Lcom/google/android/gms/internal/ads/Tf;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/ads/Tf;-><init>(Lcom/google/android/gms/internal/ads/Mo;Ljava/util/Map;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Tf;->j6()V

    return-void

    :cond_7c
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/gmsg/b;->FH:Lcom/google/android/gms/internal/ads/Qf;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/Qf;->j6(Ljava/util/Map;)V

    return-void
.end method
