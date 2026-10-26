.class public Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;
.super Lcom/s1243808733/aide/preference/BasePreferenceFragment;
.source "AdvancedSettingsFragment.java"


# instance fields
.field public ALGORITHM_DES:Ljava/lang/String;

.field public DESKEY:Ljava/lang/String;

.field public currentPreferenceScreen:Landroid/preference/PreferenceScreen;


# direct methods
.method public constructor <init>()V
    .locals 3

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

    const-string v1, "project_home"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 101
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 102
    :cond_0
    invoke-static {}, Lcom/s1243808733/util/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 103
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 104
    const-string v1, "project_home"

    invoke-static {}, Lcom/s1243808733/aide/util/ProjectUtils;->getDefaultAppProjects()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 105
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_1
    return-void
.end method

.method private static byte2hex([B)Ljava/lang/String;
    .locals 5

    .line 1355
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    .line 1357
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 1358
    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 1359
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 1360
    const/16 v3, 0x30

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1361
    :cond_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1363
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static hex2byte([B)[B
    .locals 5

    .line 1367
    array-length v0, p0

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 1370
    array-length v0, p0

    div-int/lit8 v0, v0, 0x2

    new-array v1, v0, [B

    const/4 v0, 0x0

    .line 1371
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 1372
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x2

    invoke-direct {v2, p0, v0, v3}, Ljava/lang/String;-><init>([BII)V

    .line 1373
    div-int/lit8 v3, v0, 0x2

    const/16 v4, 0x10

    invoke-static {v2, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v1, v3

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 1368
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1373
    :cond_1
    return-object v1
.end method

.method private init()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 168
    const-string v0, "preference_screen"

    invoke-virtual {p0, v0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    .line 169
    const-string v1, "preference_screen"

    invoke-direct {p0, v1}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->initPreferenceScreenClickListener(Ljava/lang/String;)V

    .line 172
    const-string v1, "apptheme"

    invoke-virtual {p0, v1}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/s1243808733/aide/preference/PreferenceTheme;

    .line 173
    invoke-virtual {p0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->getCurrentList()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/s1243808733/aide/preference/PreferenceTheme;->bind(Landroid/widget/ListView;)V

    .line 243
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1f

    if-ge v1, v2, :cond_0

    .line 244
    const-string v1, "test_dialog_blur"

    invoke-virtual {p0, v1}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 247
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-ge v1, v2, :cond_2

    .line 248
    const-string v1, "managePermissionCategory"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 332
    :goto_0
    const-string v0, "action_bar_container_use_elevation"

    new-instance v1, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$4;

    invoke-direct {v1, p0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$4;-><init>(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;)V

    invoke-direct {p0, v0, v1}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->setOnPreferenceChangeListener(Ljava/lang/String;Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 344
    const-string v0, "aidepro_custom_cmd"

    new-instance v1, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$5;

    invoke-direct {v1, p0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$5;-><init>(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;)V

    invoke-direct {p0, v0, v1}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->setOnPreferenceClickListener(Ljava/lang/String;Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 356
    const-string v0, "api_web_translation"

    new-instance v1, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$6;

    invoke-direct {v1, p0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$6;-><init>(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;)V

    invoke-direct {p0, v0, v1}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->setOnPreferenceChangeListener(Ljava/lang/String;Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 367
    new-instance v0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$7;

    invoke-direct {v0, p0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$7;-><init>(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;)V

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "test_dialog_blur"

    aput-object v2, v1, v4

    const-string v2, "tab_text_lowercase"

    aput-object v2, v1, v5

    const-string v2, "tab_display_file_icon"

    aput-object v2, v1, v6

    const-string v2, "advanced_setting_editor_font"

    aput-object v2, v1, v7

    const-string v2, "advanced_setting_enable_drawer"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "action_tab_mode"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "aide_pro_drag_back"

    aput-object v3, v1, v2

    invoke-direct {p0, v1, v0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->setOnPreferenceClickListener([Ljava/lang/String;Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 390
    new-instance v0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$8;

    invoke-direct {v0, p0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$8;-><init>(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;)V

    new-array v1, v8, [Ljava/lang/String;

    const-string v2, "test_setting_enable_aapt2"

    aput-object v2, v1, v4

    const-string v2, "apk_d8builder"

    aput-object v2, v1, v5

    const-string v2, "apk_d8builder_min_version_num"

    aput-object v2, v1, v6

    const-string v2, "test_setting_enable_build_aab_apks"

    aput-object v2, v1, v7

    invoke-direct {p0, v1, v0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->setOnPreferenceChangeListener([Ljava/lang/String;Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 406
    const-string v0, "aidepro_gradle_configure"

    new-instance v1, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$9;

    invoke-direct {v1, p0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$9;-><init>(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;)V

    invoke-direct {p0, v0, v1}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->setOnPreferenceClickListener(Ljava/lang/String;Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 463
    const-string v0, "gradle_comple"

    new-instance v1, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$10;

    invoke-direct {v1, p0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$10;-><init>(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;)V

    invoke-direct {p0, v0, v1}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->setOnPreferenceClickListener(Ljava/lang/String;Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 526
    const-string v0, "immersion_statusbar"

    new-instance v1, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$11;

    invoke-direct {v1, p0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$11;-><init>(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;)V

    invoke-direct {p0, v0, v1}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->setOnPreferenceChangeListener(Ljava/lang/String;Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 541
    const-string v0, "enableMainMasterButton"

    new-instance v1, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$12;

    invoke-direct {v1, p0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$12;-><init>(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;)V

    invoke-direct {p0, v0, v1}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->setOnPreferenceChangeListener(Ljava/lang/String;Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 552
    const-string v0, "enableDrawerToggle"

    new-instance v1, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$13;

    invoke-direct {v1, p0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$13;-><init>(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;)V

    invoke-direct {p0, v0, v1}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->setOnPreferenceChangeListener(Ljava/lang/String;Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 566
    const-string v0, "advanced_setting_editor_bg"

    invoke-virtual {p0, v0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    new-instance v1, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$14;

    invoke-direct {v1, p0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$14;-><init>(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;)V

    .line 567
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 581
    const-string v0, "choose_bg_image"

    new-instance v1, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$15;

    invoke-direct {v1, p0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$15;-><init>(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;)V

    invoke-direct {p0, v0, v1}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->setOnPreferenceClickListener(Ljava/lang/String;Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 599
    const-string v0, "translate_file"

    new-instance v1, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$16;

    invoke-direct {v1, p0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$16;-><init>(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;)V

    invoke-direct {p0, v0, v1}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->setOnPreferenceChangeListener(Ljava/lang/String;Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 610
    const-string v0, "preference_stringfog"

    new-instance v1, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$17;

    invoke-direct {v1, p0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$17;-><init>(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;)V

    invoke-direct {p0, v0, v1}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->setOnPreferenceClickListener(Ljava/lang/String;Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 632
    const-string v0, "add_proguard_config"

    new-instance v1, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$18;

    invoke-direct {v1, p0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$18;-><init>(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;)V

    invoke-direct {p0, v0, v1}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->setOnPreferenceClickListener(Ljava/lang/String;Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 670
    const-string v0, "apk_signs"

    new-instance v1, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19;

    invoke-direct {v1, p0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$19;-><init>(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;)V

    invoke-direct {p0, v0, v1}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->setOnPreferenceClickListener(Ljava/lang/String;Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 729
    const-string v0, "apk_d8builder"

    new-instance v1, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$20;

    invoke-direct {v1, p0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$20;-><init>(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;)V

    invoke-direct {p0, v0, v1}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->setOnPreferenceChangeListener(Ljava/lang/String;Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 754
    const-string v0, "ytfyssxt"

    new-instance v1, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$21;

    invoke-direct {v1, p0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$21;-><init>(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;)V

    invoke-direct {p0, v0, v1}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->setOnPreferenceClickListener(Ljava/lang/String;Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 802
    const-string v0, "aidepro_backup"

    new-instance v1, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$22;

    invoke-direct {v1, p0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$22;-><init>(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;)V

    invoke-direct {p0, v0, v1}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->setOnPreferenceClickListener(Ljava/lang/String;Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 880
    const-string v0, "aidepro_restore"

    new-instance v1, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$23;

    invoke-direct {v1, p0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$23;-><init>(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;)V

    invoke-direct {p0, v0, v1}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->setOnPreferenceClickListener(Ljava/lang/String;Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 1036
    const-string v0, "advanced_setting_enable_resguard"

    new-instance v1, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$24;

    invoke-direct {v1, p0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$24;-><init>(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;)V

    invoke-direct {p0, v0, v1}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->setOnPreferenceClickListener(Ljava/lang/String;Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 1047
    const-string v0, "preference_highlight"

    new-instance v1, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$25;

    invoke-direct {v1, p0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$25;-><init>(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;)V

    invoke-direct {p0, v0, v1}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->setOnPreferenceClickListener(Ljava/lang/String;Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 1064
    const-string v0, "clear_translate"

    new-instance v1, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$26;

    invoke-direct {v1, p0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$26;-><init>(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;)V

    invoke-direct {p0, v0, v1}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->setOnPreferenceClickListener(Ljava/lang/String;Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 1096
    const-string v0, "preference_quick_key"

    new-instance v1, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$27;

    invoke-direct {v1, p0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$27;-><init>(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;)V

    invoke-direct {p0, v0, v1}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->setOnPreferenceClickListener(Ljava/lang/String;Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 1110
    const-string v0, "beta_test_crash"

    new-instance v1, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$28;

    invoke-direct {v1, p0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$28;-><init>(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;)V

    invoke-direct {p0, v0, v1}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->setOnPreferenceClickListener(Ljava/lang/String;Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 1120
    const-string v0, "init_custom_template"

    new-instance v1, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$29;

    invoke-direct {v1, p0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$29;-><init>(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;)V

    invoke-direct {p0, v0, v1}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->setOnPreferenceClickListener(Ljava/lang/String;Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 1146
    const-string v0, "app_version"

    invoke-virtual {p0, v0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "app_version"

    invoke-virtual {p0, v0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-static {}, Lcom/blankj/utilcode/util/AppUtils;->getAppVersionName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1147
    :cond_1
    const-string v0, "github"

    new-instance v1, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$30;

    invoke-direct {v1, p0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$30;-><init>(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;)V

    invoke-direct {p0, v0, v1}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->setOnPreferenceClickListener(Ljava/lang/String;Landroid/preference/Preference$OnPreferenceClickListener;)V

    invoke-static {p0}, Lnet/f401/aide/EntryPoints;->com_s1243808733_aide_application_activity_AdvancedSettingsFragment_init(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;)V

    return-void

    .line 251
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_3

    .line 252
    const-string v0, "requestManageAllFile"

    new-instance v1, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$1;

    invoke-direct {v1, p0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$1;-><init>(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;)V

    invoke-direct {p0, v0, v1}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->setOnPreferenceClickListener(Ljava/lang/String;Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 280
    :goto_1
    const-string v0, "requestIgnoreBatteryOptimizations"

    new-instance v1, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$2;

    invoke-direct {v1, p0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$2;-><init>(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;)V

    invoke-direct {p0, v0, v1}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->setOnPreferenceClickListener(Ljava/lang/String;Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 314
    const-string v0, "requestAlertWindow"

    new-instance v1, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$3;

    invoke-direct {v1, p0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$3;-><init>(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;)V

    invoke-direct {p0, v0, v1}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->setOnPreferenceClickListener(Ljava/lang/String;Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto/16 :goto_0

    .line 277
    :cond_3
    const-string v0, "requestManageAllFile"

    invoke-virtual {p0, v0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_1
.end method

.method private initPreferenceScreenClickListener(Landroid/preference/PreferenceGroup;Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/preference/PreferenceGroup;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 1414
    :goto_0
    invoke-virtual {p1}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 1415
    invoke-virtual {p1, v1}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    .line 1417
    instance-of v2, v0, Landroid/preference/PreferenceGroup;

    if-eqz v2, :cond_0

    .line 1418
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1421
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "location"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1423
    instance-of v4, v0, Landroid/preference/PreferenceScreen;

    if-eqz v4, :cond_2

    .line 1424
    check-cast v0, Landroid/preference/PreferenceScreen;

    .line 1425
    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->setKey(Ljava/lang/String;)V

    .line 1426
    invoke-direct {p0, v0, p2}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->initPreferenceScreenClickListener(Landroid/preference/PreferenceGroup;Ljava/util/ArrayList;)V

    .line 1427
    new-instance v2, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$33;

    invoke-direct {v2, p0, v0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$33;-><init>(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;Landroid/preference/PreferenceScreen;)V

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 1550
    :cond_1
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1427
    :cond_2
    if-eqz v2, :cond_3

    .line 1529
    check-cast v0, Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v0, p2}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->initPreferenceScreenClickListener(Landroid/preference/PreferenceGroup;Ljava/util/ArrayList;)V

    goto :goto_1

    .line 1530
    :cond_3
    instance-of v2, v0, Landroid/preference/Preference;

    if-eqz v2, :cond_1

    .line 1538
    new-instance v2, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$34;

    invoke-direct {v2, p0, v0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$34;-><init>(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;Landroid/preference/Preference;)V

    .line 1550
    invoke-virtual {v2}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$34;->run()V

    goto :goto_1

    :cond_4
    return-void
.end method

.method private initPreferenceScreenClickListener(Ljava/lang/String;)V
    .locals 2

    .line 1405
    invoke-virtual {p0, p1}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    if-nez v0, :cond_0

    .line 1409
    :goto_0
    return-void

    .line 1407
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1409
    invoke-direct {p0, v0, v1}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->initPreferenceScreenClickListener(Landroid/preference/PreferenceGroup;Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public static readFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/4 v2, 0x0

    .line 1235
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1240
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 1242
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1243
    :try_start_1
    new-instance v1, Ljava/io/InputStreamReader;

    const-string v0, "UTF-8"

    invoke-direct {v1, v3, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1244
    :try_start_2
    new-instance v6, Ljava/io/BufferedReader;

    invoke-direct {v6, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 1245
    :goto_0
    :try_start_3
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1246
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    goto :goto_0

    .line 1256
    :catch_0
    move-exception v0

    .line 1249
    :goto_1
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 1254
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 1255
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V

    .line 1256
    :goto_2
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 1261
    :goto_3
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1254
    :cond_0
    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 1255
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_2

    .line 1256
    :catch_1
    move-exception v0

    .line 1258
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 1256
    :catch_2
    move-exception v0

    move-object v4, v0

    move-object v5, v1

    .line 1251
    :goto_4
    :try_start_7
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 1254
    :try_start_8
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 1255
    invoke-virtual {v5}, Ljava/io/InputStreamReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_2

    .line 1256
    :catch_3
    move-exception v0

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    goto :goto_4

    :catch_4
    move-exception v0

    move-object v6, v2

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_5
    move-object v6, v2

    move-object v4, v0

    .line 1254
    :goto_6
    :try_start_9
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 1255
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V

    .line 1256
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    .line 1260
    :goto_7
    throw v4

    .line 1256
    :catch_5
    move-exception v1

    move-object v0, v3

    :goto_8
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    move-object v6, v2

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v6, v2

    move-object v4, v0

    move-object v1, v2

    move-object v3, v2

    goto :goto_6

    :catch_6
    move-exception v1

    move-object v0, v2

    goto :goto_8

    :catch_7
    move-exception v0

    move-object v3, v2

    :goto_9
    move-object v1, v2

    move-object v6, v2

    goto :goto_1

    .line 1261
    :catchall_2
    move-exception v0

    move-object v1, v5

    :goto_a
    move-object v4, v0

    goto :goto_6

    .line 1256
    :catch_8
    move-exception v0

    .line 1258
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 1261
    :catchall_3
    move-exception v0

    goto :goto_a

    .line 1256
    :catch_9
    move-exception v0

    goto :goto_9

    :catchall_4
    move-exception v0

    goto :goto_5

    .line 1261
    :catchall_5
    move-exception v0

    goto :goto_a
.end method

.method private setOnPreferenceChangeListener(Ljava/lang/String;Landroid/preference/Preference$OnPreferenceChangeListener;)V
    .locals 1

    .line 1585
    invoke-virtual {p0, p1}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1587
    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_0
    return-void
.end method

.method private setOnPreferenceChangeListener([Ljava/lang/String;Landroid/preference/Preference$OnPreferenceChangeListener;)V
    .locals 3

    .line 1578
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    .line 1579
    invoke-direct {p0, v2, p2}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->setOnPreferenceChangeListener(Ljava/lang/String;Landroid/preference/Preference$OnPreferenceChangeListener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setOnPreferenceClickListener(Ljava/lang/String;Landroid/preference/Preference$OnPreferenceClickListener;)V
    .locals 1

    .line 1561
    invoke-virtual {p0, p1}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1563
    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    :cond_0
    return-void
.end method

.method private setOnPreferenceClickListener([Ljava/lang/String;Landroid/preference/Preference$OnPreferenceClickListener;)V
    .locals 3

    .line 1571
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    .line 1572
    invoke-direct {p0, v2, p2}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->setOnPreferenceClickListener(Ljava/lang/String;Landroid/preference/Preference$OnPreferenceClickListener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static showInstallDialog(Landroid/app/Activity;)V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, -0x1

    const/high16 v3, 0x41c00000    # 24.0f

    const/4 v5, 0x0

    .line 1159
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1160
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1162
    invoke-static {v3}, Lcom/blankj/utilcode/util/SizeUtils;->dp2px(F)I

    move-result v0

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v2}, Lcom/blankj/utilcode/util/SizeUtils;->dp2px(F)I

    move-result v2

    invoke-static {v3}, Lcom/blankj/utilcode/util/SizeUtils;->dp2px(F)I

    move-result v3

    const/high16 v4, 0x41800000    # 16.0f

    invoke-static {v4}, Lcom/blankj/utilcode/util/SizeUtils;->dp2px(F)I

    move-result v4

    .line 1161
    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1163
    new-instance v2, Landroid/widget/EditText;

    invoke-direct {v2, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 1164
    const/4 v0, -0x2

    invoke-virtual {v1, v2, v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 1166
    invoke-virtual {v2, v7}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 1167
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1169
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u5b89\u88c5Gradle"

    :goto_0
    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1170
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1171
    const v1, 0x1040013

    invoke-virtual {v0, v1, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1172
    const/high16 v1, 0x1040000

    invoke-virtual {v0, v1, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1173
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1174
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 1175
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1177
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    new-instance v3, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$31;

    invoke-direct {v3, v2, p0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$31;-><init>(Landroid/widget/EditText;Landroid/app/Activity;)V

    .line 1178
    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1199
    new-instance v1, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$32;

    invoke-direct {v1, v0, v2}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$32;-><init>(Landroid/app/AlertDialog;Landroid/widget/EditText;)V

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1215
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 1169
    :cond_0
    const-string v0, "Install Gradle"

    goto :goto_0
.end method

.method private showUpdateLogDialog(Landroid/app/Activity;Ljava/lang/CharSequence;)V
    .locals 3

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

    move-result-object v1

    .line 1224
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1225
    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1226
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1227
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1228
    invoke-static {v0}, Lcom/s1243808733/util/Utils;->setMessageIsSelectable(Landroid/app/AlertDialog;)V

    return-void
.end method

.method public static writeInFile(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 3

    const/4 v2, 0x0

    .line 1383
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1387
    :try_start_0
    new-instance v1, Ljava/io/FileWriter;

    invoke-direct {v1, v0, p2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1388
    :try_start_1
    invoke-virtual {v1, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1394
    :try_start_2
    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1396
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 1394
    :catch_0
    move-exception v0

    .line 1396
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v2

    .line 1394
    :goto_2
    :try_start_3
    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1398
    :goto_3
    throw v0

    .line 1396
    :catch_1
    move-exception v0

    move-object v1, v2

    .line 1391
    :goto_4
    :try_start_4
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1394
    :try_start_5
    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 1396
    :goto_5
    const/4 v0, 0x0

    goto :goto_1

    .line 1394
    :catch_2
    move-exception v0

    .line 1396
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 1394
    :catch_3
    move-exception v1

    .line 1396
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catch_4
    move-exception v0

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_2

    :catchall_2
    move-exception v0

    goto :goto_2
.end method


# virtual methods
.method public decrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1288
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->DESKEY:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    if-nez p2, :cond_0

    const/4 p2, 0x0

    .line 1343
    :goto_0
    return-object p2

    .line 1333
    :cond_0
    :try_start_0
    new-instance v0, Ljavax/crypto/spec/DESKeySpec;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/crypto/spec/DESKeySpec;-><init>([B)V

    .line 1334
    const-string v1, "DES"

    invoke-static {v1}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v1

    .line 1336
    invoke-virtual {v1, v0}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v0

    .line 1337
    iget-object v1, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->ALGORITHM_DES:Ljava/lang/String;

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 1338
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    const-string v3, "12345678"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 1340
    const/4 v3, 0x2

    invoke-virtual {v1, v3, v0, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 1341
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->hex2byte([B)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p2, v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1343
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public encrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1276
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->DESKEY:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    if-nez p2, :cond_0

    const/4 p2, 0x0

    .line 1316
    :goto_0
    return-object p2

    .line 1305
    :cond_0
    :try_start_0
    new-instance v0, Ljavax/crypto/spec/DESKeySpec;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/crypto/spec/DESKeySpec;-><init>([B)V

    .line 1306
    const-string v1, "DES"

    invoke-static {v1}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v1

    .line 1308
    invoke-virtual {v1, v0}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v0

    .line 1309
    iget-object v1, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->ALGORITHM_DES:Ljava/lang/String;

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 1310
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    const-string v3, "12345678"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 1312
    const/4 v3, 0x1

    invoke-virtual {v1, v3, v0, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 1313
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    .line 1314
    invoke-static {v0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->byte2hex([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1316
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 142
    invoke-super {p0, p1}, Lcom/s1243808733/aide/preference/BasePreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 144
    invoke-direct {p0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->init()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    .line 150
    invoke-super {p0, p1, p2, p3}, Lcom/s1243808733/aide/preference/BasePreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 153
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/UriUtils;->uri2File(Landroid/net/Uri;)Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_1

    .line 155
    const-string v0, "file == null"

    invoke-static {v0}, Lcom/s1243808733/util/Toasty;->error(Ljava/lang/CharSequence;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 162
    :cond_0
    :goto_0
    return-void

    .line 157
    :cond_1
    invoke-static {}, Lcom/s1243808733/util/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 158
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 159
    const-string v2, "advanced_setting_editor_bg"

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 160
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 161
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "\u8bbe\u7f6e\u6210\u529f\uff1a"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/util/Toasty;->success(Ljava/lang/CharSequence;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 162
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->getMainActivity()Lcom/s1243808733/aide/AideMainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/aide/AideMainActivity;->setEditorBackground()V

    goto :goto_0

    .line 161
    :cond_2
    const-string v0, "Set success:"

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 129
    invoke-super {p0, p1}, Lcom/s1243808733/aide/preference/BasePreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 130
    const v0, 0x7f10000a

    invoke-virtual {p0, v0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->addPreferencesFromResource(I)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 136
    invoke-super {p0, p1, p2}, Lcom/s1243808733/aide/preference/BasePreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method

.method public setOnPreferenceClickListener(Ljava/lang/String;Lnet/f401/aide/PreferenceOnClickListener;)V
    .locals 1

    .line 1561
    invoke-virtual {p0, p1}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1563
    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    :cond_0
    return-void
.end method
