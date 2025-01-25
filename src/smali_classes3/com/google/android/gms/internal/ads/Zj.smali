.class final Lcom/google/android/gms/internal/ads/Zj;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# static fields
.field private static final j6:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final DW:Landroid/content/Context;

.field private final FH:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final Hw:Lcom/google/android/gms/internal/ads/Mj;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lcom/google/android/gms/common/util/o;->gn()Z

    move-result v1

    if-eqz v1, :cond_19

    const-string v1, "android.webkit.resource.AUDIO_CAPTURE"

    const-string v2, "android.permission.RECORD_AUDIO"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "android.webkit.resource.VIDEO_CAPTURE"

    const-string v2, "android.permission.CAMERA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_19
    sput-object v0, Lcom/google/android/gms/internal/ads/Zj;->j6:Ljava/util/Map;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/google/android/gms/internal/ads/Mj;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/internal/ads/Mj;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Zj;->DW:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Zj;->FH:Ljava/util/List;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/Zj;->Hw:Lcom/google/android/gms/internal/ads/Mj;

    return-void
.end method


# virtual methods
.method final j6([Ljava/lang/String;)Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_8
    if-ge v3, v1, :cond_76

    aget-object v4, p1, v3

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/Zj;->FH:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_12
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_44

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_26

    goto :goto_42

    :cond_26
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    const-string v9, "android.webkit.resource."

    if-eqz v8, :cond_37

    invoke-virtual {v9, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_3c

    :cond_37
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_3c
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    :goto_42
    const/4 v5, 0x1

    goto :goto_45

    :cond_44
    const/4 v5, 0x0

    :goto_45
    if-eqz v5, :cond_6e

    sget-object v5, Lcom/google/android/gms/internal/ads/Zj;->j6:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_62

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->v5()Lcom/google/android/gms/internal/ads/Nk;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/Zj;->DW:Landroid/content/Context;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v6, v5}, Lcom/google/android/gms/internal/ads/Nk;->j6(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_61

    goto :goto_62

    :cond_61
    const/4 v7, 0x0

    :cond_62
    :goto_62
    if-eqz v7, :cond_68

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_73

    :cond_68
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/Zj;->Hw:Lcom/google/android/gms/internal/ads/Mj;

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/Mj;->FH(Ljava/lang/String;)V

    goto :goto_73

    :cond_6e
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/Zj;->Hw:Lcom/google/android/gms/internal/ads/Mj;

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/Mj;->DW(Ljava/lang/String;)V

    :goto_73
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_76
    return-object v0
.end method
