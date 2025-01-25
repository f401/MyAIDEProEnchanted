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
    .registers 3

    const-class v0, Lcom/aide/ui/aa;

    const-wide v1, 0x6abb70fb71abff5L

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, -0x2de414ac81e09b04L  # -3.471222040260512E87

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/aa;->DW:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/aa;->FH:Z

    if-eqz v4, :cond_19

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_19
    throw v3
.end method

.method public static BT()Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    const-wide v1, 0xd0edd4772e4272fL

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/aa;->DW:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-static {}, Lcom/aide/ui/aa;->ef()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "app_language"

    const-string v5, "default"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_19
    .catchall {:try_start_6 .. :try_end_19} :catchall_1a

    return-object v0

    :catchall_1a
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/aa;->FH:Z

    if-eqz v4, :cond_22

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_22
    throw v3
.end method

.method public static DW(Landroid/content/Context;Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .registers 9

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/aa;->DW:Z

    if-eqz v0, :cond_d

    const-wide v0, -0x1f0cad28b2469090L  # -1.061220710185175E159

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    sget-object v0, Lcom/aide/ui/aa;->j6:Landroid/content/Context;

    invoke-static {v0}, Lcom/aide/ui/aa;->Hw(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    :try_end_16
    .catchall {:try_start_0 .. :try_end_16} :catchall_17

    return-void

    :catchall_17
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/aa;->FH:Z

    if-eqz v1, :cond_28

    const-wide v2, -0x1f0cad28b2469090L  # -1.061220710185175E159

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_28
    throw v0
.end method

.method public static DW(Ljava/lang/String;)V
    .registers 8

    const-string v0, "intel_libs_warned_projects"

    const/4 v1, 0x0

    const-wide v2, 0x1c03c6135b288cc9L  # 9.993581830561167E-174

    :try_start_8
    sget-boolean v4, Lcom/aide/ui/aa;->DW:Z

    if-eqz v4, :cond_f

    invoke-static {v2, v3, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_f
    sget-object v4, Lcom/aide/ui/aa;->j6:Landroid/content/Context;

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v4, v0, v6}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {v5, v0, v4}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_2c

    return-void

    :catchall_2c
    move-exception v0

    sget-boolean v4, Lcom/aide/ui/aa;->FH:Z

    if-eqz v4, :cond_34

    invoke-static {v0, v2, v3, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_34
    throw v0
.end method

.method public static DW(Z)V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, -0x15bd23cd1bb659e0L  # -7.391494531793638E203

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/aa;->DW:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Z)V

    :cond_d
    invoke-static {}, Lcom/aide/ui/aa;->ef()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "trainer_voice"

    invoke-interface {v3, v4, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1d
    .catchall {:try_start_6 .. :try_end_1d} :catchall_1e

    return-void

    :catchall_1e
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/aa;->FH:Z

    if-eqz v4, :cond_2b

    new-instance v4, Ljava/lang/Boolean;

    invoke-direct {v4, p0}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v3, v1, v2, v0, v4}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2b
    throw v3
.end method

.method public static DW()Z
    .registers 6

    const/4 v0, 0x0

    const-wide v1, -0x346d9951d0bf1d2fL  # -1.1279838625808496E56

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/aa;->DW:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-static {}, Lcom/aide/ui/aa;->ef()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "complete_after_letter"

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_18
    .catchall {:try_start_6 .. :try_end_18} :catchall_19

    return v0

    :catchall_19
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/aa;->FH:Z

    if-eqz v4, :cond_21

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_21
    throw v3
.end method

.method public static DW(Landroid/content/Context;)Z
    .registers 7

    const/4 v0, 0x0

    const-wide v1, -0x48b566498effd200L

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/aa;->DW:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-static {p0}, Lcom/aide/ui/aa;->Hw(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "send_analytics_data"

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0
    :try_end_18
    .catchall {:try_start_6 .. :try_end_18} :catchall_19

    return p0

    :catchall_19
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/aa;->FH:Z

    if-eqz v4, :cond_21

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_21
    throw v3
.end method

.method public static EQ()Z
    .registers 6

    const/4 v0, 0x0

    const-wide v1, -0x2aa644af70f6a048L  # -1.4408108813815306E103

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/aa;->DW:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-static {}, Lcom/aide/ui/aa;->ef()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "browser_swipe"

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_18
    .catchall {:try_start_6 .. :try_end_18} :catchall_19

    return v0

    :catchall_19
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/aa;->FH:Z

    if-eqz v4, :cond_21

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_21
    throw v3
.end method

.method private static FH(Landroid/content/Context;)I
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x901fe2c3a91b300L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0xf4c9ff9029c1e45L  # -7.700532127652252E234

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/aa;->DW:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    const/16 v3, 0xe

    invoke-static {p0, v3}, Lcom/aide/common/g;->j6(Landroid/content/Context;I)I

    move-result p0
    :try_end_13
    .catchall {:try_start_6 .. :try_end_13} :catchall_14

    return p0

    :catchall_14
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/aa;->FH:Z

    if-eqz v4, :cond_1c

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1c
    throw v3
.end method

.method public static FH(Ljava/lang/String;)V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, -0x29f5602b4d04b869L  # -3.053144264678612E106

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/aa;->DW:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-static {}, Lcom/aide/ui/aa;->ef()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "user_keystore"

    invoke-interface {v3, v4, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1d
    .catchall {:try_start_6 .. :try_end_1d} :catchall_1e

    return-void

    :catchall_1e
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/aa;->FH:Z

    if-eqz v4, :cond_26

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_26
    throw v3
.end method

.method public static FH()Z
    .registers 6

    const/4 v0, 0x0

    const-wide v1, 0x60db3fe6d8f57a53L  # 3.7412620310295125E158

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/aa;->DW:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-static {}, Lcom/aide/ui/aa;->ef()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "complete_all_types"

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_18
    .catchall {:try_start_6 .. :try_end_18} :catchall_19

    return v0

    :catchall_19
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/aa;->FH:Z

    if-eqz v4, :cond_21

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_21
    throw v3
.end method

.method public static Hw()I
    .registers 6

    const/4 v0, 0x0

    const-wide v1, 0x3d161ee6acd91600L  # 1.9647134873703762E-14

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/aa;->DW:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-static {}, Lcom/aide/ui/U;->dx()Z

    move-result v3
    :try_end_11
    .catchall {:try_start_6 .. :try_end_11} :catchall_2a

    if-eqz v3, :cond_15

    const/4 v0, 0x5

    return v0

    :cond_15
    :try_start_15
    invoke-static {}, Lcom/aide/ui/aa;->ef()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "autosafe_time"

    const-string v5, "15"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_25
    .catch Ljava/lang/NumberFormatException; {:try_start_15 .. :try_end_25} :catch_26
    .catchall {:try_start_15 .. :try_end_25} :catchall_2a

    return v0

    :catch_26
    move-exception v0

    const/16 v0, 0xf

    return v0

    :catchall_2a
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/aa;->FH:Z

    if-eqz v4, :cond_32

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_32
    throw v3
.end method

.method private static Hw(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x76cae36121d4e30L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0xbb4fdc8950709bL

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/aa;->DW:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0
    :try_end_11
    .catchall {:try_start_6 .. :try_end_11} :catchall_12

    return-object p0

    :catchall_12
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/aa;->FH:Z

    if-eqz v4, :cond_1a

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1a
    throw v3
.end method

.method public static Hw(Ljava/lang/String;)V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, -0x15919a060a849fa0L  # -4.765374289965251E204

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/aa;->DW:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-static {}, Lcom/aide/ui/aa;->ef()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "local_doc_dir_path"

    invoke-interface {v3, v4, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1d
    .catchall {:try_start_6 .. :try_end_1d} :catchall_1e

    return-void

    :catchall_1e
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/aa;->FH:Z

    if-eqz v4, :cond_26

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_26
    throw v3
.end method

.method public static J0()Z
    .registers 6

    const/4 v0, 0x0

    const-wide v1, 0x1ac82b79d098b640L

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/aa;->DW:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-static {}, Lcom/aide/ui/aa;->ef()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "trainer_sound"

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_18
    .catchall {:try_start_6 .. :try_end_18} :catchall_19

    return v0

    :catchall_19
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/aa;->FH:Z

    if-eqz v4, :cond_21

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_21
    throw v3
.end method

.method public static J8()Z
    .registers 6

    const/4 v0, 0x0

    const-wide v1, 0x1e7a95ab3917c075L  # 7.386406230479877E-162

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/aa;->DW:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-static {}, Lcom/aide/ui/aa;->ef()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "trainer_voice"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_18
    .catchall {:try_start_6 .. :try_end_18} :catchall_19

    return v0

    :catchall_19
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/aa;->FH:Z

    if-eqz v4, :cond_21

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_21
    throw v3
.end method

.method public static KD()Z
    .registers 6

    const/4 v0, 0x0

    const-wide v1, -0x2d9473d58aaa54c9L  # -1.096001858017232E89

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/aa;->DW:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-static {}, Lcom/aide/ui/aa;->ef()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "send_analytics_data"

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_18
    .catchall {:try_start_6 .. :try_end_18} :catchall_19

    return v0

    :catchall_19
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/aa;->FH:Z

    if-eqz v4, :cond_21

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_21
    throw v3
.end method

.method public static Mr()I
    .registers 6

    const/4 v0, 0x0

    const-wide v1, -0x1d3f1f2a2daf1850L  # -4.976400708368638E167

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/aa;->DW:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_21

    :cond_d
    :try_start_d
    invoke-static {}, Lcom/aide/ui/aa;->ef()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "html_indentation_size"

    const-string v5, "2"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_1d
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_1d} :catch_1e
    .catchall {:try_start_d .. :try_end_1d} :catchall_21

    return v0

    :catch_1e
    move-exception v0

    const/4 v0, 0x2

    return v0

    :catchall_21
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/aa;->FH:Z

    if-eqz v4, :cond_29

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_29
    throw v3
.end method

.method public static P8()I
    .registers 5

    const/4 v0, 0x0

    const-wide v1, 0x330f0f9b9edba6d3L  # 9.438128929143109E-63

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/aa;->DW:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_10

    :cond_d
    const/16 v0, 0x3e8

    return v0

    :catchall_10
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/aa;->FH:Z

    if-eqz v4, :cond_18

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_18
    throw v3
.end method

.method public static QX()Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    const-wide v1, 0x3b2adcd5b4c38c97L  # 1.1110125807801528E-23

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/aa;->DW:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-static {}, Lcom/aide/ui/aa;->ef()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "git_dot_ssh_dir"

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_19
    .catchall {:try_start_6 .. :try_end_19} :catchall_1a

    return-object v0

    :catchall_1a
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/aa;->FH:Z

    if-eqz v4, :cond_22

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_22
    throw v3
.end method

.method public static SI()Z
    .registers 6

    const/4 v0, 0x0

    const-wide v1, -0xe7b7676351e6290L  # -6.686657132258319E238

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/aa;->DW:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-static {}, Lcom/aide/ui/aa;->ef()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "run_as_root"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_18
    .catchall {:try_start_6 .. :try_end_18} :catchall_19

    return v0

    :catchall_19
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/aa;->FH:Z

    if-eqz v4, :cond_21

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_21
    throw v3
.end method

.method public static U2()Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0x3100154aef1a1460L  # -3.524509323950381E72

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/aa;->DW:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "Java"

    invoke-static {}, Lcom/aide/ui/aa;->er()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "JavaScript"

    invoke-static {}, Lcom/aide/ui/aa;->gW()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "XML"

    invoke-static {}, Lcom/aide/ui/aa;->sG()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "HTML"

    invoke-static {}, Lcom/aide/ui/aa;->Mr()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_46
    .catchall {:try_start_6 .. :try_end_46} :catchall_47

    return-object v3

    :catchall_47
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/aa;->FH:Z

    if-eqz v4, :cond_4f

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_4f
    throw v3
.end method

.method public static VH()I
    .registers 6

    const/4 v0, 0x0

    const-wide v1, 0x46e049db872f042cL  # 2.642961201329062E33

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/aa;->DW:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_21

    :cond_d
    :try_start_d
    invoke-static {}, Lcom/aide/ui/aa;->ef()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "cpp_indentation_size"

    const-string v5, "4"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_1d
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_1d} :catch_1e
    .catchall {:try_start_d .. :try_end_1d} :catchall_21

    return v0

    :catch_1e
    move-exception v0

    const/4 v0, 0x4

    return v0

    :catchall_21
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/aa;->FH:Z

    if-eqz v4, :cond_29

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_29
    throw v3
.end method

.method public static Ws()Z
    .registers 6

    const/4 v0, 0x0

    const-wide v1, 0x1e2876e03ac02380L

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/aa;->DW:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-static {}, Lcom/aide/ui/aa;->ef()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "force_soft_keyboard"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_18
    .catchall {:try_start_6 .. :try_end_18} :catchall_19

    return v0

    :catchall_19
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/aa;->FH:Z

    if-eqz v4, :cond_21

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_21
    throw v3
.end method

.method public static XL()Z
    .registers 6

    const/4 v0, 0x0

    const-wide v1, -0x5f9ff7c74ad0728L  # -6.240340563845135E279

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/aa;->DW:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-static {}, Lcom/aide/ui/aa;->ef()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "git_keep_ssh_session_info"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_18
    .catchall {:try_start_6 .. :try_end_18} :catchall_19

    return v0

    :catchall_19
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/aa;->FH:Z

    if-eqz v4, :cond_21

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_21
    throw v3
.end method

.method public static Zo()Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0x694e8aab2de68250L  # 1.8264172294037103E199

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/aa;->DW:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "Java"

    invoke-static {}, Lcom/aide/ui/aa;->rN()Ljava/util/List;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "JavaScript"

    invoke-static {}, Lcom/aide/ui/aa;->yS()Ljava/util/List;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_24
    .catchall {:try_start_6 .. :try_end_24} :catchall_25

    return-object v3

    :catchall_25
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/aa;->FH:Z

    if-eqz v4, :cond_2d

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2d
    throw v3
.end method

.method public static a8()Z
    .registers 6

    const/4 v0, 0x0

    const-wide v1, 0x541c49216f22ff7L

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/aa;->DW:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-static {}, Lcom/aide/ui/aa;->ef()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "use_spaces_for_tabs"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_18
    .catchall {:try_start_6 .. :try_end_18} :catchall_19

    return v0

    :catchall_19
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/aa;->FH:Z

    if-eqz v4, :cond_21

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_21
    throw v3
.end method

.method public static aM()Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    const-wide v1, 0x3892cfd1ce119fcL

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/aa;->DW:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-static {}, Lcom/aide/ui/aa;->ef()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "git_user_email"

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_19
    .catchall {:try_start_6 .. :try_end_19} :catchall_1a

    return-object v0

    :catchall_1a
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/aa;->FH:Z

    if-eqz v4, :cond_22

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_22
    throw v3
.end method

.method public static cb()Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    const-wide v1, -0x5587aab98ad0400L

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/aa;->DW:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-static {}, Lcom/aide/ui/aa;->ef()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "use_user_keystore"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3
    :try_end_18
    .catchall {:try_start_6 .. :try_end_18} :catchall_2c

    const-string v4, ""

    if-eqz v3, :cond_2b

    :try_start_1c
    invoke-static {}, Lcom/aide/ui/aa;->ef()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v5, "user_keystore"

    invoke-interface {v3, v5, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0
    :try_end_2a
    .catchall {:try_start_1c .. :try_end_2a} :catchall_2c

    return-object v0

    :cond_2b
    return-object v4

    :catchall_2c
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/aa;->FH:Z

    if-eqz v4, :cond_34

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_34
    throw v3
.end method

.method public static cn()I
    .registers 6

    const/4 v0, 0x0

    const-wide v1, 0x20f2350e17853b27L  # 5.562197872461073E-150

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/aa;->DW:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_21

    :cond_d
    :try_start_d
    invoke-static {}, Lcom/aide/ui/aa;->ef()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "tabsize"

    const-string v5, "4"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_1d
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_1d} :catch_1e
    .catchall {:try_start_d .. :try_end_1d} :catchall_21

    return v0

    :catch_1e
    move-exception v0

    const/4 v0, 0x4

    return v0

    :catchall_21
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/aa;->FH:Z

    if-eqz v4, :cond_29

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_29
    throw v3
.end method

.method public static dx()Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    const-wide v1, -0x54e10ec14fe17b9dL  # -5.526051645038449E-101

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/aa;->DW:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-static {}, Lcom/aide/ui/aa;->ef()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "user_m2repositories"

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_19
    .catchall {:try_start_6 .. :try_end_19} :catchall_1a

    return-object v0

    :catchall_1a
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/aa;->FH:Z

    if-eqz v4, :cond_22

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_22
    throw v3
.end method

.method private static ef()Landroid/content/SharedPreferences;
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x4ccdeffc291c494fL
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0x67c04bc6fcada08L

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/aa;->DW:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    sget-object v3, Lcom/aide/ui/aa;->j6:Landroid/content/Context;

    invoke-static {v3}, Lcom/aide/ui/aa;->Hw(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0
    :try_end_13
    .catchall {:try_start_6 .. :try_end_13} :catchall_14

    return-object v0

    :catchall_14
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/aa;->FH:Z

    if-eqz v4, :cond_1c

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1c
    throw v3
.end method

.method public static ei()I
    .registers 6

    const/4 v0, 0x0

    const-wide v1, -0x2ad0fccd82716b13L  # -2.1706268614872025E102

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/aa;->DW:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_21

    :cond_d
    :try_start_d
    invoke-static {}, Lcom/aide/ui/aa;->ef()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "max_single_imports"

    const-string v5, "100"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_1d
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_1d} :catch_1e
    .catchall {:try_start_d .. :try_end_1d} :catchall_21

    return v0

    :catch_1e
    move-exception v0

    const/4 v0, 0x0

    return v0

    :catchall_21
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/aa;->FH:Z

    if-eqz v4, :cond_29

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_29
    throw v3
.end method

.method public static er()I
    .registers 6

    const/4 v0, 0x0

    const-wide v1, -0x1f0bce2a8d74239bL  # -1.1090582134359263E159

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/aa;->DW:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_21

    :cond_d
    :try_start_d
    invoke-static {}, Lcom/aide/ui/aa;->ef()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "java_indentation_size"

    const-string v5, "4"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_1d
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_1d} :catch_1e
    .catchall {:try_start_d .. :try_end_1d} :catchall_21

    return v0

    :catch_1e
    move-exception v0

    const/4 v0, 0x4

    return v0

    :catchall_21
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/aa;->FH:Z

    if-eqz v4, :cond_29

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_29
    throw v3
.end method

.method public static gW()I
    .registers 6

    const/4 v0, 0x0

    const-wide v1, -0x922e4885734dcc8L

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/aa;->DW:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_21

    :cond_d
    :try_start_d
    invoke-static {}, Lcom/aide/ui/aa;->ef()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "js_indentation_size"

    const-string v5, "4"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_1d
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_1d} :catch_1e
    .catchall {:try_start_d .. :try_end_1d} :catchall_21

    return v0

    :catch_1e
    move-exception v0

    const/4 v0, 0x4

    return v0

    :catchall_21
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/aa;->FH:Z

    if-eqz v4, :cond_29

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_29
    throw v3
.end method

.method public static gn()Z
    .registers 6

    const/4 v0, 0x0

    const-wide v1, -0x1f52465e181a294L  # -1.405194616769857E299

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/aa;->DW:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-static {}, Lcom/aide/ui/aa;->ef()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "git_create_for_projects"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_18
    .catchall {:try_start_6 .. :try_end_18} :catchall_19

    return v0

    :catchall_19
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/aa;->FH:Z

    if-eqz v4, :cond_21

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_21
    throw v3
.end method

.method public static j3()Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    const-wide v1, -0x36bf3b6e779e1f1L

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/aa;->DW:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-static {}, Lcom/aide/ui/aa;->ef()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "git_user_name"

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_19
    .catchall {:try_start_6 .. :try_end_19} :catchall_1a

    return-object v0

    :catchall_1a
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/aa;->FH:Z

    if-eqz v4, :cond_22

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_22
    throw v3
.end method

.method public static j6(Landroid/content/Context;Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .registers 9

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/aa;->DW:Z

    if-eqz v0, :cond_d

    const-wide v0, 0x2134cfde3ff022fL

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    sget-object v0, Lcom/aide/ui/aa;->j6:Landroid/content/Context;

    invoke-static {v0}, Lcom/aide/ui/aa;->Hw(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    :try_end_16
    .catchall {:try_start_0 .. :try_end_16} :catchall_17

    return-void

    :catchall_17
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/aa;->FH:Z

    if-eqz v1, :cond_28

    const-wide v2, 0x2134cfde3ff022fL

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_28
    throw v0
.end method

.method public static j6(Ljava/lang/String;Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/aa;->DW:Z

    if-eqz v0, :cond_d

    const-wide v0, -0x42d646ef01b9154L  # -2.83340166053933E288

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    sget-object v0, Lcom/aide/ui/aa;->j6:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "Java"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3c

    invoke-static {}, Labcd/id;->values()[Labcd/id;

    move-result-object v1

    array-length v3, v1
    :try_end_25
    .catchall {:try_start_0 .. :try_end_25} :catchall_63

    const/4 v4, 0x0

    :goto_26
    if-ge v4, v3, :cond_3c

    aget-object v5, v1, v4

    :try_start_2a
    invoke-virtual {v5}, Labcd/id;->VH()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Labcd/id;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    invoke-interface {v0, v6, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    add-int/lit8 v4, v4, 0x1

    goto :goto_26

    :cond_3c
    const-string v1, "JavaScript"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5f

    invoke-static {}, Labcd/Md;->values()[Labcd/Md;

    move-result-object v1

    array-length v3, v1
    :try_end_49
    .catchall {:try_start_2a .. :try_end_49} :catchall_63

    :goto_49
    if-ge v2, v3, :cond_5f

    aget-object v4, v1, v2

    :try_start_4d
    invoke-virtual {v4}, Labcd/Md;->VH()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Labcd/Md;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    invoke-interface {v0, v5, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    add-int/lit8 v2, v2, 0x1

    goto :goto_49

    :cond_5f
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_62
    .catchall {:try_start_4d .. :try_end_62} :catchall_63

    return-void

    :catchall_63
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/aa;->FH:Z

    if-eqz v1, :cond_74

    const-wide v2, -0x42d646ef01b9154L  # -2.83340166053933E288

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_74
    goto :goto_76

    :goto_75
    throw v0

    :goto_76
    goto :goto_75
.end method

.method public static j6(Z)V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, -0x696b0544f01e783fL  # -6.851983363472165E-200

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/aa;->DW:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Z)V

    :cond_d
    invoke-static {}, Lcom/aide/ui/aa;->ef()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "trainer_sound"

    invoke-interface {v3, v4, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1d
    .catchall {:try_start_6 .. :try_end_1d} :catchall_1e

    return-void

    :catchall_1e
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/aa;->FH:Z

    if-eqz v4, :cond_2b

    new-instance v4, Ljava/lang/Boolean;

    invoke-direct {v4, p0}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v3, v1, v2, v0, v4}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2b
    throw v3
.end method

.method public static j6()Z
    .registers 6

    const/4 v0, 0x0

    const-wide v1, -0x2d41b5269686f3a8L  # -3.8566667346570915E90

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/aa;->DW:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-static {}, Lcom/aide/ui/aa;->ef()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "complete_after_dot"

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_18
    .catchall {:try_start_6 .. :try_end_18} :catchall_19

    return v0

    :catchall_19
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/aa;->FH:Z

    if-eqz v4, :cond_21

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_21
    throw v3
.end method

.method public static j6(Landroid/content/Context;)Z
    .registers 16

    const-string v0, "editor_tabs"

    const-string v1, "editor_font_size"

    const-string v2, "git_dot_ssh_dir"

    const/4 v3, 0x0

    const-wide v4, -0x186835046c9cc040L

    :try_start_c
    sget-boolean v6, Lcom/aide/ui/aa;->DW:Z

    if-eqz v6, :cond_13

    invoke-static {v4, v5, v3, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_13
    sput-object p0, Lcom/aide/ui/aa;->j6:Landroid/content/Context;

    const v6, 0x7f100004

    const/4 v7, 0x0

    invoke-static {p0, v6, v7}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;IZ)V

    const v6, 0x7f100006

    invoke-static {p0, v6, v7}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;IZ)V

    const v6, 0x7f100009

    invoke-static {p0, v6, v7}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;IZ)V

    const v6, 0x7f100007

    invoke-static {p0, v6, v7}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;IZ)V

    const v6, 0x7f100003

    invoke-static {p0, v6, v7}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;IZ)V

    const v6, 0x7f100005

    invoke-static {p0, v6, v7}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;IZ)V

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-static {}, Labcd/id;->values()[Labcd/id;

    move-result-object v9

    array-length v10, v9
    :try_end_47
    .catchall {:try_start_c .. :try_end_47} :catchall_d3

    const/4 v11, 0x0

    :goto_48
    if-ge v11, v10, :cond_68

    aget-object v12, v9, v11

    :try_start_4c
    invoke-virtual {v12}, Labcd/id;->VH()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v6, v13}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_65

    invoke-virtual {v12}, Labcd/id;->VH()Ljava/lang/String;

    move-result-object v13

    invoke-static {}, Labcd/id;->Hw()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    invoke-interface {v8, v13, v12}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :cond_65
    add-int/lit8 v11, v11, 0x1

    goto :goto_48

    :cond_68
    invoke-static {}, Labcd/Md;->values()[Labcd/Md;

    move-result-object v9

    array-length v10, v9
    :try_end_6d
    .catchall {:try_start_4c .. :try_end_6d} :catchall_d3

    const/4 v11, 0x0

    :goto_6e
    if-ge v11, v10, :cond_8e

    aget-object v12, v9, v11

    :try_start_72
    invoke-virtual {v12}, Labcd/Md;->VH()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v6, v13}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_8b

    invoke-virtual {v12}, Labcd/Md;->VH()Ljava/lang/String;

    move-result-object v13

    invoke-static {}, Labcd/Md;->Hw()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    invoke-interface {v8, v13, v12}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :cond_8b
    add-int/lit8 v11, v11, 0x1

    goto :goto_6e

    :cond_8e
    invoke-interface {v6, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_a6

    new-instance v9, Ljava/io/File;

    invoke-static {}, Labcd/FileSystemUtils;->getExternalStorageDirectory()Ljava/lang/String;

    move-result-object v10

    const-string v11, ".ssh"

    invoke-direct {v9, v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v2, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_a6
    invoke-interface {v6, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    const/4 v9, 0x1

    if-nez v2, :cond_c6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/aide/ui/aa;->FH(Landroid/content/Context;)I

    move-result v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ""

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v8, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const/4 v7, 0x1

    :cond_c6
    invoke-interface {v6, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_cf

    invoke-interface {v8, v0, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :cond_cf
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_d2
    .catchall {:try_start_72 .. :try_end_d2} :catchall_d3

    return v7

    :catchall_d3
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/aa;->FH:Z

    if-eqz v1, :cond_db

    invoke-static {v0, v4, v5, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_db
    goto :goto_dd

    :goto_dc
    throw v0

    :goto_dd
    goto :goto_dc
.end method

.method public static j6(Ljava/lang/String;)Z
    .registers 7

    const/4 v0, 0x0

    const-wide v1, 0x559dd6c10e2a2f7L

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/aa;->DW:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-static {}, Lcom/aide/ui/aa;->ef()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "intel_libs_warned_projects"

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0
    :try_end_1f
    .catchall {:try_start_6 .. :try_end_1f} :catchall_20

    return p0

    :catchall_20
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/aa;->FH:Z

    if-eqz v4, :cond_28

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_28
    throw v3
.end method

.method public static lg()Z
    .registers 6

    const/4 v0, 0x0

    const-wide v1, -0x19e7f9d76d323388L  # -6.380044601386777E183

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/aa;->DW:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-static {}, Lcom/aide/ui/U;->dx()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_15

    return v4

    :cond_15
    invoke-static {}, Lcom/aide/ui/aa;->ef()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v5, "light_theme"

    invoke-interface {v3, v5, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_1f
    .catchall {:try_start_6 .. :try_end_1f} :catchall_20

    return v0

    :catchall_20
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/aa;->FH:Z

    if-eqz v4, :cond_28

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_28
    throw v3
.end method

.method public static nw()Z
    .registers 6

    const/4 v0, 0x0

    const-wide v1, 0x67906ae56394fe24L  # 7.314858876643851E190

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/aa;->DW:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-static {}, Lcom/aide/ui/aa;->ef()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "native_build_parallel"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_18
    .catchall {:try_start_6 .. :try_end_18} :catchall_19

    return v0

    :catchall_19
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/aa;->FH:Z

    if-eqz v4, :cond_21

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_21
    throw v3
.end method

.method public static rN()Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0x5349c52a4c8910L

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/aa;->DW:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Labcd/id;->values()[Labcd/id;

    move-result-object v4

    array-length v5, v4
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_36

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_19
    if-ge v7, v5, :cond_35

    aget-object v8, v4, v7

    :try_start_1d
    invoke-static {}, Lcom/aide/ui/aa;->ef()Landroid/content/SharedPreferences;

    move-result-object v9

    invoke-virtual {v8}, Labcd/id;->VH()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_32

    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_32
    .catchall {:try_start_1d .. :try_end_32} :catchall_36

    :cond_32
    add-int/lit8 v7, v7, 0x1

    goto :goto_19

    :cond_35
    return-object v3

    :catchall_36
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/aa;->FH:Z

    if-eqz v4, :cond_3e

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3e
    goto :goto_40

    :goto_3f
    throw v3

    :goto_40
    goto :goto_3f
.end method

.method public static ro()Z
    .registers 6

    const/4 v0, 0x0

    const-wide v1, -0x3e800cdf2c2adeb3L  # -3.350170923953371E7

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/aa;->DW:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-static {}, Lcom/aide/ui/aa;->ef()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "editor_tabs"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_18
    .catchall {:try_start_6 .. :try_end_18} :catchall_19

    return v0

    :catchall_19
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/aa;->FH:Z

    if-eqz v4, :cond_21

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_21
    throw v3
.end method

.method public static sG()I
    .registers 6

    const/4 v0, 0x0

    const-wide v1, -0x3ba4d7566ff94e08L  # -2.0039684855246765E21

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/aa;->DW:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_21

    :cond_d
    :try_start_d
    invoke-static {}, Lcom/aide/ui/aa;->ef()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "xml_indentation_size"

    const-string v5, "4"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_1d
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_1d} :catch_1e
    .catchall {:try_start_d .. :try_end_1d} :catchall_21

    return v0

    :catch_1e
    move-exception v0

    const/4 v0, 0x4

    return v0

    :catchall_21
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/aa;->FH:Z

    if-eqz v4, :cond_29

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_29
    throw v3
.end method

.method public static sh()Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    const-wide v1, 0x579c071ee39dfb0L

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/aa;->DW:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-static {}, Lcom/aide/ui/aa;->ef()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "user_androidjar"

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_19
    .catchall {:try_start_6 .. :try_end_19} :catchall_1a

    return-object v0

    :catchall_1a
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/aa;->FH:Z

    if-eqz v4, :cond_22

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_22
    throw v3
.end method

.method public static tp()I
    .registers 6

    const/4 v0, 0x0

    const-wide v1, -0x25b8cd0256d75c90L  # -7.852010716370568E126

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/aa;->DW:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_26

    :cond_d
    :try_start_d
    invoke-static {}, Lcom/aide/ui/aa;->ef()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "editor_font_size"

    const-string v5, "10"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_1d
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_1d} :catch_1e
    .catchall {:try_start_d .. :try_end_1d} :catchall_26

    return v0

    :catch_1e
    move-exception v3

    :try_start_1f
    sget-object v3, Lcom/aide/ui/aa;->j6:Landroid/content/Context;

    invoke-static {v3}, Lcom/aide/ui/aa;->FH(Landroid/content/Context;)I

    move-result v0
    :try_end_25
    .catchall {:try_start_1f .. :try_end_25} :catchall_26

    return v0

    :catchall_26
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/aa;->FH:Z

    if-eqz v4, :cond_2e

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2e
    throw v3
.end method

.method public static u7()I
    .registers 6

    const/4 v0, 0x0

    const-wide v1, -0x4668d90edb49e228L  # -2.8537187529440854E-31

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/aa;->DW:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_21

    :cond_d
    :try_start_d
    invoke-static {}, Lcom/aide/ui/aa;->ef()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "css_indentation_size"

    const-string v5, "2"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_1d
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_1d} :catch_1e
    .catchall {:try_start_d .. :try_end_1d} :catchall_21

    return v0

    :catch_1e
    move-exception v0

    const/4 v0, 0x2

    return v0

    :catchall_21
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/aa;->FH:Z

    if-eqz v4, :cond_29

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_29
    throw v3
.end method

.method public static v5(Ljava/lang/String;)V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, 0x791ce5e3590b68L

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/aa;->DW:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-static {}, Lcom/aide/ui/aa;->ef()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "user_androidjar"

    invoke-interface {v3, v4, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1d
    .catchall {:try_start_6 .. :try_end_1d} :catchall_1e

    return-void

    :catchall_1e
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/aa;->FH:Z

    if-eqz v4, :cond_26

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_26
    throw v3
.end method

.method public static v5()Z
    .registers 6

    const/4 v0, 0x0

    const-wide v1, -0x3fa0ae5355f39fd7L  # -125.27616358955915

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/aa;->DW:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-static {}, Lcom/aide/ui/aa;->ef()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "auto_sync_dropbox"

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_18
    .catchall {:try_start_6 .. :try_end_18} :catchall_19

    return v0

    :catchall_19
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/aa;->FH:Z

    if-eqz v4, :cond_21

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_21
    throw v3
.end method

.method public static vy()Ljava/lang/String;
    .registers 5

    const-wide v0, 0x19a2ee09897afde0L

    const/4 v2, 0x0

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/aa;->DW:Z

    if-eqz v3, :cond_d

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-static {}, Lcom/aide/ui/aa;->ef()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "local_doc_dir_path"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_18

    return-object v0

    :catchall_18
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/aa;->FH:Z

    if-eqz v4, :cond_20

    invoke-static {v3, v0, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_20
    throw v3
.end method

.method public static we()Z
    .registers 6

    const/4 v0, 0x0

    const-wide v1, -0x27ec8a575366eb0L

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/aa;->DW:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-static {}, Lcom/aide/ui/aa;->ef()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "optimze_dex"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_18
    .catchall {:try_start_6 .. :try_end_18} :catchall_19

    return v0

    :catchall_19
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/aa;->FH:Z

    if-eqz v4, :cond_21

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_21
    throw v3
.end method

.method public static yS()Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0x10ad7025f0647ce1L  # -1.758893941031101E228

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/aa;->DW:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Labcd/Md;->values()[Labcd/Md;

    move-result-object v4

    array-length v5, v4
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_36

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_19
    if-ge v7, v5, :cond_35

    aget-object v8, v4, v7

    :try_start_1d
    invoke-static {}, Lcom/aide/ui/aa;->ef()Landroid/content/SharedPreferences;

    move-result-object v9

    invoke-virtual {v8}, Labcd/Md;->VH()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_32

    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_32
    .catchall {:try_start_1d .. :try_end_32} :catchall_36

    :cond_32
    add-int/lit8 v7, v7, 0x1

    goto :goto_19

    :cond_35
    return-object v3

    :catchall_36
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/aa;->FH:Z

    if-eqz v4, :cond_3e

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3e
    goto :goto_40

    :goto_3f
    throw v3

    :goto_40
    goto :goto_3f
.end method
