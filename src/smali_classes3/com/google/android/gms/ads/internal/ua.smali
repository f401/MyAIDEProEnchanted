.class public final Lcom/google/android/gms/ads/internal/ua;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# instance fields
.field private DW:Z

.field private FH:Lcom/google/android/gms/internal/ads/Wj;

.field private Hw:Lcom/google/android/gms/internal/ads/zzaso;

.field private final j6:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/Wj;Lcom/google/android/gms/internal/ads/zzaso;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/ua;->j6:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/ua;->FH:Lcom/google/android/gms/internal/ads/Wj;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/ua;->Hw:Lcom/google/android/gms/internal/ads/zzaso;

    if-nez p3, :cond_12

    new-instance p1, Lcom/google/android/gms/internal/ads/zzaso;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzaso;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/ua;->Hw:Lcom/google/android/gms/internal/ads/zzaso;

    :cond_12
    return-void
.end method

.method private final FH()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/ua;->FH:Lcom/google/android/gms/internal/ads/Wj;

    if-eqz v0, :cond_c

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Wj;->Hw()Lcom/google/android/gms/internal/ads/zzawo;

    move-result-object v0

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzawo;->Zo:Z

    if-nez v0, :cond_12

    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/ua;->Hw:Lcom/google/android/gms/internal/ads/zzaso;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzaso;->j6:Z

    if-eqz v0, :cond_14

    :cond_12
    const/4 v0, 0x1

    return v0

    :cond_14
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final DW()Z
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/ua;->FH()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/ua;->DW:Z

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    return v0

    :cond_d
    :goto_d
    const/4 v0, 0x1

    return v0
.end method

.method public final j6()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/ua;->DW:Z

    return-void
.end method

.method public final j6(Ljava/lang/String;)V
    .registers 7

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/ua;->FH()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    const-string v0, ""

    if-eqz p1, :cond_c

    goto :goto_d

    :cond_c
    move-object p1, v0

    :goto_d
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/ua;->FH:Lcom/google/android/gms/internal/ads/Wj;

    if-eqz v1, :cond_17

    const/4 v0, 0x0

    const/4 v2, 0x3

    invoke-interface {v1, p1, v0, v2}, Lcom/google/android/gms/internal/ads/Wj;->j6(Ljava/lang/String;Ljava/util/Map;I)V

    return-void

    :cond_17
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/ua;->Hw:Lcom/google/android/gms/internal/ads/zzaso;

    iget-boolean v2, v1, Lcom/google/android/gms/internal/ads/zzaso;->j6:Z

    if-eqz v2, :cond_4a

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzaso;->DW:Ljava/util/List;

    if-eqz v1, :cond_4a

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_25
    :goto_25
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_25

    const-string v3, "{NAVIGATION_URL}"

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->v5()Lcom/google/android/gms/internal/ads/Nk;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/ua;->j6:Landroid/content/Context;

    invoke-static {v3, v0, v2}, Lcom/google/android/gms/internal/ads/Nk;->j6(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_25

    :cond_4a
    return-void
.end method
