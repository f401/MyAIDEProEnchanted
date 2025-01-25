.class public Lcom/aide/ui/MainActivity;
.super Lcom/aide/ui/ThemedActionbarActivity;

# interfaces
.implements Labcd/ck$a;
.implements Lcom/aide/ui/AIDEEditorPager$b;
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Landroid/support/v4/app/c$a;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aide/ui/MainActivity$a;
    }
.end annotation


# static fields
.field private static FH:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field

.field private static Hw:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field


# instance fields
.field protected BT:J
    .annotation runtime Labcd/ru;
        field = 0x260b66f62d785495L
    .end annotation
.end field

.field protected EQ:Lcom/aide/ui/fa;
    .annotation runtime Labcd/ru;
        field = -0x6559822ab8e9afcL
    .end annotation
.end field

.field protected J0:Lcom/aide/ui/Ga;
    .annotation runtime Labcd/ru;
        field = -0x501ea3fb548894b3L
    .end annotation
.end field

.field protected J8:Ljava/lang/Object;
    .annotation runtime Labcd/ru;
        field = -0x9bc2077646f36e1L
    .end annotation
.end field

.field protected Mr:Z
    .annotation runtime Labcd/ru;
        field = -0x2f0b76e40e2023e8L
    .end annotation
.end field

.field protected QX:Z
    .annotation runtime Labcd/ru;
        field = -0x4b44f2cc055c7420L
    .end annotation
.end field

.field protected U2:I
    .annotation runtime Labcd/ru;
        field = 0x3f2b0e26d1d72600L
    .end annotation
.end field

.field protected VH:Lcom/aide/common/sa;
    .annotation runtime Labcd/ru;
        field = -0x3d353b524cb44e2cL
    .end annotation
.end field

.field protected Ws:Z
    .annotation runtime Labcd/ru;
        field = 0x18aae418732fc88fL
    .end annotation
.end field

.field protected XL:I
    .annotation runtime Labcd/ru;
        field = -0x4b54320e0daa0428L
    .end annotation
.end field

.field protected Zo:Lcom/aide/common/KeyStrokeDetector;
    .annotation runtime Labcd/ru;
        field = 0x4caf1cc0c5078bf0L
    .end annotation
.end field

.field protected a8:Landroid/os/Handler;
    .annotation runtime Labcd/ru;
        field = 0x205c9e53c551fb75L
    .end annotation
.end field

.field protected aM:Z
    .annotation runtime Labcd/ru;
        field = -0x13b0bccb6a1103d4L
    .end annotation
.end field

.field protected er:Lcom/aide/ui/La;
    .annotation runtime Labcd/ru;
        field = -0x1aa99f8c447cf8e0L
    .end annotation
.end field

.field protected gW:Z
    .annotation runtime Labcd/ru;
        field = -0x23b9dcbda56ca85L
    .end annotation
.end field

.field protected gn:Lcom/aide/common/sa;
    .annotation runtime Labcd/ru;
        field = -0x2189070a09c9c888L
    .end annotation
.end field

.field protected j3:Z
    .annotation runtime Labcd/ru;
        field = -0x5598b7b2e3c0a8L
    .end annotation
.end field

.field protected lg:Lcom/aide/ui/MainActivity$a;
    .annotation runtime Labcd/ru;
        field = -0x599f17e7a5194880L
    .end annotation
.end field

.field protected rN:Lcom/aide/ui/Z;
    .annotation runtime Labcd/ru;
        field = -0x28f8daa0bd2365cbL
    .end annotation
.end field

.field protected tp:Lcom/aide/ui/Za;
    .annotation runtime Labcd/ru;
        field = 0x262f1b2cd176fe77L
    .end annotation
.end field

.field protected u7:Lcom/aide/ui/Wa;
    .annotation runtime Labcd/ru;
        field = -0x231f5807849cbb48L
    .end annotation
.end field

.field protected v5:J
    .annotation runtime Labcd/ru;
        field = -0x45f036d25933a35dL
    .end annotation
.end field

.field protected vy:Z
    .annotation runtime Labcd/ru;
        field = 0x5c4aefe039194447L
    .end annotation
.end field

.field protected we:Z
    .annotation runtime Labcd/ru;
        field = -0x37e930dd525f9e80L
    .end annotation
.end field

