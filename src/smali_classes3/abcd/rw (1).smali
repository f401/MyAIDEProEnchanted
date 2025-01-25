.class public Labcd/rw;
.super Ljava/lang/Object;


# direct methods
.method private static DW(Ljava/lang/String;J)V
    .registers 4

    invoke-static {}, Labcd/rw;->VH()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private static DW(Ljava/lang/String;Z)V
    .registers 3

    invoke-static {}, Labcd/rw;->VH()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static DW()Z
    .registers 6

    const-wide/16 v0, -0x1

    const-string v2, "last_run_version"

    invoke-static {v2, v0, v1}, Labcd/rw;->j6(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {}, Lcom/appfour/backbone/api/Api;->getLastUpdateTime()J

    move-result-wide v3

    cmp-long v5, v0, v3

    if-eqz v5, :cond_19

    invoke-static {}, Lcom/appfour/backbone/api/Api;->getLastUpdateTime()J

    move-result-wide v0

    invoke-static {v2, v0, v1}, Labcd/rw;->DW(Ljava/lang/String;J)V

    const/4 v0, 0x1

    return v0

    :cond_19
    const/4 v0, 0x0

    return v0
.end method

.method public static DW(Labcd/lw;)Z
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "is_event_defined_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Labcd/lw;->DW()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Labcd/rw;->j6(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static FH()Ljava/io/File;
    .registers 3

    invoke-static {}, Labcd/ApplicationUtils;->getApplication()Landroid/app/Application;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "probesdex_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/appfour/backbone/api/Api;->getProcessName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Labcd/uw;->j6(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static Hw()Z
    .registers 2

    const-string v0, "has_fetched_referrer"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Labcd/rw;->j6(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static VH()Landroid/content/SharedPreferences;
    .registers 3

    invoke-static {}, Labcd/ApplicationUtils;->getApplication()Landroid/app/Application;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BACKBONE_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/appfour/backbone/api/Api;->getProcessName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static Zo()V
    .registers 2

    const-string v0, "has_fetched_referrer"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Labcd/rw;->DW(Ljava/lang/String;Z)V

    return-void
.end method

.method private static j6(Ljava/lang/String;J)J
    .registers 4

    invoke-static {}, Labcd/rw;->VH()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static j6(Labcd/lw;)V
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "is_event_defined_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Labcd/lw;->DW()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, v0}, Labcd/rw;->DW(Ljava/lang/String;Z)V

    return-void
.end method

.method public static j6(Z)V
    .registers 2

    const-string v0, "is_developer"

    invoke-static {v0, p0}, Labcd/rw;->DW(Ljava/lang/String;Z)V

    return-void
.end method

.method public static j6()Z
    .registers 3

    const/4 v0, 0x1

    const-string v1, "is_first_run"

    invoke-static {v1, v0}, Labcd/rw;->j6(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v2, 0x0

    invoke-static {v1, v2}, Labcd/rw;->DW(Ljava/lang/String;Z)V

    :cond_d
    return v0
.end method

.method private static j6(Ljava/lang/String;Z)Z
    .registers 3

    invoke-static {}, Labcd/rw;->VH()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static v5()Z
    .registers 2

    const-string v0, "is_developer"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Labcd/rw;->j6(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
