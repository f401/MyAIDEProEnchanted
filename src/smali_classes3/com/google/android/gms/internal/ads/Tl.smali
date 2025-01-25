.class final Lcom/google/android/gms/internal/ads/Tl;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final j6:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/Sl;Landroid/content/Context;)V
    .registers 3

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Tl;->j6:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Tl;->j6:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "admob_user_agent"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, ""

    const-string v3, "user_agent"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_30

    const-string v1, "User agent is not initialized on Google Play Services. Initializing."

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/Ek;->Zo(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Tl;->j6:Landroid/content/Context;

    invoke-static {v1}, Landroid/webkit/WebSettings;->getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/Tl;->j6:Landroid/content/Context;

    invoke-static {v3, v0, v2}, Lcom/google/android/gms/common/util/r;->j6(Landroid/content/Context;Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)V

    goto :goto_35

    :cond_30
    const-string v0, "User agent is already initialized on Google Play Services."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Ek;->Zo(Ljava/lang/String;)V

    :goto_35
    return-object v1
.end method
