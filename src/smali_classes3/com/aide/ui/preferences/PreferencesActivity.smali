.class public Lcom/aide/ui/preferences/PreferencesActivity;
.super Landroid/preference/PreferenceActivity;


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


# instance fields
.field private FH:Ljava/util/List;
    .annotation runtime Labcd/ru;
        field = 0x1daea9ab754e4fa0L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/ui/preferences/PreferencesActivity;

    const-wide v1, 0x10ca53da84431861L  # 8.682479919665753E-228

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, 0x36aa9170be6b9728L  # 2.3268671864111222E-45

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/preferences/PreferencesActivity;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/preferences/PreferencesActivity;->DW:Z

    if-eqz v4, :cond_19

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_19
    throw v3
.end method

.method public static j6(Landroid/app/Activity;I)V
    .registers 9

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/preferences/PreferencesActivity;->j6:Z

    if-eqz v0, :cond_12

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x3ff0bfd2a76dd010L  # -3.906336490594178

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, p0, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_12
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/aide/ui/preferences/PreferencesActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "SHOW_PAGE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_21
    .catchall {:try_start_0 .. :try_end_21} :catchall_22

    return-void

    :catchall_22
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/preferences/PreferencesActivity;->DW:Z

    if-eqz v1, :cond_37

    const-wide v2, -0x3ff0bfd2a76dd010L  # -3.906336490594178

    const/4 v4, 0x0

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p1}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v5, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_37
    throw v0
.end method

.method private j6(Ljava/lang/CharSequence;)Z
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x51e4829c62b8e697L
    .end annotation

    const-wide v0, -0x38d4da9fc9f9405fL  # -7.047504347986293E34

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/preferences/PreferencesActivity;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    sget-object v2, Lcom/aide/ui/U;->j6:Ljava/lang/String;

    const-string v3, "com.aide.web"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1f

    const-string v2, "Build & Run"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_1d
    .catchall {:try_start_5 .. :try_end_1d} :catchall_20

    xor-int/2addr p1, v3

    return p1

    :cond_1f
    return v3

    :catchall_20
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/preferences/PreferencesActivity;->DW:Z

    if-eqz v3, :cond_28

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_28
    throw v2
.end method


# virtual methods
.method protected isValidFragment(Ljava/lang/String;)Z
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x29878b6dab3f22dfL
    .end annotation

    const-wide v0, -0x15b68f7a953cf107L  # -9.970025382042441E203

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/preferences/PreferencesActivity;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_e

    :cond_c
    const/4 p1, 0x1

    return p1

    :catchall_e
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/preferences/PreferencesActivity;->DW:Z

    if-eqz v3, :cond_16

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    throw v2
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 12
    .annotation runtime Labcd/su;
        method = 0x4db7f261fc006288L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/preferences/PreferencesActivity;->j6:Z

    if-eqz v0, :cond_18

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x2cef18f2ecf8f410L  # 2.9816469087250654E-92

    move-object v3, p0

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_18
    invoke-static {p0, p1, p2, p3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Object;IILandroid/content/Intent;)V

    const v0, 0x123abc

    if-ne p1, v0, :cond_27

    invoke-static {}, Lcom/aide/ui/U;->QX()Labcd/yk;

    move-result-object v0

    invoke-virtual {v0, p3}, Labcd/yk;->j6(Landroid/content/Intent;)V
    :try_end_27
    .catchall {:try_start_0 .. :try_end_27} :catchall_28

    :cond_27
    return-void

    :catchall_28
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/preferences/PreferencesActivity;->DW:Z

    if-eqz v1, :cond_42

    const-wide v2, 0x2cef18f2ecf8f410L  # 2.9816469087250654E-92

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_42
    throw v0
.end method

