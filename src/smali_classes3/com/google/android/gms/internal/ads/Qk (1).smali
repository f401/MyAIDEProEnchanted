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

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Qk;->j6:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const-string v4, "Pinging url: "

    if-eqz v3, :cond_23

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_28

    :cond_23
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_28
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Qk;->DW:Lcom/google/android/gms/internal/ads/N;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v3}, Lcom/google/android/gms/internal/ads/N;->j6(Landroid/net/Uri;Landroid/os/Bundle;Ljava/util/List;)Z

    goto :goto_6

    :cond_36
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Qk;->DW:Lcom/google/android/gms/internal/ads/N;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Qk;->FH:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/N;->j6(Landroid/app/Activity;)V

    return-void
.end method

.method public final j6()V
    .registers 1

    return-void
.end method
