.class public Lcom/aide/ui/aa;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation


# static fields
.field private static DW:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field

.field private static FH:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field private static j6:Landroid/content/Context;
    .annotation runtime Labcd/ru;
        field = 0x2f6bd0add6cddbe8L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide v2, 0x6abb70fb71abff5L

    const-class v0, Lcom/aide/ui/aa;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 7

    const-wide v4, -0x2de414ac81e09b04L    # -3.471222040260512E87

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/aa;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x2de414ac81e09b04L    # -3.471222040260512E87

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/aa;->FH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public static BT()Ljava/lang/String;
    .registers 6

    const-wide v4, 0xd0edd4772e4272fL

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/aa;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, 0xd0edd4772e4272fL

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/aa;->ef()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "app_language"

    const-string v2, "default"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/aa;->FH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public static DW(Landroid/content/Context;Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .registers 9

    const-wide v2, -0x1f0cad28b2469090L    # -1.061220710185175E159

    const/4 v4, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/aa;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1f0cad28b2469090L    # -1.061220710185175E159

    const/4 v5, 0x0

    invoke-static {v0, v1, v5, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    sget-object v0, Lcom/aide/ui/aa;->j6:Landroid/content/Context;

    invoke-static {v0}, Lcom/aide/ui/aa;->Hw(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/aa;->FH:Z

    if-eqz v0, :cond_1

    move-object v5, p0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public static DW(Ljava/lang/String;)V
    .registers 9

    const-wide v6, 0x1c03c6135b288cc9L    # 9.993581830561167E-174

    const/4 v4, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/aa;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x1c03c6135b288cc9L    # 9.993581830561167E-174

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    sget-object v0, Lcom/aide/ui/aa;->j6:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    const-string v3, "intel_libs_warned_projects"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v2, "intel_libs_warned_projects"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/aa;->FH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v6, v7, v4, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public static DW(Z)V
    .registers 7

    const-wide v4, -0x15bd23cd1bb659e0L    # -7.391494531793638E203

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/aa;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x15bd23cd1bb659e0L    # -7.391494531793638E203

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Z)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/aa;->ef()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "trainer_voice"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/aa;->FH:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p0}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v0, v4, v5, v3, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public static DW()Z
    .registers 6

    const-wide v4, -0x346d9951d0bf1d2fL    # -1.1279838625808496E56

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/aa;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x346d9951d0bf1d2fL    # -1.1279838625808496E56

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/aa;->ef()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "complete_after_letter"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/aa;->FH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public static DW(Landroid/content/Context;)Z
    .registers 7

    const-wide v4, -0x48b566498effd200L

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/aa;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x48b566498effd200L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-static {p0}, Lcom/aide/ui/aa;->Hw(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "send_analytics_data"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/aa;->FH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public static EQ()Z
    .registers 6

    const-wide v4, -0x2aa644af70f6a048L    # -1.4408108813815306E103

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/aa;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x2aa644af70f6a048L    # -1.4408108813815306E103

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/aa;->ef()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "browser_swipe"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/aa;->FH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method private static FH(Landroid/content/Context;)I
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x901fe2c3a91b300L
    .end annotation

    const-wide v4, -0xf4c9ff9029c1e45L    # -7.700532127652252E234

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/aa;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, -0xf4c9ff9029c1e45L    # -7.700532127652252E234

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const/16 v0, 0xe

    invoke-static {p0, v0}, Lcom/aide/common/g;->j6(Landroid/content/Context;I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/aa;->FH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public static FH(Ljava/lang/String;)V
    .registers 7

    const-wide v4, -0x29f5602b4d04b869L    # -3.053144264678612E106

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/aa;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x29f5602b4d04b869L    # -3.053144264678612E106

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/aa;->ef()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "user_keystore"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/aa;->FH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public static FH()Z
    .registers 6

    const-wide v4, 0x60db3fe6d8f57a53L    # 3.7412620310295125E158

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/aa;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x60db3fe6d8f57a53L    # 3.7412620310295125E158

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/aa;->ef()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "complete_all_types"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/aa;->FH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public static Hw()I
    .registers 6

    const-wide v4, 0x3d161ee6acd91600L    # 1.9647134873703762E-14

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/aa;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x3d161ee6acd91600L    # 1.9647134873703762E-14

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/U;->dx()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x5

    :goto_0
    return v0

    :cond_1
    :try_start_1
    invoke-static {}, Lcom/aide/ui/aa;->ef()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "autosafe_time"

    const-string v2, "15"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    const/16 v0, 0xf

    goto :goto_0

    :catch_1
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/aa;->FH:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method private static Hw(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x76cae36121d4e30L
    .end annotation

    const-wide v4, 0xbb4fdc8950709bL

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/aa;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, 0xbb4fdc8950709bL

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/aa;->FH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public static Hw(Ljava/lang/String;)V
    .registers 7

    const-wide v4, -0x15919a060a849fa0L    # -4.765374289965251E204

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/aa;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x15919a060a849fa0L    # -4.765374289965251E204

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/aa;->ef()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "local_doc_dir_path"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/aa;->FH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public static J0()Z
    .registers 6

    const-wide v4, 0x1ac82b79d098b640L

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/aa;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x1ac82b79d098b640L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/aa;->ef()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "trainer_sound"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/aa;->FH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public static J8()Z
    .registers 6

    const-wide v4, 0x1e7a95ab3917c075L    # 7.386406230479877E-162

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/aa;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x1e7a95ab3917c075L    # 7.386406230479877E-162

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/aa;->ef()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "trainer_voice"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/aa;->FH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public static KD()Z
    .registers 6

    const-wide v4, -0x2d9473d58aaa54c9L    # -1.096001858017232E89

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/aa;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x2d9473d58aaa54c9L    # -1.096001858017232E89

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/aa;->ef()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "send_analytics_data"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/aa;->FH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public static Mr()I
    .registers 6

    const-wide v4, -0x1d3f1f2a2daf1850L    # -4.976400708368638E167

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/aa;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1d3f1f2a2daf1850L    # -4.976400708368638E167

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/aide/ui/aa;->ef()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "html_indentation_size"

    const-string v2, "2"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x2

    goto :goto_0

    :catch_1
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/aa;->FH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public static P8()I
    .registers 6

    const-wide v4, 0x330f0f9b9edba6d3L    # 9.438128929143109E-63

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/aa;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x330f0f9b9edba6d3L    # 9.438128929143109E-63

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/16 v0, 0x3e8

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/aa;->FH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public static QX()Ljava/lang/String;
    .registers 6

    const-wide v4, 0x3b2adcd5b4c38c97L    # 1.1110125807801528E-23

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/aa;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x3b2adcd5b4c38c97L    # 1.1110125807801528E-23

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/aa;->ef()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "git_dot_ssh_dir"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/aa;->FH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public static SI()Z
    .registers 6

    const-wide v4, -0xe7b7676351e6290L    # -6.686657132258319E238

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/aa;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, -0xe7b7676351e6290L    # -6.686657132258319E238

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/aa;->ef()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "run_as_root"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/aa;->FH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public static U2()Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-wide v4, -0x3100154aef1a1460L    # -3.524509323950381E72

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/aa;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x3100154aef1a1460L    # -3.524509323950381E72

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "Java"

    invoke-static {}, Lcom/aide/ui/aa;->er()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "JavaScript"

    invoke-static {}, Lcom/aide/ui/aa;->gW()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "XML"

    invoke-static {}, Lcom/aide/ui/aa;->sG()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "HTML"

    invoke-static {}, Lcom/aide/ui/aa;->Mr()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/aa;->FH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public static VH()I
    .registers 6

    const-wide v4, 0x46e049db872f042cL    # 2.642961201329062E33

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/aa;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x46e049db872f042cL    # 2.642961201329062E33

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/aide/ui/aa;->ef()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "cpp_indentation_size"

    const-string v2, "4"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x4

    goto :goto_0

    :catch_1
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/aa;->FH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public static Ws()Z
    .registers 6

    const-wide v4, 0x1e2876e03ac02380L

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/aa;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x1e2876e03ac02380L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/aa;->ef()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "force_soft_keyboard"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/aa;->FH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public static XL()Z
    .registers 6

    const-wide v4, -0x5f9ff7c74ad0728L    # -6.240340563845135E279

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/aa;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x5f9ff7c74ad0728L    # -6.240340563845135E279

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/aa;->ef()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "git_keep_ssh_session_info"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/aa;->FH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public static Zo()Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    const-wide v4, 0x694e8aab2de68250L    # 1.8264172294037103E199

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/aa;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x694e8aab2de68250L    # 1.8264172294037103E199

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "Java"

    invoke-static {}, Lcom/aide/ui/aa;->rN()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "JavaScript"

    invoke-static {}, Lcom/aide/ui/aa;->yS()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/aa;->FH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public static a8()Z
    .registers 6

    const-wide v4, 0x541c49216f22ff7L

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/aa;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x541c49216f22ff7L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/aa;->ef()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "use_spaces_for_tabs"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/aa;->FH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public static aM()Ljava/lang/String;
    .registers 6

    const-wide v4, 0x3892cfd1ce119fcL

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/aa;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x3892cfd1ce119fcL

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/aa;->ef()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "git_user_email"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/aa;->FH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public static cb()Ljava/lang/String;
    .registers 6

    const-wide v4, -0x5587aab98ad0400L

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/aa;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x5587aab98ad0400L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/aa;->ef()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "use_user_keystore"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/aide/ui/aa;->ef()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "user_keystore"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    const-string v0, ""

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/aa;->FH:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public static cn()I
    .registers 6

    const-wide v4, 0x20f2350e17853b27L    # 5.562197872461073E-150

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/aa;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x20f2350e17853b27L    # 5.562197872461073E-150

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/aide/ui/aa;->ef()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "tabsize"

    const-string v2, "4"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x4

    goto :goto_0

    :catch_1
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/aa;->FH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public static dx()Ljava/lang/String;
    .registers 6

    const-wide v4, -0x54e10ec14fe17b9dL    # -5.526051645038449E-101

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/aa;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x54e10ec14fe17b9dL    # -5.526051645038449E-101

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/aa;->ef()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "user_m2repositories"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/aa;->FH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method private static ef()Landroid/content/SharedPreferences;
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x4ccdeffc291c494fL
    .end annotation

    const-wide v4, 0x67c04bc6fcada08L

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/aa;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x67c04bc6fcada08L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    sget-object v0, Lcom/aide/ui/aa;->j6:Landroid/content/Context;

    invoke-static {v0}, Lcom/aide/ui/aa;->Hw(Landroid/content/Context;)Landroid/content/SharedPreferences;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/aa;->FH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public static ei()I
    .registers 6

    const-wide v4, -0x2ad0fccd82716b13L    # -2.1706268614872025E102

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/aa;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x2ad0fccd82716b13L    # -2.1706268614872025E102

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/aide/ui/aa;->ef()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "max_single_imports"

    const-string v2, "100"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0

    :catch_1
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/aa;->FH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public static er()I
    .registers 6

    const-wide v4, -0x1f0bce2a8d74239bL    # -1.1090582134359263E159

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/aa;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1f0bce2a8d74239bL    # -1.1090582134359263E159

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/aide/ui/aa;->ef()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "java_indentation_size"

    const-string v2, "4"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x4

    goto :goto_0

    :catch_1
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/aa;->FH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public static gW()I
    .registers 6

    const-wide v4, -0x922e4885734dcc8L

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/aa;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x922e4885734dcc8L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/aide/ui/aa;->ef()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "js_indentation_size"

    const-string v2, "4"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x4

    goto :goto_0

    :catch_1
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/aa;->FH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public static gn()Z
    .registers 6

    const-wide v4, -0x1f52465e181a294L    # -1.405194616769857E299

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/aa;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1f52465e181a294L    # -1.405194616769857E299

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/aa;->ef()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "git_create_for_projects"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/aa;->FH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public static j3()Ljava/lang/String;
    .registers 6

    const-wide v4, -0x36bf3b6e779e1f1L

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/aa;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x36bf3b6e779e1f1L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/aa;->ef()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "git_user_name"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/aa;->FH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public static j6(Landroid/content/Context;Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .registers 9

    const-wide v2, 0x2134cfde3ff022fL

    const/4 v4, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/aa;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x2134cfde3ff022fL

    const/4 v5, 0x0

    invoke-static {v0, v1, v5, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    sget-object v0, Lcom/aide/ui/aa;->j6:Landroid/content/Context;

    invoke-static {v0}, Lcom/aide/ui/aa;->Hw(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/aa;->FH:Z

    if-eqz v0, :cond_1

    move-object v5, p0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public static j6(Ljava/lang/String;Ljava/util/List;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-wide v2, -0x42d646ef01b9154L    # -2.83340166053933E288

    const/4 v4, 0x0

    const/4 v0, 0x0

    :try_start_0
    sget-boolean v1, Lcom/aide/ui/aa;->DW:Z

    if-eqz v1, :cond_0

    const-wide v6, -0x42d646ef01b9154L    # -2.83340166053933E288

    const/4 v1, 0x0

    invoke-static {v6, v7, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    sget-object v1, Lcom/aide/ui/aa;->j6:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v1, "Java"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Labcd/id;->values()[Labcd/id;

    move-result-object v6

    array-length v7, v6
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v0

    :goto_0
    if-ge v1, v7, :cond_1

    aget-object v8, v6, v1

    :try_start_1
    invoke-virtual {v8}, Labcd/id;->VH()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8}, Labcd/id;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p1, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    invoke-interface {v5, v9, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string v1, "JavaScript"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Labcd/Md;->values()[Labcd/Md;

    move-result-object v1

    array-length v6, v1
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    if-ge v0, v6, :cond_2

    aget-object v7, v1, v0

    :try_start_2
    invoke-virtual {v7}, Labcd/Md;->VH()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7}, Labcd/Md;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    invoke-interface {v5, v8, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/aa;->FH:Z

    if-eqz v0, :cond_3

    move-object v5, p0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v1
.end method

.method public static j6(Z)V
    .registers 7

    const-wide v4, -0x696b0544f01e783fL    # -6.851983363472165E-200

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/aa;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x696b0544f01e783fL    # -6.851983363472165E-200

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Z)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/aa;->ef()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "trainer_sound"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/aa;->FH:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p0}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v0, v4, v5, v3, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public static j6()Z
    .registers 6

    const-wide v4, -0x2d41b5269686f3a8L    # -3.8566667346570915E90

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/aa;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x2d41b5269686f3a8L    # -3.8566667346570915E90

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/aa;->ef()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "complete_after_dot"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/aa;->FH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public static j6(Landroid/content/Context;)Z
    .registers 15

    const-wide v12, -0x186835046c9cc040L

    const/4 v10, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    sget-boolean v2, Lcom/aide/ui/aa;->DW:Z

    if-eqz v2, :cond_0

    const-wide v2, -0x186835046c9cc040L

    const/4 v4, 0x0

    invoke-static {v2, v3, v4, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    sput-object p0, Lcom/aide/ui/aa;->j6:Landroid/content/Context;

    const v2, 0x7f100004

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;IZ)V

    const v2, 0x7f100006

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;IZ)V

    const v2, 0x7f100009

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;IZ)V

    const v2, 0x7f100007

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;IZ)V

    const v2, 0x7f100003

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;IZ)V

    const v2, 0x7f100005

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;IZ)V

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-static {}, Labcd/id;->values()[Labcd/id;

    move-result-object v5

    array-length v6, v5
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v1

    :goto_0
    if-ge v2, v6, :cond_2

    aget-object v7, v5, v2

    :try_start_1
    invoke-virtual {v7}, Labcd/id;->VH()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v8}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {v7}, Labcd/id;->VH()Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Labcd/id;->Hw()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    invoke-interface {v4, v8, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-static {}, Labcd/Md;->values()[Labcd/Md;

    move-result-object v5

    array-length v6, v5
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move v2, v1

    :goto_1
    if-ge v2, v6, :cond_4

    aget-object v7, v5, v2

    :try_start_2
    invoke-virtual {v7}, Labcd/Md;->VH()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v8}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    invoke-virtual {v7}, Labcd/Md;->VH()Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Labcd/Md;->Hw()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    invoke-interface {v4, v8, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    const-string v2, "git_dot_ssh_dir"

    invoke-interface {v3, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    new-instance v2, Ljava/io/File;

    invoke-static {}, Labcd/FileSystemUtils;->getExternalStorageDirectory()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".ssh"

    invoke-direct {v2, v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "git_dot_ssh_dir"

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v5, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_5
    const-string v2, "editor_font_size"

    invoke-interface {v3, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/aide/ui/aa;->FH(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "editor_font_size"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :goto_2
    const-string v1, "editor_tabs"

    invoke-interface {v3, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "editor_tabs"

    const/4 v2, 0x1

    invoke-interface {v4, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :cond_6
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/aa;->FH:Z

    if-eqz v1, :cond_7

    invoke-static {v0, v12, v13, v10, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_7
    throw v0

    :cond_8
    move v0, v1

    goto :goto_2
.end method

.method public static j6(Ljava/lang/String;)Z
    .registers 7

    const-wide v4, 0x559dd6c10e2a2f7L

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/aa;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x559dd6c10e2a2f7L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/aa;->ef()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "intel_libs_warned_projects"

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/aa;->FH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public static lg()Z
    .registers 8

    const-wide v6, -0x19e7f9d76d323388L    # -6.380044601386777E183

    const/4 v4, 0x0

    const/4 v0, 0x1

    :try_start_0
    sget-boolean v1, Lcom/aide/ui/aa;->DW:Z

    if-eqz v1, :cond_0

    const-wide v2, -0x19e7f9d76d323388L    # -6.380044601386777E183

    const/4 v1, 0x0

    invoke-static {v2, v3, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/U;->dx()Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/aide/ui/aa;->ef()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "light_theme"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/aa;->FH:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v6, v7, v4}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public static nw()Z
    .registers 6

    const-wide v4, 0x67906ae56394fe24L    # 7.314858876643851E190

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/aa;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x67906ae56394fe24L    # 7.314858876643851E190

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/aa;->ef()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "native_build_parallel"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/aa;->FH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public static rN()Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-wide v10, -0x5349c52a4c8910L

    const/4 v8, 0x0

    const/4 v0, 0x0

    :try_start_0
    sget-boolean v1, Lcom/aide/ui/aa;->DW:Z

    if-eqz v1, :cond_0

    const-wide v2, -0x5349c52a4c8910L

    const/4 v1, 0x0

    invoke-static {v2, v3, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Labcd/id;->values()[Labcd/id;

    move-result-object v2

    array-length v3, v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-ge v0, v3, :cond_3

    aget-object v4, v2, v0

    :try_start_1
    invoke-static {}, Lcom/aide/ui/aa;->ef()Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-virtual {v4}, Labcd/id;->VH()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/aa;->FH:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v10, v11, v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0

    :cond_3
    return-object v1
.end method

.method public static ro()Z
    .registers 6

    const-wide v4, -0x3e800cdf2c2adeb3L    # -3.350170923953371E7

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/aa;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x3e800cdf2c2adeb3L    # -3.350170923953371E7

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/aa;->ef()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "editor_tabs"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/aa;->FH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public static sG()I
    .registers 6

    const-wide v4, -0x3ba4d7566ff94e08L    # -2.0039684855246765E21

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/aa;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x3ba4d7566ff94e08L    # -2.0039684855246765E21

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/aide/ui/aa;->ef()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "xml_indentation_size"

    const-string v2, "4"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x4

    goto :goto_0

    :catch_1
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/aa;->FH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public static sh()Ljava/lang/String;
    .registers 6

    const-wide v4, 0x579c071ee39dfb0L

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/aa;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x579c071ee39dfb0L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/aa;->ef()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "user_androidjar"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/aa;->FH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public static tp()I
    .registers 6

    const-wide v4, -0x25b8cd0256d75c90L    # -7.852010716370568E126

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/aa;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x25b8cd0256d75c90L    # -7.852010716370568E126

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/aide/ui/aa;->ef()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "editor_font_size"

    const-string v2, "10"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    :try_start_2
    sget-object v0, Lcom/aide/ui/aa;->j6:Landroid/content/Context;

    invoke-static {v0}, Lcom/aide/ui/aa;->FH(Landroid/content/Context;)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move-result v0

    goto :goto_0

    :catch_1
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/aa;->FH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public static u7()I
    .registers 6

    const-wide v4, -0x4668d90edb49e228L    # -2.8537187529440854E-31

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/aa;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x4668d90edb49e228L    # -2.8537187529440854E-31

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/aide/ui/aa;->ef()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "css_indentation_size"

    const-string v2, "2"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x2

    goto :goto_0

    :catch_1
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/aa;->FH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public static v5(Ljava/lang/String;)V
    .registers 7

    const-wide v4, 0x791ce5e3590b68L

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/aa;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x791ce5e3590b68L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/aa;->ef()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "user_androidjar"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/aa;->FH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public static v5()Z
    .registers 6

    const-wide v4, -0x3fa0ae5355f39fd7L    # -125.27616358955915

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/aa;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x3fa0ae5355f39fd7L    # -125.27616358955915

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/aa;->ef()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "auto_sync_dropbox"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/aa;->FH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public static vy()Ljava/lang/String;
    .registers 6

    const-wide v4, 0x19a2ee09897afde0L

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/aa;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x19a2ee09897afde0L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/aa;->ef()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "local_doc_dir_path"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/aa;->FH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public static we()Z
    .registers 6

    const-wide v4, -0x27ec8a575366eb0L

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/aa;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x27ec8a575366eb0L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/aa;->ef()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "optimze_dex"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/aa;->FH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public static yS()Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-wide v10, -0x10ad7025f0647ce1L    # -1.758893941031101E228

    const/4 v8, 0x0

    const/4 v0, 0x0

    :try_start_0
    sget-boolean v1, Lcom/aide/ui/aa;->DW:Z

    if-eqz v1, :cond_0

    const-wide v2, -0x10ad7025f0647ce1L    # -1.758893941031101E228

    const/4 v1, 0x0

    invoke-static {v2, v3, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Labcd/Md;->values()[Labcd/Md;

    move-result-object v2

    array-length v3, v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-ge v0, v3, :cond_3

    aget-object v4, v2, v0

    :try_start_1
    invoke-static {}, Lcom/aide/ui/aa;->ef()Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-virtual {v4}, Labcd/Md;->VH()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/aa;->FH:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v10, v11, v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0

    :cond_3
    return-object v1
.end method
