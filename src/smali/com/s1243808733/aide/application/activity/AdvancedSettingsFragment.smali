.class public Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;
.super Lcom/s1243808733/aide/preference/BasePreferenceFragment;
.source "AdvancedSettingsFragment.java"


# instance fields
.field public ALGORITHM_DES:Ljava/lang/String;

.field public DESKEY:Ljava/lang/String;

.field public currentPreferenceScreen:Landroid/preference/PreferenceScreen;


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 99
    invoke-direct {p0}, Lcom/s1243808733/aide/preference/BasePreferenceFragment;-><init>()V

    .line 1265
    const-string v0, "DES/CBC/PKCS5Padding"

    iput-object v0, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->ALGORITHM_DES:Ljava/lang/String;

    .line 1267
    const-string v0, "QpOiUnYbVp3bB73Fsn7O12CX"

    iput-object v0, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->DESKEY:Ljava/lang/String;

    .line 100
    invoke-static {}, Lcom/s1243808733/util/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "project_home"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 101
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_37

    .line 102
    :cond_20
    invoke-static {}, Lcom/s1243808733/util/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 103
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 104
    invoke-static {}, Lcom/s1243808733/aide/util/ProjectUtils;->getDefaultAppProjects()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 105
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_37
    return-void
.end method

.method private static byte2hex([B)Ljava/lang/String;
    .registers 6

    .line 1355
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_6
    if-eqz p0, :cond_25

    .line 1357
    array-length v2, p0

    if-ge v1, v2, :cond_25

    .line 1358
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 1359
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1f

    .line 1360
    const/16 v3, 0x30

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1361
    :cond_1f
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 1363
    :cond_25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static hex2byte([B)[B
    .registers 7

    .line 1367
    array-length v0, p0

    const/4 v1, 0x2

    rem-int/2addr v0, v1

    if-nez v0, :cond_21

    .line 1370
    array-length v0, p0

    div-int/2addr v0, v1

    new-array v0, v0, [B

    const/4 v2, 0x0

    .line 1371
    :goto_a
    array-length v3, p0

    if-ge v2, v3, :cond_20

    .line 1372
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p0, v2, v1}, Ljava/lang/String;-><init>([BII)V

    .line 1373
    div-int/lit8 v4, v2, 0x2

    const/16 v5, 0x10

    invoke-static {v3, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v0, v4

    add-int/lit8 v2, v2, 0x2

    goto :goto_a

    :cond_20
    return-object v0

    .line 1368
    :cond_21
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    goto :goto_28

    :goto_27
    throw p0

    :goto_28
    goto :goto_27
.end method

.method private init()V
    .registers 10

    .line 168
    const-string v0, "preference_screen"

    invoke-virtual {p0, v0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    .line 169
    invoke-direct {p0, v0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->initPreferenceScreenClickListener(Ljava/lang/String;)V

    .line 172
    const-string v0, "apptheme"

    invoke-virtual {p0, v0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/aide/preference/PreferenceTheme;

    .line 173
    invoke-virtual {p0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->getCurrentList()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/s1243808733/aide/preference/PreferenceTheme;->bind(Landroid/widget/ListView;)V

    .line 243
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1f

    const-string v3, "test_dialog_blur"

    const/4 v4, 0x0

    if-ge v0, v2, :cond_2a

    .line 244
    invoke-virtual {p0, v3}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 247
    :cond_2a
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-ge v0, v2, :cond_3a

    .line 248
    const-string v0, "managePermissionCategory"

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_66

    .line 251
    :cond_3a
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    const-string v2, "requestManageAllFile"

    if-lt v0, v1, :cond_4b

    .line 252
    new-instance v0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$1;

    invoke-direct {v0, p0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$1;-><init>(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;)V

    invoke-direct {p0, v2, v0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->setOnPreferenceClickListener(Ljava/lang/String;Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_52

    .line 277
    :cond_4b
    invoke-virtual {p0, v2}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 280
    :goto_52
    new-instance v0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$2;

    invoke-direct {v0, p0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$2;-><init>(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;)V

    const-string v1, "requestIgnoreBatteryOptimizations"

    invoke-direct {p0, v1, v0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->setOnPreferenceClickListener(Ljava/lang/String;Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 314
    new-instance v0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$3;

    invoke-direct {v0, p0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$3;-><init>(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;)V

    const-string v1, "requestAlertWindow"

    invoke-direct {p0, v1, v0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->setOnPreferenceClickListener(Ljava/lang/String;Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 332
    :goto_66
    new-instance v0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$4;

    invoke-direct {v0, p0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$4;-><init>(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;)V

    const-string v1, "action_bar_container_use_elevation"

    invoke-direct {p0, v1, v0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->setOnPreferenceChangeListener(Ljava/lang/String;Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 344
    new-instance v0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$5;

    invoke-direct {v0, p0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$5;-><init>(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;)V

    const-string v1, "aidepro_custom_cmd"

    invoke-direct {p0, v1, v0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->setOnPreferenceClickListener(Ljava/lang/String;Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 356
    new-instance v0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$6;

    invoke-direct {v0, p0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$6;-><init>(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;)V

    const-string v1, "api_web_translation"

    invoke-direct {p0, v1, v0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->setOnPreferenceChangeListener(Ljava/lang/String;Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 367
    new-instance v0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$7;

    invoke-direct {v0, p0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$7;-><init>(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;)V

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/String;

    aput-object v3, v1, v4

    const-string v2, "tab_text_lowercase"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "tab_display_file_icon"

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const-string v2, "advanced_setting_editor_font"

    const/4 v6, 0x3

    aput-object v2, v1, v6

    const-string v2, "advanced_setting_enable_drawer"

    const/4 v7, 0x4

    aput-object v2, v1, v7

    const/4 v2, 0x5

    const-string v8, "action_tab_mode"

    aput-object v8, v1, v2

    const/4 v2, 0x6

    const-string v8, "aide_pro_drag_back"

    aput-object v8, v1, v2

    invoke-direct {p0, v1, v0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->setOnPreferenceClickListener([Ljava/lang/String;Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 390
    new-instance v0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$8;

    invoke-direct {v0, p0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$8;-><init>(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;)V

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "test_setting_enable_aapt2"

    aput-object v2, v1, v4

    const-string v2, "apk_d8builder"

    aput-object v2, v1, v3

    const-string v3, "apk_d8builder_min_version_num"

    aput-object v3, v1, v5

    const-string v3, "test_setting_enable_build_aab_apks"

    aput-object v3, v1, v6

    invoke-direct {p0, v1, v0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->setOnPreferenceChangeListener([Ljava/lang/String;Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 406
    new-instance v0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$9;

    invoke-direct {v0, p0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$9;-><init>(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;)V

    const-string v1, "aidepro_gradle_configure"

    invoke-direct {p0, v1, v0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->setOnPreferenceClickListener(Ljava/lang/String;Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 463
    new-instance v0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$10;

    invoke-direct {v0, p0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$10;-><init>(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;)V

    const-string v1, "gradle_comple"

    invoke-direct {p0, v1, v0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->setOnPreferenceClickListener(Ljava/lang/String;Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 526
    new-instance v0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$11;

    invoke-direct {v0, p0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$11;-><init>(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;)V

    const-string v1, "immersion_statusbar"

    invoke-direct {p0, v1, v0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->setOnPreferenceChangeListener(Ljava/lang/String;Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 541
    new-instance v0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$12;

    invoke-direct {v0, p0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$12;-><init>(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;)V

    const-string v1, "enableMainMasterButton"

    invoke-direct {p0, v1, v0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->setOnPreferenceChangeListener(Ljava/lang/String;Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 552
    new-instance v0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$13;

    invoke-direct {v0, p0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$13;-><init>(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;)V

    const-string v1, "enableDrawerToggle"

    invoke-direct {p0, v1, v0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->setOnPreferenceChangeListener(Ljava/lang/String;Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 566
    const-string v0, "advanced_setting_editor_bg"

    invoke-virtual {p0, v0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    new-instance v1, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$14;

    invoke-direct {v1, p0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$14;-><init>(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;)V

    .line 567
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 581
    new-instance v0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$15;

    invoke-direct {v0, p0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$15;-><init>(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;)V

    const-string v1, "choose_bg_image"

    invoke-direct {p0, v1, v0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->setOnPreferenceClickListener(Ljava/lang/String;Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 599
    new-instance v0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$16;

    invoke-direct {v0, p0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$16;-><init>(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;)V

    const-string v1, "translate_file"

    invoke-direct {p0, v1, v0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->setOnPreferenceChangeListener(Ljava/lang/String;Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 610
    new-instance v0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$17;

    invoke-direct {v0, p0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$17;-><init>(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;)V

    const-string v1, "preference_stringfog"

    invoke-direct {p0, v1, v0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->setOnPreferenceClickListener(Ljava/lang/String;Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 632
    new-instance v0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$18;

    invoke-direct {v0, p0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$18;-><init>(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;)V

    const-string v1, "add_proguard_config"

    invoke-direct {p0, v1, v0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->setOnPreferenceClickListener(Ljava/lang/String;Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 670
    new-instance v0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19;

    invoke-direct {v0, p0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19;-><init>(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;)V

    const-string v1, "apk_signs"

    invoke-direct {p0, v1, v0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->setOnPreferenceClickListener(Ljava/lang/String;Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 729
    new-instance v0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$20;

    invoke-direct {v0, p0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$20;-><init>(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;)V

    invoke-direct {p0, v2, v0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->setOnPreferenceChangeListener(Ljava/lang/String;Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 754
    new-instance v0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$21;

    invoke-direct {v0, p0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$21;-><init>(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;)V

    const-string v1, "ytfyssxt"

    invoke-direct {p0, v1, v0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->setOnPreferenceClickListener(Ljava/lang/String;Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 802
    new-instance v0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$22;

    invoke-direct {v0, p0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$22;-><init>(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;)V

    const-string v1, "aidepro_backup"

    invoke-direct {p0, v1, v0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->setOnPreferenceClickListener(Ljava/lang/String;Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 880
    new-instance v0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$23;

    invoke-direct {v0, p0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$23;-><init>(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;)V

    const-string v1, "aidepro_restore"

    invoke-direct {p0, v1, v0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->setOnPreferenceClickListener(Ljava/lang/String;Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 1036
    new-instance v0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$24;

    invoke-direct {v0, p0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$24;-><init>(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;)V

    const-string v1, "advanced_setting_enable_resguard"

    invoke-direct {p0, v1, v0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->setOnPreferenceClickListener(Ljava/lang/String;Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 1047
    new-instance v0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$25;

    invoke-direct {v0, p0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$25;-><init>(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;)V

    const-string v1, "preference_highlight"

    invoke-direct {p0, v1, v0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->setOnPreferenceClickListener(Ljava/lang/String;Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 1064
    new-instance v0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$26;

    invoke-direct {v0, p0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$26;-><init>(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;)V

    const-string v1, "clear_translate"

    invoke-direct {p0, v1, v0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->setOnPreferenceClickListener(Ljava/lang/String;Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 1096
    new-instance v0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$27;

    invoke-direct {v0, p0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$27;-><init>(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;)V

    const-string v1, "preference_quick_key"

    invoke-direct {p0, v1, v0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->setOnPreferenceClickListener(Ljava/lang/String;Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 1110
    new-instance v0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$28;

    invoke-direct {v0, p0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$28;-><init>(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;)V

    const-string v1, "beta_test_crash"

    invoke-direct {p0, v1, v0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->setOnPreferenceClickListener(Ljava/lang/String;Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 1120
    new-instance v0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$29;

    invoke-direct {v0, p0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$29;-><init>(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;)V

    const-string v1, "init_custom_template"

    invoke-direct {p0, v1, v0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->setOnPreferenceClickListener(Ljava/lang/String;Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 1146
    const-string v0, "app_version"

    invoke-virtual {p0, v0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_1b0

    invoke-virtual {p0, v0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-static {}, Lcom/blankj/utilcode/util/AppUtils;->getAppVersionName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1147
    :cond_1b0
    new-instance v0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$30;

    invoke-direct {v0, p0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$30;-><init>(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;)V

    const-string v1, "github"

    invoke-direct {p0, v1, v0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->setOnPreferenceClickListener(Ljava/lang/String;Landroid/preference/Preference$OnPreferenceClickListener;)V

    invoke-static {p0}, Lnet/f401/aide/EntryPoints;->com_s1243808733_aide_application_activity_AdvancedSettingsFragment_init(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;)V

    return-void
.end method

.method private initPreferenceScreenClickListener(Landroid/preference/PreferenceGroup;Ljava/util/ArrayList;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/preference/PreferenceGroup;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1414
    :goto_1
    invoke-virtual {p1}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    if-ge v0, v1, :cond_54

    .line 1415
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    .line 1417
    instance-of v2, v1, Landroid/preference/PreferenceGroup;

    if-eqz v2, :cond_16

    .line 1418
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1421
    :cond_16
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "location"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1423
    instance-of v4, v1, Landroid/preference/PreferenceScreen;

    if-eqz v4, :cond_3d

    .line 1424
    check-cast v1, Landroid/preference/PreferenceScreen;

    .line 1425
    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->setKey(Ljava/lang/String;)V

    .line 1426
    invoke-direct {p0, v1, p2}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->initPreferenceScreenClickListener(Landroid/preference/PreferenceGroup;Ljava/util/ArrayList;)V

    .line 1427
    new-instance v2, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$33;

    invoke-direct {v2, p0, v1}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$33;-><init>(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;Landroid/preference/PreferenceScreen;)V

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_51

    :cond_3d
    if-eqz v2, :cond_45

    .line 1529
    check-cast v1, Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v1, p2}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->initPreferenceScreenClickListener(Landroid/preference/PreferenceGroup;Ljava/util/ArrayList;)V

    goto :goto_51

    .line 1530
    :cond_45
    instance-of v2, v1, Landroid/preference/Preference;

    if-eqz v2, :cond_51

    .line 1538
    new-instance v2, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$34;

    invoke-direct {v2, p0, v1}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$34;-><init>(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;Landroid/preference/Preference;)V

    .line 1550
    invoke-virtual {v2}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$34;->run()V

    :cond_51
    :goto_51
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_54
    return-void
.end method

.method private initPreferenceScreenClickListener(Ljava/lang/String;)V
    .registers 3

    .line 1405
    invoke-virtual {p0, p1}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/PreferenceScreen;

    if-nez p1, :cond_9

    return-void

    .line 1407
    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1409
    invoke-direct {p0, p1, v0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->initPreferenceScreenClickListener(Landroid/preference/PreferenceGroup;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static readFile(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .line 1235
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1240
    new-instance p0, Ljava/lang/StringBuffer;

    invoke-direct {p0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1242
    const/4 v1, 0x0

    :try_start_b
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_10
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_10} :catch_77
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_10} :catch_67
    .catchall {:try_start_b .. :try_end_10} :catchall_63

    .line 1243
    :try_start_10
    new-instance v0, Ljava/io/InputStreamReader;

    const-string v3, "UTF-8"

    invoke-direct {v0, v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_17
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_17} :catch_61
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_17} :catch_5f
    .catchall {:try_start_10 .. :try_end_17} :catchall_5a

    .line 1244
    :try_start_17
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1c
    .catch Ljava/io/FileNotFoundException; {:try_start_17 .. :try_end_1c} :catch_54
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1c} :catch_4e
    .catchall {:try_start_17 .. :try_end_1c} :catchall_4b

    .line 1245
    :goto_1c
    :try_start_1c
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_37

    .line 1246
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_36
    .catch Ljava/io/FileNotFoundException; {:try_start_1c .. :try_end_36} :catch_46
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_36} :catch_41
    .catchall {:try_start_1c .. :try_end_36} :catchall_3e

    goto :goto_1c

    .line 1254
    :cond_37
    :try_start_37
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 1255
    invoke-virtual {v0}, Ljava/io/InputStreamReader;->close()V
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3d} :catch_84

    goto :goto_73

    .line 1261
    :catchall_3e
    move-exception p0

    goto/16 :goto_8f

    .line 1256
    :catch_41
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_6a

    :catch_46
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_7a

    :catchall_4b
    move-exception p0

    move-object v3, v1

    goto :goto_5d

    :catch_4e
    move-exception v3

    move-object v6, v1

    move-object v1, v0

    move-object v0, v3

    move-object v3, v6

    goto :goto_6a

    :catch_54
    move-exception v3

    move-object v6, v1

    move-object v1, v0

    move-object v0, v3

    move-object v3, v6

    goto :goto_7a

    :catchall_5a
    move-exception p0

    move-object v0, v1

    move-object v3, v0

    :goto_5d
    move-object v1, v2

    goto :goto_90

    :catch_5f
    move-exception v0

    goto :goto_69

    :catch_61
    move-exception v0

    goto :goto_79

    :catchall_63
    move-exception p0

    move-object v0, v1

    move-object v3, v0

    goto :goto_91

    :catch_67
    move-exception v0

    move-object v2, v1

    :goto_69
    move-object v3, v1

    .line 1251
    :goto_6a
    :try_start_6a
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6d
    .catchall {:try_start_6a .. :try_end_6d} :catchall_8d

    .line 1254
    :try_start_6d
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 1255
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V

    .line 1256
    :goto_73
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_76
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_76} :catch_84

    goto :goto_88

    :catch_77
    move-exception v0

    move-object v2, v1

    :goto_79
    move-object v3, v1

    .line 1249
    :goto_7a
    :try_start_7a
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_7d
    .catchall {:try_start_7a .. :try_end_7d} :catchall_8d

    .line 1254
    :try_start_7d
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 1255
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_83
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_83} :catch_84

    goto :goto_73

    .line 1256
    :catch_84
    move-exception v0

    .line 1258
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 1261
    :goto_88
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catchall_8d
    move-exception p0

    move-object v0, v1

    :goto_8f
    move-object v1, v2

    :goto_90
    nop

    .line 1254
    :goto_91
    :try_start_91
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 1255
    invoke-virtual {v0}, Ljava/io/InputStreamReader;->close()V

    .line 1256
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_9a
    .catch Ljava/io/IOException; {:try_start_91 .. :try_end_9a} :catch_9b

    goto :goto_9f

    :catch_9b
    move-exception v0

    .line 1258
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 1260
    :goto_9f
    goto :goto_a1

    :goto_a0
    throw p0

    :goto_a1
    goto :goto_a0
.end method

.method private setOnPreferenceChangeListener(Ljava/lang/String;Landroid/preference/Preference$OnPreferenceChangeListener;)V
    .registers 3

    .line 1585
    invoke-virtual {p0, p1}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 1587
    invoke-virtual {p1, p2}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_9
    return-void
.end method

.method private setOnPreferenceChangeListener([Ljava/lang/String;Landroid/preference/Preference$OnPreferenceChangeListener;)V
    .registers 6

    .line 1578
    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_c

    aget-object v2, p1, v1

    .line 1579
    invoke-direct {p0, v2, p2}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->setOnPreferenceChangeListener(Ljava/lang/String;Landroid/preference/Preference$OnPreferenceChangeListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_c
    return-void
.end method

.method private setOnPreferenceClickListener(Ljava/lang/String;Landroid/preference/Preference$OnPreferenceClickListener;)V
    .registers 3

    .line 1561
    invoke-virtual {p0, p1}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 1563
    invoke-virtual {p1, p2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    :cond_9
    return-void
.end method

.method public setOnPreferenceClickListener(Ljava/lang/String;Lnet/f401/aide/PreferenceOnClickListener;)V
    .registers 3

    .line 1561
    invoke-virtual {p0, p1}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 1563
    invoke-virtual {p1, p2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    :cond_9
    return-void
.end method

.method private setOnPreferenceClickListener([Ljava/lang/String;Landroid/preference/Preference$OnPreferenceClickListener;)V
    .registers 6

    .line 1571
    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_c

    aget-object v2, p1, v1

    .line 1572
    invoke-direct {p0, v2, p2}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->setOnPreferenceClickListener(Ljava/lang/String;Landroid/preference/Preference$OnPreferenceClickListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_c
    return-void
.end method

.method public static showInstallDialog(Landroid/app/Activity;)V
    .registers 7

    .line 1159
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1160
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1162
    const/high16 v1, 0x41c00000  # 24.0f

    invoke-static {v1}, Lcom/blankj/utilcode/util/SizeUtils;->dp2px(F)I

    move-result v2

    const/high16 v3, 0x41200000  # 10.0f

    invoke-static {v3}, Lcom/blankj/utilcode/util/SizeUtils;->dp2px(F)I

    move-result v3

    invoke-static {v1}, Lcom/blankj/utilcode/util/SizeUtils;->dp2px(F)I

    move-result v1

    const/high16 v4, 0x41800000  # 16.0f

    invoke-static {v4}, Lcom/blankj/utilcode/util/SizeUtils;->dp2px(F)I

    move-result v4

    .line 1161
    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1163
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 1164
    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 1166
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 1167
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1169
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v5

    if-eqz v5, :cond_3e

    const-string v5, "安装Gradle"

    goto :goto_40

    :cond_3e
    const-string v5, "Install Gradle"

    :goto_40
    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 1170
    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1171
    const v4, 0x1040013

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1172
    const/high16 v4, 0x1040000

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1173
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1174
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 1175
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1177
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    new-instance v3, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$31;

    invoke-direct {v3, v1, p0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$31;-><init>(Landroid/widget/EditText;Landroid/app/Activity;)V

    .line 1178
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1199
    new-instance p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$32;

    invoke-direct {p0, v0, v1}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$32;-><init>(Landroid/app/AlertDialog;Landroid/widget/EditText;)V

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1215
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private showUpdateLogDialog(Landroid/app/Activity;Ljava/lang/CharSequence;)V
    .registers 5

    .line 1220
    const-string v0, "updatelog.txt"

    invoke-static {v0}, Lcom/s1243808733/util/Utils;->getAssetsDataFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/ResourceUtils;->readAssets2String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1221
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1223
    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 1224
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 1225
    const p2, 0x104000a

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 1226
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 1227
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    .line 1228
    invoke-static {p1}, Lcom/s1243808733/util/Utils;->setMessageIsSelectable(Landroid/app/AlertDialog;)V

    return-void
.end method

.method public static writeInFile(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 5

    .line 1383
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1387
    const/4 p0, 0x0

    :try_start_6
    new-instance v1, Ljava/io/FileWriter;

    invoke-direct {v1, v0, p2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_b} :catch_20
    .catchall {:try_start_6 .. :try_end_b} :catchall_1e

    .line 1388
    :try_start_b
    invoke-virtual {v1, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_e} :catch_1a
    .catchall {:try_start_b .. :try_end_e} :catchall_18

    .line 1394
    :try_start_e
    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_11} :catch_12

    goto :goto_16

    :catch_12
    move-exception p0

    .line 1396
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_16
    const/4 p0, 0x1

    goto :goto_33

    :catchall_18
    move-exception p0

    goto :goto_37

    :catch_1a
    move-exception p0

    move-object p1, p0

    move-object p0, v1

    goto :goto_21

    :catchall_1e
    move-exception p1

    goto :goto_39

    :catch_20
    move-exception p1

    .line 1391
    :goto_21
    :try_start_21
    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_2a
    .catchall {:try_start_21 .. :try_end_2a} :catchall_34

    .line 1394
    :try_start_2a
    invoke-virtual {p0}, Ljava/io/Writer;->close()V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2d} :catch_2e

    goto :goto_32

    :catch_2e
    move-exception p0

    .line 1396
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_32
    const/4 p0, 0x0

    :goto_33
    return p0

    :catchall_34
    move-exception p1

    move-object v1, p0

    move-object p0, p1

    :goto_37
    move-object p1, p0

    move-object p0, v1

    .line 1394
    :goto_39
    :try_start_39
    invoke-virtual {p0}, Ljava/io/Writer;->close()V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_3c} :catch_3d

    goto :goto_41

    :catch_3d
    move-exception p0

    .line 1396
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 1398
    :goto_41
    throw p1
.end method


# virtual methods
.method public decrypt(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1288
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->DESKEY:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    if-nez p2, :cond_4

    const/4 p1, 0x0

    return-object p1

    .line 1333
    :cond_4
    :try_start_4
    new-instance v0, Ljavax/crypto/spec/DESKeySpec;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljavax/crypto/spec/DESKeySpec;-><init>([B)V

    .line 1334
    const-string p1, "DES"

    invoke-static {p1}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object p1

    .line 1336
    invoke-virtual {p1, v0}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object p1

    .line 1337
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->ALGORITHM_DES:Ljava/lang/String;

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 1338
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    const-string v2, "12345678"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 1340
    const/4 v2, 0x2

    invoke-virtual {v0, v2, p1, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 1341
    new-instance p1, Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->hex2byte([B)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_3d} :catch_3e

    return-object p1

    :catch_3e
    move-exception p1

    .line 1343
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-object p2
.end method

.method public encrypt(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1276
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->DESKEY:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    if-nez p2, :cond_4

    const/4 p1, 0x0

    return-object p1

    .line 1305
    :cond_4
    :try_start_4
    new-instance v0, Ljavax/crypto/spec/DESKeySpec;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljavax/crypto/spec/DESKeySpec;-><init>([B)V

    .line 1306
    const-string p1, "DES"

    invoke-static {p1}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object p1

    .line 1308
    invoke-virtual {p1, v0}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object p1

    .line 1309
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->ALGORITHM_DES:Ljava/lang/String;

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 1310
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    const-string v2, "12345678"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 1312
    const/4 v2, 0x1

    invoke-virtual {v0, v2, p1, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 1313
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    .line 1314
    invoke-static {p1}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->byte2hex([B)Ljava/lang/String;

    move-result-object p1
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_38} :catch_39

    return-object p1

    :catch_39
    move-exception p1

    .line 1316
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-object p2
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 2

    .line 142
    invoke-super {p0, p1}, Lcom/s1243808733/aide/preference/BasePreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 144
    invoke-direct {p0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->init()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    .line 150
    invoke-super {p0, p1, p2, p3}, Lcom/s1243808733/aide/preference/BasePreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x64

    if-ne p1, v0, :cond_5f

    const/4 p1, -0x1

    if-ne p2, p1, :cond_5f

    .line 153
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-static {p1}, Lcom/blankj/utilcode/util/UriUtils;->uri2File(Landroid/net/Uri;)Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_1e

    .line 155
    const-string p1, "file == null"

    invoke-static {p1}, Lcom/s1243808733/util/Toasty;->error(Ljava/lang/CharSequence;)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_5f

    .line 157
    :cond_1e
    invoke-static {}, Lcom/s1243808733/util/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object p2

    .line 158
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    .line 159
    const-string p3, "advanced_setting_editor_bg"

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    .line 160
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 161
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result p3

    if-eqz p3, :cond_41

    const-string p3, "设置成功："

    goto :goto_43

    :cond_41
    const-string p3, "Set success:"

    :goto_43
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/s1243808733/util/Toasty;->success(Ljava/lang/CharSequence;)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 162
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->getMainActivity()Lcom/s1243808733/aide/AideMainActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/s1243808733/aide/AideMainActivity;->setEditorBackground()V

    :cond_5f
    :goto_5f
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 129
    invoke-super {p0, p1}, Lcom/s1243808733/aide/preference/BasePreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 130
    const p1, 0x7f10000a

    invoke-virtual {p0, p1}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->addPreferencesFromResource(I)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 3

    .line 136
    invoke-super {p0, p1, p2}, Lcom/s1243808733/aide/preference/BasePreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method
