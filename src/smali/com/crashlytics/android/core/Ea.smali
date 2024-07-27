.class Lcom/crashlytics/android/core/Ea;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "CommitPrefEdits"
    }
.end annotation


# instance fields
.field private final DW:Lcom/crashlytics/android/core/ca;

.field private final j6:Labcd/Qz;


# direct methods
.method public constructor <init>(Labcd/Qz;Lcom/crashlytics/android/core/ca;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/crashlytics/android/core/Ea;->j6:Labcd/Qz;

    iput-object p2, p0, Lcom/crashlytics/android/core/Ea;->DW:Lcom/crashlytics/android/core/ca;

    return-void
.end method

.method public static j6(Labcd/Qz;Lcom/crashlytics/android/core/ca;)Lcom/crashlytics/android/core/Ea;
    .registers 3

    new-instance v0, Lcom/crashlytics/android/core/Ea;

    invoke-direct {v0, p0, p1}, Lcom/crashlytics/android/core/Ea;-><init>(Labcd/Qz;Lcom/crashlytics/android/core/ca;)V

    return-object v0
.end method


# virtual methods
.method j6(Z)V
    .registers 5

    iget-object v0, p0, Lcom/crashlytics/android/core/Ea;->j6:Labcd/Qz;

    invoke-interface {v0}, Labcd/Qz;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "always_send_reports_opt_in"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v0, v1}, Labcd/Qz;->j6(Landroid/content/SharedPreferences$Editor;)Z

    return-void
.end method

.method j6()Z
    .registers 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/crashlytics/android/core/Ea;->j6:Labcd/Qz;

    invoke-interface {v0}, Labcd/Qz;->get()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v3, "preferences_migration_complete"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v3, Labcd/Rz;

    iget-object v0, p0, Lcom/crashlytics/android/core/Ea;->DW:Lcom/crashlytics/android/core/ca;

    invoke-direct {v3, v0}, Labcd/Rz;-><init>(Lio/fabric/sdk/android/Kit;)V

    iget-object v0, p0, Lcom/crashlytics/android/core/Ea;->j6:Labcd/Qz;

    invoke-interface {v0}, Labcd/Qz;->get()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v4, "always_send_reports_opt_in"

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {v3}, Labcd/Qz;->get()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v4, "always_send_reports_opt_in"

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    if-eqz v0, :cond_0

    invoke-interface {v3}, Labcd/Qz;->get()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v3, "always_send_reports_opt_in"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iget-object v3, p0, Lcom/crashlytics/android/core/Ea;->j6:Labcd/Qz;

    invoke-interface {v3}, Labcd/Qz;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "always_send_reports_opt_in"

    invoke-interface {v4, v5, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v3, v0}, Labcd/Qz;->j6(Landroid/content/SharedPreferences$Editor;)Z

    :cond_0
    iget-object v0, p0, Lcom/crashlytics/android/core/Ea;->j6:Labcd/Qz;

    invoke-interface {v0}, Labcd/Qz;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "preferences_migration_complete"

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v0, v1}, Labcd/Qz;->j6(Landroid/content/SharedPreferences$Editor;)Z

    :cond_1
    iget-object v0, p0, Lcom/crashlytics/android/core/Ea;->j6:Labcd/Qz;

    invoke-interface {v0}, Labcd/Qz;->get()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "always_send_reports_opt_in"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0

    :cond_2
    move v0, v2

    goto :goto_0
.end method