.field protected yS:Landroid/view/View;
    .annotation runtime Labcd/ru;
        field = -0x150f317e49e31c20L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/ui/MainActivity;

    const-wide v1, -0x1b7def450e608340L

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 7

    const-wide v0, 0x19daa820acd15f38L

    const/4 v2, 0x0

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v3, :cond_d

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Lcom/aide/ui/ThemedActionbarActivity;-><init>()V

    new-instance v3, Lcom/aide/common/sa;

    invoke-static {}, Lcom/s1243808733/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v4

    const v5, 0x7f0d069b

    invoke-virtual {v4, v5}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/aide/common/sa;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/aide/ui/MainActivity;->VH:Lcom/aide/common/sa;

    new-instance v3, Lcom/aide/ui/ta;

    invoke-static {}, Lcom/s1243808733/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v4

    const v5, 0x7f0d069a

    invoke-virtual {v4, v5}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p0, p0, v4}, Lcom/aide/ui/ta;-><init>(Lcom/aide/ui/MainActivity;Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/aide/ui/MainActivity;->gn:Lcom/aide/common/sa;

    new-instance v3, Lcom/aide/ui/Wa;

    invoke-direct {v3, p0}, Lcom/aide/ui/Wa;-><init>(Lcom/aide/ui/MainActivity;)V

    iput-object v3, p0, Lcom/aide/ui/MainActivity;->u7:Lcom/aide/ui/Wa;

    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/aide/ui/MainActivity;->J8:Ljava/lang/Object;

    const/4 v3, -0x1

    iput v3, p0, Lcom/aide/ui/MainActivity;->XL:I

    new-instance v3, Lcom/aide/ui/MainActivity$a;

    invoke-direct {v3, v2}, Lcom/aide/ui/MainActivity$a;-><init>(Lcom/aide/ui/ta;)V

    iput-object v3, p0, Lcom/aide/ui/MainActivity;->lg:Lcom/aide/ui/MainActivity$a;
    :try_end_4c
    .catchall {:try_start_6 .. :try_end_4c} :catchall_4d

    return-void

    :catchall_4d
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v4, :cond_55

    invoke-static {v3, v0, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_55
    throw v3
.end method

.method private CU()V
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x67ff1b6473949f5L
    .end annotation

    const-wide v0, -0x3a54e28f118040fL

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    const-string v2, "BrowserLayout"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v4, "CurrentBrowser"

    const/4 v5, -0x1

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ltz v2, :cond_1f

    invoke-direct {p0, v2, v3}, Lcom/aide/ui/MainActivity;->j6(IZ)V
    :try_end_1f
    .catchall {:try_start_5 .. :try_end_1f} :catchall_20

    :cond_1f
    return-void

    :catchall_20
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v3, :cond_28

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_28
    throw v2
.end method

.method public static DW(Landroid/content/Context;)Landroid/app/PendingIntent;
    .registers 7

    const/4 v0, 0x0

    const-wide v1, -0x2bba94772bddb3abL  # -9.15059263676553E97

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/s1243808733/aide/AideMainActivity;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "EXTRA_SHOWN_FROM_NOTIFICATION"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v4, 0x4000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v4, 0x0

    const/high16 v5, 0x8000000

    invoke-static {p0, v4, v3, v5}, Lcom/aide/ui/MainActivity;->j6(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0
    :try_end_26
    .catchall {:try_start_6 .. :try_end_26} :catchall_27

    return-object p0

    :catchall_27
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v4, :cond_2f

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2f
    throw v3
.end method

.method static synthetic DW(Lcom/aide/ui/MainActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/aide/ui/MainActivity;->XX()V

    return-void
.end method

.method private Eq()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0xce758f84f8a7957L
    .end annotation

    const-wide v0, 0x2072d91fe452d15L  # 6.92198159481766E-299

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    const v2, 0x7f0800f2

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/aide/ui/AIDEAnalysisProgressBar;

    invoke-virtual {v2}, Lcom/aide/ui/AIDEAnalysisProgressBar;->j6()V
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_19

    return-void

    :catchall_19
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v3, :cond_21

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_21
    throw v2
.end method

.method public static FH(Landroid/content/Context;)Landroid/app/PendingIntent;
    .registers 7

    const/4 v0, 0x0

    const-wide v1, -0x178781325bff8940L  # -1.7881354754224034E195

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/s1243808733/aide/AideMainActivity;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "EXTRA_SHOWN_FROM_PROMO_NOTIFICATION"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v4, 0x4000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v4, 0x0

    const/high16 v5, 0x8000000

    invoke-static {p0, v4, v3, v5}, Lcom/aide/ui/MainActivity;->j6(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0
    :try_end_26
    .catchall {:try_start_6 .. :try_end_26} :catchall_27

    return-object p0

    :catchall_27
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v4, :cond_2f

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2f
    throw v3
.end method

.method static synthetic FH(Lcom/aide/ui/MainActivity;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/aide/ui/MainActivity;->J8:Ljava/lang/Object;

    return-object p0
.end method

.method private FN()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x487852a29d8cf3e0L
    .end annotation

    const-wide v0, 0x12ae23a8d6887398L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/MainActivity;->er:Lcom/aide/ui/La;

    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->J8()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/aide/ui/AIDEEditorPager;->getQuickKeys()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/aide/ui/La;->j6(Ljava/lang/String;)V
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_1a

    return-void

    :catchall_1a
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v3, :cond_22

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_22
    throw v2
.end method

.method public static Hw(Landroid/content/Context;)Landroid/app/PendingIntent;
    .registers 7

    const/4 v0, 0x0

    const-wide v1, -0x2d481964f56565a0L  # -3.042924754501736E90

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/s1243808733/aide/AideMainActivity;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "EXTRA_SHOWN_FROM_TRAINER_NOTIFICATION"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v4, 0x4000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v4, 0x0

    const/high16 v5, 0x8000000

    invoke-static {p0, v4, v3, v5}, Lcom/aide/ui/MainActivity;->j6(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0
    :try_end_26
    .catchall {:try_start_6 .. :try_end_26} :catchall_27

    return-object p0

    :catchall_27
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v4, :cond_2f

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2f
    throw v3
.end method

.method private static VH(Landroid/content/Context;)I
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x483ece76ae267044L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0x41b91fc9b3f59620L  # -1.0652387750794635E-8

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_22

    :cond_d
    :try_start_d
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget p0, v3, Landroid/content/pm/ApplicationInfo;->icon:I
    :try_end_1c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_d .. :try_end_1c} :catch_1d
    .catchall {:try_start_d .. :try_end_1c} :catchall_22

    return p0

    :catch_1d
    move-exception p0

    const p0, 0x7f070076

    return p0

    :catchall_22
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v4, :cond_2a

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2a
    throw v3
.end method

.method private XG()V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x563bbf7755174e3L
    .end annotation

    const-wide v0, -0x2913843006de88dL

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    new-instance v2, Ljava/io/File;

    invoke-static {}, Lcom/aide/ui/U;->J8()Labcd/mk;

    move-result-object v3

    invoke-virtual {v3}, Labcd/mk;->DW()Ljava/lang/String;

    move-result-object v3

    const-string v4, ".nomedia"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/aide/ui/U;->J8()Labcd/mk;

    move-result-object v3

    invoke-virtual {v3}, Labcd/mk;->DW()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Labcd/FileSystemUtils;->Hw(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3b

    invoke-static {v2}, Labcd/FileSystemUtils;->Hw(Ljava/lang/String;)Z

    move-result v3
    :try_end_31
    .catchall {:try_start_5 .. :try_end_31} :catchall_3c

    if-nez v3, :cond_3b

    :try_start_33
    invoke-static {v2}, Labcd/FileSystemUtils;->createNewFileNotExists(Ljava/lang/String;)V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_36} :catch_37
    .catchall {:try_start_33 .. :try_end_36} :catchall_3c

    goto :goto_3b

    :catch_37
    move-exception v2

    :try_start_38
    invoke-static {v2}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_3c

    :cond_3b
    :goto_3b
    return-void

    :catchall_3c
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v3, :cond_44

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_44
    throw v2
.end method

.method private XX()V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x18b7c5ebca0e9075L
    .end annotation

    const-wide v0, -0x5c59e33240faeffL

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->J8()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/AIDEEditorPager;->getFileEditors()Ljava/util/List;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_22
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_62

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/aide/ui/AIDEEditor;

    invoke-virtual {v6}, Lcom/aide/ui/AIDEEditor;->getFilePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Labcd/FileSystemUtils;->tp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/aide/ui/U;->er()Labcd/Nk;

    move-result-object v8

    invoke-virtual {v8, v6}, Labcd/Nk;->DW(Ljava/lang/String;)Labcd/Nk$a;

    move-result-object v6

    invoke-interface {v6}, Labcd/Nk$a;->J0()Z

    move-result v6

    if-eqz v6, :cond_55

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " *"

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :cond_55
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    xor-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_22

    :cond_62
    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v5

    invoke-static {}, Lcom/s1243808733/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v6

    const v7, 0x7f0d06d8

    invoke-virtual {v6, v7}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/aide/ui/va;

    invoke-direct {v7, p0, v2}, Lcom/aide/ui/va;-><init>(Lcom/aide/ui/MainActivity;Ljava/util/List;)V

    invoke-static {v5, v6, v3, v4, v7}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/aide/common/ab;)V
    :try_end_79
    .catchall {:try_start_5 .. :try_end_79} :catchall_7a

    return-void

    :catchall_7a
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v3, :cond_82

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_82
    goto :goto_84

    :goto_83
    throw v2

    :goto_84
    goto :goto_83
.end method

.method private Xa()V
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x4c217cd249198028L
    .end annotation

    const-wide v0, 0x633309f70421274L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->gn()Lcom/aide/ui/debugger/Debugger;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/debugger/Debugger;->v5()Labcd/Tl;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/aide/ui/MainActivity;->j6(Labcd/Tl;)V

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/MainActivity;->J0()Lcom/aide/ui/browsers/DebugBrowser;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/browsers/DebugBrowser;->FH()V

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/aide/ui/ra;

    invoke-direct {v3, p0}, Lcom/aide/ui/ra;-><init>(Lcom/aide/ui/MainActivity;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_31
    .catchall {:try_start_5 .. :try_end_31} :catchall_32

    return-void

    :catchall_32
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v3, :cond_3a

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3a
    throw v2
.end method

.method public static Zo(Landroid/content/Context;)V
    .registers 8

    const/4 v0, 0x0

    const-wide v1, -0x85882c151335800L

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-static {}, Lcom/aide/ui/U;->sh()Z

    move-result v3
    :try_end_11
    .catchall {:try_start_6 .. :try_end_11} :catchall_7f

    const/4 v4, 0x1

    const-string v5, "EXTRA_NAVIGATE_BREAKPOINT"

    if-eqz v3, :cond_29

    :try_start_16
    new-instance v3, Landroid/content/Intent;

    const-class v6, Lcom/s1243808733/aide/AideMainActivity;

    invoke-direct {v3, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v6, 0x14000000

    invoke-virtual {v3, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :goto_25
    invoke-virtual {p0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_7e

    :cond_29
    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/aide/ui/MainActivity;->yS()Z

    move-result v3

    if-nez v3, :cond_43

    new-instance v3, Landroid/content/Intent;

    const-class v6, Lcom/s1243808733/aide/AideMainActivity;

    invoke-direct {v3, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v6, 0x30000000

    invoke-virtual {v3, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_25

    :cond_43
    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/aide/ui/MainActivity;->ef()V

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v3

    invoke-static {}, Lcom/aide/ui/U;->gn()Lcom/aide/ui/debugger/Debugger;

    move-result-object v4

    invoke-virtual {v4}, Lcom/aide/ui/debugger/Debugger;->v5()Labcd/Tl;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/aide/ui/MainActivity;->j6(Labcd/Tl;)V

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/aide/ui/MainActivity;->J0()Lcom/aide/ui/browsers/DebugBrowser;

    move-result-object v3

    invoke-virtual {v3}, Lcom/aide/ui/browsers/DebugBrowser;->FH()V

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/aide/ui/MainActivity;->J8()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->invalidate()V

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    new-instance v4, Lcom/aide/ui/xa;

    invoke-direct {v4, p0}, Lcom/aide/ui/xa;-><init>(Landroid/content/Context;)V

    const-wide/16 v5, 0x1f4

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_7e
    .catchall {:try_start_16 .. :try_end_7e} :catchall_7f

    :goto_7e
    return-void

    :catchall_7f
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v4, :cond_87

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_87
    goto :goto_89

    :goto_88
    throw v3

    :goto_89
    goto :goto_88
.end method

.method private Zo(Z)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x62c2b555f03a4c34L
    .end annotation

    const-wide v0, 0x57e1b78c858f3700L  # 2.1815152145057572E115

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Z)V

    :cond_c
    iput-boolean p1, p0, Lcom/aide/ui/MainActivity;->we:Z
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return-void

    :catchall_f
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v3, :cond_1c

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1c
    throw v2
.end method

.method private aq()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x4af368f966c6b237L
    .end annotation

    const-wide v0, -0x4bbf10fd7142b17bL  # -5.395366680151774E-57

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/MainActivity;->J0:Lcom/aide/ui/Ga;

    if-eqz v2, :cond_44

    invoke-static {}, Lcom/aide/ui/U;->dx()Z

    move-result v3

    if-nez v3, :cond_40

    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->lg()Lcom/aide/ui/views/SplitView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/aide/ui/views/SplitView;->splitHorizontalByDefault()Z

    move-result v3

    if-nez v3, :cond_2a

    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->lg()Lcom/aide/ui/views/SplitView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/aide/ui/views/SplitView;->isSplit()Z

    move-result v3

    if-nez v3, :cond_40

    :cond_2a
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->J8()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/aide/ui/AIDEEditorPager;->Ws()Z

    move-result v3

    if-nez v3, :cond_40

    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/aide/common/g;->J0(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_40

    const/4 v3, 0x1

    goto :goto_41

    :cond_40
    const/4 v3, 0x0

    :goto_41
    invoke-virtual {v2, v3}, Lcom/aide/ui/Ga;->j6(Z)V
    :try_end_44
    .catchall {:try_start_5 .. :try_end_44} :catchall_45

    :cond_44
    return-void

    :catchall_45
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v3, :cond_4d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_4d
    throw v2
.end method

.method private et()Lcom/aide/ui/AIDEErrorsView;
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x3a38f4fb25791930L
    .end annotation

    const-wide v0, 0x331231339dd2e8c0L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    const v2, 0x7f0800f9

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/aide/ui/AIDEErrorsView;

    if-eqz v2, :cond_18

    return-object v2

    :cond_18
    const v2, 0x7f0800a1

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2c

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v3, v2, Lcom/aide/ui/AIDEErrorsView;

    if-eqz v3, :cond_2c

    check-cast v2, Lcom/aide/ui/AIDEErrorsView;
    :try_end_2b
    .catchall {:try_start_5 .. :try_end_2b} :catchall_2e

    return-object v2

    :cond_2c
    const/4 v0, 0x0

    return-object v0

    :catchall_2e
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v3, :cond_36

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_36
    throw v2
.end method

.method private hz()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x5bec2e1646c82efdL
    .end annotation

    const-wide v0, 0x242c3c66011cdf61L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-direct {p0}, Lcom/aide/ui/MainActivity;->et()Lcom/aide/ui/AIDEErrorsView;

    move-result-object v2

    if-eqz v2, :cond_1f

    invoke-virtual {v2}, Lcom/aide/ui/AIDEErrorsView;->j6()V

    const v2, 0x7f0800ed

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V
    :try_end_1f
    .catchall {:try_start_5 .. :try_end_1f} :catchall_20

    :cond_1f
    return-void

    :catchall_20
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v3, :cond_28

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_28
    throw v2
.end method

.method private isEnableActionBarTabSpinner()Z
    .registers 4

    .line 14
    :try_start_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 16
    const-string v1, "enable_actionbar_tab_spinner"

    invoke-static {}, Lio/github/zeroaicy/util/reflect/ReflectPie;->reflectAll()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_e
    .catchall {:try_start_0 .. :try_end_e} :catchall_f

    goto :goto_11

    :catchall_f
    move-exception v0

    .line 19
    const/4 v0, 0x1

    :goto_11
    return v0
.end method

.method public static j6(Landroid/content/Context;)Landroid/app/PendingIntent;
    .registers 7

    const/4 v0, 0x0

    const-wide v1, 0xd87790cb3c52ef3L

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/s1243808733/aide/AideMainActivity;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "EXTRA_UPGRADE_NOTIFICATION_CLICKED"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v4, 0x4000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    invoke-virtual {v4}, Ljava/util/Random;->nextInt()I

    move-result v4

    const/high16 v5, 0x8000000

    invoke-static {p0, v4, v3, v5}, Lcom/aide/ui/MainActivity;->j6(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0
    :try_end_2e
    .catchall {:try_start_6 .. :try_end_2e} :catchall_2f

    return-object p0

    :catchall_2f
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v4, :cond_37

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_37
    throw v3
.end method

.method private static synthetic j6(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    .registers 4

    invoke-static {p0, p1, p2, p3}, Labcd/ApplicationUtils;->j6(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method static synthetic j6(Lcom/aide/ui/MainActivity;)Lcom/aide/common/sa;
    .registers 1

    iget-object p0, p0, Lcom/aide/ui/MainActivity;->VH:Lcom/aide/common/sa;

    return-object p0
.end method

.method private j6(IZ)V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x26077c9782f74334L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p2}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v2, 0x206ef24b349ee760L

    invoke-static {v2, v3, p0, v0, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->tp()Lcom/aide/ui/browsers/BrowserPager;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p2, :cond_29

    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->lg()Lcom/aide/ui/views/SplitView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/views/SplitView;->isSplit()Z

    move-result v2

    if-eqz v2, :cond_29

    const/4 v2, 0x1

    goto :goto_2a

    :cond_29
    const/4 v2, 0x0

    :goto_2a
    invoke-virtual {v0, p1, v2}, Lcom/aide/ui/browsers/BrowserPager;->DW(IZ)V

    invoke-direct {p0, p1}, Lcom/aide/ui/MainActivity;->v5(I)V

    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->lg()Lcom/aide/ui/views/SplitView;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/aide/ui/views/SplitView;->openSplit(Z)V

    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->lg()Lcom/aide/ui/views/SplitView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/views/SplitView;->getBottomView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    invoke-static {}, Lcom/aide/ui/U;->j6()Labcd/we;

    move-result-object v0

    invoke-virtual {v0, v1}, Labcd/we;->j6(Z)V
    :try_end_49
    .catchall {:try_start_0 .. :try_end_49} :catchall_4a

    return-void

    :catchall_4a
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v1, :cond_63

    const-wide v2, 0x206ef24b349ee760L

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p2}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v1, v0

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_63
    throw v0
.end method

.method public static j6(Landroid/app/Activity;Landroid/content/IntentSender;)V
    .registers 9

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v0, :cond_d

    const-wide v0, 0x9573e08361b779fL

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/s1243808733/aide/AideMainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "EXTRA_NAVIGATE_PLAY_STORE_INTENT_SENDER"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_21
    .catchall {:try_start_0 .. :try_end_21} :catchall_22

    return-void

    :catchall_22
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v1, :cond_33

    const-wide v2, 0x9573e08361b779fL

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_33
    throw v0
.end method

.method private j6(Landroid/view/Menu;)V
    .registers 9
    .annotation runtime Labcd/su;
        method = -0x3404d1faeac569f5L
    .end annotation

    const-wide v0, 0x11a1402a614d1adL

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_e
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v4

    if-ge v3, v4, :cond_6e

    invoke-interface {p1, v3}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    invoke-static {v5}, Lcom/aide/ui/V;->DW(I)Labcd/Yl;

    move-result-object v5

    if-eqz v5, :cond_46

    invoke-interface {v5}, Labcd/Yl;->isEnabled()Z

    move-result v6

    invoke-interface {v4, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    instance-of v6, v5, Labcd/_l;

    if-eqz v6, :cond_37

    move-object v6, v5

    check-cast v6, Labcd/_l;

    invoke-interface {v6, v2}, Labcd/_l;->j6(Z)Z

    move-result v6

    invoke-interface {v4, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_37
    instance-of v6, v5, Labcd/Zl;

    if-eqz v6, :cond_46

    check-cast v5, Labcd/Zl;

    invoke-interface {v5}, Labcd/Zl;->DW()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_46

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    :cond_46
    invoke-interface {v4}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    invoke-static {v5}, Lcom/aide/ui/V;->j6(I)Labcd/Hl;

    move-result-object v5

    if-eqz v5, :cond_5e

    invoke-interface {v5}, Labcd/Hl;->isVisible()Z

    move-result v6

    invoke-interface {v4, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {v5}, Labcd/Hl;->isEnabled()Z

    move-result v5

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_5e
    invoke-interface {v4}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v5

    if-eqz v5, :cond_6b

    invoke-interface {v4}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/aide/ui/MainActivity;->j6(Landroid/view/Menu;)V
    :try_end_6b
    .catchall {:try_start_5 .. :try_end_6b} :catchall_6f

    :cond_6b
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_6e
    return-void

    :catchall_6f
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v3, :cond_77

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_77
    goto :goto_79

    :goto_78
    throw v2

    :goto_79
    goto :goto_78
.end method

.method static synthetic j6(Lcom/aide/ui/MainActivity;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/aide/ui/MainActivity;->v5(I)V

    return-void
.end method

.method private jJ_V277Backup()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x40176323d3d9b8b0L
    .end annotation

    const-wide v0, 0xb7f27bbe441f080L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->dx()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-static {p0}, Lcom/aide/common/g;->Hw(Landroid/content/Context;)F

    move-result v2

    const v3, 0x44188000  # 610.0f

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_22

    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/aide/common/g;->j6(Landroid/app/Activity;Z)V

    goto :goto_2f

    :cond_22
    invoke-static {p0}, Lcom/aide/common/g;->QX(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-direct {p0}, Lcom/aide/ui/MainActivity;->isEnableActionBarTabSpinner()Z

    move-result v2

    invoke-static {p0, v2}, Lcom/aide/common/g;->j6(Landroid/app/Activity;Z)V

    :cond_2f
    :goto_2f
    invoke-static {p0}, Lcom/aide/common/g;->FH(Landroid/app/Activity;)V
    :try_end_32
    .catchall {:try_start_5 .. :try_end_32} :catchall_33

    return-void

    :catchall_33
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v3, :cond_3b

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3b
    throw v2
.end method

.method private jO()Z
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x1522c69788f0fd74L
    .end annotation

    const-wide v0, -0x34bf05a9f3c5ab08L  # -3.252314809209223E54

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->dx()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-static {}, Lcom/aide/ui/U;->SI()Labcd/Cl;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Cl;->lg()Z

    move-result v2

    if-nez v2, :cond_22

    :cond_1c
    invoke-static {}, Lcom/aide/ui/aa;->ro()Z

    move-result v0
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_26

    if-eqz v0, :cond_24

    :cond_22
    const/4 v0, 0x1

    goto :goto_25

    :cond_24
    const/4 v0, 0x0

    :goto_25
    return v0

    :catchall_26
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v3, :cond_2e

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2e
    throw v2
.end method

.method private kQ()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x8ee5e6d0045f689L
    .end annotation

    const-wide v0, -0x33eb99d75c86574fL  # -3.2011739958156E58

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/build/android/Q;->j6()Z

    move-result v2

    if-eqz v2, :cond_23

    new-instance v2, Lcom/aide/ui/la;

    const-string v3, "Old NDK Version Deleter"

    invoke-direct {v2, p0, v3}, Lcom/aide/ui/la;-><init>(Lcom/aide/ui/MainActivity;Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/Thread;->setDaemon(Z)V

    invoke-virtual {v2, v3}, Ljava/lang/Thread;->setPriority(I)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_23
    .catchall {:try_start_5 .. :try_end_23} :catchall_24

    :cond_23
    return-void

    :catchall_24
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v3, :cond_2c

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2c
    throw v2
.end method

.method public static v5(Landroid/content/Context;)Landroid/app/PendingIntent;
    .registers 7

    const/4 v0, 0x0

    const-wide v1, 0x4b61ce47d36a7cL

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/s1243808733/aide/AideMainActivity;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "EXTRA_SHOWN_FROM_UPDATE_TRAINER_NOTIFICATION"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v4, 0x4000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v4, 0x0

    const/high16 v5, 0x8000000

    invoke-static {p0, v4, v3, v5}, Lcom/aide/ui/MainActivity;->j6(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0
    :try_end_26
    .catchall {:try_start_6 .. :try_end_26} :catchall_27

    return-object p0

    :catchall_27
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v4, :cond_2f

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2f
    throw v3
.end method

.method private v5(I)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x4e7328a9df9d3cffL
    .end annotation

    const-wide v0, -0x47969ecd659b23e9L  # -5.96673371510864E-37

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    const-string v2, "BrowserLayout"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "CurrentBrowser"

    invoke-interface {v2, v3, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1f
    .catchall {:try_start_5 .. :try_end_1f} :catchall_20

    return-void

    :catchall_20
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v3, :cond_2d

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2d
    throw v2
.end method

.method private wc()Landroid/widget/Spinner;
    .registers 8
    .annotation runtime Labcd/su;
        method = 0x13597a089bea8ffL
    .end annotation

    const-wide v0, -0x7a36c90629277f9bL  # -8.681778798525072E-281

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_4c

    :cond_c
    const/4 v2, 0x0

    :try_start_d
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "action_bar"

    const-string v5, "id"

    const-string v6, "android"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "mTabScrollView"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v4, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_34

    return-object v2

    :cond_34
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v6, "mTabSpinner"

    invoke-virtual {v4, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v4, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_4b

    check-cast v3, Landroid/widget/Spinner;
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_49} :catch_4a
    .catchall {:try_start_d .. :try_end_49} :catchall_4c

    return-object v3

    :catch_4a
    move-exception v0

    :cond_4b
    return-object v2

    :catchall_4c
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v3, :cond_54

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_54
    throw v2
.end method

.method private yO()V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x1cc29ed2b107b460L
    .end annotation

    const-string v0, "first_run_time"

    const-string v1, "first_seen_version"

    const-wide v2, 0x41c21e2ac562fccL

    :try_start_9
    sget-boolean v4, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v4, :cond_10

    invoke-static {v2, v3, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_64

    :cond_10
    :try_start_10
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    const/4 v5, -0x1

    invoke-interface {v4, v1, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/aide/ui/MainActivity;->XL:I

    if-ne v6, v5, :cond_40

    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/aide/ui/MainActivity;->Hw(Z)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_2e

    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->EQ()I

    move-result v5

    iput v5, p0, Lcom/aide/ui/MainActivity;->XL:I

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/aide/ui/MainActivity;->aM:Z

    goto :goto_32

    :cond_2e
    const/16 v5, 0x67

    iput v5, p0, Lcom/aide/ui/MainActivity;->XL:I

    :goto_32
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->EQ()I

    move-result v6

    invoke-interface {v5, v1, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_40
    const-wide/16 v5, -0x1

    invoke-interface {v4, v0, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    iput-wide v7, p0, Lcom/aide/ui/MainActivity;->BT:J

    cmp-long v1, v7, v5

    if-nez v1, :cond_63

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/aide/ui/MainActivity;->BT:J

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget-wide v4, p0, Lcom/aide/ui/MainActivity;->BT:J

    invoke-interface {v1, v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_5e
    .catchall {:try_start_10 .. :try_end_5e} :catchall_5f

    goto :goto_63

    :catchall_5f
    move-exception v0

    :try_start_60
    invoke-static {v0}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V
    :try_end_63
    .catchall {:try_start_60 .. :try_end_63} :catchall_64

    :cond_63
    :goto_63
    return-void

    :catchall_64
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v1, :cond_6c

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_6c
    throw v0
.end method


# virtual methods
.method public BT()Z
    .registers 5

    const-wide v0, 0xfd10d348fcf7abbL

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-boolean v0, p0, Lcom/aide/ui/MainActivity;->we:Z
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public DW()V
    .registers 5

    const-wide v0, 0x439688c6123bfd45L  # 4.059413618213072E17

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->tp()Lcom/aide/ui/browsers/BrowserPager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/browsers/BrowserPager;->getCurrentBrowser()I

    move-result v2

    sget v3, Lcom/aide/ui/browsers/BrowserPager;->Eq:I

    if-ne v2, v3, :cond_20

    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->lg()Lcom/aide/ui/views/SplitView;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/aide/ui/views/SplitView;->closeSplit(Z)V
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_21

    :cond_20
    return-void

    :catchall_21
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v3, :cond_29

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_29
    throw v2
.end method

.method public DW(I)V
    .registers 6

    const-wide v0, -0x2bf5312ee9cc8720L  # -7.157659959592363E96

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    invoke-direct {p0}, Lcom/aide/ui/MainActivity;->FN()V

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    if-ltz p1, :cond_22

    invoke-virtual {v2}, Landroid/app/ActionBar;->getTabCount()I

    move-result v3

    if-ge p1, v3, :cond_22

    invoke-virtual {v2, p1}, Landroid/app/ActionBar;->getTabAt(I)Landroid/app/ActionBar$Tab;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->removeTab(Landroid/app/ActionBar$Tab;)V
    :try_end_22
    .catchall {:try_start_5 .. :try_end_22} :catchall_23

    :cond_22
    return-void

    :catchall_23
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v3, :cond_30

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_30
    throw v2
.end method

.method public DW(Ljava/lang/String;)V
    .registers 7

    const-wide v0, -0x556ea419dad4d8L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v3

    invoke-static {p1}, Labcd/FileSystemUtils;->tp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;

    move-result-object v3

    new-instance v4, Lcom/aide/ui/ma;

    invoke-direct {v4, p0, v3, p1}, Lcom/aide/ui/ma;-><init>(Lcom/aide/ui/MainActivity;Landroid/app/ActionBar$Tab;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;Z)V

    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->jJ()V
    :try_end_2b
    .catchall {:try_start_5 .. :try_end_2b} :catchall_2c

    return-void

    :catchall_2c
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v3, :cond_34

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_34
    throw v2
.end method

.method public DW(Z)V
    .registers 6

    const-wide v0, -0x3736124f46af900L  # -8.92531362267445E291

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Z)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->j6()Labcd/we;

    move-result-object v2

    xor-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v3}, Labcd/we;->j6(Z)V

    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->ef()V

    if-eqz p1, :cond_3c

    invoke-static {p0}, Lcom/aide/common/g;->j6(Landroid/content/Context;)F

    move-result v2

    const/high16 v3, 0x44480000  # 800.0f

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_2e

    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->lg()Lcom/aide/ui/views/SplitView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/views/SplitView;->isHorizontal()Z

    move-result v2

    if-eqz v2, :cond_38

    :cond_2e
    invoke-static {p0}, Lcom/aide/common/g;->j6(Landroid/content/Context;)F

    move-result v2

    const/high16 v3, 0x44070000  # 540.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_3c

    :cond_38
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/aide/ui/MainActivity;->FH(Z)V
    :try_end_3c
    .catchall {:try_start_5 .. :try_end_3c} :catchall_3d

    :cond_3c
    return-void

    :catchall_3d
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v3, :cond_4a

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_4a
    throw v2
.end method

.method public EQ()I
    .registers 6

    const-wide v0, -0x4c64b29615df9c00L  # -4.2475809001195757E-60

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_21

    :cond_c
    const/4 v2, 0x0

    :try_start_d
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget v0, v3, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_1b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_d .. :try_end_1b} :catch_1c
    .catchall {:try_start_d .. :try_end_1b} :catchall_21

    return v0

    :catch_1c
    move-exception v3

    :try_start_1d
    invoke-static {v3}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_21

    return v2

    :catchall_21
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v3, :cond_29

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_29
    throw v2
.end method

.method public FH()V
    .registers 5

    const-wide v0, 0x2470f0f1b370550L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/aide/ui/MainActivity;->yS:Landroid/view/View;

    const v2, 0x7f08011f

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/AbsoluteLayout;

    invoke-virtual {v2}, Landroid/widget/AbsoluteLayout;->removeAllViews()V
    :try_end_1b
    .catchall {:try_start_5 .. :try_end_1b} :catchall_1c

    return-void

    :catchall_1c
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v3, :cond_24

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_24
    throw v2
.end method

.method public FH(I)V
    .registers 6

    const-wide v0, 0x3c7f8b00771fc7dbL  # 2.7359170354887765E-17

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->FH()V

    invoke-direct {p0}, Lcom/aide/ui/MainActivity;->FN()V

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    if-ltz p1, :cond_34

    invoke-virtual {v2}, Landroid/app/ActionBar;->getTabCount()I

    move-result v3

    if-ge p1, v3, :cond_34

    invoke-virtual {v2}, Landroid/app/ActionBar;->getSelectedNavigationIndex()I

    move-result v3

    if-eq p1, v3, :cond_34

    invoke-virtual {v2, p1}, Landroid/app/ActionBar;->getTabAt(I)Landroid/app/ActionBar$Tab;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->selectTab(Landroid/app/ActionBar$Tab;)V

    invoke-direct {p0}, Lcom/aide/ui/MainActivity;->wc()Landroid/widget/Spinner;

    move-result-object v2

    if-eqz v2, :cond_34

    invoke-virtual {v2, p1}, Landroid/widget/Spinner;->setSelection(I)V
    :try_end_34
    .catchall {:try_start_5 .. :try_end_34} :catchall_35

    :cond_34
    return-void

    :catchall_35
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v3, :cond_42

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_42
    throw v2
.end method

.method public FH(Z)V
    .registers 6

    const-wide v0, 0x5d088e50fbd5275L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Z)V

    :cond_c
    const/4 v2, -0x1

    invoke-direct {p0, v2}, Lcom/aide/ui/MainActivity;->v5(I)V

    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->lg()Lcom/aide/ui/views/SplitView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/views/SplitView;->isSplit()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->lg()Lcom/aide/ui/views/SplitView;

    move-result-object v2

    new-instance v3, Lcom/aide/ui/pa;

    invoke-direct {v3, p0}, Lcom/aide/ui/pa;-><init>(Lcom/aide/ui/MainActivity;)V

    invoke-virtual {v2, p1, v3}, Lcom/aide/ui/views/SplitView;->closeSplit(ZLjava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->J8()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/AIDEEditorPager;->we()V
    :try_end_2d
    .catchall {:try_start_5 .. :try_end_2d} :catchall_2e

    :cond_2d
    return-void

    :catchall_2e
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v3, :cond_3b

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3b
    throw v2
.end method

.method public FH(Ljava/lang/String;)Z
    .registers 6

    const-wide v0, -0x2d52c7fb678a8d40L  # -1.8599933679809598E90

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-static {p0, p1}, Landroid/support/v4/content/b;->j6(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_16

    if-nez p1, :cond_14

    const/4 p1, 0x1

    goto :goto_15

    :cond_14
    const/4 p1, 0x0

    :goto_15
    return p1

    :catchall_16
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v3, :cond_1e

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1e
    throw v2
.end method

.method public Hw(Z)Ljava/lang/String;
    .registers 11

    const-string v0, "last_seen_version"

    const-string v1, ""

    const-wide v2, 0x29653ef2f171307L

    :try_start_9
    sget-boolean v4, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v4, :cond_10

    invoke-static {v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Z)V
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_57

    :cond_10
    const/4 v4, 0x0

    :try_start_11
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->we()Ljava/lang/String;

    move-result-object v7

    if-eqz p1, :cond_35

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2b

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_35

    :cond_2b
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5, v0, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_35
    if-eqz v7, :cond_51

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    goto :goto_51

    :cond_3e
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a

    iget-boolean p1, p0, Lcom/aide/ui/MainActivity;->QX:Z

    if-eqz p1, :cond_49

    return-object v4

    :cond_49
    return-object v1

    :cond_4a
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_4e
    .catchall {:try_start_11 .. :try_end_4e} :catchall_52

    if-nez p1, :cond_51

    return-object v6

    :cond_51
    :goto_51
    return-object v4

    :catchall_52
    move-exception v0

    :try_start_53
    invoke-static {v0}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V
    :try_end_56
    .catchall {:try_start_53 .. :try_end_56} :catchall_57

    return-object v4

    :catchall_57
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v1, :cond_64

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v0, v2, v3, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_64
    throw v0
.end method

.method public Hw()V
    .registers 5

    const-wide v0, 0x393c7839302c68afL  # 5.483049871376746E-33

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/MainActivity;->gn:Lcom/aide/common/sa;

    invoke-virtual {v2}, Lcom/aide/common/sa;->j6()V
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_12

    return-void

    :catchall_12
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v3, :cond_1a

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1a
    throw v2
.end method

.method public Hw(I)V
    .registers 6

    const-wide v0, -0x3631e1c74fdf31dL

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    invoke-static {p0, p1}, Lcom/aide/ui/preferences/PreferencesActivity;->j6(Landroid/app/Activity;I)V
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_10

    return-void

    :catchall_10
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v3, :cond_1d

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1d
    throw v2
.end method

.method public Hw(Ljava/lang/String;)V
    .registers 11

    const-wide v0, -0x9f7ae15b41f9130L  # -3.73929306328093E260

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-static {p1}, Labcd/FileSystemUtils;->VH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "java"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8a

    const-string v4, "xml"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8a

    const-string v4, "svg"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8a

    const-string v4, "class"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8a

    const-string v4, "js"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8a

    if-eqz v3, :cond_8a

    const-string v2, "text"

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4b

    goto :goto_8a

    :cond_4b
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-ge v2, v4, :cond_a5

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v4, "android.intent.action.VIEW"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_67
    .catchall {:try_start_5 .. :try_end_67} :catchall_a6

    :try_start_67
    invoke-virtual {p0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_6a
    .catch Landroid/content/ActivityNotFoundException; {:try_start_67 .. :try_end_6a} :catch_6b
    .catchall {:try_start_67 .. :try_end_6a} :catchall_a6

    goto :goto_a5

    :catch_6b
    move-exception v2

    :try_start_6c
    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No handler found for type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/s1243808733/util/Toasty;->toast(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_a5

    :cond_8a
    :goto_8a
    invoke-static {p1}, Labcd/FileSystemUtils;->we(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a5

    new-instance v2, Labcd/Tl;

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v3, v2

    move-object v4, p1

    invoke-direct/range {v3 .. v8}, Labcd/Tl;-><init>(Ljava/lang/String;IIII)V

    invoke-virtual {p0, v2}, Lcom/aide/ui/MainActivity;->j6(Labcd/Tl;)V

    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v2

    invoke-virtual {v2, p1}, Labcd/Zk;->FH(Ljava/lang/String;)V
    :try_end_a5
    .catchall {:try_start_6c .. :try_end_a5} :catchall_a6

    :cond_a5
    :goto_a5
    return-void

    :catchall_a6
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v3, :cond_ae

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_ae
    throw v2
.end method

.method public I()V
    .registers 10

    const-wide v0, -0x1beadc70dcc0fde0L  # -1.3070733326220433E174

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/MainActivity;->a8:Landroid/os/Handler;

    iget-object v3, p0, Lcom/aide/ui/MainActivity;->lg:Lcom/aide/ui/MainActivity$a;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget v2, p0, Lcom/aide/ui/MainActivity;->U2:I

    if-lez v2, :cond_23

    iget-object v3, p0, Lcom/aide/ui/MainActivity;->a8:Landroid/os/Handler;

    iget-object v4, p0, Lcom/aide/ui/MainActivity;->lg:Lcom/aide/ui/MainActivity$a;

    int-to-long v5, v2

    const-wide/16 v7, 0x3e8

    mul-long v5, v5, v7

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_23
    .catchall {:try_start_5 .. :try_end_23} :catchall_24

    :cond_23
    return-void

    :catchall_24
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v3, :cond_2c

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2c
    throw v2
.end method

.method public J0()Lcom/aide/ui/browsers/DebugBrowser;
    .registers 5

    const-wide v0, -0x7aaba873c81e81bbL  # -5.471890250945286E-283

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->tp()Lcom/aide/ui/browsers/BrowserPager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/browsers/BrowserPager;->getDebugBrowser()Lcom/aide/ui/browsers/DebugBrowser;

    move-result-object v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return-object v0

    :catchall_15
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1d
    throw v2
.end method

.method public J8()Lcom/aide/ui/AIDEEditorPager;
    .registers 5

    const-wide v0, 0x2d678c70cd713fd9L  # 5.7801129934065475E-90

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    const v2, 0x7f0800f1

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/aide/ui/AIDEEditorPager;
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_16

    return-object v2

    :catchall_16
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v3, :cond_1e

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1e
    throw v2
.end method

.method public KD()V
    .registers 5

    const-wide v0, 0x19b993a819e608b8L  # 9.405212294515476E-185

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->J8()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/AIDEEditorPager;->J8()V

    sget v2, Lcom/aide/ui/browsers/BrowserPager;->CU:I

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/aide/ui/MainActivity;->j6(IZ)V
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_1a

    return-void

    :catchall_1a
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v3, :cond_22

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_22
    throw v2
.end method

.method public Mr()Lcom/aide/ui/browsers/LogCatBrowser;
    .registers 5

    const-wide v0, 0x5124e4515f7971f8L  # 7.926949110663134E82

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->tp()Lcom/aide/ui/browsers/BrowserPager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/browsers/BrowserPager;->getLogCatBrowser()Lcom/aide/ui/browsers/LogCatBrowser;

    move-result-object v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return-object v0

    :catchall_15
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1d
    throw v2
.end method

.method public Mz()V
    .registers 6

    const-wide v0, 0x39d3091638c9190dL  # 3.7540895189522355E-30

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-static {}, Lcom/aide/ui/U;->SI()Labcd/Cl;

    move-result-object v3

    invoke-virtual {v3}, Labcd/Cl;->Zo()Lcom/aide/ui/trainer/g$a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/aide/ui/trainer/g$c;->Hw()I

    move-result v3

    invoke-static {}, Lcom/aide/ui/U;->SI()Labcd/Cl;

    move-result-object v4

    invoke-virtual {v4}, Labcd/Cl;->Zo()Lcom/aide/ui/trainer/g$a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/aide/ui/trainer/g$c;->J0()[Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/aide/common/Za;->j6(Landroid/app/ActionBar;I[Ljava/lang/String;)V

    invoke-static {}, Lcom/aide/ui/U;->SI()Labcd/Cl;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Cl;->lg()Z

    move-result v2

    if-eqz v2, :cond_3e

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setNavigationMode(I)V

    goto :goto_46

    :cond_3e
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setNavigationMode(I)V
    :try_end_46
    .catchall {:try_start_5 .. :try_end_46} :catchall_47

    :goto_46
    return-void

    :catchall_47
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v3, :cond_4f

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_4f
    throw v2
.end method

.method public OW()V
    .registers 5

    const-wide v0, -0x4b7631d32ed8e0L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->lg()Lcom/aide/ui/views/SplitView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/views/SplitView;->isSplit()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->tp()Lcom/aide/ui/browsers/BrowserPager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/browsers/BrowserPager;->getCurrentBrowser()I

    move-result v2

    sget v3, Lcom/aide/ui/browsers/BrowserPager;->CU:I

    if-ne v2, v3, :cond_27

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/aide/ui/MainActivity;->FH(Z)V

    goto :goto_2a

    :cond_27
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->KD()V
    :try_end_2a
    .catchall {:try_start_5 .. :try_end_2a} :catchall_2b

    :goto_2a
    return-void

    :catchall_2b
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v3, :cond_33

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_33
    throw v2
.end method

.method public P8()Z
    .registers 14

    const-string v0, "ValuableApps"

    const-wide v1, -0xc4eb6c02c15080L

    :try_start_7
    sget-boolean v3, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v3, :cond_e

    invoke-static {v1, v2, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_e
    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v3

    invoke-virtual {v3}, Labcd/Zk;->j3()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_85

    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v3

    invoke-virtual {v3}, Labcd/Zk;->U2()Z

    move-result v3

    if-eqz v3, :cond_85

    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v3

    invoke-virtual {v3}, Labcd/Zk;->J0()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-static {v3, v5}, Labcd/gj;->FH(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, ""

    invoke-interface {v5, v0, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/util/HashSet;

    const-string v8, "\n"

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v7, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_85

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_5f

    const/16 v6, 0xa

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_5f
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    new-instance v10, Lcom/aide/ui/ya;

    invoke-direct {v10, p0}, Lcom/aide/ui/ya;-><init>(Lcom/aide/ui/MainActivity;)V

    const-string v6, "Do you want to get more exposure for your app?"

    const-string v7, "If you have built something great using AIDE please write about it in our Google+ community."

    const/4 v8, 0x1

    const-string v9, "Open Google+"

    const-string v11, "Not now"

    const/4 v12, 0x0

    move-object v5, p0

    invoke-static/range {v5 .. v12}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;)V
    :try_end_83
    .catchall {:try_start_7 .. :try_end_83} :catchall_86

    const/4 v0, 0x1

    return v0

    :cond_85
    return v4

    :catchall_86
    move-exception v0

    sget-boolean v3, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v3, :cond_8e

    invoke-static {v0, v1, v2, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_8e
    throw v0
.end method

.method public QX()Lcom/aide/ui/browsers/FileBrowser;
    .registers 5

    const-wide v0, -0x43963a03bc5d3d40L  # -1.1177422050532188E-17

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->tp()Lcom/aide/ui/browsers/BrowserPager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/browsers/BrowserPager;->getFileBrowser()Lcom/aide/ui/browsers/FileBrowser;

    move-result-object v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return-object v0

    :catchall_15
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1d
    throw v2
.end method

.method public Qq()V
    .registers 6

    const-wide v0, 0x363d6765f6edf133L  # 2.0118964532627982E-47

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    const v2, 0x7f0800ee

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/aide/ui/MainActivity;->rN:Lcom/aide/ui/Z;

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Lcom/aide/ui/Z;->j6(Landroid/view/View;Z)V
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_1a

    return-void

    :catchall_1a
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v3, :cond_22

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_22
    throw v2
.end method

.method public SI()V
    .registers 5

    const-wide v0, -0x17040751d42486bbL  # -5.22722862548179E197

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->J8()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/AIDEEditorPager;->J8()V

    sget v2, Lcom/aide/ui/browsers/BrowserPager;->Eq:I

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/aide/ui/MainActivity;->j6(IZ)V
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_1a

    return-void

    :catchall_1a
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v3, :cond_22

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_22
    throw v2
.end method

.method public Sf()V
    .registers 5

    const-wide v0, -0xe732820e61aa859L  # -9.39097626847189E238

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->vJ()V

    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Zk;->er()V

    invoke-static {}, Lcom/aide/ui/U;->J8()Labcd/mk;

    move-result-object v2

    invoke-virtual {v2}, Labcd/mk;->Hw()V

    invoke-static {}, Lcom/aide/ui/U;->EQ()Labcd/Xj;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Xj;->J0()V
    :try_end_24
    .catchall {:try_start_5 .. :try_end_24} :catchall_25

    return-void

    :catchall_25
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v3, :cond_2d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2d
    throw v2
.end method

.method public U2()Landroid/view/View;
    .registers 5

    const-wide v0, -0x1e572d6203a2b020L  # -2.791882292413606E162

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v0, p0, Lcom/aide/ui/MainActivity;->yS:Landroid/view/View;
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return-object v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public VH()V
    .registers 5

    const-wide v0, -0x12fd429e7892435dL  # -1.2920256454680675E217

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->BT()Z

    move-result v2

    if-nez v2, :cond_2b

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/aide/ui/MainActivity;->Zo(Z)V

    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->J8()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/AIDEEditorPager;->J8()V

    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->J8()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->BT()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/aide/ui/AIDEEditorPager;->setIdentifierClickingEnabled(Z)V

    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->ef()V
    :try_end_2b
    .catchall {:try_start_5 .. :try_end_2b} :catchall_2c

    :cond_2b
    return-void

    :catchall_2c
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v3, :cond_34

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_34
    throw v2
.end method

.method public Ws()Lcom/aide/ui/browsers/ErrorBrowser;
    .registers 5

    const-wide v0, -0x24cb7ab2eddeec40L  # -2.275885724574377E131

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->tp()Lcom/aide/ui/browsers/BrowserPager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/browsers/BrowserPager;->getErrorBrowser()Lcom/aide/ui/browsers/ErrorBrowser;

    move-result-object v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return-object v0

    :catchall_15
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1d
    throw v2
.end method

.method public XL()J
    .registers 5

    const-wide v0, -0x50ffbfba4205d240L  # -2.676905240209574E-82

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-wide v0, p0, Lcom/aide/ui/MainActivity;->BT:J
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return-wide v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public Zo()V
    .registers 6

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    const-wide v1, -0x3ad82a46954aa380L

    :try_start_7
    sget-boolean v3, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v3, :cond_e

    invoke-static {v1, v2, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_e
    invoke-static {}, Lcom/aide/ui/U;->dx()Z

    move-result v3

    if-eqz v3, :cond_2e

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/aide/ui/MainActivity;->FH(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_2a

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    aput-object v0, v3, v4

    const/16 v0, 0x16

    invoke-static {p0, v3, v0}, Landroid/support/v4/app/c;->j6(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void

    :cond_2a
    const/4 v0, 0x0

    invoke-virtual {p0, v4, v0, v0}, Lcom/aide/ui/MainActivity;->j6(ZLjava/lang/String;Lcom/aide/ui/trainer/g$i;)V
    :try_end_2e
    .catchall {:try_start_7 .. :try_end_2e} :catchall_2f

    :cond_2e
    return-void

    :catchall_2f
    move-exception v0

    sget-boolean v3, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v3, :cond_37

    invoke-static {v0, v1, v2, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_37
    throw v0
.end method

.method public a8()I
    .registers 5

    const-wide v0, 0x27de5064d100b620L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/MainActivity;->er:Lcom/aide/ui/La;

    invoke-virtual {v2}, Lcom/aide/ui/La;->j6()I

    move-result v0
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_13

    return v0

    :catchall_13
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v3, :cond_1b

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1b
    throw v2
.end method

.method public aM()I
    .registers 5

    const-wide v0, -0x44eec034ddd0131L  # -6.501218731161185E287

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget v0, p0, Lcom/aide/ui/MainActivity;->XL:I
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public aj()V
    .registers 10

    const-wide v0, 0x65cb047128a7ef0L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->J8()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/AIDEEditorPager;->getFileEditors()Ljava/util/List;

    move-result-object v2

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_54

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/aide/ui/AIDEEditor;

    invoke-virtual {v4}, Lcom/aide/ui/AIDEEditor;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Labcd/FileSystemUtils;->tp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/aide/ui/U;->er()Labcd/Nk;

    move-result-object v7

    invoke-virtual {v7, v4}, Labcd/Nk;->DW(Ljava/lang/String;)Labcd/Nk$a;

    move-result-object v4

    invoke-interface {v4}, Labcd/Nk$a;->J0()Z

    move-result v4

    if-eqz v4, :cond_50

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " *"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_50
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    :cond_54
    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v3

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v4
    :try_end_5c
    .catchall {:try_start_5 .. :try_end_5c} :catchall_7c

    if-eqz v4, :cond_61

    const-string v4, "打开文件"

    goto :goto_63

    :cond_61
    const-string v4, "Open Files"

    :goto_63
    :try_start_63
    invoke-static {}, Lcom/s1243808733/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v6

    const v7, 0x7f0d06d8

    invoke-virtual {v6, v7}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/aide/ui/sa;

    invoke-direct {v7, p0, v2}, Lcom/aide/ui/sa;-><init>(Lcom/aide/ui/MainActivity;Ljava/util/List;)V

    new-instance v8, Lcom/aide/ui/ua;

    invoke-direct {v8, p0}, Lcom/aide/ui/ua;-><init>(Lcom/aide/ui/MainActivity;)V

    invoke-static/range {v3 .. v8}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/aide/common/ab;Ljava/lang/Runnable;)V
    :try_end_7b
    .catchall {:try_start_63 .. :try_end_7b} :catchall_7c

    return-void

    :catchall_7c
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v3, :cond_84

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_84
    goto :goto_86

    :goto_85
    throw v2

    :goto_86
    goto :goto_85
.end method

.method public br()V
    .registers 5

    const-wide v0, 0x2139dd63d66a9be0L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    new-instance v2, Lcom/aide/ui/qa;

    invoke-direct {v2, p0}, Lcom/aide/ui/qa;-><init>(Lcom/aide/ui/MainActivity;)V

    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->lg()Lcom/aide/ui/views/SplitView;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/aide/ui/views/SplitView;->toggleSplit(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->lg()Lcom/aide/ui/views/SplitView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/views/SplitView;->isSplit()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->J8()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/AIDEEditorPager;->J8()V

    :cond_29
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->lg()Lcom/aide/ui/views/SplitView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/views/SplitView;->isSplit()Z

    move-result v2

    if-eqz v2, :cond_3b

    invoke-static {}, Lcom/aide/ui/U;->j6()Labcd/we;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Labcd/we;->j6(Z)V
    :try_end_3b
    .catchall {:try_start_5 .. :try_end_3b} :catchall_3c

    :cond_3b
    return-void

    :catchall_3c
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v3, :cond_44

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_44
    throw v2
.end method

.method public ca()V
    .registers 5

    const-wide v0, 0x1c4218e32a33f60L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->dx()Z

    move-result v2

    if-eqz v2, :cond_18

    iget-object v2, p0, Lcom/aide/ui/MainActivity;->VH:Lcom/aide/common/sa;

    invoke-virtual {v2}, Lcom/aide/common/sa;->FH()V

    goto :goto_20

    :cond_18
    new-instance v2, Labcd/kh;

    invoke-direct {v2}, Labcd/kh;-><init>()V

    invoke-static {p0, v2}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Lcom/aide/common/ma;)V
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_21

    :goto_20
    return-void

    :catchall_21
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v3, :cond_29

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_29
    throw v2
.end method

.method public cb()V
    .registers 5

    const-wide v0, 0x14018d5f93c14457L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/MainActivity;->gn:Lcom/aide/common/sa;

    invoke-virtual {v2}, Lcom/aide/common/sa;->Hw()V
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_12

    return-void

    :catchall_12
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v3, :cond_1a

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1a
    throw v2
.end method

.method public cn()V
    .registers 5

    const-wide v0, -0x1af038f0f11fff60L  # -6.43855156523886E178

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->rN()Z

    move-result v2

    if-nez v2, :cond_18

    iget-object v2, p0, Lcom/aide/ui/MainActivity;->u7:Lcom/aide/ui/Wa;

    invoke-virtual {v2}, Lcom/aide/ui/Wa;->FH()V

    goto :goto_1d

    :cond_18
    iget-object v2, p0, Lcom/aide/ui/MainActivity;->EQ:Lcom/aide/ui/fa;

    invoke-virtual {v2}, Lcom/aide/ui/fa;->FH()V
    :try_end_1d
    .catchall {:try_start_5 .. :try_end_1d} :catchall_1e

    :goto_1d
    return-void

    :catchall_1e
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v3, :cond_26

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_26
    throw v2
.end method

.method public dx()V
    .registers 5

    const-wide v0, -0x3511d33474f5d100L  # -9.031840538048856E52

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->J8()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/AIDEEditorPager;->J8()V

    sget v2, Lcom/aide/ui/browsers/BrowserPager;->Xa:I

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/aide/ui/MainActivity;->j6(IZ)V
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_1a

    return-void

    :catchall_1a
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v3, :cond_22

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_22
    throw v2
.end method

.method public ef()V
    .registers 5

    const-wide v0, 0x1a82f4ccd6fe89ecL

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->vy()Z

    move-result v2

    if-nez v2, :cond_19

    iget-boolean v2, p0, Lcom/aide/ui/MainActivity;->gW:Z

    if-eqz v2, :cond_19

    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    :cond_19
    invoke-direct {p0}, Lcom/aide/ui/MainActivity;->aq()V
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_1d

    return-void

    :catchall_1d
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v3, :cond_25

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_25
    throw v2
.end method

.method public ei()Z
    .registers 6

    const-wide v0, -0xf8d700c145b1350L  # -4.610932948817873E233

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->XL()Labcd/Ak;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Ak;->j6()Labcd/Tl;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_23

    invoke-static {}, Lcom/aide/ui/U;->XL()Labcd/Ak;

    move-result-object v4

    invoke-virtual {v4, v3}, Labcd/Ak;->j6(Z)V

    invoke-virtual {p0, v2}, Lcom/aide/ui/MainActivity;->j6(Labcd/Tl;)V
    :try_end_21
    .catchall {:try_start_5 .. :try_end_21} :catchall_24

    const/4 v0, 0x1

    return v0

    :cond_23
    return v3

    :catchall_24
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v3, :cond_2c

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2c
    throw v2
.end method

.method public er()Z
    .registers 5

    const-wide v0, 0xd3942eb79b2c830L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-boolean v0, p0, Lcom/aide/ui/MainActivity;->j3:Z
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public g3()V
    .registers 9

    const-wide v0, 0x4e4a255e65887891L  # 1.4097880013042698E69

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-direct {p0}, Lcom/aide/ui/MainActivity;->jO()Z

    move-result v2

    if-eqz v2, :cond_5e

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->J8()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/aide/ui/AIDEEditorPager;->getFileEditors()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    :goto_1f
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_5e

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/aide/ui/AIDEEditor;

    invoke-virtual {v5}, Lcom/aide/ui/AIDEEditor;->getModel()Labcd/Nk$a;

    move-result-object v5

    invoke-interface {v5}, Labcd/Nk$a;->Ws()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Labcd/FileSystemUtils;->tp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/aide/ui/U;->dx()Z

    move-result v7

    if-nez v7, :cond_54

    invoke-interface {v5}, Labcd/Nk$a;->J0()Z

    move-result v5

    if-eqz v5, :cond_54

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " *"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_54
    invoke-virtual {v2, v4}, Landroid/app/ActionBar;->getTabAt(I)Landroid/app/ActionBar$Tab;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;
    :try_end_5b
    .catchall {:try_start_5 .. :try_end_5b} :catchall_5f

    add-int/lit8 v4, v4, 0x1

    goto :goto_1f

    :cond_5e
    return-void

    :catchall_5f
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v3, :cond_67

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_67
    goto :goto_69

    :goto_68
    throw v2

    :goto_69
    goto :goto_68
.end method

.method public gW()Z
    .registers 5

    const-wide v0, -0x10f11eb74dda9da3L  # -9.144169379434885E226

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-boolean v0, p0, Lcom/aide/ui/MainActivity;->aM:Z
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public gn()V
    .registers 7

    const-wide v0, -0xb83767416fa31cbL

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->er()Labcd/Nk;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Nk;->we()Z

    move-result v2

    if-eqz v2, :cond_2a

    new-instance v2, Lcom/aide/ui/na;

    invoke-direct {v2, p0}, Lcom/aide/ui/na;-><init>(Lcom/aide/ui/MainActivity;)V

    new-instance v3, Lcom/aide/ui/oa;

    invoke-direct {v3, p0}, Lcom/aide/ui/oa;-><init>(Lcom/aide/ui/MainActivity;)V

    const v4, 0x7f0d05e7

    const v5, 0x7f0d05e6

    invoke-static {p0, v4, v5, v2, v3}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;IILjava/lang/Runnable;Ljava/lang/Runnable;)V

    goto :goto_2d

    :cond_2a
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V
    :try_end_2d
    .catchall {:try_start_5 .. :try_end_2d} :catchall_2e

    :goto_2d
    return-void

    :catchall_2e
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v3, :cond_36

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_36
    throw v2
.end method

.method public initQuickKey()V
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/aide/ui/MainActivity;->FN()V

    return-void
.end method

.method public j3()Lcom/aide/common/KeyStrokeDetector;
    .registers 5

    const-wide v0, -0x1e6c06d89b7e4d4dL  # -1.1232245367419307E162

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v0, p0, Lcom/aide/ui/MainActivity;->Zo:Lcom/aide/common/KeyStrokeDetector;
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return-object v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public j6(Landroid/graphics/Rect;)Landroid/view/View;
    .registers 13

    const-wide v0, 0x250bbe82e7fe089cL

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/aide/ui/MainActivity;->yS:Landroid/view/View;

    const v2, 0x7f08011f

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/AbsoluteLayout;

    const/4 v3, 0x2

    new-array v3, v3, [I

    invoke-virtual {v2, v3}, Landroid/widget/AbsoluteLayout;->getLocationOnScreen([I)V

    invoke-virtual {v2}, Landroid/widget/AbsoluteLayout;->removeAllViews()V

    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    iget v8, p1, Landroid/graphics/Rect;->left:I

    const/4 v9, 0x0

    aget v9, v3, v9

    sub-int/2addr v8, v9

    iget v9, p1, Landroid/graphics/Rect;->top:I

    const/4 v10, 0x1

    aget v3, v3, v10

    sub-int/2addr v9, v3

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v2, v4, v5}, Landroid/widget/AbsoluteLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_42
    .catchall {:try_start_5 .. :try_end_42} :catchall_43

    return-object v4

    :catchall_43
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v3, :cond_4b

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_4b
    throw v2
.end method

.method public j6()V
    .registers 5

    const-wide v0, 0x2845d3565ddfc820L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-direct {p0}, Lcom/aide/ui/MainActivity;->Eq()V

    invoke-direct {p0}, Lcom/aide/ui/MainActivity;->hz()V

    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->Ws()Lcom/aide/ui/browsers/ErrorBrowser;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/browsers/ErrorBrowser;->FH()V
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_1a

    return-void

    :catchall_1a
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v3, :cond_22

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_22
    throw v2
.end method

.method public j6(I)V
    .registers 6

    const-wide v0, -0x3e1ea0f0bd5139b1L  # -2.3315399894617076E9

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_c
    invoke-direct {p0, p1}, Lcom/aide/ui/MainActivity;->v5(I)V
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_10

    return-void

    :catchall_10
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v3, :cond_1d

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1d
    throw v2
.end method

.method public j6(Labcd/Tl;)V
    .registers 6

    const-wide v0, -0x1eccd28ff19947e0L  # -1.6851148285533243E160

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    const/4 v2, 0x1

    invoke-virtual {p0, p1, v2}, Lcom/aide/ui/MainActivity;->j6(Labcd/Tl;Z)V
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v3, :cond_19

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_19
    throw v2
.end method

.method public j6(Labcd/Tl;Z)V
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p2}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v1, -0x1d73a42a30ef705bL  # -5.225819629764688E166

    invoke-static {v1, v2, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    if-eqz p1, :cond_be

    iget-object v0, p1, Labcd/Tl;->FH:Ljava/lang/String;

    invoke-static {v0}, Labcd/FileSystemUtils;->J8(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_be

    iget-object v0, p1, Labcd/Tl;->FH:Ljava/lang/String;

    invoke-static {}, Lcom/aide/ui/U;->er()Labcd/Nk;

    move-result-object v1

    invoke-virtual {v1}, Labcd/Nk;->DW()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4c

    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->J8()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v0

    iget v2, p1, Labcd/Tl;->Hw:I

    iget v3, p1, Labcd/Tl;->v5:I

    iget v4, p1, Labcd/Tl;->Zo:I

    iget v5, p1, Labcd/Tl;->VH:I

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/aide/ui/AIDEEditorPager;->j6(IIII)V

    if-eqz p2, :cond_44

    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->J8()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/AIDEEditorPager;->we()V

    :cond_44
    invoke-static {}, Lcom/aide/ui/U;->XL()Labcd/Ak;

    move-result-object v0

    :goto_48
    invoke-virtual {v0, v1}, Labcd/Ak;->j6(Z)V

    goto :goto_be

    :cond_4c
    invoke-static {}, Lcom/aide/ui/U;->XL()Labcd/Ak;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Ak;->Zo()Z

    move-result v0

    invoke-static {}, Lcom/aide/ui/U;->XL()Labcd/Ak;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Labcd/Ak;->j6(Z)V
    :try_end_5c
    .catchall {:try_start_0 .. :try_end_5c} :catchall_bf

    :try_start_5c
    invoke-static {}, Lcom/aide/ui/U;->er()Labcd/Nk;

    move-result-object v2

    iget-object v3, p1, Labcd/Tl;->FH:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Labcd/Nk;->j6(Ljava/lang/String;Z)V
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_65} :catch_8b
    .catchall {:try_start_5c .. :try_end_65} :catchall_89

    if-eqz v0, :cond_6e

    :try_start_67
    invoke-static {}, Lcom/aide/ui/U;->XL()Labcd/Ak;

    move-result-object v0

    invoke-virtual {v0, v1}, Labcd/Ak;->j6(Z)V

    :cond_6e
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->J8()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v0

    iget v2, p1, Labcd/Tl;->Hw:I

    iget v3, p1, Labcd/Tl;->v5:I

    iget v4, p1, Labcd/Tl;->Zo:I

    iget v5, p1, Labcd/Tl;->VH:I

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/aide/ui/AIDEEditorPager;->j6(IIII)V

    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->J8()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/AIDEEditorPager;->EQ()V

    invoke-static {}, Lcom/aide/ui/U;->XL()Labcd/Ak;

    move-result-object v0
    :try_end_88
    .catchall {:try_start_67 .. :try_end_88} :catchall_bf

    goto :goto_48

    :catchall_89
    move-exception v2

    goto :goto_b4

    :catch_8b
    move-exception v2

    :try_start_8c
    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p1, Labcd/Tl;->FH:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " could not be loaded!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/s1243808733/util/Toasty;->toast(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V
    :try_end_aa
    .catchall {:try_start_8c .. :try_end_aa} :catchall_89

    if-eqz v0, :cond_b3

    :try_start_ac
    invoke-static {}, Lcom/aide/ui/U;->XL()Labcd/Ak;

    move-result-object v0

    invoke-virtual {v0, v1}, Labcd/Ak;->j6(Z)V

    :cond_b3
    return-void

    :goto_b4
    if-eqz v0, :cond_bd

    invoke-static {}, Lcom/aide/ui/U;->XL()Labcd/Ak;

    move-result-object v0

    invoke-virtual {v0, v1}, Labcd/Ak;->j6(Z)V

    :cond_bd
    throw v2
    :try_end_be
    .catchall {:try_start_ac .. :try_end_be} :catchall_bf

    :cond_be
    :goto_be
    return-void

    :catchall_bf
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v1, :cond_d4

    const-wide v2, -0x1d73a42a30ef705bL  # -5.225819629764688E166

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p2}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d4
    goto :goto_d6

    :goto_d5
    throw v0

    :goto_d6
    goto :goto_d5
.end method

.method public j6(Landroid/view/View;Landroid/graphics/Rect;)V
    .registers 11

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v0, :cond_c

    const-wide v0, 0xbe26b4889ebf355L  # 2.00983988161895E-251

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iput-object p1, p0, Lcom/aide/ui/MainActivity;->yS:Landroid/view/View;

    const v0, 0x7f08011f

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsoluteLayout;

    const/4 v1, 0x2

    new-array v1, v1, [I

    invoke-virtual {v0, v1}, Landroid/widget/AbsoluteLayout;->getLocationOnScreen([I)V

    invoke-virtual {v0}, Landroid/widget/AbsoluteLayout;->removeAllViews()V

    new-instance v2, Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v4

    iget v5, p2, Landroid/graphics/Rect;->left:I

    const/4 v6, 0x0

    aget v6, v1, v6

    sub-int/2addr v5, v6

    iget v6, p2, Landroid/graphics/Rect;->top:I

    const/4 v7, 0x1

    aget v1, v1, v7

    sub-int/2addr v6, v1

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, p1, v2}, Landroid/widget/AbsoluteLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_3c
    .catchall {:try_start_0 .. :try_end_3c} :catchall_3d

    return-void

    :catchall_3d
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v1, :cond_4e

    const-wide v2, 0xbe26b4889ebf355L  # 2.00983988161895E-251

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4e
    throw v0
.end method

.method public j6(Ljava/lang/String;)V
    .registers 6

    const-wide v0, 0x94e1fab65387428L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-direct {p0}, Lcom/aide/ui/MainActivity;->Eq()V

    invoke-direct {p0}, Lcom/aide/ui/MainActivity;->hz()V

    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->Ws()Lcom/aide/ui/browsers/ErrorBrowser;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/browsers/ErrorBrowser;->Hw()V
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_1a

    return-void

    :catchall_1a
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v3, :cond_22

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_22
    throw v2
.end method

.method public j6(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v0, :cond_c

    const-wide v0, -0x19f218c8ad381095L  # -3.970679802334919E183

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->J8()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/AIDEEditorPager;->J8()V

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v0

    invoke-static {}, Lcom/s1243808733/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v1

    const v2, 0x7f0d06ac

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/aide/ui/wa;

    invoke-direct {v2, p0}, Lcom/aide/ui/wa;-><init>(Lcom/aide/ui/MainActivity;)V

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/aide/ui/U;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/aide/ui/U;->J0()Labcd/lk;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Labcd/lk;->j6(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_32
    .catchall {:try_start_0 .. :try_end_32} :catchall_33

    return-void

    :catchall_33
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v1, :cond_44

    const-wide v2, -0x19f218c8ad381095L  # -3.970679802334919E183

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_44
    throw v0
.end method

.method public j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
    .registers 13

    const-string v0, "Rated"

    const-string v1, "Rate"

    :try_start_4
    sget-boolean v2, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v2, :cond_14

    const-wide v3, 0x666c23dd69f88b05L  # 2.3914039641080346E185

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    invoke-static/range {v3 .. v8}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_14
    invoke-static {p0}, Lcom/aide/common/g;->J8(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_40

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_40

    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    sget-object v6, Lcom/aide/ui/U;->j6:Ljava/lang/String;

    const-string v7, "rate"

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v8, p3

    invoke-static/range {v3 .. v8}, Lcom/aide/common/Wa;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    goto :goto_45

    :cond_40
    if-eqz p3, :cond_45

    invoke-interface {p3}, Ljava/lang/Runnable;->run()V
    :try_end_45
    .catchall {:try_start_4 .. :try_end_45} :catchall_46

    :cond_45
    :goto_45
    return-void

    :catchall_46
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v1, :cond_58

    const-wide v2, 0x666c23dd69f88b05L  # 2.3914039641080346E185

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_58
    throw v0
.end method

.method public j6(Z)V
    .registers 6

    const-wide v0, 0x36eabdbbc3313b0L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Z)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/MainActivity;->er:Lcom/aide/ui/La;

    if-eqz p1, :cond_16

    iget-boolean v3, p0, Lcom/aide/ui/MainActivity;->Mr:Z

    if-eqz v3, :cond_16

    const/4 v3, 0x1

    goto :goto_17

    :cond_16
    const/4 v3, 0x0

    :goto_17
    invoke-virtual {v2, v3}, Lcom/aide/ui/La;->j6(Z)V

    invoke-static {}, Lcom/aide/ui/U;->j6()Labcd/we;

    move-result-object v2

    xor-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v3}, Labcd/we;->j6(Z)V
    :try_end_23
    .catchall {:try_start_5 .. :try_end_23} :catchall_24

    return-void

    :catchall_24
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v3, :cond_31

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_31
    throw v2
.end method

.method public j6(ZLjava/lang/String;Lcom/aide/ui/trainer/g$i;)V
    .registers 12

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v0, :cond_14

    new-instance v4, Ljava/lang/Boolean;

    invoke-direct {v4, p1}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v1, -0x1d454eea7d8a5ef8L

    move-object v3, p0

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aide/ui/MainActivity;->gW:Z

    if-eqz p1, :cond_1d

    invoke-virtual {p0, v0}, Lcom/aide/ui/MainActivity;->FH(Z)V

    goto :goto_42

    :cond_1d
    invoke-static {}, Lcom/aide/ui/U;->er()Labcd/Nk;

    move-result-object v1

    invoke-virtual {v1}, Labcd/Nk;->DW()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_33

    invoke-static {}, Lcom/aide/ui/U;->J8()Labcd/mk;

    move-result-object v2

    invoke-static {v1}, Labcd/FileSystemUtils;->EQ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Labcd/mk;->j6(Ljava/lang/String;)V

    goto :goto_42

    :cond_33
    invoke-static {}, Lcom/aide/ui/U;->J8()Labcd/mk;

    move-result-object v1

    invoke-static {}, Lcom/aide/ui/U;->J8()Labcd/mk;

    move-result-object v2

    invoke-virtual {v2}, Labcd/mk;->DW()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Labcd/mk;->j6(Ljava/lang/String;)V

    :goto_42
    invoke-static {}, Lcom/aide/ui/U;->er()Labcd/Nk;

    move-result-object v1

    invoke-virtual {v1, v0, v0}, Labcd/Nk;->j6(ZZ)V

    if-eqz p2, :cond_53

    invoke-static {}, Lcom/aide/ui/U;->SI()Labcd/Cl;

    move-result-object v0

    invoke-virtual {v0, p2}, Labcd/Cl;->FH(Ljava/lang/String;)V

    goto :goto_5c

    :cond_53
    if-eqz p3, :cond_5c

    invoke-static {}, Lcom/aide/ui/U;->SI()Labcd/Cl;

    move-result-object v0

    invoke-virtual {v0, p3}, Labcd/Cl;->v5(Lcom/aide/ui/trainer/g$i;)V

    :cond_5c
    :goto_5c
    invoke-static {p1}, Lcom/aide/ui/U;->j6(Z)V

    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->recreate()V
    :try_end_62
    .catchall {:try_start_0 .. :try_end_62} :catchall_63

    return-void

    :catchall_63
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v1, :cond_79

    const-wide v2, -0x1d454eea7d8a5ef8L

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p1}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v1, v0

    move-object v4, p0

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_79
    throw v0
.end method

.method public jJ()V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x40176323d3d9b8b0L
    .end annotation

    const-wide v0, 0xb7f27bbe441f080L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->dx()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_22

    invoke-static {p0}, Lcom/aide/common/g;->Hw(Landroid/content/Context;)F

    move-result v2

    const v4, 0x44188000  # 610.0f

    cmpg-float v2, v2, v4

    if-gtz v2, :cond_22

    :goto_1e
    invoke-static {p0, v3}, Lcom/aide/common/g;->j6(Landroid/app/Activity;Z)V

    goto :goto_29

    :cond_22
    invoke-static {p0}, Lcom/aide/common/g;->QX(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_29

    goto :goto_1e

    :cond_29
    :goto_29
    invoke-static {p0}, Lcom/aide/common/g;->FH(Landroid/app/Activity;)V
    :try_end_2c
    .catchall {:try_start_5 .. :try_end_2c} :catchall_2d

    return-void

    :catchall_2d
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v3, :cond_35

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_35
    goto :goto_37

    :goto_36
    throw v2

    :goto_37
    goto :goto_36
.end method

.method public lg()Lcom/aide/ui/views/SplitView;
    .registers 5

    const-wide v0, -0x1681c404d7f188d7L  # -1.4464288382506605E200

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    const v2, 0x7f080124

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/aide/ui/views/SplitView;
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_16

    return-object v2

    :catchall_16
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v3, :cond_1e

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1e
    throw v2
.end method

.method public lp()V
    .registers 5

    const-wide v0, 0x10a3e41319759a90L  # 1.639940504552641E-228

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    const/4 v2, -0x2

    invoke-virtual {p0, v2}, Lcom/aide/ui/MainActivity;->Hw(I)V
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v3, :cond_19

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_19
    throw v2
.end method

.method public nw()V
    .registers 6

    const-wide v0, -0x116b0fef8fa11ac0L  # -4.843806771749574E224

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->XL()Labcd/Ak;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Ak;->v5()Labcd/Tl;

    move-result-object v2

    if-eqz v2, :cond_21

    invoke-static {}, Lcom/aide/ui/U;->XL()Labcd/Ak;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Labcd/Ak;->j6(Z)V

    invoke-virtual {p0, v2}, Lcom/aide/ui/MainActivity;->j6(Labcd/Tl;)V
    :try_end_21
    .catchall {:try_start_5 .. :try_end_21} :catchall_22

    :cond_21
    return-void

    :catchall_22
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v3, :cond_2a

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2a
    throw v2
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 12
    .annotation runtime Labcd/su;
        method = 0x49ffabb7b9d8a187L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v0, :cond_18

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0xe9dd2f40670a86dL

    move-object v3, p0

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_18
    invoke-static {p0, p1, p2, p3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Object;IILandroid/content/Intent;)V

    const/16 v0, 0xc

    const/4 v1, -0x1

    if-ne p1, v0, :cond_27

    if-ne p2, v1, :cond_bf

    invoke-static {p3}, Lcom/aide/ui/activities/GotoBrowserActivity;->j6(Landroid/content/Intent;)V

    goto/16 :goto_bf

    :cond_27
    const v0, 0x123abc

    if-ne p1, v0, :cond_35

    invoke-static {}, Lcom/aide/ui/U;->QX()Labcd/yk;

    move-result-object v0

    invoke-virtual {v0, p3}, Labcd/yk;->j6(Landroid/content/Intent;)V

    goto/16 :goto_bf

    :cond_35
    const/16 v0, 0xf

    if-ne p1, v0, :cond_40

    if-ne p2, v1, :cond_bf

    invoke-static {p3}, Lcom/aide/ui/build/OutputConsoleActivity;->j6(Landroid/content/Intent;)V

    goto/16 :goto_bf

    :cond_40
    const/16 v0, 0xd

    if-ne p1, v0, :cond_63

    if-ne p2, v1, :cond_bf

    invoke-static {p3}, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->j6(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_55

    invoke-static {}, Lcom/aide/ui/U;->SI()Labcd/Cl;

    move-result-object v0

    :goto_50
    invoke-virtual {v0}, Labcd/Cl;->j6()V

    goto/16 :goto_bf

    :cond_55
    invoke-static {p3}, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->DW(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_bf

    invoke-static {}, Lcom/aide/ui/U;->SI()Labcd/Cl;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Cl;->BT()V

    goto :goto_bf

    :cond_63
    const/16 v0, 0xe

    if-ne p1, v0, :cond_6e

    if-ne p2, v1, :cond_bf

    invoke-static {}, Lcom/aide/ui/U;->SI()Labcd/Cl;

    move-result-object v0

    goto :goto_50

    :cond_6e
    const/16 v0, 0x10

    if-ne p1, v0, :cond_76

    invoke-static {p0}, Lcom/aide/ui/ib;->VH(Landroid/app/Activity;)V

    goto :goto_bf

    :cond_76
    const/16 v0, 0x11

    if-ne p1, v0, :cond_8a

    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->ca()V

    invoke-static {}, Lcom/aide/ui/U;->j6()Labcd/we;

    move-result-object v0

    invoke-virtual {v0}, Labcd/we;->j6()V

    sget-object v0, Lcom/aide/ui/build/f;->j6:Lcom/aide/ui/build/android/B;

    invoke-virtual {v0}, Lcom/aide/ui/build/android/B;->VH()V

    goto :goto_bf

    :cond_8a
    const/16 v0, 0x12

    if-ne p1, v0, :cond_9e

    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->ca()V

    invoke-static {}, Lcom/aide/ui/U;->j6()Labcd/we;

    move-result-object v0

    invoke-virtual {v0}, Labcd/we;->j6()V

    sget-object v0, Lcom/aide/ui/build/f;->DW:Lcom/aide/ui/build/java/h;

    invoke-virtual {v0}, Lcom/aide/ui/build/java/h;->VH()V

    goto :goto_bf

    :cond_9e
    const/16 v0, 0x13

    if-ne p1, v0, :cond_af

    invoke-static {}, Lcom/aide/ui/U;->j6()Labcd/we;

    move-result-object v0

    invoke-virtual {v0}, Labcd/we;->j6()V

    sget-object v0, Lcom/aide/ui/build/f;->Hw:Labcd/Le;

    invoke-virtual {v0}, Labcd/Le;->VH()V

    goto :goto_bf

    :cond_af
    const/16 v0, 0x14

    if-ne p1, v0, :cond_bf

    invoke-static {}, Lcom/aide/ui/U;->j6()Labcd/we;

    move-result-object v0

    invoke-virtual {v0}, Labcd/we;->j6()V

    sget-object v0, Lcom/aide/ui/build/f;->v5:Lcom/aide/ui/build/javascript/a;

    invoke-virtual {v0}, Lcom/aide/ui/build/javascript/a;->VH()V
    :try_end_bf
    .catchall {:try_start_0 .. :try_end_bf} :catchall_c0

    :cond_bf
    :goto_bf
    return-void

    :catchall_c0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v1, :cond_da

    const-wide v2, 0xe9dd2f40670a86dL

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_da
    goto :goto_dc

    :goto_db
    throw v0

    :goto_dc
    goto :goto_db
.end method

.method public onBackPressed()V
    .registers 12

    const-wide v0, -0x42a37514fac419c0L  # -4.056154328310318E-13

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/MainActivity;->u7:Lcom/aide/ui/Wa;

    invoke-virtual {v2}, Lcom/aide/ui/Wa;->DW()Z

    move-result v2

    if-eqz v2, :cond_1a

    iget-object v2, p0, Lcom/aide/ui/MainActivity;->u7:Lcom/aide/ui/Wa;

    invoke-virtual {v2}, Lcom/aide/ui/Wa;->j6()V

    goto :goto_7b

    :cond_1a
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->lg()Lcom/aide/ui/views/SplitView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/views/SplitView;->isSplit()Z

    move-result v2

    if-eqz v2, :cond_29

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/aide/ui/MainActivity;->FH(Z)V

    goto :goto_7b

    :cond_29
    invoke-static {}, Lcom/aide/ui/U;->dx()Z

    move-result v2

    if-nez v2, :cond_36

    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->ei()Z

    move-result v2

    if-eqz v2, :cond_36

    goto :goto_7b

    :cond_36
    invoke-static {p0}, Lcom/aide/common/g;->J8(Landroid/content/Context;)Z

    move-result v2

    const/4 v3, 0x0

    const v4, 0x7f0d0667

    const-wide/16 v5, 0x7d0

    if-eqz v2, :cond_60

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-wide v9, p0, Lcom/aide/ui/MainActivity;->v5:J

    sub-long v9, v7, v9

    cmp-long v2, v9, v5

    if-gez v2, :cond_52

    invoke-static {p0}, Lcom/aide/ui/activities/TrainerCourseActivity;->j6(Landroid/app/Activity;)V

    goto :goto_7b

    :cond_52
    iput-wide v7, p0, Lcom/aide/ui/MainActivity;->v5:J

    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v4, v3}, Lcom/s1243808733/util/Toasty;->toast(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    :goto_5c
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_7b

    :cond_60
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-wide v9, p0, Lcom/aide/ui/MainActivity;->v5:J

    sub-long v9, v7, v9

    cmp-long v2, v9, v5

    if-gez v2, :cond_70

    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->gn()V

    goto :goto_7b

    :cond_70
    iput-wide v7, p0, Lcom/aide/ui/MainActivity;->v5:J

    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v4, v3}, Lcom/s1243808733/util/Toasty;->toast(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2
    :try_end_7a
    .catchall {:try_start_5 .. :try_end_7a} :catchall_7c

    goto :goto_5c

    :goto_7b
    return-void

    :catchall_7c
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v3, :cond_84

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_84
    goto :goto_86

    :goto_85
    throw v2

    :goto_86
    goto :goto_85
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 6

    const-wide v0, 0xa6ca3e61eb5a139L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->j3()Lcom/aide/common/KeyStrokeDetector;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/aide/common/KeyStrokeDetector;->j6(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->jJ()V

    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->ef()V
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_1d

    return-void

    :catchall_1d
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v3, :cond_25

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_25
    throw v2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 21

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    const-string v0, "EXTRA_GCM_NOTIFICATION_IAP_PRODUCT_ID"

    const-wide v2, 0x16db5858385L

    const-wide v10, 0x45d01cc9729a957L

    :try_start_10
    const-string v4, "androidRelease"

    const-string v5, "https://backbone-direct.appfour.com/project/SvkPQDcCSkSU4JZRRqsTuw/variant/androidRelease/audience/dev/probes.zip"

    const-string v6, "https://backbone-cdn.appfour.com/project/SvkPQDcCSkSU4JZRRqsTuw/variant/androidRelease/audience/public/probes.zip"

    const-string v7, "https://backbone-ingest.appfour.com/api/report/v1alpha1/data/project/SvkPQDcCSkSU4JZRRqsTuw"

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Object;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v1, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v1, :cond_24

    invoke-static {v10, v11, v8, v9}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_24
    const-string v1, "onCreate"

    invoke-static {v8, v1}, Lcom/aide/common/AIDELog;->infoWithClassName(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/aide/common/g;->j6()Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-static {}, Ltv/ouya/console/api/i;->FH()Ltv/ouya/console/api/i;

    move-result-object v1

    const-string v2, "9b57b7e2-2fa3-44db-9131-04b76a1f491c"

    invoke-virtual {v1, v8, v2}, Ltv/ouya/console/api/i;->j6(Landroid/content/Context;Ljava/lang/String;)V

    :cond_38
    invoke-static/range {p0 .. p0}, Lcom/aide/ui/U;->j6(Landroid/content/Context;)V

    invoke-static/range {p0 .. p0}, Lcom/aide/common/g;->j6(Landroid/app/Activity;)V

    const/4 v1, 0x1

    iput-boolean v1, v8, Lcom/aide/ui/MainActivity;->gW:Z

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, v8, Lcom/aide/ui/MainActivity;->a8:Landroid/os/Handler;

    invoke-static/range {p0 .. p0}, Lcom/aide/ui/aa;->j6(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, v8, Lcom/aide/ui/MainActivity;->QX:Z

    invoke-static {}, Lcom/aide/ui/U;->Mr()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Lcom/aide/common/g;->j6(Landroid/app/Activity;Ljava/lang/String;)V

    invoke-static {}, Labcd/F;->DW()Z

    move-result v2

    if-nez v2, :cond_63

    new-instance v2, Lcom/aide/ui/za;

    invoke-direct {v2, v8}, Lcom/aide/ui/za;-><init>(Lcom/aide/ui/MainActivity;)V

    invoke-static {v8, v2}, Labcd/F;->j6(Landroid/content/Context;Labcd/G;)V

    :cond_63
    invoke-super/range {p0 .. p1}, Lcom/aide/ui/ThemedActionbarActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/aide/ui/U;->dx()Z

    move-result v2

    if-nez v2, :cond_7b

    invoke-direct/range {p0 .. p0}, Lcom/aide/ui/MainActivity;->jO()Z

    move-result v2

    if-nez v2, :cond_7b

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Landroid/view/Window;->requestFeature(I)Z

    :cond_7b
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_98

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_98

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    goto :goto_99

    :cond_98
    const/4 v2, 0x0

    :goto_99
    invoke-static {v8, v2}, Lcom/aide/ui/U;->j6(Lcom/aide/ui/MainActivity;Ljava/lang/String;)V

    new-instance v3, Lcom/aide/ui/Z;

    const v4, 0x7f0b0005

    invoke-direct {v3, v8, v4}, Lcom/aide/ui/Z;-><init>(Lcom/aide/ui/MainActivity;I)V

    iput-object v3, v8, Lcom/aide/ui/MainActivity;->rN:Lcom/aide/ui/Z;

    new-instance v3, Lcom/aide/common/KeyStrokeDetector;

    invoke-direct {v3, v8}, Lcom/aide/common/KeyStrokeDetector;-><init>(Landroid/content/Context;)V

    iput-object v3, v8, Lcom/aide/ui/MainActivity;->Zo:Lcom/aide/common/KeyStrokeDetector;

    invoke-static {v8, v8}, Lcom/aide/ui/aa;->j6(Landroid/content/Context;Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    invoke-static {}, Lcom/aide/ui/aa;->Hw()I

    move-result v3

    iput v3, v8, Lcom/aide/ui/MainActivity;->U2:I

    invoke-static/range {p0 .. p0}, Lcom/s1243808733/aide/application/AppTheme;->initTheme(Landroid/app/Activity;)V

    const v3, 0x7f0a0026

    invoke-static {v3}, Lcom/s1243808733/aide/MainListener;->setContentView(I)V

    invoke-static/range {p0 .. p0}, Lcom/aide/common/g;->DW(Landroid/app/Activity;)V

    invoke-static {}, Lcom/aide/ui/U;->dx()Z

    move-result v3

    if-nez v3, :cond_d2

    const v3, 0x7f0800f3

    invoke-virtual {v8, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lcom/aide/common/g;->j6(Landroid/view/View;)V

    :cond_d2
    new-instance v3, Lcom/aide/ui/La;

    invoke-direct {v3, v8}, Lcom/aide/ui/La;-><init>(Lcom/aide/ui/MainActivity;)V

    iput-object v3, v8, Lcom/aide/ui/MainActivity;->er:Lcom/aide/ui/La;

    invoke-direct/range {p0 .. p0}, Lcom/aide/ui/MainActivity;->FN()V

    new-instance v3, Lcom/aide/ui/Ga;

    const v4, 0x7f0800f4

    invoke-direct {v3, v8, v4}, Lcom/aide/ui/Ga;-><init>(Landroid/app/Activity;I)V

    iput-object v3, v8, Lcom/aide/ui/MainActivity;->J0:Lcom/aide/ui/Ga;

    invoke-static {}, Lcom/aide/ui/U;->dx()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/aide/ui/Ga;->j6(Z)V

    iget-object v3, v8, Lcom/aide/ui/MainActivity;->J0:Lcom/aide/ui/Ga;

    new-instance v4, Lcom/aide/ui/Aa;

    invoke-direct {v4, v8}, Lcom/aide/ui/Aa;-><init>(Lcom/aide/ui/MainActivity;)V

    invoke-virtual {v3, v4}, Lcom/aide/ui/Ga;->j6(Landroid/view/View$OnClickListener;)V

    invoke-virtual/range {p0 .. p0}, Lcom/aide/ui/MainActivity;->lg()Lcom/aide/ui/views/SplitView;

    move-result-object v3

    invoke-static {}, Lcom/aide/ui/U;->dx()Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_10a

    invoke-static {}, Lcom/aide/ui/aa;->EQ()Z

    move-result v4

    if-eqz v4, :cond_10a

    const/4 v4, 0x1

    goto :goto_10b

    :cond_10a
    const/4 v4, 0x0

    :goto_10b
    invoke-virtual {v3, v4}, Lcom/aide/ui/views/SplitView;->setSwipeEnabled(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/aide/ui/MainActivity;->lg()Lcom/aide/ui/views/SplitView;

    move-result-object v3

    new-instance v4, Lcom/aide/ui/Ba;

    invoke-direct {v4, v8}, Lcom/aide/ui/Ba;-><init>(Lcom/aide/ui/MainActivity;)V

    invoke-virtual {v3, v4}, Lcom/aide/ui/views/SplitView;->setOnSplitChangeListener(Lcom/aide/ui/views/SplitView$a;)V

    const v3, 0x7f08011e

    invoke-virtual {v8, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/aide/ui/Ca;

    invoke-direct {v4, v8}, Lcom/aide/ui/Ca;-><init>(Lcom/aide/ui/MainActivity;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/aide/ui/U;->dx()Z

    move-result v3

    if-eqz v3, :cond_130

    goto :goto_19c

    :cond_130
    invoke-direct/range {p0 .. p0}, Lcom/aide/ui/MainActivity;->jO()Z

    move-result v3

    if-eqz v3, :cond_15c

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setNavigationMode(I)V

    invoke-static/range {p0 .. p0}, Lcom/aide/common/g;->QX(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_158

    invoke-static {}, Lcom/aide/ui/U;->SI()Labcd/Cl;

    move-result-object v3

    invoke-virtual {v3}, Labcd/Cl;->j3()Z

    move-result v3

    if-eqz v3, :cond_158

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    :cond_158
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    goto :goto_19c

    :cond_15c
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f070001

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const v3, 0x7f0800ed

    invoke-virtual {v8, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/aide/ui/N;

    invoke-direct {v4, v8}, Lcom/aide/ui/N;-><init>(Lcom/aide/ui/MainActivity;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const v3, 0x7f080121

    invoke-virtual {v8, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/aide/ui/O;

    invoke-direct {v4, v8}, Lcom/aide/ui/O;-><init>(Lcom/aide/ui/MainActivity;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_19c
    invoke-static {}, Lcom/aide/ui/U;->dx()Z

    move-result v3

    if-eqz v3, :cond_1ae

    invoke-static {}, Lcom/aide/ui/U;->v5()Lcom/aide/ui/build/d;

    move-result-object v3

    new-instance v4, Lcom/aide/ui/Da;

    invoke-direct {v4, v8}, Lcom/aide/ui/Da;-><init>(Lcom/aide/ui/MainActivity;)V

    invoke-virtual {v3, v4}, Lcom/aide/ui/build/d;->j6(Lcom/aide/ui/build/d$a;)V

    :cond_1ae
    invoke-static {}, Lcom/aide/ui/U;->dx()Z

    move-result v3

    if-eqz v3, :cond_1c1

    invoke-static/range {p0 .. p0}, Lcom/aide/common/g;->J8(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1c1

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ActionBar;->hide()V

    :cond_1c1
    invoke-static {}, Lcom/aide/ui/U;->er()Labcd/Nk;

    move-result-object v3

    invoke-virtual {v3, v2}, Labcd/Nk;->Hw(Ljava/lang/String;)V

    sget-object v2, Lcom/aide/ui/U;->j6:Ljava/lang/String;

    const-string v3, "com.aide.web"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e0

    invoke-virtual/range {p0 .. p0}, Lcom/aide/ui/MainActivity;->Mr()Lcom/aide/ui/browsers/LogCatBrowser;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/browsers/LogCatBrowser;->EQ()V

    invoke-virtual/range {p0 .. p0}, Lcom/aide/ui/MainActivity;->J0()Lcom/aide/ui/browsers/DebugBrowser;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/browsers/DebugBrowser;->FH()V

    :cond_1e0
    invoke-static {}, Lcom/aide/ui/U;->XL()Labcd/Ak;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/aide/ui/MainActivity;->J8()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/aide/ui/AIDEEditorPager;->getCurrentFileSpan()Labcd/Tl;

    move-result-object v3

    invoke-virtual {v2, v3}, Labcd/Ak;->j6(Labcd/Tl;)V

    invoke-static {}, Lcom/aide/ui/U;->we()Labcd/ck;

    move-result-object v2

    invoke-virtual {v2, v8}, Labcd/ck;->j6(Labcd/ck$a;)V

    invoke-virtual/range {p0 .. p0}, Lcom/aide/ui/MainActivity;->J8()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/aide/ui/AIDEEditorPager;->setSoftKeyboardListener(Lcom/aide/ui/AIDEEditorPager$b;)V

    invoke-virtual/range {p0 .. p0}, Lcom/aide/ui/MainActivity;->jJ()V

    invoke-virtual/range {p0 .. p0}, Lcom/aide/ui/MainActivity;->ef()V

    invoke-direct/range {p0 .. p0}, Lcom/aide/ui/MainActivity;->yO()V

    iget-boolean v2, v8, Lcom/aide/ui/MainActivity;->aM:Z

    if-eqz v2, :cond_20f

    const-string v2, "First run after inital install"

    invoke-static {v2}, Labcd/F;->j6(Ljava/lang/String;)V

    :cond_20f
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_226

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "EXTRA_SHOWN_FROM_TRAINER_NOTIFICATION"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_226

    const-string v2, "Shown from trainer notification"

    invoke-static {v2}, Labcd/F;->j6(Ljava/lang/String;)V

    :cond_226
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2
    :try_end_22a
    .catchall {:try_start_10 .. :try_end_22a} :catchall_3f7

    const-string v3, "EXTRA_SHOWN_FROM_PROMO_NOTIFICATION"

    if-eqz v2, :cond_23d

    :try_start_22e
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_23d

    const-string v2, "Shown from promo notification"

    invoke-static {v2}, Labcd/F;->j6(Ljava/lang/String;)V

    :cond_23d
    invoke-static {}, Lcom/aide/ui/U;->sG()Z

    move-result v2

    if-nez v2, :cond_256

    invoke-static {}, Lcom/aide/ui/U;->dx()Z

    move-result v2

    if-nez v2, :cond_256

    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Zk;->j3()Z

    move-result v2

    if-eqz v2, :cond_256

    invoke-static {v5}, Lcom/aide/ui/U;->j6(Z)V

    :cond_256
    invoke-static {}, Lcom/aide/ui/Ha;->gn()Z

    move-result v2

    if-eqz v2, :cond_2af

    invoke-static {}, Lcom/aide/ui/U;->U2()Labcd/Ek;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Ek;->VH()Z

    move-result v2

    if-nez v2, :cond_2af

    invoke-static {}, Lcom/aide/ui/U;->U2()Labcd/Ek;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Ek;->Zo()Z

    move-result v2

    if-nez v2, :cond_2af

    invoke-static {}, Lcom/aide/ui/U;->U2()Labcd/Ek;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Ek;->Mr()Z

    move-result v2

    if-nez v2, :cond_2af

    invoke-static {}, Lcom/aide/ui/U;->dx()Z

    move-result v2

    if-nez v2, :cond_286

    invoke-static {}, Lcom/aide/ui/U;->sG()Z

    move-result v2

    if-nez v2, :cond_2af

    :cond_286
    new-instance v2, Ljava/util/GregorianCalendar;

    invoke-direct {v2}, Ljava/util/GregorianCalendar;-><init>()V

    invoke-static {}, Lcom/aide/ui/Ha;->FH()Ljava/util/GregorianCalendar;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/GregorianCalendar;->before(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2af

    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v12

    invoke-static {}, Lcom/aide/ui/Ha;->FH()Ljava/util/GregorianCalendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v13

    invoke-static/range {p0 .. p0}, Lcom/aide/ui/MainActivity;->VH(Landroid/content/Context;)I

    move-result v15

    const-string v16, "20% off special offer"

    const-string v17, "Special offer"

    const-string v18, "Save 20% on an annual subscription"

    invoke-static/range {v12 .. v18}, Lcom/aide/ui/PromoNotificationAlarmReceiver;->j6(Landroid/content/Context;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2b6

    :cond_2af
    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/aide/ui/PromoNotificationAlarmReceiver;->j6(Landroid/content/Context;)V

    :goto_2b6
    invoke-static {}, Lcom/aide/common/g;->j6()Z

    move-result v2

    if-eqz v2, :cond_2db

    invoke-static {}, Ltv/ouya/console/api/i;->FH()Ltv/ouya/console/api/i;

    move-result-object v2

    invoke-virtual {v2}, Ltv/ouya/console/api/i;->v5()Z

    move-result v2

    if-nez v2, :cond_2db

    new-instance v5, Lcom/aide/ui/Ea;

    invoke-direct {v5, v8}, Lcom/aide/ui/Ea;-><init>(Lcom/aide/ui/MainActivity;)V

    new-instance v6, Lcom/aide/ui/ja;

    invoke-direct {v6, v8}, Lcom/aide/ui/ja;-><init>(Lcom/aide/ui/MainActivity;)V

    const-string v2, "AIDE for OUYA"

    const-string v3, "This version of AIDE is only intended to run on the OUYA. Contact info@appfour.com for details."

    const/4 v4, 0x0

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v6}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void

    :cond_2db
    invoke-static {}, Lcom/aide/ui/U;->dx()Z

    move-result v2
    :try_end_2df
    .catchall {:try_start_22e .. :try_end_2df} :catchall_3f7

    const-string v4, "EXTRA_SHOWN_FROM_UPDATE_TRAINER_NOTIFICATION"

    if-eqz v2, :cond_304

    :try_start_2e3
    invoke-static {}, Lcom/aide/ui/U;->SI()Labcd/Cl;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Cl;->ei()V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_2ff

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2ff

    :goto_2fa
    invoke-static/range {p0 .. p0}, Lcom/aide/ui/activities/TrainerCourseActivity;->j6(Landroid/app/Activity;)V

    goto/16 :goto_3f6

    :cond_2ff
    :goto_2ff
    invoke-static/range {p0 .. p0}, Lcom/aide/ui/ib;->u7(Landroid/app/Activity;)V

    goto/16 :goto_3f6

    :cond_304
    invoke-direct/range {p0 .. p0}, Lcom/aide/ui/MainActivity;->CU()V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_30e

    goto :goto_30f

    :cond_30e
    const/4 v1, 0x0

    :goto_30f
    if-nez v1, :cond_3f3

    invoke-static {}, Lcom/aide/ui/U;->er()Labcd/Nk;

    move-result-object v1

    invoke-virtual {v1}, Labcd/Nk;->tp()Z

    move-result v1

    if-eqz v1, :cond_32a

    invoke-static {}, Lcom/aide/ui/U;->tp()Labcd/Ji;

    move-result-object v1

    invoke-static {}, Lcom/aide/ui/U;->er()Labcd/Nk;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Nk;->DW()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Labcd/Ji;->Hw(Ljava/lang/String;)V

    :cond_32a
    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v1

    invoke-virtual {v1}, Labcd/Zk;->j3()Z

    move-result v1

    if-eqz v1, :cond_343

    invoke-static {}, Lcom/aide/ui/U;->tp()Labcd/Ji;

    move-result-object v1

    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Zk;->Ws()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Labcd/Ji;->DW(Ljava/util/List;)V

    :cond_343
    invoke-direct/range {p0 .. p0}, Lcom/aide/ui/MainActivity;->XG()V

    invoke-direct/range {p0 .. p0}, Lcom/aide/ui/MainActivity;->kQ()V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_36e

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_36e

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "EXTRA_NAVIGATE_BREAKPOINT"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_36e

    invoke-direct/range {p0 .. p0}, Lcom/aide/ui/MainActivity;->Xa()V

    goto/16 :goto_3f6

    :cond_36e
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_380

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_380

    goto/16 :goto_2fa

    :cond_380
    sget-object v1, Lcom/aide/ui/U;->j6:Ljava/lang/String;

    const-string v2, "com.aide.ui"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3a2

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_3a2

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3a2

    invoke-static {}, Lcom/aide/ui/U;->dx()Z

    move-result v1

    if-nez v1, :cond_3a2

    goto/16 :goto_2ff

    :cond_3a2
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_3cf

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "EXTRA_SHOWN_FROM_GCM_NOTIFICATION"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3cf

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3cf

    const-string v1, "Shown from GCM notification"

    invoke-static {v1}, Labcd/F;->j6(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/aide/ui/ib;->j6(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_3f6

    :cond_3cf
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_3ef

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "EXTRA_UPGRADE_NOTIFICATION_CLICKED"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3ef

    const-string v0, "Shown from upgrade notification"

    invoke-static {v0}, Labcd/F;->j6(Ljava/lang/String;)V

    new-instance v0, Lcom/aide/ui/ka;

    invoke-direct {v0, v8}, Lcom/aide/ui/ka;-><init>(Lcom/aide/ui/MainActivity;)V

    invoke-static {v8, v0}, Lcom/aide/ui/marketing/WhatsNewDialog;->j6(Landroid/app/Activity;Ljava/lang/Runnable;)V

    goto :goto_3f6

    :cond_3ef
    invoke-static/range {p0 .. p0}, Lcom/aide/ui/ib;->gn(Landroid/app/Activity;)V

    goto :goto_3f6

    :cond_3f3
    invoke-static/range {p0 .. p0}, Lcom/aide/ui/ib;->Zo(Landroid/app/Activity;)V
    :try_end_3f6
    .catchall {:try_start_2e3 .. :try_end_3f6} :catchall_3f7

    :goto_3f6
    return-void

    :catchall_3f7
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v1, :cond_3ff

    invoke-static {v0, v10, v11, v8, v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3ff
    goto :goto_401

    :goto_400
    throw v0

    :goto_401
    goto :goto_400
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x3a606ba0f135488cL
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x97eccde17b400L

    invoke-static {v1, v2, p0, v0, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    invoke-static {p0, p1}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;I)Landroid/app/Dialog;

    move-result-object p1
    :try_end_15
    .catchall {:try_start_0 .. :try_end_15} :catchall_16

    return-object p1

    :catchall_16
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v1, :cond_2b

    const-wide v2, 0x97eccde17b400L

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2b
    throw v0
.end method

.method protected onDestroy()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x28a072cc34962373L
    .end annotation

    const-wide v0, 0x36d084aa3578fb11L  # 1.157347968805432E-44

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDestroy - finishing: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/aide/common/AIDELog;->infoWithClassName(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v2, p0, Lcom/aide/ui/MainActivity;->a8:Landroid/os/Handler;

    iget-object v3, p0, Lcom/aide/ui/MainActivity;->lg:Lcom/aide/ui/MainActivity$a;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/aide/ui/U;->we()Labcd/ck;

    move-result-object v2

    invoke-virtual {v2, p0}, Labcd/ck;->DW(Labcd/ck$a;)V

    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->J8()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/AIDEEditorPager;->j3()V

    invoke-static {p0, p0}, Lcom/aide/ui/aa;->DW(Landroid/content/Context;Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    invoke-static {}, Lcom/aide/ui/U;->Sf()V
    :try_end_42
    .catchall {:try_start_5 .. :try_end_42} :catchall_43

    return-void

    :catchall_43
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v3, :cond_4b

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_4b
    throw v2
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x13f775e4d2e12dc0L  # -2.5816196980466632E212

    invoke-static {v1, v2, p0, v0, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    iget-object v0, p0, Lcom/aide/ui/MainActivity;->Zo:Lcom/aide/common/KeyStrokeDetector;

    invoke-virtual {v0, p1, p2}, Lcom/aide/common/KeyStrokeDetector;->j6(ILandroid/view/KeyEvent;)V

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1
    :try_end_1a
    .catchall {:try_start_0 .. :try_end_1a} :catchall_1b

    return p1

    :catchall_1b
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v1, :cond_30

    const-wide v2, -0x13f775e4d2e12dc0L  # -2.5816196980466632E212

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_30
    throw v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x51ac692188e5d47fL  # 2.759626041669824E85

    invoke-static {v1, v2, p0, v0, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    const/16 v0, 0x52

    if-ne p1, v0, :cond_1c

    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->J8()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/AIDEEditorPager;->J0()V

    :cond_1c
    iget-object v0, p0, Lcom/aide/ui/MainActivity;->Zo:Lcom/aide/common/KeyStrokeDetector;

    invoke-virtual {v0, p1, p2}, Lcom/aide/common/KeyStrokeDetector;->DW(ILandroid/view/KeyEvent;)V

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1
    :try_end_25
    .catchall {:try_start_0 .. :try_end_25} :catchall_26

    return p1

    :catchall_26
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v1, :cond_3b

    const-wide v2, 0x51ac692188e5d47fL  # 2.759626041669824E85

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3b
    throw v0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 13
    .annotation runtime Labcd/su;
        method = -0x7793dba808cdc4fL
    .end annotation

    const-string v0, "NavigateFile"

    const-string v1, "EXTRA_NAVIGATE_PLAY_STORE_INTENT_SENDER"

    const-wide v2, 0x32171ccf1758c7fL

    :try_start_9
    sget-boolean v4, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v4, :cond_10

    invoke-static {v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_10
    invoke-static {p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Object;Landroid/content/Intent;)V

    const-string v4, "onNewIntent"

    invoke-static {p0, v4}, Lcom/aide/common/AIDELog;->infoWithClassName(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    const/4 v4, 0x0

    if-eqz p1, :cond_2b

    const-string v5, "EXTRA_SHOWN_FROM_UPDATE_TRAINER_NOTIFICATION"

    invoke-virtual {p1, v5, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_2b

    invoke-static {p0}, Lcom/aide/ui/activities/TrainerCourseActivity;->j6(Landroid/app/Activity;)V

    goto/16 :goto_15c

    :cond_2b
    if-eqz p1, :cond_3c

    const-string v5, "EXTRA_SHOWN_FROM_TRAINER_NOTIFICATION"

    invoke-virtual {p1, v5, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_3c

    const-string v0, "Shown from trainer notification"

    invoke-static {v0}, Labcd/F;->j6(Ljava/lang/String;)V

    goto/16 :goto_15c

    :cond_3c
    if-eqz p1, :cond_50

    const-string v5, "EXTRA_SHOWN_FROM_PROMO_NOTIFICATION"

    invoke-virtual {p1, v5, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_50

    const-string v0, "Shown from promo notification"

    invoke-static {v0}, Labcd/F;->j6(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/aide/ui/ib;->u7(Landroid/app/Activity;)V

    goto/16 :goto_15c

    :cond_50
    if-eqz p1, :cond_6a

    const-string v5, "EXTRA_SHOWN_FROM_GCM_NOTIFICATION"

    invoke-virtual {p1, v5, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_6a

    const-string v0, "Shown from gcm notification"

    invoke-static {v0}, Labcd/F;->j6(Ljava/lang/String;)V

    const-string v0, "EXTRA_GCM_NOTIFICATION_IAP_PRODUCT_ID"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/aide/ui/ib;->j6(Landroid/app/Activity;Ljava/lang/String;)V

    goto/16 :goto_15c

    :cond_6a
    if-eqz p1, :cond_7f

    const-string v5, "EXTRA_UPGRADE_NOTIFICATION_CLICKED"

    invoke-virtual {p1, v5, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_7f

    const-string v0, "Shown from upgrade notification"

    invoke-static {v0}, Labcd/F;->j6(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/aide/ui/marketing/WhatsNewDialog;->j6(Landroid/app/Activity;Ljava/lang/Runnable;)V

    goto/16 :goto_15c

    :cond_7f
    if-eqz p1, :cond_a0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    if-eqz v5, :cond_a0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    if-eqz v5, :cond_a0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/IntentSender;

    invoke-static {p0, v0}, Labcd/yk;->j6(Landroid/app/Activity;Landroid/content/IntentSender;)V

    goto/16 :goto_15c

    :cond_a0
    if-eqz p1, :cond_f7

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_f7

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v5, "EXTRA_SHOWN_FROM_NOTIFICATION"

    invoke-virtual {v1, v5, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_f7

    invoke-static {}, Lcom/aide/ui/U;->we()Labcd/ck;

    move-result-object v0

    invoke-virtual {v0}, Labcd/ck;->FH()I

    move-result v0

    if-lez v0, :cond_c1

    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->KD()V

    :cond_c1
    invoke-static {}, Lcom/aide/ui/U;->v5()Lcom/aide/ui/build/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/build/d;->VH()Z

    move-result v0

    if-eqz v0, :cond_da

    invoke-static {}, Lcom/aide/ui/U;->v5()Lcom/aide/ui/build/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/build/d;->gn()Z

    move-result v0

    if-nez v0, :cond_da

    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->ca()V

    goto/16 :goto_15c

    :cond_da
    invoke-static {}, Lcom/aide/ui/U;->Ws()Lcom/aide/ui/scm/ua;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/scm/ua;->VH()Z

    move-result v0

    if-eqz v0, :cond_e9

    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->sy()V

    goto/16 :goto_15c

    :cond_e9
    invoke-static {}, Lcom/aide/ui/U;->tp()Labcd/Ji;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Ji;->VH()Z

    move-result v0

    if-eqz v0, :cond_15c

    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->x9()V

    goto :goto_15c

    :cond_f7
    if-eqz p1, :cond_10b

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_10b

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/aide/ui/MainActivity;->Hw(Ljava/lang/String;)V

    goto :goto_15c

    :cond_10b
    if-eqz p1, :cond_145

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_145

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_145

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v4, "NavigateLine"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v4, "NavigateColumn"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    new-instance v1, Labcd/Tl;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v5, v1

    move v7, v9

    move v8, v10

    invoke-direct/range {v5 .. v10}, Labcd/Tl;-><init>(Ljava/lang/String;IIII)V

    invoke-virtual {p0, v1}, Lcom/aide/ui/MainActivity;->j6(Labcd/Tl;)V

    goto :goto_15c

    :cond_145
    if-eqz p1, :cond_15c

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_15c

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "EXTRA_NAVIGATE_BREAKPOINT"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15c

    invoke-direct {p0}, Lcom/aide/ui/MainActivity;->Xa()V
    :try_end_15c
    .catchall {:try_start_9 .. :try_end_15c} :catchall_15d

    :cond_15c
    :goto_15c
    return-void

    :catchall_15d
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v1, :cond_165

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_165
    throw v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 8

    const-wide v0, -0x4701932ba1861e0L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x102002c

    const/4 v4, 0x1

    if-ne v2, v3, :cond_24

    invoke-static {}, Lcom/aide/ui/U;->SI()Labcd/Cl;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Cl;->j3()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-static {p0}, Lcom/aide/ui/activities/TrainerCourseActivity;->j6(Landroid/app/Activity;)V

    :cond_23
    return v4

    :cond_24
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    invoke-static {v2}, Lcom/aide/ui/V;->DW(I)Labcd/Yl;

    move-result-object v2

    if-eqz v2, :cond_50

    invoke-interface {v2}, Labcd/Yl;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_50

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Main Menu: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Labcd/F;->j6(Ljava/lang/String;)V

    invoke-interface {v2}, Labcd/Yl;->run()Z

    return v4

    :cond_50
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    invoke-static {v2}, Lcom/aide/ui/V;->j6(I)Labcd/Hl;

    move-result-object v2

    if-eqz v2, :cond_7c

    invoke-interface {v2}, Labcd/Hl;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_7c

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Action bar command: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Labcd/Hl;->DW()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Labcd/F;->j6(Ljava/lang/String;)V

    invoke-interface {v2}, Labcd/Hl;->run()Z

    return v4

    :cond_7c
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1
    :try_end_80
    .catchall {:try_start_5 .. :try_end_80} :catchall_81

    return p1

    :catchall_81
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v3, :cond_89

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_89
    throw v2
.end method

.method protected onPause()V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x102a3bc90f602b03L
    .end annotation

    const-wide v0, -0x1c524e36f9ac52f7L  # -1.4344425952796383E172

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    const-string v2, "onPause"

    invoke-static {p0, v2}, Lcom/aide/common/AIDELog;->infoWithClassName(Ljava/lang/Object;Ljava/lang/String;)V

    iget v2, p0, Lcom/aide/ui/MainActivity;->U2:I

    const/4 v3, 0x0

    if-lez v2, :cond_1e

    invoke-static {}, Lcom/aide/ui/U;->er()Labcd/Nk;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v2, v4, v3}, Labcd/Nk;->j6(ZZ)V

    :cond_1e
    invoke-static {}, Lcom/aide/ui/U;->dx()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-static {}, Lcom/aide/ui/U;->ei()Lcom/aide/ui/trainer/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/trainer/e;->j6()V

    :cond_2b
    iput-boolean v3, p0, Lcom/aide/ui/MainActivity;->Mr:Z

    invoke-super {p0}, Landroid/app/Activity;->onPause()V
    :try_end_30
    .catchall {:try_start_5 .. :try_end_30} :catchall_31

    return-void

    :catchall_31
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v3, :cond_39

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_39
    throw v2
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 8

    const-wide v0, 0x24e18ed276cd9f18L  # 4.947256633470233E-131

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v2

    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v3

    invoke-static {}, Lcom/aide/ui/U;->dx()Z

    move-result v4

    if-eqz v4, :cond_21

    const v4, 0x7f0b000d

    invoke-virtual {v3, v4, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_35

    :cond_21
    const v4, 0x7f0b000c

    invoke-virtual {v3, v4, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    new-instance v3, Lcom/aide/ui/Za;

    invoke-direct {v3, p1}, Lcom/aide/ui/Za;-><init>(Landroid/view/Menu;)V

    iput-object v3, p0, Lcom/aide/ui/MainActivity;->tp:Lcom/aide/ui/Za;

    new-instance v3, Lcom/aide/ui/fa;

    invoke-direct {v3, p1}, Lcom/aide/ui/fa;-><init>(Landroid/view/Menu;)V

    iput-object v3, p0, Lcom/aide/ui/MainActivity;->EQ:Lcom/aide/ui/fa;

    :goto_35
    invoke-static {}, Lcom/aide/ui/U;->sh()Z

    move-result v3

    if-nez v3, :cond_6f

    const-string v3, "onPrepareOptionsMenu"

    invoke-static {v3}, Lcom/crashlytics/android/Crashlytics;->log(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/aide/ui/MainActivity;->j6(Landroid/view/Menu;)V

    invoke-static {p0}, Lcom/aide/common/g;->QX(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_62

    const v3, 0x7f0800f9

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    if-eqz v3, :cond_62

    invoke-static {p0}, Lcom/aide/common/g;->Hw(Landroid/content/Context;)F

    move-result v4

    const/high16 v5, 0x43b40000  # 360.0f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_5e

    const/4 v4, 0x1

    goto :goto_5f

    :cond_5e
    const/4 v4, 0x0

    :goto_5f
    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_62
    iget-object v3, p0, Lcom/aide/ui/MainActivity;->tp:Lcom/aide/ui/Za;

    if-eqz v3, :cond_74

    invoke-virtual {v3}, Lcom/aide/ui/Za;->DW()V

    iget-object v3, p0, Lcom/aide/ui/MainActivity;->EQ:Lcom/aide/ui/fa;

    invoke-virtual {v3}, Lcom/aide/ui/fa;->DW()V

    goto :goto_74

    :cond_6f
    const-string v3, "onPrepareOptionsMenu when shut down."

    invoke-static {v3}, Lcom/crashlytics/android/Crashlytics;->log(Ljava/lang/String;)V
    :try_end_74
    .catchall {:try_start_5 .. :try_end_74} :catchall_75

    :cond_74
    :goto_74
    return v2

    :catchall_75
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v3, :cond_7d

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_7d
    throw v2
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 12

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v0, :cond_14

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x370c90506155fa45L  # -2.7090211426596776E43

    move-object v3, p0

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_14
    const/16 v0, 0x15

    if-ne p1, v0, :cond_23

    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->QX()Lcom/aide/ui/browsers/FileBrowser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/browsers/FileBrowser;->Zo()V

    invoke-static {p0}, Lcom/aide/ui/ib;->v5(Landroid/app/Activity;)V

    goto :goto_36

    :cond_23
    const/16 v0, 0x16

    if-ne p1, v0, :cond_36

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v0

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v0, v1}, Lcom/aide/ui/MainActivity;->FH(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->Zo()V
    :try_end_36
    .catchall {:try_start_0 .. :try_end_36} :catchall_37

    :cond_36
    :goto_36
    return-void

    :catchall_37
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v1, :cond_4d

    const-wide v2, -0x370c90506155fa45L  # -2.7090211426596776E43

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4d
    throw v0
.end method

.method protected onResume()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x160ecf6eac6921d4L
    .end annotation

    const-wide v0, 0xa74dc7160456540L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/aide/ui/MainActivity;->Mr:Z

    iget-object v2, p0, Lcom/aide/ui/MainActivity;->J8:Ljava/lang/Object;

    monitor-enter v2
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_5a

    :try_start_15
    iget-object v3, p0, Lcom/aide/ui/MainActivity;->J8:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_15 .. :try_end_1b} :catchall_57

    :try_start_1b
    iget-boolean v2, p0, Lcom/aide/ui/MainActivity;->Ws:Z

    if-eqz v2, :cond_2b

    invoke-static {}, Lcom/aide/ui/U;->er()Labcd/Nk;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3}, Labcd/Nk;->j6(ZZ)V

    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->recreate()V

    goto :goto_3c

    :cond_2b
    invoke-static {}, Lcom/aide/ui/U;->tp()Labcd/Ji;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Ji;->u7()V

    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->vJ()V

    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Zk;->a8()V

    :goto_3c
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->ef()V

    invoke-static {}, Lcom/aide/ui/U;->dx()Z

    move-result v2

    if-nez v2, :cond_56

    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Zk;->j3()Z

    move-result v2

    if-eqz v2, :cond_56

    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Zk;->aM()Z
    :try_end_56
    .catchall {:try_start_1b .. :try_end_56} :catchall_5a

    :cond_56
    return-void

    :catchall_57
    move-exception v3

    :try_start_58
    monitor-exit v2
    :try_end_59
    .catchall {:try_start_58 .. :try_end_59} :catchall_57

    :try_start_59
    throw v3
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_5a

    :catchall_5a
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v3, :cond_62

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_62
    throw v2
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .registers 5

    const-wide v0, -0x32447d7502b67178L  # -2.8971341205244366E66

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_f

    :cond_c
    const-string v0, "dummy"

    return-object v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 10

    const-string v0, "send_analytics_data"

    :try_start_2
    sget-boolean v1, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v1, :cond_e

    const-wide v1, -0x682c1c5187351351L  # -6.811520496247521E-194

    invoke-static {v1, v2, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_e
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-static {}, Labcd/F;->j6()V

    goto :goto_23

    :cond_18
    const-string v1, "Setting changed"

    const-string v2, "key"

    invoke-static {v2, p2}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    invoke-static {v1, v2}, Labcd/F;->j6(Ljava/lang/String;Ljava/util/Map;)V

    :goto_23
    invoke-static {}, Lcom/aide/ui/aa;->Hw()I

    move-result v1

    iput v1, p0, Lcom/aide/ui/MainActivity;->U2:I

    const-string v1, "user_androidjar"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_39

    const-string v1, "user_m2repositories"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_40

    :cond_39
    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v1

    invoke-virtual {v1}, Labcd/Zk;->er()V

    :cond_40
    invoke-static {}, Lcom/aide/ui/U;->EQ()Labcd/Xj;

    move-result-object v1

    invoke-virtual {v1}, Labcd/Xj;->FH()V

    sget-object v1, Lcom/aide/ui/U;->j6:Ljava/lang/String;

    const-string v2, "com.aide.web"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_58

    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->Mr()Lcom/aide/ui/browsers/LogCatBrowser;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aide/ui/browsers/LogCatBrowser;->v5()V

    :cond_58
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->lg()Lcom/aide/ui/views/SplitView;

    move-result-object v1

    invoke-static {}, Lcom/aide/ui/U;->dx()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_6b

    invoke-static {}, Lcom/aide/ui/aa;->EQ()Z

    move-result v2

    if-eqz v2, :cond_6b

    const/4 v2, 0x1

    goto :goto_6c

    :cond_6b
    const/4 v2, 0x0

    :goto_6c
    invoke-virtual {v1, v2}, Lcom/aide/ui/views/SplitView;->setSwipeEnabled(Z)V

    const-string v1, "light_theme"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8d

    const-string v1, "app_language"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8d

    const-string v1, "editor_tabs"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8d

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8f

    :cond_8d
    iput-boolean v3, p0, Lcom/aide/ui/MainActivity;->Ws:Z

    :cond_8f
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->J8()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/AIDEEditorPager;->Zo()V

    const-string v0, "editor_font_size"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a5

    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->J8()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/AIDEEditorPager;->VH()V
    :try_end_a5
    .catchall {:try_start_2 .. :try_end_a5} :catchall_a6

    :cond_a5
    return-void

    :catchall_a6
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v1, :cond_b7

    const-wide v2, -0x682c1c5187351351L  # -6.811520496247521E-194

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_b7
    throw v0
.end method

.method protected onStart()V
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x12b816c690e2216fL
    .end annotation

    const-wide v0, -0x1a1e20a85053abfbL  # -5.93295469924567E182

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "isPremiumKeyInstalled"

    invoke-static {}, Lcom/aide/ui/U;->U2()Labcd/Ek;

    move-result-object v4

    invoke-virtual {v4}, Labcd/Ek;->VH()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "isPremium"

    invoke-static {}, Lcom/aide/ui/U;->U2()Labcd/Ek;

    move-result-object v4

    invoke-virtual {v4}, Labcd/Ek;->Zo()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/aide/ui/U;->U2()Labcd/Ek;

    move-result-object v3

    invoke-virtual {v3}, Labcd/Ek;->VH()Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_4d

    invoke-static {}, Lcom/aide/ui/U;->U2()Labcd/Ek;

    move-result-object v3

    invoke-virtual {v3}, Labcd/Ek;->Zo()Z

    move-result v3

    if-eqz v3, :cond_4d

    const/4 v3, 0x1

    goto :goto_4e

    :cond_4d
    const/4 v3, 0x0

    :goto_4e
    const-string v5, "isPremiumHacked"

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "isUiBuilderKeyInstalled"

    invoke-static {}, Lcom/aide/ui/U;->U2()Labcd/Ek;

    move-result-object v5

    invoke-virtual {v5}, Labcd/Ek;->we()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "isUiBuilderLicensed"

    invoke-static {}, Lcom/aide/ui/U;->U2()Labcd/Ek;

    move-result-object v5

    invoke-virtual {v5}, Labcd/Ek;->EQ()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "Main"

    invoke-static {p0, v3, v2}, Labcd/F;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {}, Lcom/aide/ui/U;->sG()Z

    move-result v2

    if-eqz v2, :cond_92

    invoke-static {}, Lcom/aide/ui/U;->dx()Z

    move-result v2
    :try_end_88
    .catchall {:try_start_5 .. :try_end_88} :catchall_e2

    if-eqz v2, :cond_8d

    const-string v2, "Trainer view"

    goto :goto_8f

    :cond_8d
    const-string v2, "Expert view"

    :goto_8f
    :try_start_8f
    invoke-static {v2}, Labcd/F;->v5(Ljava/lang/String;)V

    :cond_92
    const-string v2, "os.arch"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_98
    .catchall {:try_start_8f .. :try_end_98} :catchall_e2

    if-nez v2, :cond_9c

    const-string v2, "unknown"

    :cond_9c
    :try_start_9c
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "86"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_b2

    invoke-static {}, Lcom/aide/ui/U;->cn()Z

    move-result v3
    :try_end_ae
    .catchall {:try_start_9c .. :try_end_ae} :catchall_e2

    if-eqz v3, :cond_b2

    const-string v2, "x86"

    :cond_b2
    :try_start_b2
    invoke-static {v2}, Labcd/F;->Hw(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CPU arch: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Labcd/F;->j6(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/aide/common/g;->J8(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_d4

    const-string v2, "Android TV detected"

    invoke-static {v2}, Labcd/F;->j6(Ljava/lang/String;)V

    :cond_d4
    invoke-static {p0}, Lcom/aide/common/g;->Ws(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_df

    const-string v2, "Chromebook detected"

    invoke-static {v2}, Labcd/F;->j6(Ljava/lang/String;)V

    :cond_df
    iput-boolean v4, p0, Lcom/aide/ui/MainActivity;->j3:Z
    :try_end_e1
    .catchall {:try_start_b2 .. :try_end_e1} :catchall_e2

    return-void

    :catchall_e2
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v3, :cond_ea

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_ea
    throw v2
.end method

.method protected onStop()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x2febc4795c3ee333L
    .end annotation

    const-wide v0, -0x662307f847986ebL  # -6.605505675453735E277

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {p0}, Lcom/aide/common/g;->Ws(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->J8()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/AIDEEditorPager;->J8()V

    :cond_19
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    const-string v2, "Main"

    invoke-static {p0, v2}, Labcd/F;->j6(Landroid/app/Activity;Ljava/lang/String;)V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/aide/ui/MainActivity;->j3:Z
    :try_end_24
    .catchall {:try_start_5 .. :try_end_24} :catchall_25

    return-void

    :catchall_25
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v3, :cond_2d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2d
    throw v2
.end method

.method public onUserLeaveHint()V
    .registers 5

    const-wide v0, -0x5268d6c48fca0a10L  # -4.54799296152156E-89

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->J8()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/AIDEEditorPager;->J8()V

    invoke-super {p0}, Landroid/app/Activity;->onUserLeaveHint()V
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_17

    return-void

    :catchall_17
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v3, :cond_1f

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1f
    throw v2
.end method

.method public rN()Z
    .registers 5

    const-wide v0, 0x1281272057394920L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-direct {p0}, Lcom/aide/ui/MainActivity;->jO()Z

    move-result v0
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_11

    return v0

    :catchall_11
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v3, :cond_19

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_19
    throw v2
.end method

.method public recreate()V
    .registers 5

    const-wide v0, -0x15fff782e74c93d5L  # -3.927228708246018E202

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/common/ma;->Hw()V

    invoke-super {p0}, Landroid/app/Activity;->recreate()V
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_13

    return-void

    :catchall_13
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v3, :cond_1b

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1b
    throw v2
.end method

.method public ro()V
    .registers 5

    const-wide v0, -0x310088975c780cd8L  # -3.4747742424800895E72

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->J8()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/AIDEEditorPager;->J8()V

    sget v2, Lcom/aide/ui/browsers/BrowserPager;->et:I

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/aide/ui/MainActivity;->j6(IZ)V
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_1a

    return-void

    :catchall_1a
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v3, :cond_22

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_22
    throw v2
.end method

.method public sG()V
    .registers 5

    const-wide v0, -0xa25cd95b530dc8cL

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->rN()Z

    move-result v2

    if-nez v2, :cond_18

    iget-object v2, p0, Lcom/aide/ui/MainActivity;->u7:Lcom/aide/ui/Wa;

    invoke-virtual {v2}, Lcom/aide/ui/Wa;->Hw()V

    goto :goto_1d

    :cond_18
    iget-object v2, p0, Lcom/aide/ui/MainActivity;->tp:Lcom/aide/ui/Za;

    invoke-virtual {v2}, Lcom/aide/ui/Za;->FH()V
    :try_end_1d
    .catchall {:try_start_5 .. :try_end_1d} :catchall_1e

    :goto_1d
    return-void

    :catchall_1e
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v3, :cond_26

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_26
    throw v2
.end method

.method public sh()V
    .registers 5

    const-wide v0, -0x2fb3ca10d7298b88L  # -6.533147275839593E78

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->J8()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/AIDEEditorPager;->J8()V

    sget v2, Lcom/aide/ui/browsers/BrowserPager;->hz:I

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/aide/ui/MainActivity;->j6(IZ)V
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_1a

    return-void

    :catchall_1a
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v3, :cond_22

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_22
    throw v2
.end method

.method public sy()V
    .registers 5

    const-wide v0, 0x154d16a377f61233L  # 4.530157357810249E-206

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    new-instance v2, Labcd/ji;

    invoke-direct {v2}, Labcd/ji;-><init>()V

    invoke-static {p0, v2}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Lcom/aide/common/ma;)V
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return-void

    :catchall_15
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1d
    throw v2
.end method

.method public tp()Lcom/aide/ui/browsers/BrowserPager;
    .registers 5

    const-wide v0, -0x1d49a17555aba0d1L  # -3.297691811334727E167

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    const v2, 0x7f0800ef

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/aide/ui/browsers/BrowserPager;
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_16

    return-object v2

    :catchall_16
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v3, :cond_1e

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1e
    throw v2
.end method

.method public u7()F
    .registers 5

    const-wide v0, 0x4f36ad9de4988c4cL  # 4.006889432870309E73

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {p0}, Lcom/aide/common/g;->QX(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_33

    invoke-direct {p0}, Lcom/aide/ui/MainActivity;->et()Lcom/aide/ui/AIDEErrorsView;

    move-result-object v2

    if-eqz v2, :cond_33

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v0, v3, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x41200000  # 10.0f

    mul-float v0, v0, v1

    sub-float/2addr v2, v0

    return v2

    :cond_33
    invoke-static {p0}, Lcom/aide/common/g;->Hw(Landroid/content/Context;)F

    move-result v2

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v0, v3, Landroid/util/DisplayMetrics;->density:F
    :try_end_41
    .catchall {:try_start_5 .. :try_end_41} :catchall_47

    const/high16 v1, 0x43960000  # 300.0f

    sub-float/2addr v2, v1

    mul-float v2, v2, v0

    return v2

    :catchall_47
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v3, :cond_4f

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_4f
    throw v2
.end method

.method public v5()V
    .registers 5

    const-wide v0, 0x43923fd25f02e288L  # 3.2875023043190016E17

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->BT()Z

    move-result v2

    if-eqz v2, :cond_24

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/aide/ui/MainActivity;->Zo(Z)V

    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->J8()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->BT()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/aide/ui/AIDEEditorPager;->setIdentifierClickingEnabled(Z)V

    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->ef()V
    :try_end_24
    .catchall {:try_start_5 .. :try_end_24} :catchall_25

    :cond_24
    return-void

    :catchall_25
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v3, :cond_2d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2d
    throw v2
.end method

.method public v5(Z)V
    .registers 6

    const-wide v0, -0x5dc4f09b7f38427L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Z)V

    :cond_c
    iput-boolean p1, p0, Lcom/aide/ui/MainActivity;->vy:Z

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x14

    if-lt v2, v3, :cond_17

    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->jJ()V
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_18

    :cond_17
    return-void

    :catchall_18
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v3, :cond_25

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v2, v0, v1, p0, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_25
    throw v2
.end method

.method public vJ()V
    .registers 5

    const-wide v0, 0x1c8a5f5d529c8e97L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/ui/U;->VH()Landroid/app/Activity;

    move-result-object v2

    if-ne v2, p0, :cond_1a

    invoke-static {}, Lcom/aide/ui/U;->er()Labcd/Nk;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Labcd/Nk;->j6(Z)V
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_1b

    :cond_1a
    return-void

    :catchall_1b
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v3, :cond_23

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_23
    throw v2
.end method

.method public vy()Z
    .registers 5

    const-wide v0, 0x2c1b911d62e5314fL  # 3.2264772896451455E-96

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/MainActivity;->tp:Lcom/aide/ui/Za;

    if-eqz v2, :cond_16

    invoke-virtual {v2}, Lcom/aide/ui/Za;->j6()Z

    move-result v2

    if-nez v2, :cond_20

    :cond_16
    iget-object v2, p0, Lcom/aide/ui/MainActivity;->EQ:Lcom/aide/ui/fa;

    if-eqz v2, :cond_22

    invoke-virtual {v2}, Lcom/aide/ui/fa;->j6()Z

    move-result v0
    :try_end_1e
    .catchall {:try_start_5 .. :try_end_1e} :catchall_24

    if-eqz v0, :cond_22

    :cond_20
    const/4 v0, 0x1

    goto :goto_23

    :cond_22
    const/4 v0, 0x0

    :goto_23
    return v0

    :catchall_24
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v3, :cond_2c

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2c
    throw v2
.end method

.method public we()Ljava/lang/String;
    .registers 6

    const-wide v0, -0x4bdfc451c8fcd97cL  # -1.293043170447027E-57

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_23

    :cond_c
    :try_start_c
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v0, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_1b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_c .. :try_end_1b} :catch_1c
    .catchall {:try_start_c .. :try_end_1b} :catchall_23

    return-object v0

    :catch_1c
    move-exception v2

    :try_start_1d
    invoke-static {v2}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_23

    const-string v0, ""

    return-object v0

    :catchall_23
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v3, :cond_2b

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2b
    throw v2
.end method

.method public x9()V
    .registers 5

    const-wide v0, 0xb0b6406fae31a9fL

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    new-instance v2, Labcd/Qh;

    invoke-direct {v2}, Labcd/Qh;-><init>()V

    invoke-static {p0, v2}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Lcom/aide/common/ma;)V
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return-void

    :catchall_15
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1d
    throw v2
.end method

.method public yS()Z
    .registers 5

    const-wide v0, -0x490ea7d61b594810L  # -4.860933201060293E-44

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-boolean v0, p0, Lcom/aide/ui/MainActivity;->Mr:Z
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method
