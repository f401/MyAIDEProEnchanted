.class final Lcom/google/android/gms/internal/ads/j;
.super Lcom/google/android/gms/internal/ads/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/e<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/gms/internal/ads/e;-><init>(ILjava/lang/String;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/f;)V

    return-void
.end method


# virtual methods
.method public final synthetic j6(Landroid/content/SharedPreferences;)Ljava/lang/Object;
    .registers 4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/e;->j6()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/e;->FH()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic j6(Lorg/json/JSONObject;)Ljava/lang/Object;
    .registers 4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/e;->j6()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/e;->FH()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic j6(Landroid/content/SharedPreferences$Editor;Ljava/lang/Object;)V
    .registers 4

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/e;->j6()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    return-void
.end method
