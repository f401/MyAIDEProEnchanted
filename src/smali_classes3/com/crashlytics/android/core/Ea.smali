.class Lcom/crashlytics/android/core/Ea;
.super Ljava/lang/Object;


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

    move-result-object p1

    invoke-interface {v0, p1}, Labcd/Qz;->j6(Landroid/content/SharedPreferences$Editor;)Z

    return-void
.end method

.method j6()Z
    .registers 8

    iget-object v0, p0, Lcom/crashlytics/android/core/Ea;->j6:Labcd/Qz;

    invoke-interface {v0}, Labcd/Qz;->get()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "preferences_migration_complete"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    const-string v3, "always_send_reports_opt_in"

    if-nez v0, :cond_56

    new-instance v0, Labcd/Rz;

    iget-object v4, p0, Lcom/crashlytics/android/core/Ea;->DW:Lcom/crashlytics/android/core/ca;

    invoke-direct {v0, v4}, Labcd/Rz;-><init>(Lio/fabric/sdk/android/Kit;)V

    iget-object v4, p0, Lcom/crashlytics/android/core/Ea;->j6:Labcd/Qz;

    invoke-interface {v4}, Labcd/Qz;->get()Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_31

    invoke-interface {v0}, Labcd/Qz;->get()Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_31

    const/4 v4, 0x1

    goto :goto_32

    :cond_31
    const/4 v4, 0x0

    :goto_32
    if-eqz v4, :cond_49

    invoke-interface {v0}, Labcd/Qz;->get()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iget-object v4, p0, Lcom/crashlytics/android/core/Ea;->j6:Labcd/Qz;

    invoke-interface {v4}, Labcd/Qz;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6, v3, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v4, v0}, Labcd/Qz;->j6(Landroid/content/SharedPreferences$Editor;)Z

    :cond_49
    iget-object v0, p0, Lcom/crashlytics/android/core/Ea;->j6:Labcd/Qz;

    invoke-interface {v0}, Labcd/Qz;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4, v1, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v0, v1}, Labcd/Qz;->j6(Landroid/content/SharedPreferences$Editor;)Z

    :cond_56
    iget-object v0, p0, Lcom/crashlytics/android/core/Ea;->j6:Labcd/Qz;

    invoke-interface {v0}, Labcd/Qz;->get()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