.method public onBuildHeaders(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    const-wide v0, 0xcfae9157da61b80L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/preferences/PreferencesActivity;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const v3, 0x7f100008

    invoke-virtual {p0, v3, v2}, Landroid/preference/PreferenceActivity;->loadHeadersFromResource(ILjava/util/List;)V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1b
    :goto_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_33

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceActivity$Header;

    iget-object v4, v3, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    invoke-direct {p0, v4}, Lcom/aide/ui/preferences/PreferencesActivity;->j6(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1b

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    :cond_33
    new-instance v2, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v2}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    const v3, 0x7f0d0678

    iput v3, v2, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    const v3, 0x7f0d0679

    iput v3, v2, Landroid/preference/PreferenceActivity$Header;->summaryRes:I

    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/aide/ui/preferences/AboutActivity;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v3, v2, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput-object p1, p0, Lcom/aide/ui/preferences/PreferencesActivity;->FH:Ljava/util/List;
    :try_end_50
    .catchall {:try_start_5 .. :try_end_50} :catchall_51

    return-void

    :catchall_51
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/preferences/PreferencesActivity;->DW:Z

    if-eqz v3, :cond_59

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_59
    goto :goto_5b

    :goto_5a
    throw v2

    :goto_5b
    goto :goto_5a
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 11
    .annotation runtime Labcd/su;
        method = 0x94dbf20d6ed8d80L
    .end annotation

    const-wide v1, 0x16db5858385L

    const-wide v7, -0x2ca0ccee4a72660L

    :try_start_a
    const-string v3, "androidRelease"

    const-string v4, "https://backbone-direct.appfour.com/project/SvkPQDcCSkSU4JZRRqsTuw/variant/androidRelease/audience/dev/probes.zip"

    const-string v5, "https://backbone-cdn.appfour.com/project/SvkPQDcCSkSU4JZRRqsTuw/variant/androidRelease/audience/public/probes.zip"

    const-string v6, "https://backbone-ingest.appfour.com/api/report/v1alpha1/data/project/SvkPQDcCSkSU4JZRRqsTuw"

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Object;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/aide/ui/preferences/PreferencesActivity;->j6:Z

    if-eqz v0, :cond_1d

    invoke-static {v7, v8, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1d
    invoke-static {p0}, Lcom/s1243808733/aide/application/AppTheme;->initTheme(Landroid/app/Activity;)V

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_43

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "SHOW_PAGE"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_43

    iget-object v1, p0, Lcom/aide/ui/preferences/PreferencesActivity;->FH:Ljava/util/List;

    if-eqz v1, :cond_43

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceActivity$Header;

    invoke-virtual {p0, v1, v0}, Landroid/preference/PreferenceActivity;->onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V

    :cond_43
    invoke-static {p0}, Lcom/aide/common/g;->Hw(Landroid/app/Activity;)V
    :try_end_46
    .catchall {:try_start_a .. :try_end_46} :catchall_47

    return-void

    :catchall_47
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/preferences/PreferencesActivity;->DW:Z

    if-eqz v1, :cond_4f

    invoke-static {v0, v7, v8, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_4f
    throw v0
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x2199f91acd91c791L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/preferences/PreferencesActivity;->j6:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x365b9060cdd83f19L  # -5.833453302696834E46

    invoke-static {v1, v2, p0, v0, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    invoke-static {p0, p1}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;I)Landroid/app/Dialog;

    move-result-object p1
    :try_end_15
    .catchall {:try_start_0 .. :try_end_15} :catchall_16

    return-object p1

    :catchall_16
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/preferences/PreferencesActivity;->DW:Z

    if-eqz v1, :cond_2b

    const-wide v2, -0x365b9060cdd83f19L  # -5.833453302696834E46

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2b
    throw v0
.end method

.method protected onStart()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x31af049b64903a28L
    .end annotation

    const-wide v0, -0x130ff779a2bcf2b0L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/preferences/PreferencesActivity;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStart()V

    invoke-static {p0}, Lcom/aide/ui/U;->j6(Landroid/app/Activity;)V

    const-string v2, "Preferences"

    invoke-static {p0, v2}, Labcd/F;->DW(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_18

    return-void

    :catchall_18
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/preferences/PreferencesActivity;->DW:Z

    if-eqz v3, :cond_20

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_20
    throw v2
.end method

.method protected onStop()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x4897e8064bc0a0cL
    .end annotation

    const-wide v0, -0x1342f4166e684b5cL  # -6.2582255454915115E215

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/preferences/PreferencesActivity;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    invoke-static {p0}, Lcom/aide/ui/U;->DW(Landroid/app/Activity;)V

    const-string v2, "Preferences"

    invoke-static {p0, v2}, Labcd/F;->j6(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_18

    return-void

    :catchall_18
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/preferences/PreferencesActivity;->DW:Z

    if-eqz v3, :cond_20

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_20
    throw v2
.end method
