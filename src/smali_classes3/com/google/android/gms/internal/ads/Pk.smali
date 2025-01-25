.class final synthetic Lcom/google/android/gms/internal/ads/Pk;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final DW:Landroid/content/Context;

.field private final j6:Lcom/google/android/gms/internal/ads/Nk;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/Nk;Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Pk;->j6:Lcom/google/android/gms/internal/ads/Nk;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Pk;->DW:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 9

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Pk;->DW:Landroid/content/Context;

    sget-object v1, Lcom/google/android/gms/internal/ads/p;->Lm:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_16

    return-object v2

    :cond_16
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v3, "IABConsent_CMPPresent"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_2f

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_2f
    const/4 v3, 0x0

    :goto_30
    const/4 v4, 0x4

    if-ge v3, v4, :cond_5a

    new-array v4, v4, [Ljava/lang/String;

    const-string v6, "IABConsent_SubjectToGDPR"

    aput-object v6, v4, v5

    const-string v6, "IABConsent_ConsentString"

    const/4 v7, 0x1

    aput-object v6, v4, v7

    const/4 v6, 0x2

    const-string v7, "IABConsent_ParsedPurposeConsents"

    aput-object v7, v4, v6

    const/4 v6, 0x3

    const-string v7, "IABConsent_ParsedVendorConsents"

    aput-object v7, v4, v6

    aget-object v4, v4, v3

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_57

    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v4, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_57
    add-int/lit8 v3, v3, 0x1

    goto :goto_30

    :cond_5a
    return-object v1
.end method
