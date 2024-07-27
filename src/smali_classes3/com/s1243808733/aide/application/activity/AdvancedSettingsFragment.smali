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

    .line 100
    invoke-direct {p0}, Lcom/s1243808733/aide/preference/BasePreferenceFragment;-><init>()V

    const-string v0, "DES/CBC/PKCS5Padding"

    iput-object v0, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->ALGORITHM_DES:Ljava/lang/String;

    const-string v0, "QpOiUnYbVp3bB73Fsn7O12CX"

    iput-object v0, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->DESKEY:Ljava/lang/String;

    .line 101
    invoke-static {}, Lcom/s1243808733/util/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "project_home"

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 102
    if-eqz v0, :cond_0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 103
    :cond_0
    invoke-static {}, Lcom/s1243808733/util/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "project_home"

    invoke-static {}, Lcom/s1243808733/aide/util/ProjectUtils;->getDefaultAppProjects()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_1
    return-void
.end method

.method private static byte2hex([B)Ljava/lang/String;
    .registers 6

    .line 1502
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1503
    const/4 v0, 0x0

    .line 1504
    :goto_0
    if-eqz p0, :cond_0

    array-length v2, p0

    if-lt v0, v2, :cond_1

    .line 1510
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1505
    :cond_1
    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 1506
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 1507
    const/16 v3, 0x30

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1508
    :cond_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1504
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static hex2byte([B)[B
    .registers 6

    .line 1514
    array-length v0, p0

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 1515
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1517
    :cond_0
    array-length v0, p0

    div-int/lit8 v0, v0, 0x2

    new-array v1, v0, [B

    .line 1518
    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-lt v0, v2, :cond_1

    .line 1522
    return-object v1

    .line 1519
    :cond_1
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x2

    invoke-direct {v2, p0, v0, v3}, Ljava/lang/String;-><init>([BII)V

    .line 1520
    div-int/lit8 v3, v0, 0x2

    const/16 v4, 0x10

    invoke-static {v2, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v1, v3

    .line 1518
    add-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method private init()V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 169
    const-string v0, "preference_screen"

    invoke-virtual {p0, v0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    .line 170
    const-string v1, "preference_screen"

    invoke-direct {p0, v1}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->initPreferenceScreenClickListener(Ljava/lang/String;)V

    .line 173
    const-string v1, "apptheme"

    invoke-virtual {p0, v1}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/s1243808733/aide/preference/PreferenceTheme;

    .line 174
    invoke-virtual {p0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->getCurrentList()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/s1243808733/aide/preference/PreferenceTheme;->bind(Landroid/widget/ListView;)V

    .line 244
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1f

    if-ge v1, v2, :cond_0

    .line 245
    const-string v1, "test_dialog_blur"

    invoke-virtual {p0, v1}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 248
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-ge v1, v2, :cond_1

    .line 249
    const-string v1, "managePermissionCategory"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 333
    :goto_0
    const-string v0, "action_bar_container_use_elevation"

    new-instance v1, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000003;

    invoke-direct {v1, p0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000003;-><init>(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;)V

    invoke-direct {p0, v0, v1}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->setOnPreferenceChangeListener(Ljava/lang/String;Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 345
    const-string v0, "aidepro_custom_cmd"

    new-instance v1, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000004;

    invoke-direct {v1, p0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000004;-><init>(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;)V

    invoke-direct {p0, v0, v1}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->setOnPreferenceClickListener(Ljava/lang/String;Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 357
    const-string v0, "api_web_translation"

    new-instance v1, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000005;

    invoke-direct {v1, p0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000005;-><init>(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;)V

    invoke-direct {p0, v0, v1}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->setOnPreferenceChangeListener(Ljava/lang/String;Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 368
    new-instance v0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000006;

    invoke-direct {v0, p0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000006;-><init>(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;)V

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "test_dialog_blur"

    aput-object v2, v1, v4

    const-string v2, "tab_text_lowercase"

    aput-object v2, v1, v6

    const-string v2, "tab_display_file_icon"

    aput-object v2, v1, v5

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

    .line 391
    new-instance v0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000007;

    invoke-direct {v0, p0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000007;-><init>(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;)V

    new-array v1, v8, [Ljava/lang/String;

    const-string v2, "test_setting_enable_aapt2"

    aput-object v2, v1, v4

    const-string v2, "apk_d8builder"

    aput-object v2, v1, v6

    const-string v2, "apk_d8builder_min_version_num"

    aput-object v2, v1, v5

    const-string v2, "test_setting_enable_build_aab_apks"

    aput-object v2, v1, v7

    invoke-direct {p0, v1, v0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->setOnPreferenceChangeListener([Ljava/lang/String;Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 402
    const-string v0, "aidepro_update_log"

    invoke-virtual {p0, v0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 403
    const-string v1, "%s (%d)"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {}, Lcom/blankj/utilcode/util/AppUtils;->getAppVersionName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    new-instance v3, Ljava/lang/Long;

    invoke-static {}, Lcom/s1243808733/util/Utils;->getVersionCode()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/lang/Long;-><init>(J)V

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 404
    const-string v0, "aidepro_update_log"

    new-instance v1, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000008;

    invoke-direct {v1, p0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000008;-><init>(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;)V

    invoke-direct {p0, v0, v1}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->setOnPreferenceClickListener(Ljava/lang/String;Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 417
    const-string v0, "aidepro_gradle_ndk"

    new-instance v1, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000010;

    invoke-direct {v1, p0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000010;-><init>(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;)V

    invoke-direct {p0, v0, v1}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->setOnPreferenceClickListener(Ljava/lang/String;Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 462
    const-string v0, "aidepro_gradle_configure"

    new-instance v1, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000012;

    invoke-direct {v1, p0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000012;-><init>(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;)V

    invoke-direct {p0, v0, v1}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->setOnPreferenceClickListener(Ljava/lang/String;Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 522
    const-string v0, "gradle_comple"

    new-instance v1, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000014;

    invoke-direct {v1, p0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000014;-><init>(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;)V

    invoke-direct {p0, v0, v1}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->setOnPreferenceClickListener(Ljava/lang/String;Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 585
    const-string v0, "immersion_statusbar"

    new-instance v1, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000015;

    invoke-direct {v1, p0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000015;-><init>(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;)V

    invoke-direct {p0, v0, v1}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->setOnPreferenceChangeListener(Ljava/lang/String;Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 600
    const-string v0, "enableMainMasterButton"

    new-instance v1, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000016;

    invoke-direct {v1, p0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000016;-><init>(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;)V

    invoke-direct {p0, v0, v1}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->setOnPreferenceChangeListener(Ljava/lang/String;Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 611
    const-string v0, "enableDrawerToggle"

    new-instance v1, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000017;

    invoke-direct {v1, p0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000017;-><init>(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;)V

    invoke-direct {p0, v0, v1}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->setOnPreferenceChangeListener(Ljava/lang/String;Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 625
    const-string v0, "advanced_setting_editor_bg"

    invoke-virtual {p0, v0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    new-instance v1, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000018;

    invoke-direct {v1, p0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000018;-><init>(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 640
    const-string v0, "choose_bg_image"

    new-instance v1, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000019;

    invoke-direct {v1, p0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000019;-><init>(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;)V

    invoke-direct {p0, v0, v1}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->setOnPreferenceClickListener(Ljava/lang/String;Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 658
    const-string v0, "translate_file"

    new-instance v1, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000020;

    invoke-direct {v1, p0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000020;-><init>(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;)V

    invoke-direct {p0, v0, v1}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->setOnPreferenceChangeListener(Ljava/lang/String;Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 669
    const-string v0, "preference_stringfog"

    new-instance v1, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000021;

    invoke-direct {v1, p0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000021;-><init>(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;)V

    invoke-direct {p0, v0, v1}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->setOnPreferenceClickListener(Ljava/lang/String;Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 691
    const-string v0, "add_proguard_config"

    new-instance v1, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000023;

    invoke-direct {v1, p0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000023;-><init>(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;)V

    invoke-direct {p0, v0, v1}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->setOnPreferenceClickListener(Ljava/lang/String;Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 729
    const-string v0, "apk_signs"

    new-instance v1, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000026;

    invoke-direct {v1, p0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000026;-><init>(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;)V

    invoke-direct {p0, v0, v1}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->setOnPreferenceClickListener(Ljava/lang/String;Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 788
    const-string v0, "apk_d8builder"

    new-instance v1, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000027;

    invoke-direct {v1, p0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000027;-><init>(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;)V

    invoke-direct {p0, v0, v1}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->setOnPreferenceChangeListener(Ljava/lang/String;Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 813
    const-string v0, "ytfyssxt"

    new-instance v1, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000029;

    invoke-direct {v1, p0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000029;-><init>(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;)V

    invoke-direct {p0, v0, v1}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->setOnPreferenceClickListener(Ljava/lang/String;Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 861
    const-string v0, "aidepro_backup"

    new-instance v1, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000033;

    invoke-direct {v1, p0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000033;-><init>(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;)V

    invoke-direct {p0, v0, v1}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->setOnPreferenceClickListener(Ljava/lang/String;Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 939
    const-string v0, "aidepro_restore"

    new-instance v1, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000036;

    invoke-direct {v1, p0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000036;-><init>(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;)V

    invoke-direct {p0, v0, v1}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->setOnPreferenceClickListener(Ljava/lang/String;Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 1095
    const-string v0, "advanced_setting_enable_resguard"

    new-instance v1, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000037;

    invoke-direct {v1, p0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000037;-><init>(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;)V

    invoke-direct {p0, v0, v1}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->setOnPreferenceClickListener(Ljava/lang/String;Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 1106
    const-string v0, "preference_highlight"

    new-instance v1, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000038;

    invoke-direct {v1, p0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000038;-><init>(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;)V

    invoke-direct {p0, v0, v1}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->setOnPreferenceClickListener(Ljava/lang/String;Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 1123
    const-string v0, "clear_translate"

    new-instance v1, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000040;

    invoke-direct {v1, p0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000040;-><init>(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;)V

    invoke-direct {p0, v0, v1}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->setOnPreferenceClickListener(Ljava/lang/String;Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 1155
    const-string v0, "preference_quick_key"

    new-instance v1, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000041;

    invoke-direct {v1, p0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000041;-><init>(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;)V

    invoke-direct {p0, v0, v1}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->setOnPreferenceClickListener(Ljava/lang/String;Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 1166
    const-string v0, "aidepro_check_update"

    new-instance v1, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000042;

    invoke-direct {v1, p0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000042;-><init>(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;)V

    invoke-direct {p0, v0, v1}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->setOnPreferenceClickListener(Ljava/lang/String;Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 1180
    const-string v0, "aidero_sponsor"

    new-instance v1, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000043;

    invoke-direct {v1, p0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000043;-><init>(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;)V

    invoke-direct {p0, v0, v1}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->setOnPreferenceClickListener(Ljava/lang/String;Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 1193
    const-string v0, "aidepro_contact_qq_group"

    new-instance v1, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000044;

    invoke-direct {v1, p0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000044;-><init>(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;)V

    invoke-direct {p0, v0, v1}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->setOnPreferenceClickListener(Ljava/lang/String;Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 1207
    const-string v0, "aidepro_contact_qq_guild"

    new-instance v1, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000045;

    invoke-direct {v1, p0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000045;-><init>(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;)V

    invoke-direct {p0, v0, v1}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->setOnPreferenceClickListener(Ljava/lang/String;Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 1220
    const-string v0, "aidero_set_sponsor"

    new-instance v1, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000046;

    invoke-direct {v1, p0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000046;-><init>(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;)V

    invoke-direct {p0, v0, v1}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->setOnPreferenceClickListener(Ljava/lang/String;Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 1231
    const-string v0, "aidero_get_sponsor"

    new-instance v1, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000047;

    invoke-direct {v1, p0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000047;-><init>(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;)V

    invoke-direct {p0, v0, v1}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->setOnPreferenceClickListener(Ljava/lang/String;Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 1242
    const-string v0, "aidero_get_mgry"

    new-instance v1, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000048;

    invoke-direct {v1, p0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000048;-><init>(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;)V

    invoke-direct {p0, v0, v1}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->setOnPreferenceClickListener(Ljava/lang/String;Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 1254
    const-string v0, "aidepro_telegram"

    new-instance v1, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000049;

    invoke-direct {v1, p0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000049;-><init>(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;)V

    invoke-direct {p0, v0, v1}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->setOnPreferenceClickListener(Ljava/lang/String;Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 1267
    const-string v0, "beta_test_crash"

    new-instance v1, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000050;

    invoke-direct {v1, p0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000050;-><init>(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;)V

    invoke-direct {p0, v0, v1}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->setOnPreferenceClickListener(Ljava/lang/String;Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 1277
    const-string v0, "init_custom_template"

    new-instance v1, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000052;

    invoke-direct {v1, p0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000052;-><init>(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;)V

    invoke-direct {p0, v0, v1}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->setOnPreferenceClickListener(Ljava/lang/String;Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string v0, "edit_env_var"

    new-instance v1, Lnet/f401/aide/PreferenceOnClickListener;

    invoke-direct {v1, p0}, Lnet/f401/aide/PreferenceOnClickListener;-><init>(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;)V

    invoke-direct {p0, v0, v1}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->setOnPreferenceClickListener(Ljava/lang/String;Landroid/preference/Preference$OnPreferenceClickListener;)V

    return-void

    .line 252
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_2

    .line 253
    const-string v0, "requestManageAllFile"

    new-instance v1, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000000;

    invoke-direct {v1, p0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000000;-><init>(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;)V

    invoke-direct {p0, v0, v1}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->setOnPreferenceClickListener(Ljava/lang/String;Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 281
    :goto_1
    const-string v0, "requestIgnoreBatteryOptimizations"

    new-instance v1, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000001;

    invoke-direct {v1, p0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000001;-><init>(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;)V

    invoke-direct {p0, v0, v1}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->setOnPreferenceClickListener(Ljava/lang/String;Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 315
    const-string v0, "requestAlertWindow"

    new-instance v1, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000002;

    invoke-direct {v1, p0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000002;-><init>(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;)V

    invoke-direct {p0, v0, v1}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->setOnPreferenceClickListener(Ljava/lang/String;Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto/16 :goto_0

    .line 278
    :cond_2
    const-string v0, "requestManageAllFile"

    invoke-virtual {p0, v0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_1
.end method

.method private initPreferenceScreenClickListener(Landroid/preference/PreferenceGroup;Ljava/util/ArrayList;)V
    .registers 7
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

    .line 1561
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    if-lt v1, v0, :cond_0

    return-void

    .line 1562
    :cond_0
    invoke-virtual {p1, v1}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    .line 1564
    instance-of v2, v0, Landroid/preference/PreferenceGroup;

    if-eqz v2, :cond_1

    .line 1565
    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1568
    :cond_1
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "location"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p2}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1570
    instance-of v3, v0, Landroid/preference/PreferenceScreen;

    if-eqz v3, :cond_3

    .line 1571
    check-cast v0, Landroid/preference/PreferenceScreen;

    .line 1572
    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setKey(Ljava/lang/String;)V

    .line 1573
    invoke-direct {p0, v0, p2}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->initPreferenceScreenClickListener(Landroid/preference/PreferenceGroup;Ljava/util/ArrayList;)V

    .line 1574
    new-instance v2, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000056;

    invoke-direct {v2, p0, v0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000056;-><init>(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;Landroid/preference/PreferenceScreen;)V

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 1561
    :cond_2
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1675
    :cond_3
    instance-of v2, v0, Landroid/preference/PreferenceGroup;

    if-eqz v2, :cond_4

    .line 1676
    check-cast v0, Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v0, p2}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->initPreferenceScreenClickListener(Landroid/preference/PreferenceGroup;Ljava/util/ArrayList;)V

    goto :goto_1

    .line 1677
    :cond_4
    instance-of v2, v0, Landroid/preference/Preference;

    if-eqz v2, :cond_2

    .line 1685
    new-instance v2, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000057;

    invoke-direct {v2, p0, v0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000057;-><init>(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;Landroid/preference/Preference;)V

    invoke-virtual {v2}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000057;->run()V

    goto :goto_1
.end method

.method private initPreferenceScreenClickListener(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1552
    invoke-virtual {p0, p1}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    .line 1553
    if-nez v0, :cond_0

    .line 1556
    :goto_0
    return-void

    .line 1554
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1556
    invoke-direct {p0, v0, v1}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->initPreferenceScreenClickListener(Landroid/preference/PreferenceGroup;Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public static readFile(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const/4 v1, 0x0

    .line 1382
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 1383
    check-cast v0, Ljava/io/InputStream;

    move-object v2, v1

    .line 1384
    check-cast v2, Ljava/io/InputStreamReader;

    .line 1386
    check-cast v1, Ljava/io/BufferedReader;

    .line 1387
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 1389
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1390
    :try_start_1
    new-instance v4, Ljava/io/InputStreamReader;

    const-string v0, "UTF-8"

    invoke-direct {v4, v5, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1391
    :try_start_2
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1392
    :goto_0
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-result-object v0

    if-nez v0, :cond_0

    move-object v1, v2

    .line 1401
    :goto_1
    :try_start_4
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 1402
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V

    .line 1403
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 1408
    :goto_2
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1393
    :cond_0
    :try_start_5
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_0

    .line 1392
    :catch_0
    move-exception v0

    move-object v3, v0

    move-object v1, v2

    .line 1396
    :goto_3
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .line 1398
    :catchall_0
    move-exception v0

    move-object v3, v0

    .line 1401
    :goto_4
    :try_start_7
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 1402
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V

    .line 1403
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 1405
    :goto_5
    throw v3

    .line 1396
    :catch_1
    move-exception v3

    move-object v4, v2

    move-object v5, v0

    .line 1398
    :goto_6
    :try_start_8
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_1

    .line 1403
    :catch_2
    move-exception v0

    .line 1405
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 1403
    :catch_3
    move-exception v0

    .line 1405
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 1398
    :catchall_1
    move-exception v3

    move-object v4, v2

    move-object v5, v0

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v3, v0

    move-object v4, v2

    goto :goto_4

    :catchall_3
    move-exception v0

    move-object v3, v0

    move-object v1, v2

    goto :goto_4

    .line 1396
    :catch_4
    move-exception v0

    move-object v3, v0

    move-object v4, v2

    goto :goto_6

    :catch_5
    move-exception v0

    move-object v3, v0

    goto :goto_6

    :catch_6
    move-exception v0

    move-object v3, v0

    move-object v1, v2

    goto :goto_6

    .line 1392
    :catch_7
    move-exception v3

    move-object v4, v2

    move-object v5, v0

    goto :goto_3

    :catch_8
    move-exception v0

    move-object v3, v0

    move-object v4, v2

    goto :goto_3

    :catch_9
    move-exception v0

    move-object v3, v0

    goto :goto_3
.end method

.method private setOnPreferenceChangeListener(Ljava/lang/String;Landroid/preference/Preference$OnPreferenceChangeListener;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/preference/Preference$OnPreferenceChangeListener;",
            ")V"
        }
    .end annotation

    .line 1732
    invoke-virtual {p0, p1}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 1733
    if-eqz v0, :cond_0

    .line 1734
    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_0
    return-void
.end method

.method private setOnPreferenceChangeListener([Ljava/lang/String;Landroid/preference/Preference$OnPreferenceChangeListener;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Landroid/preference/Preference$OnPreferenceChangeListener;",
            ")V"
        }
    .end annotation

    .line 1725
    const/4 v0, 0x0

    .line 1726
    :goto_0
    array-length v1, p1

    if-lt v0, v1, :cond_0

    return-void

    .line 1725
    :cond_0
    aget-object v1, p1, v0

    .line 1726
    invoke-direct {p0, v1, p2}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->setOnPreferenceChangeListener(Ljava/lang/String;Landroid/preference/Preference$OnPreferenceChangeListener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private setOnPreferenceClickListener(Ljava/lang/String;Landroid/preference/Preference$OnPreferenceClickListener;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/preference/Preference$OnPreferenceClickListener;",
            ")V"
        }
    .end annotation

    .line 1708
    invoke-virtual {p0, p1}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 1709
    if-eqz v0, :cond_0

    .line 1710
    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    :cond_0
    return-void
.end method

.method private setOnPreferenceClickListener([Ljava/lang/String;Landroid/preference/Preference$OnPreferenceClickListener;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Landroid/preference/Preference$OnPreferenceClickListener;",
            ")V"
        }
    .end annotation

    .line 1718
    const/4 v0, 0x0

    .line 1719
    :goto_0
    array-length v1, p1

    if-lt v0, v1, :cond_0

    return-void

    .line 1718
    :cond_0
    aget-object v1, p1, v0

    .line 1719
    invoke-direct {p0, v1, p2}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->setOnPreferenceClickListener(Ljava/lang/String;Landroid/preference/Preference$OnPreferenceClickListener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static showInstallDialog(Landroid/app/Activity;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x0

    const/16 v4, 0x18

    const/4 v7, 0x4

    const/4 v6, -0x1

    .line 1306
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1307
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1308
    int-to-float v0, v4

    invoke-static {v0}, Lcom/blankj/utilcode/util/SizeUtils;->dp2px(F)I

    move-result v0

    const/16 v3, 0xa

    int-to-float v3, v3

    invoke-static {v3}, Lcom/blankj/utilcode/util/SizeUtils;->dp2px(F)I

    move-result v3

    int-to-float v4, v4

    invoke-static {v4}, Lcom/blankj/utilcode/util/SizeUtils;->dp2px(F)I

    move-result v4

    const/16 v5, 0x10

    int-to-float v5, v5

    invoke-static {v5}, Lcom/blankj/utilcode/util/SizeUtils;->dp2px(F)I

    move-result v5

    invoke-virtual {v2, v0, v3, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1310
    new-instance v3, Landroid/widget/EditText;

    invoke-direct {v3, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 1311
    const/4 v0, -0x2

    invoke-virtual {v2, v3, v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 1313
    invoke-virtual {v3, v7}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 1314
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u5b89\u88c5Gradle"

    :goto_0
    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v4, 0x1040013

    move-object v0, v1

    check-cast v0, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v2, v4, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v2, 0x1040000

    check-cast v1, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1321
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 1322
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1323
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    new-instance v2, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000053;

    invoke-direct {v2, v3, p0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000053;-><init>(Landroid/widget/EditText;Landroid/app/Activity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1346
    new-instance v1, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000054;

    invoke-direct {v1, v0, v3}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000054;-><init>(Landroid/app/AlertDialog;Landroid/widget/EditText;)V

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1362
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 1314
    :cond_0
    const-string v0, "Install Gradle"

    goto :goto_0
.end method

.method private showUpdateLogDialog(Landroid/app/Activity;Ljava/lang/CharSequence;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/CharSequence;",
            ")V"
        }
    .end annotation

    .line 1367
    const-string v0, "updatelog.txt"

    invoke-static {v0}, Lcom/s1243808733/util/Utils;->getAssetsDataFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/ResourceUtils;->readAssets2String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1368
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    const/4 v0, 0x0

    check-cast v0, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1374
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1375
    invoke-static {v0}, Lcom/s1243808733/util/Utils;->setMessageIsSelectable(Landroid/app/AlertDialog;)V

    return-void
.end method

.method public static writeInFile(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 6

    .line 1530
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1531
    const/4 v0, 0x0

    check-cast v0, Ljava/io/Writer;

    .line 1532
    :try_start_0
    new-instance v2, Ljava/io/FileWriter;

    invoke-direct {v2, v1, p2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1535
    :try_start_1
    invoke-virtual {v2, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1536
    const/4 v0, 0x1

    .line 1541
    :goto_0
    :try_start_2
    invoke-virtual {v2}, Ljava/io/Writer;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1546
    :goto_1
    return v0

    .line 1536
    :catch_0
    move-exception v1

    move-object v2, v0

    .line 1538
    :goto_2
    :try_start_3
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v2, v0

    .line 1541
    :goto_3
    :try_start_4
    invoke-virtual {v2}, Ljava/io/Writer;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 1543
    :goto_4
    throw v1

    .line 1541
    :catch_1
    move-exception v0

    .line 1543
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 1541
    :catch_2
    move-exception v1

    .line 1543
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 1538
    :catchall_1
    move-exception v0

    move-object v1, v0

    goto :goto_3

    .line 1536
    :catch_3
    move-exception v0

    move-object v1, v0

    goto :goto_2
.end method


# virtual methods
.method public decrypt(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1435
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->DESKEY:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1436
    return-object v0
.end method

.method public decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 1477
    if-nez p2, :cond_0

    .line 1478
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    .line 1491
    :goto_0
    return-object v0

    .line 1480
    :cond_0
    :try_start_0
    new-instance v0, Ljavax/crypto/spec/DESKeySpec;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/crypto/spec/DESKeySpec;-><init>([B)V

    .line 1481
    const-string v1, "DES"

    invoke-static {v1}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v1

    .line 1483
    invoke-virtual {v1, v0}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v0

    .line 1484
    iget-object v1, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->ALGORITHM_DES:Ljava/lang/String;

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 1485
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    const-string v3, "12345678"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 1487
    const/4 v3, 0x2

    invoke-virtual {v1, v3, v0, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 1488
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

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1490
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, p2

    .line 1491
    goto :goto_0
.end method

.method public encrypt(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1423
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->DESKEY:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1424
    return-object v0
.end method

.method public encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 1449
    if-nez p2, :cond_0

    .line 1450
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    .line 1464
    :goto_0
    return-object v0

    .line 1452
    :cond_0
    :try_start_0
    new-instance v0, Ljavax/crypto/spec/DESKeySpec;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/crypto/spec/DESKeySpec;-><init>([B)V

    .line 1453
    const-string v1, "DES"

    invoke-static {v1}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v1

    .line 1455
    invoke-virtual {v1, v0}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v0

    .line 1456
    iget-object v1, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->ALGORITHM_DES:Ljava/lang/String;

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 1457
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    const-string v3, "12345678"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 1459
    const/4 v3, 0x1

    invoke-virtual {v1, v3, v0, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 1460
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    .line 1461
    invoke-static {v0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->byte2hex([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1463
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, p2

    .line 1464
    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 143
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 145
    invoke-direct {p0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->init()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/content/Intent;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 151
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 153
    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 154
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/UriUtils;->uri2File(Landroid/net/Uri;)Ljava/io/File;

    move-result-object v1

    .line 155
    if-nez v1, :cond_1

    .line 156
    const-string v0, "file == null"

    invoke-static {v0}, Lcom/s1243808733/util/Toasty;->error(Ljava/lang/CharSequence;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 158
    :cond_1
    invoke-static {}, Lcom/s1243808733/util/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "advanced_setting_editor_bg"

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 162
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "\u8bbe\u7f6e\u6210\u529f\uff1a"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/util/Toasty;->success(Ljava/lang/CharSequence;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 163
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->getMainActivity()Lcom/s1243808733/aide/AideMainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/aide/AideMainActivity;->setEditorBackground()V

    goto :goto_0

    .line 162
    :cond_2
    const-string v0, "Set success:"

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 130
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 131
    const v0, 0x7f10000a

    invoke-virtual {p0, v0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->addPreferencesFromResource(I)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 137
    invoke-super {p0, p1, p2}, Lcom/s1243808733/aide/preference/BasePreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method
