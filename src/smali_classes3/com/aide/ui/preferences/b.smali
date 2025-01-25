.class public Lcom/aide/ui/preferences/b;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation


# static fields
.field private static DW:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field private static j6:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/ui/preferences/b;

    const-wide v1, -0x3b63f8f1d4518990L  # -3.3089102457607568E22

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, -0x71c346a0f50618fL  # -2.141742250714501E274

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/preferences/b;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/preferences/b;->DW:Z

    if-eqz v4, :cond_19

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_19
    throw v3
.end method

.method public static DW(Landroid/content/Context;Landroid/preference/PreferenceScreen;)V
    .registers 15

    const-string v0, "\\n"

    const-string v1, "\n"

    const-string v2, "\""

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/preferences/b;->j6:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_13

    const-wide v5, -0x58b07dffd57f4278L

    invoke-static {v5, v6, v4, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_13
    invoke-static {}, Labcd/id;->values()[Labcd/id;

    move-result-object v3

    array-length v5, v3
    :try_end_18
    .catchall {:try_start_6 .. :try_end_18} :catchall_ae

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_1a
    if-ge v7, v5, :cond_ad

    aget-object v8, v3, v7

    if-eqz v4, :cond_2e

    :try_start_20
    invoke-virtual {v4}, Landroid/preference/PreferenceCategory;->getTitle()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8}, Labcd/id;->Zo()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3d

    :cond_2e
    new-instance v4, Lcom/s1243808733/aide/preference/NiuBiPreferenceCategory;

    invoke-direct {v4, p0}, Lcom/s1243808733/aide/preference/NiuBiPreferenceCategory;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8}, Labcd/id;->Zo()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    :cond_3d
    new-instance v9, Lcom/aide/ui/preferences/PremiumCheckBoxPreference;

    invoke-direct {v9, p0}, Lcom/aide/ui/preferences/PremiumCheckBoxPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8}, Labcd/id;->VH()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    invoke-virtual {v8}, Labcd/id;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v8, v6}, Labcd/id;->j6(Z)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_a6

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Labcd/id;->j6(Z)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v12, 0x1

    invoke-virtual {v8, v12}, Labcd/id;->j6(Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " versus "

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_a6
    invoke-virtual {v4, v9}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z
    :try_end_a9
    .catchall {:try_start_20 .. :try_end_a9} :catchall_ae

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1a

    :cond_ad
    return-void

    :catchall_ae
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/preferences/b;->DW:Z

    if-eqz v1, :cond_bf

    const-wide v2, -0x58b07dffd57f4278L

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_bf
    goto :goto_c1

    :goto_c0
    throw v0

    :goto_c1
    goto :goto_c0
.end method

.method public static FH(Landroid/content/Context;Landroid/preference/PreferenceScreen;)V
    .registers 15

    const-string v0, "\\n"

    const-string v1, "\n"

    const-string v2, "\""

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/preferences/b;->j6:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_13

    const-wide v5, -0x54c2726fe9c951bbL  # -2.111167708221811E-100

    invoke-static {v5, v6, v4, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_13
    invoke-static {}, Labcd/Md;->values()[Labcd/Md;

    move-result-object v3

    array-length v5, v3
    :try_end_18
    .catchall {:try_start_6 .. :try_end_18} :catchall_ae

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_1a
    if-ge v7, v5, :cond_ad

    aget-object v8, v3, v7

    if-eqz v4, :cond_2e

    :try_start_20
    invoke-virtual {v4}, Landroid/preference/PreferenceCategory;->getTitle()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8}, Labcd/Md;->Zo()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3d

    :cond_2e
    new-instance v4, Lcom/s1243808733/aide/preference/NiuBiPreferenceCategory;

    invoke-direct {v4, p0}, Lcom/s1243808733/aide/preference/NiuBiPreferenceCategory;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8}, Labcd/Md;->Zo()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    :cond_3d
    new-instance v9, Lcom/aide/ui/preferences/PremiumCheckBoxPreference;

    invoke-direct {v9, p0}, Lcom/aide/ui/preferences/PremiumCheckBoxPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8}, Labcd/Md;->VH()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    invoke-virtual {v8}, Labcd/Md;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v8, v6}, Labcd/Md;->j6(Z)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_a6

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Labcd/Md;->j6(Z)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v12, 0x1

    invoke-virtual {v8, v12}, Labcd/Md;->j6(Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " versus "

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_a6
    invoke-virtual {v4, v9}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z
    :try_end_a9
    .catchall {:try_start_20 .. :try_end_a9} :catchall_ae

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1a

    :cond_ad
    return-void

    :catchall_ae
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/preferences/b;->DW:Z

    if-eqz v1, :cond_bf

    const-wide v2, -0x54c2726fe9c951bbL  # -2.111167708221811E-100

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_bf
    goto :goto_c1

    :goto_c0
    throw v0

    :goto_c1
    goto :goto_c0
.end method

.method public static j6(Landroid/content/Context;Landroid/preference/PreferenceScreen;)V
    .registers 9

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/preferences/b;->j6:Z

    if-eqz v0, :cond_d

    const-wide v0, 0x16f148736518d1b1L  # 3.612619840723128E-198

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-static {}, Lcom/aide/ui/U;->ef()Z

    move-result v0

    if-nez v0, :cond_27

    sget-object v0, Lcom/aide/ui/U;->j6:Ljava/lang/String;

    const-string v1, "com.aide.phonegap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    sget-object v0, Lcom/aide/ui/U;->j6:Ljava/lang/String;

    const-string v1, "com.aide.web"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    :cond_27
    invoke-static {p0, p1}, Lcom/aide/ui/preferences/b;->FH(Landroid/content/Context;Landroid/preference/PreferenceScreen;)V

    :cond_2a
    invoke-static {}, Lcom/aide/ui/U;->ef()Z

    move-result v0

    if-nez v0, :cond_3a

    sget-object v0, Lcom/aide/ui/U;->j6:Ljava/lang/String;

    const-string v1, "com.aide.ui"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    :cond_3a
    invoke-static {p0, p1}, Lcom/aide/ui/preferences/b;->DW(Landroid/content/Context;Landroid/preference/PreferenceScreen;)V
    :try_end_3d
    .catchall {:try_start_0 .. :try_end_3d} :catchall_3e

    :cond_3d
    return-void

    :catchall_3e
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/preferences/b;->DW:Z

    if-eqz v1, :cond_4f

    const-wide v2, 0x16f148736518d1b1L  # 3.612619840723128E-198

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4f
    throw v0
.end method
