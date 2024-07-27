.class final Lcom/google/android/gms/internal/ads/Qk;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/O;


# instance fields
.field private final DW:Lcom/google/android/gms/internal/ads/N;

.field private final FH:Landroid/content/Context;

.field private final j6:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/Nk;Ljava/util/List;Lcom/google/android/gms/internal/ads/N;Landroid/content/Context;)V
    .registers 5

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Qk;->j6:Ljava/util/List;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/Qk;->DW:Lcom/google/android/gms/internal/ads/N;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/Qk;->FH:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final DW()V
    .registers 6

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Qk;->j6:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "Pinging url: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Qk;->DW:Lcom/google/android/gms/internal/ads/N;

    invoke-virtual {v1, v0, v4, v4}, Lcom/google/android/gms/internal/ads/N;->j6(Landroid/net/Uri;Landroid/os/Bundle;Ljava/util/List;)Z

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/String;

    const-string v3, "Pinging url: "

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Qk;->DW:Lcom/google/android/gms/internal/ads/N;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Qk;->FH:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/N;->j6(Landroid/app/Activity;)V

    return-void
.end method

.method public final j6()V
    .registers 1

    return-void
.end method
