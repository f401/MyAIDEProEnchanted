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
    .registers 4

    const-wide v2, -0x1b7def450e608340L

    const-class v0, Lcom/aide/ui/MainActivity;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 7

    const-wide v4, 0x19daa820acd15f38L

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x19daa820acd15f38L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Lcom/aide/ui/ThemedActionbarActivity;-><init>()V

    new-instance v0, Lcom/aide/common/sa;

    invoke-static {}, Lcom/s1243808733/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v1

    const v2, 0x7f0d069b

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/aide/common/sa;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/aide/ui/MainActivity;->VH:Lcom/aide/common/sa;

    new-instance v0, Lcom/aide/ui/ta;

    invoke-static {}, Lcom/s1243808733/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v1

    const v2, 0x7f0d069a

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, p0, v1}, Lcom/aide/ui/ta;-><init>(Lcom/aide/ui/MainActivity;Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/aide/ui/MainActivity;->gn:Lcom/aide/common/sa;

    new-instance v0, Lcom/aide/ui/Wa;

    invoke-direct {v0, p0}, Lcom/aide/ui/Wa;-><init>(Lcom/aide/ui/MainActivity;)V

    iput-object v0, p0, Lcom/aide/ui/MainActivity;->u7:Lcom/aide/ui/Wa;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/aide/ui/MainActivity;->J8:Ljava/lang/Object;

    const/4 v0, -0x1

    iput v0, p0, Lcom/aide/ui/MainActivity;->XL:I

    new-instance v0, Lcom/aide/ui/MainActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/aide/ui/MainActivity$a;-><init>(Lcom/aide/ui/ta;)V

    iput-object v0, p0, Lcom/aide/ui/MainActivity;->lg:Lcom/aide/ui/MainActivity$a;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method private CU()V
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x67ff1b6473949f5L
    .end annotation

    const-wide v4, -0x3a54e28f118040fL

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x3a54e28f118040fL

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    const-string v0, "BrowserLayout"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "CurrentBrowser"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/aide/ui/MainActivity;->j6(IZ)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public static DW(Landroid/content/Context;)Landroid/app/PendingIntent;
    .registers 7

    const-wide v4, -0x2bba94772bddb3abL    # -9.15059263676553E97

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x2bba94772bddb3abL    # -9.15059263676553E97

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/s1243808733/aide/AideMainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "EXTRA_SHOWN_FROM_NOTIFICATION"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v1, 0x0

    const/high16 v2, 0x8000000

    invoke-static {p0, v1, v0, v2}, Lcom/aide/ui/MainActivity;->j6(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
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

    const-wide v2, 0x2072d91fe452d15L    # 6.92198159481766E-299

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x2072d91fe452d15L    # 6.92198159481766E-299

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    const v0, 0x7f0800f2

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/aide/ui/AIDEAnalysisProgressBar;

    invoke-virtual {v0}, Lcom/aide/ui/AIDEAnalysisProgressBar;->j6()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public static FH(Landroid/content/Context;)Landroid/app/PendingIntent;
    .registers 7

    const-wide v4, -0x178781325bff8940L    # -1.7881354754224034E195

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x178781325bff8940L    # -1.7881354754224034E195

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/s1243808733/aide/AideMainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "EXTRA_SHOWN_FROM_PROMO_NOTIFICATION"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v1, 0x0

    const/high16 v2, 0x8000000

    invoke-static {p0, v1, v0, v2}, Lcom/aide/ui/MainActivity;->j6(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method static synthetic FH(Lcom/aide/ui/MainActivity;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/aide/ui/MainActivity;->J8:Ljava/lang/Object;

    return-object v0
.end method

.method private FN()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x487852a29d8cf3e0L
    .end annotation

    const-wide v2, 0x12ae23a8d6887398L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x12ae23a8d6887398L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/MainActivity;->er:Lcom/aide/ui/La;

    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->J8()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aide/ui/AIDEEditorPager;->getQuickKeys()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aide/ui/La;->j6(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public static Hw(Landroid/content/Context;)Landroid/app/PendingIntent;
    .registers 7

    const-wide v4, -0x2d481964f56565a0L    # -3.042924754501736E90

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x2d481964f56565a0L    # -3.042924754501736E90

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/s1243808733/aide/AideMainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "EXTRA_SHOWN_FROM_TRAINER_NOTIFICATION"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v1, 0x0

    const/high16 v2, 0x8000000

    invoke-static {p0, v1, v0, v2}, Lcom/aide/ui/MainActivity;->j6(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method private static VH(Landroid/content/Context;)I
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x483ece76ae267044L
    .end annotation

    const-wide v4, -0x41b91fc9b3f59620L    # -1.0652387750794635E-8

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x41b91fc9b3f59620L    # -1.0652387750794635E-8

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->icon:I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const v0, 0x7f070076

    goto :goto_0

    :catch_1
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method private XG()V
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x563bbf7755174e3L
    .end annotation

    const-wide v4, -0x2913843006de88dL

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x2913843006de88dL

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/aide/ui/U;->J8()Labcd/mk;

    move-result-object v1

    invoke-virtual {v1}, Labcd/mk;->DW()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".nomedia"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/aide/ui/U;->J8()Labcd/mk;

    move-result-object v1

    invoke-virtual {v1}, Labcd/mk;->DW()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Labcd/FileSystemUtils;->Hw(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Labcd/FileSystemUtils;->Hw(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    if-nez v1, :cond_1

    :try_start_1
    invoke-static {v0}, Labcd/FileSystemUtils;->createNewFileNotExists(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {v0}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method private XX()V
    .registers 11
    .annotation runtime Labcd/su;
        method = -0x18b7c5ebca0e9075L
    .end annotation

    const-wide v8, -0x5c59e33240faeffL

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x5c59e33240faeffL

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->J8()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/AIDEEditorPager;->getFileEditors()Ljava/util/List;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aide/ui/AIDEEditor;

    invoke-virtual {v0}, Lcom/aide/ui/AIDEEditor;->getFilePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Labcd/FileSystemUtils;->tp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/aide/ui/U;->er()Labcd/Nk;

    move-result-object v6

    invoke-virtual {v6, v5}, Labcd/Nk;->DW(Ljava/lang/String;)Labcd/Nk$a;

    move-result-object v5

    invoke-interface {v5}, Labcd/Nk$a;->J0()Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " *"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez v5, :cond_3

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v8, v9, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    :try_start_1
    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v0

    invoke-static {}, Lcom/s1243808733/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v4

    const v5, 0x7f0d06d8

    invoke-virtual {v4, v5}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/aide/ui/va;

    invoke-direct {v5, p0, v1}, Lcom/aide/ui/va;-><init>(Lcom/aide/ui/MainActivity;Ljava/util/List;)V

    invoke-static {v0, v4, v2, v3, v5}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/aide/common/ab;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    return-void
.end method

.method private Xa()V
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x4c217cd249198028L
    .end annotation

    const-wide v4, 0x633309f70421274L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x633309f70421274L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/U;->gn()Lcom/aide/ui/debugger/Debugger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/debugger/Debugger;->v5()Labcd/Tl;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/aide/ui/MainActivity;->j6(Labcd/Tl;)V

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/MainActivity;->J0()Lcom/aide/ui/browsers/DebugBrowser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/browsers/DebugBrowser;->FH()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/aide/ui/ra;

    invoke-direct {v1, p0}, Lcom/aide/ui/ra;-><init>(Lcom/aide/ui/MainActivity;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public static Zo(Landroid/content/Context;)V
    .registers 9

    const-wide v6, -0x85882c151335800L

    const/4 v4, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x85882c151335800L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/U;->sh()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/s1243808733/aide/AideMainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "EXTRA_NAVIGATE_BREAKPOINT"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/MainActivity;->yS()Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/s1243808733/aide/AideMainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x30000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "EXTRA_NAVIGATE_BREAKPOINT"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v6, v7, v4, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0

    :cond_3
    :try_start_1
    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/MainActivity;->ef()V

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v0

    invoke-static {}, Lcom/aide/ui/U;->gn()Lcom/aide/ui/debugger/Debugger;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aide/ui/debugger/Debugger;->v5()Labcd/Tl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aide/ui/MainActivity;->j6(Labcd/Tl;)V

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/MainActivity;->J0()Lcom/aide/ui/browsers/DebugBrowser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/browsers/DebugBrowser;->FH()V

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/MainActivity;->J8()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/aide/ui/xa;

    invoke-direct {v1, p0}, Lcom/aide/ui/xa;-><init>(Landroid/content/Context;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private Zo(Z)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x62c2b555f03a4c34L
    .end annotation

    const-wide v2, 0x57e1b78c858f3700L    # 2.1815152145057572E115

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x57e1b78c858f3700L    # 2.1815152145057572E115

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Z)V

    :cond_0
    iput-boolean p1, p0, Lcom/aide/ui/MainActivity;->we:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v0, v2, v3, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method private aq()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x4af368f966c6b237L
    .end annotation

    const-wide v2, -0x4bbf10fd7142b17bL    # -5.395366680151774E-57

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x4bbf10fd7142b17bL    # -5.395366680151774E-57

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/MainActivity;->J0:Lcom/aide/ui/Ga;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/aide/ui/MainActivity;->J0:Lcom/aide/ui/Ga;

    invoke-static {}, Lcom/aide/ui/U;->dx()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->lg()Lcom/aide/ui/views/SplitView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/views/SplitView;->splitHorizontalByDefault()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->lg()Lcom/aide/ui/views/SplitView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/views/SplitView;->isSplit()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->J8()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/AIDEEditorPager;->Ws()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/aide/common/g;->J0(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/aide/ui/Ga;->j6(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v1, :cond_4

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_4
    throw v0
.end method

.method private et()Lcom/aide/ui/AIDEErrorsView;
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x3a38f4fb25791930L
    .end annotation

    const-wide v2, 0x331231339dd2e8c0L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x331231339dd2e8c0L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    const v0, 0x7f0800f9

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/aide/ui/AIDEErrorsView;

    if-eqz v0, :cond_1

    :goto_0
    return-object v0

    :cond_1
    const v0, 0x7f0800a1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Lcom/aide/ui/AIDEErrorsView;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/aide/ui/AIDEErrorsView;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3
    throw v0
.end method

.method private hz()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x5bec2e1646c82efdL
    .end annotation

    const-wide v2, 0x242c3c66011cdf61L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x242c3c66011cdf61L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Lcom/aide/ui/MainActivity;->et()Lcom/aide/ui/AIDEErrorsView;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/aide/ui/AIDEErrorsView;->j6()V

    const v0, 0x7f0800ed

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
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
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 19
    :goto_0
    return v0

    .line 16
    :catch_0
    move-exception v0

    .line 19
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static j6(Landroid/content/Context;)Landroid/app/PendingIntent;
    .registers 7

    const-wide v4, 0xd87790cb3c52ef3L

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, 0xd87790cb3c52ef3L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/s1243808733/aide/AideMainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "EXTRA_UPGRADE_NOTIFICATION_CLICKED"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v1

    const/high16 v2, 0x8000000

    invoke-static {p0, v1, v0, v2}, Lcom/aide/ui/MainActivity;->j6(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method private static synthetic j6(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    .registers 5

    invoke-static {p0, p1, p2, p3}, Labcd/ApplicationUtils;->j6(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic j6(Lcom/aide/ui/MainActivity;)Lcom/aide/common/sa;
    .registers 2

    iget-object v0, p0, Lcom/aide/ui/MainActivity;->VH:Lcom/aide/common/sa;

    return-object v0
.end method

.method private j6(IZ)V
    .registers 11
    .annotation runtime Labcd/su;
        method = -0x26077c9782f74334L
    .end annotation

    const-wide v2, 0x206ef24b349ee760L

    const/4 v0, 0x0

    :try_start_0
    sget-boolean v1, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v4, Ljava/lang/Boolean;

    invoke-direct {v4, p2}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v6, 0x206ef24b349ee760L

    invoke-static {v6, v7, p0, v1, v4}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->tp()Lcom/aide/ui/browsers/BrowserPager;

    move-result-object v1

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->lg()Lcom/aide/ui/views/SplitView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/aide/ui/views/SplitView;->isSplit()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {v1, p1, v0}, Lcom/aide/ui/browsers/BrowserPager;->DW(IZ)V

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

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Labcd/we;->j6(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v0, :cond_2

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p2}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1
.end method

.method public static j6(Landroid/app/Activity;Landroid/content/IntentSender;)V
    .registers 9

    const-wide v2, 0x9573e08361b779fL

    const/4 v4, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x9573e08361b779fL

    const/4 v5, 0x0

    invoke-static {v0, v1, v5, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/s1243808733/aide/AideMainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "EXTRA_NAVIGATE_PLAY_STORE_INTENT_SENDER"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v0, :cond_1

    move-object v5, p0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method private j6(Landroid/view/Menu;)V
    .registers 12
    .annotation runtime Labcd/su;
        method = -0x3404d1faeac569f5L
    .end annotation

    const-wide v8, 0x11a1402a614d1adL

    const/4 v2, 0x0

    :try_start_0
    sget-boolean v3, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v3, :cond_0

    const-wide v4, 0x11a1402a614d1adL

    invoke-static {v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    move v4, v2

    :goto_0
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v2

    if-ge v4, v2, :cond_6

    invoke-interface {p1, v4}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    invoke-static {v2}, Lcom/aide/ui/V;->DW(I)Labcd/Yl;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-interface {v3}, Labcd/Yl;->isEnabled()Z

    move-result v2

    invoke-interface {v5, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    instance-of v2, v3, Labcd/_l;

    if-eqz v2, :cond_1

    move-object v0, v3

    check-cast v0, Labcd/_l;

    move-object v2, v0

    const/4 v6, 0x0

    invoke-interface {v2, v6}, Labcd/_l;->j6(Z)Z

    move-result v2

    invoke-interface {v5, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_1
    instance-of v2, v3, Labcd/Zl;

    if-eqz v2, :cond_2

    check-cast v3, Labcd/Zl;

    invoke-interface {v3}, Labcd/Zl;->DW()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v5, v2}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    :cond_2
    invoke-interface {v5}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    invoke-static {v2}, Lcom/aide/ui/V;->j6(I)Labcd/Hl;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-interface {v2}, Labcd/Hl;->isVisible()Z

    move-result v3

    invoke-interface {v5, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {v2}, Labcd/Hl;->isEnabled()Z

    move-result v2

    invoke-interface {v5, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_3
    invoke-interface {v5}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v5}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/aide/ui/MainActivity;->j6(Landroid/view/Menu;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_0

    :catch_0
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v3, :cond_5

    invoke-static {v2, v8, v9, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_5
    throw v2

    :cond_6
    return-void
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

    const-wide v2, 0xb7f27bbe441f080L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, 0xb7f27bbe441f080L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/U;->dx()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/aide/common/g;->Hw(Landroid/content/Context;)F

    move-result v0

    const v1, 0x44188000    # 610.0f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/aide/common/g;->j6(Landroid/app/Activity;Z)V

    :cond_1
    :goto_0
    invoke-static {p0}, Lcom/aide/common/g;->FH(Landroid/app/Activity;)V

    return-void

    :cond_2
    invoke-static {p0}, Lcom/aide/common/g;->QX(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/aide/ui/MainActivity;->isEnableActionBarTabSpinner()Z

    move-result v0

    invoke-static {p0, v0}, Lcom/aide/common/g;->j6(Landroid/app/Activity;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3
    throw v0
.end method

.method private jO()Z
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x1522c69788f0fd74L
    .end annotation

    const-wide v2, -0x34bf05a9f3c5ab08L    # -3.252314809209223E54

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x34bf05a9f3c5ab08L    # -3.252314809209223E54

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/U;->dx()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/aide/ui/U;->SI()Labcd/Cl;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Cl;->lg()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    invoke-static {}, Lcom/aide/ui/aa;->ro()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v1, :cond_4

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_4
    throw v0
.end method

.method private kQ()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x8ee5e6d0045f689L
    .end annotation

    const-wide v2, -0x33eb99d75c86574fL    # -3.2011739958156E58

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x33eb99d75c86574fL    # -3.2011739958156E58

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/build/android/Q;->j6()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/aide/ui/la;

    const-string v1, "Old NDK Version Deleter"

    invoke-direct {v0, p0, v1}, Lcom/aide/ui/la;-><init>(Lcom/aide/ui/MainActivity;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public static v5(Landroid/content/Context;)Landroid/app/PendingIntent;
    .registers 7

    const-wide v4, 0x4b61ce47d36a7cL

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x4b61ce47d36a7cL

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/s1243808733/aide/AideMainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "EXTRA_SHOWN_FROM_UPDATE_TRAINER_NOTIFICATION"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v1, 0x0

    const/high16 v2, 0x8000000

    invoke-static {p0, v1, v0, v2}, Lcom/aide/ui/MainActivity;->j6(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method private v5(I)V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x4e7328a9df9d3cffL
    .end annotation

    const-wide v2, -0x47969ecd659b23e9L    # -5.96673371510864E-37

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x47969ecd659b23e9L    # -5.96673371510864E-37

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_0
    const-string v0, "BrowserLayout"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "CurrentBrowser"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v2, v3, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method private wc()Landroid/widget/Spinner;
    .registers 9
    .annotation runtime Labcd/su;
        method = 0x13597a089bea8ffL
    .end annotation

    const-wide v6, -0x7a36c90629277f9bL    # -8.681778798525072E-281

    const/4 v1, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v0, :cond_0

    const-wide v2, -0x7a36c90629277f9bL    # -8.681778798525072E-281

    invoke-static {v2, v3, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v2, "action_bar"

    const-string v3, "id"

    const-string v4, "android"

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "mTabScrollView"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "mTabSpinner"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    check-cast v0, Landroid/widget/Spinner;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_2
    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v6, v7, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3
    throw v0
.end method

.method private yO()V
    .registers 9
    .annotation runtime Labcd/su;
        method = 0x1cc29ed2b107b460L
    .end annotation

    const-wide v6, 0x41c21e2ac562fccL

    const-wide/16 v4, -0x1

    const/4 v3, -0x1

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x41c21e2ac562fccL

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :try_start_1
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "first_seen_version"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/aide/ui/MainActivity;->XL:I

    iget v1, p0, Lcom/aide/ui/MainActivity;->XL:I

    if-ne v1, v3, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/aide/ui/MainActivity;->Hw(Z)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->EQ()I

    move-result v1

    iput v1, p0, Lcom/aide/ui/MainActivity;->XL:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/aide/ui/MainActivity;->aM:Z

    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "first_seen_version"

    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->EQ()I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_1
    const-string v1, "first_run_time"

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/aide/ui/MainActivity;->BT:J

    iget-wide v2, p0, Lcom/aide/ui/MainActivity;->BT:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/aide/ui/MainActivity;->BT:J

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "first_run_time"

    iget-wide v2, p0, Lcom/aide/ui/MainActivity;->BT:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_2
    :goto_1
    return-void

    :cond_3
    const/16 v1, 0x67

    iput v1, p0, Lcom/aide/ui/MainActivity;->XL:I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {v0}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v1, :cond_4

    invoke-static {v0, v6, v7, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_4
    throw v0
.end method


# virtual methods
.method public BT()Z
    .registers 5

    const-wide v2, 0xfd10d348fcf7abbL

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, 0xfd10d348fcf7abbL

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-boolean v0, p0, Lcom/aide/ui/MainActivity;->we:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public DW()V
    .registers 5

    const-wide v2, 0x439688c6123bfd45L    # 4.059413618213072E17

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x439688c6123bfd45L    # 4.059413618213072E17

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->tp()Lcom/aide/ui/browsers/BrowserPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/browsers/BrowserPager;->getCurrentBrowser()I

    move-result v0

    sget v1, Lcom/aide/ui/browsers/BrowserPager;->Eq:I

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->lg()Lcom/aide/ui/views/SplitView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/aide/ui/views/SplitView;->closeSplit(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public DW(I)V
    .registers 6

    const-wide v2, -0x2bf5312ee9cc8720L    # -7.157659959592363E96

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x2bf5312ee9cc8720L    # -7.157659959592363E96

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_0
    invoke-direct {p0}, Lcom/aide/ui/MainActivity;->FN()V

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-ltz p1, :cond_1

    invoke-virtual {v0}, Landroid/app/ActionBar;->getTabCount()I

    move-result v1

    if-ge p1, v1, :cond_1

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->getTabAt(I)Landroid/app/ActionBar$Tab;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->removeTab(Landroid/app/ActionBar$Tab;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v2, v3, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public DW(Ljava/lang/String;)V
    .registers 8

    const-wide v4, -0x556ea419dad4d8L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x556ea419dad4d8L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v1

    invoke-static {p1}, Labcd/FileSystemUtils;->tp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;

    move-result-object v1

    new-instance v2, Lcom/aide/ui/ma;

    invoke-direct {v2, p0, v1, p1}, Lcom/aide/ui/ma;-><init>(Lcom/aide/ui/MainActivity;Landroid/app/ActionBar$Tab;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;Z)V

    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->jJ()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public DW(Z)V
    .registers 8

    const-wide v4, -0x3736124f46af900L    # -8.92531362267445E291

    const/4 v0, 0x0

    :try_start_0
    sget-boolean v1, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v1, :cond_0

    const-wide v2, -0x3736124f46af900L    # -8.92531362267445E291

    invoke-static {v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Z)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/U;->j6()Labcd/we;

    move-result-object v1

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {v1, v0}, Labcd/we;->j6(Z)V

    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->ef()V

    if-eqz p1, :cond_4

    invoke-static {p0}, Lcom/aide/common/g;->j6(Landroid/content/Context;)F

    move-result v0

    const/high16 v1, 0x44480000    # 800.0f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_2

    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->lg()Lcom/aide/ui/views/SplitView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/views/SplitView;->isHorizontal()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    invoke-static {p0}, Lcom/aide/common/g;->j6(Landroid/content/Context;)F

    move-result v0

    const/high16 v1, 0x44070000    # 540.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4

    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/aide/ui/MainActivity;->FH(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v0, v4, v5, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_5
    throw v0
.end method

.method public EQ()I
    .registers 7

    const-wide v4, -0x4c64b29615df9c00L    # -4.2475809001195757E-60

    const/4 v0, 0x0

    :try_start_0
    sget-boolean v1, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v1, :cond_0

    const-wide v2, -0x4c64b29615df9c00L    # -4.2475809001195757E-60

    invoke-static {v2, v3, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v0, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return v0

    :catch_0
    move-exception v1

    :try_start_2
    invoke-static {v1}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public FH()V
    .registers 5

    const-wide v2, 0x2470f0f1b370550L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x2470f0f1b370550L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aide/ui/MainActivity;->yS:Landroid/view/View;

    const v0, 0x7f08011f

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsoluteLayout;

    invoke-virtual {v0}, Landroid/widget/AbsoluteLayout;->removeAllViews()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public FH(I)V
    .registers 6

    const-wide v2, 0x3c7f8b00771fc7dbL    # 2.7359170354887765E-17

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x3c7f8b00771fc7dbL    # 2.7359170354887765E-17

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_0
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->FH()V

    invoke-direct {p0}, Lcom/aide/ui/MainActivity;->FN()V

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-ltz p1, :cond_1

    invoke-virtual {v0}, Landroid/app/ActionBar;->getTabCount()I

    move-result v1

    if-ge p1, v1, :cond_1

    invoke-virtual {v0}, Landroid/app/ActionBar;->getSelectedNavigationIndex()I

    move-result v1

    if-eq p1, v1, :cond_1

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->getTabAt(I)Landroid/app/ActionBar$Tab;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->selectTab(Landroid/app/ActionBar$Tab;)V

    invoke-direct {p0}, Lcom/aide/ui/MainActivity;->wc()Landroid/widget/Spinner;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setSelection(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v2, v3, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public FH(Z)V
    .registers 6

    const-wide v2, 0x5d088e50fbd5275L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x5d088e50fbd5275L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Z)V

    :cond_0
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/aide/ui/MainActivity;->v5(I)V

    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->lg()Lcom/aide/ui/views/SplitView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/views/SplitView;->isSplit()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->lg()Lcom/aide/ui/views/SplitView;

    move-result-object v0

    new-instance v1, Lcom/aide/ui/pa;

    invoke-direct {v1, p0}, Lcom/aide/ui/pa;-><init>(Lcom/aide/ui/MainActivity;)V

    invoke-virtual {v0, p1, v1}, Lcom/aide/ui/views/SplitView;->closeSplit(ZLjava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->J8()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/AIDEEditorPager;->we()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v0, v2, v3, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public FH(Ljava/lang/String;)Z
    .registers 6

    const-wide v2, -0x2d52c7fb678a8d40L    # -1.8599933679809598E90

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x2d52c7fb678a8d40L    # -1.8599933679809598E90

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-static {p0, p1}, Landroid/support/v4/content/b;->j6(Landroid/content/Context;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public Hw(Z)Ljava/lang/String;
    .registers 10

    const-wide v6, 0x29653ef2f171307L

    const/4 v0, 0x0

    :try_start_0
    sget-boolean v1, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v1, :cond_0

    const-wide v2, 0x29653ef2f171307L

    invoke-static {v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :try_start_1
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v1, "last_seen_version"

    const-string v3, ""

    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->we()Ljava/lang/String;

    move-result-object v3

    if-eqz p1, :cond_2

    const-string v4, ""

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v4, "last_seen_version"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_2
    if-eqz v3, :cond_3

    const-string v2, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    :goto_0
    return-object v0

    :cond_4
    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-boolean v1, p0, Lcom/aide/ui/MainActivity;->QX:Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v1, :cond_3

    const-string v0, ""

    goto :goto_0

    :cond_5
    :try_start_2
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-result v2

    if-nez v2, :cond_3

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_3
    invoke-static {v1}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v1, :cond_6

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v0, v6, v7, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_6
    throw v0
.end method

.method public Hw()V
    .registers 5

    const-wide v2, 0x393c7839302c68afL    # 5.483049871376746E-33

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x393c7839302c68afL    # 5.483049871376746E-33

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/MainActivity;->gn:Lcom/aide/common/sa;

    invoke-virtual {v0}, Lcom/aide/common/sa;->j6()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public Hw(I)V
    .registers 6

    const-wide v2, -0x3631e1c74fdf31dL

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x3631e1c74fdf31dL

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_0
    invoke-static {p0, p1}, Lcom/aide/ui/preferences/PreferencesActivity;->j6(Landroid/app/Activity;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v2, v3, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public Hw(Ljava/lang/String;)V
    .registers 10

    const-wide v6, -0x9f7ae15b41f9130L    # -3.73929306328093E260

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x9f7ae15b41f9130L    # -3.73929306328093E260

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-static {p1}, Labcd/FileSystemUtils;->VH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "java"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "xml"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "svg"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "class"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "js"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz v1, :cond_1

    const-string v0, "text"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    invoke-static {p1}, Labcd/FileSystemUtils;->we(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Labcd/Tl;

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Labcd/Tl;-><init>(Ljava/lang/String;IIII)V

    invoke-virtual {p0, v0}, Lcom/aide/ui/MainActivity;->j6(Labcd/Tl;)V

    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v0

    invoke-virtual {v0, p1}, Labcd/Zk;->FH(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-ge v0, v2, :cond_2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No handler found for type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/s1243808733/util/Toasty;->toast(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v1, :cond_4

    invoke-static {v0, v6, v7, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    throw v0
.end method

.method public I()V
    .registers 9

    const-wide v6, -0x1beadc70dcc0fde0L    # -1.3070733326220433E174

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1beadc70dcc0fde0L    # -1.3070733326220433E174

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/MainActivity;->a8:Landroid/os/Handler;

    iget-object v1, p0, Lcom/aide/ui/MainActivity;->lg:Lcom/aide/ui/MainActivity$a;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget v0, p0, Lcom/aide/ui/MainActivity;->U2:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/aide/ui/MainActivity;->a8:Landroid/os/Handler;

    iget-object v1, p0, Lcom/aide/ui/MainActivity;->lg:Lcom/aide/ui/MainActivity$a;

    iget v2, p0, Lcom/aide/ui/MainActivity;->U2:I

    int-to-long v2, v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v6, v7, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public J0()Lcom/aide/ui/browsers/DebugBrowser;
    .registers 5

    const-wide v2, -0x7aaba873c81e81bbL    # -5.471890250945286E-283

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x7aaba873c81e81bbL    # -5.471890250945286E-283

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->tp()Lcom/aide/ui/browsers/BrowserPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/browsers/BrowserPager;->getDebugBrowser()Lcom/aide/ui/browsers/DebugBrowser;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public J8()Lcom/aide/ui/AIDEEditorPager;
    .registers 5

    const-wide v2, 0x2d678c70cd713fd9L    # 5.7801129934065475E-90

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x2d678c70cd713fd9L    # 5.7801129934065475E-90

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    const v0, 0x7f0800f1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/aide/ui/AIDEEditorPager;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public KD()V
    .registers 5

    const-wide v2, 0x19b993a819e608b8L    # 9.405212294515476E-185

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x19b993a819e608b8L    # 9.405212294515476E-185

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->J8()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/AIDEEditorPager;->J8()V

    sget v0, Lcom/aide/ui/browsers/BrowserPager;->CU:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/aide/ui/MainActivity;->j6(IZ)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public Mr()Lcom/aide/ui/browsers/LogCatBrowser;
    .registers 5

    const-wide v2, 0x5124e4515f7971f8L    # 7.926949110663134E82

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x5124e4515f7971f8L    # 7.926949110663134E82

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->tp()Lcom/aide/ui/browsers/BrowserPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/browsers/BrowserPager;->getLogCatBrowser()Lcom/aide/ui/browsers/LogCatBrowser;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public Mz()V
    .registers 7

    const-wide v4, 0x39d3091638c9190dL    # 3.7540895189522355E-30

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x39d3091638c9190dL    # 3.7540895189522355E-30

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-static {}, Lcom/aide/ui/U;->SI()Labcd/Cl;

    move-result-object v1

    invoke-virtual {v1}, Labcd/Cl;->Zo()Lcom/aide/ui/trainer/g$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aide/ui/trainer/g$c;->Hw()I

    move-result v1

    invoke-static {}, Lcom/aide/ui/U;->SI()Labcd/Cl;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Cl;->Zo()Lcom/aide/ui/trainer/g$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/trainer/g$c;->J0()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/aide/common/Za;->j6(Landroid/app/ActionBar;I[Ljava/lang/String;)V

    invoke-static {}, Lcom/aide/ui/U;->SI()Labcd/Cl;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Cl;->lg()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setNavigationMode(I)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setNavigationMode(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public OW()V
    .registers 5

    const-wide v2, -0x4b7631d32ed8e0L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x4b7631d32ed8e0L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->lg()Lcom/aide/ui/views/SplitView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/views/SplitView;->isSplit()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->tp()Lcom/aide/ui/browsers/BrowserPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/browsers/BrowserPager;->getCurrentBrowser()I

    move-result v0

    sget v1, Lcom/aide/ui/browsers/BrowserPager;->CU:I

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/aide/ui/MainActivity;->FH(Z)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->KD()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public P8()Z
    .registers 13

    const-wide v10, -0xc4eb6c02c15080L

    const/4 v8, 0x1

    const/4 v0, 0x0

    :try_start_0
    sget-boolean v1, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v1, :cond_0

    const-wide v2, -0xc4eb6c02c15080L

    invoke-static {v2, v3, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v1

    invoke-virtual {v1}, Labcd/Zk;->j3()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v1

    invoke-virtual {v1}, Labcd/Zk;->U2()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v1

    invoke-virtual {v1}, Labcd/Zk;->J0()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Labcd/gj;->FH(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ValuableApps"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "ValuableApps"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/util/HashSet;

    const-string v5, "\n"

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v4, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_1

    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "ValuableApps"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    new-instance v5, Lcom/aide/ui/ya;

    invoke-direct {v5, p0}, Lcom/aide/ui/ya;-><init>(Lcom/aide/ui/MainActivity;)V

    const-string v1, "Do you want to get more exposure for your app?"

    const-string v2, "If you have built something great using AIDE please write about it in our Google+ community."

    const/4 v3, 0x1

    const-string v4, "Open Google+"

    const-string v6, "Not now"

    const/4 v7, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v8

    :cond_2
    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v10, v11, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3
    throw v0
.end method

.method public QX()Lcom/aide/ui/browsers/FileBrowser;
    .registers 5

    const-wide v2, -0x43963a03bc5d3d40L    # -1.1177422050532188E-17

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x43963a03bc5d3d40L    # -1.1177422050532188E-17

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->tp()Lcom/aide/ui/browsers/BrowserPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/browsers/BrowserPager;->getFileBrowser()Lcom/aide/ui/browsers/FileBrowser;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public Qq()V
    .registers 7

    const-wide v4, 0x363d6765f6edf133L    # 2.0118964532627982E-47

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x363d6765f6edf133L    # 2.0118964532627982E-47

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    const v0, 0x7f0800ee

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/aide/ui/MainActivity;->rN:Lcom/aide/ui/Z;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/aide/ui/Z;->j6(Landroid/view/View;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public SI()V
    .registers 5

    const-wide v2, -0x17040751d42486bbL    # -5.22722862548179E197

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x17040751d42486bbL    # -5.22722862548179E197

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->J8()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/AIDEEditorPager;->J8()V

    sget v0, Lcom/aide/ui/browsers/BrowserPager;->Eq:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/aide/ui/MainActivity;->j6(IZ)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public Sf()V
    .registers 5

    const-wide v2, -0xe732820e61aa859L    # -9.39097626847189E238

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0xe732820e61aa859L    # -9.39097626847189E238

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->vJ()V

    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Zk;->er()V

    invoke-static {}, Lcom/aide/ui/U;->J8()Labcd/mk;

    move-result-object v0

    invoke-virtual {v0}, Labcd/mk;->Hw()V

    invoke-static {}, Lcom/aide/ui/U;->EQ()Labcd/Xj;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Xj;->J0()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public U2()Landroid/view/View;
    .registers 5

    const-wide v2, -0x1e572d6203a2b020L    # -2.791882292413606E162

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1e572d6203a2b020L    # -2.791882292413606E162

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/MainActivity;->yS:Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public VH()V
    .registers 5

    const-wide v2, -0x12fd429e7892435dL    # -1.2920256454680675E217

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x12fd429e7892435dL    # -1.2920256454680675E217

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->BT()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/aide/ui/MainActivity;->Zo(Z)V

    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->J8()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/AIDEEditorPager;->J8()V

    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->J8()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->BT()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/aide/ui/AIDEEditorPager;->setIdentifierClickingEnabled(Z)V

    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->ef()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public Ws()Lcom/aide/ui/browsers/ErrorBrowser;
    .registers 5

    const-wide v2, -0x24cb7ab2eddeec40L    # -2.275885724574377E131

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x24cb7ab2eddeec40L    # -2.275885724574377E131

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->tp()Lcom/aide/ui/browsers/BrowserPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/browsers/BrowserPager;->getErrorBrowser()Lcom/aide/ui/browsers/ErrorBrowser;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public XL()J
    .registers 5

    const-wide v2, -0x50ffbfba4205d240L    # -2.676905240209574E-82

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x50ffbfba4205d240L    # -2.676905240209574E-82

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-wide v0, p0, Lcom/aide/ui/MainActivity;->BT:J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public Zo()V
    .registers 7

    const-wide v4, -0x3ad82a46954aa380L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x3ad82a46954aa380L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/U;->dx()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v0

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v0, v1}, Lcom/aide/ui/MainActivity;->FH(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    invoke-static {p0, v0, v1}, Landroid/support/v4/app/c;->j6(Landroid/app/Activity;[Ljava/lang/String;I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/aide/ui/MainActivity;->j6(ZLjava/lang/String;Lcom/aide/ui/trainer/g$i;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3
    throw v0
.end method

.method public a8()I
    .registers 5

    const-wide v2, 0x27de5064d100b620L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x27de5064d100b620L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/MainActivity;->er:Lcom/aide/ui/La;

    invoke-virtual {v0}, Lcom/aide/ui/La;->j6()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public aM()I
    .registers 5

    const-wide v2, -0x44eec034ddd0131L    # -6.501218731161185E287

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x44eec034ddd0131L    # -6.501218731161185E287

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget v0, p0, Lcom/aide/ui/MainActivity;->XL:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public aj()V
    .registers 9

    const-wide v6, 0x65cb047128a7ef0L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x65cb047128a7ef0L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->J8()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/AIDEEditorPager;->getFileEditors()Ljava/util/List;

    move-result-object v5

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aide/ui/AIDEEditor;

    invoke-virtual {v0}, Lcom/aide/ui/AIDEEditor;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Labcd/FileSystemUtils;->tp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/aide/ui/U;->er()Labcd/Nk;

    move-result-object v4

    invoke-virtual {v4, v3}, Labcd/Nk;->DW(Ljava/lang/String;)Labcd/Nk$a;

    move-result-object v3

    invoke-interface {v3}, Labcd/Nk$a;->J0()Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " *"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v6, v7, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0

    :cond_3
    :try_start_1
    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v0

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "\u6253\u5f00\u6587\u4ef6"

    :goto_1
    :try_start_2
    invoke-static {}, Lcom/s1243808733/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v3

    const v4, 0x7f0d06d8

    invoke-virtual {v3, v4}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/aide/ui/sa;

    invoke-direct {v4, p0, v5}, Lcom/aide/ui/sa;-><init>(Lcom/aide/ui/MainActivity;Ljava/util/List;)V

    new-instance v5, Lcom/aide/ui/ua;

    invoke-direct {v5, p0}, Lcom/aide/ui/ua;-><init>(Lcom/aide/ui/MainActivity;)V

    invoke-static/range {v0 .. v5}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/aide/common/ab;Ljava/lang/Runnable;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :cond_4
    const-string v1, "Open Files"

    goto :goto_1
.end method

.method public br()V
    .registers 5

    const-wide v2, 0x2139dd63d66a9be0L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x2139dd63d66a9be0L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    new-instance v0, Lcom/aide/ui/qa;

    invoke-direct {v0, p0}, Lcom/aide/ui/qa;-><init>(Lcom/aide/ui/MainActivity;)V

    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->lg()Lcom/aide/ui/views/SplitView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/aide/ui/views/SplitView;->toggleSplit(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->lg()Lcom/aide/ui/views/SplitView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/views/SplitView;->isSplit()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->J8()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/AIDEEditorPager;->J8()V

    :cond_1
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->lg()Lcom/aide/ui/views/SplitView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/views/SplitView;->isSplit()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/aide/ui/U;->j6()Labcd/we;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Labcd/we;->j6(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3
    throw v0
.end method

.method public ca()V
    .registers 5

    const-wide v2, 0x1c4218e32a33f60L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x1c4218e32a33f60L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/U;->dx()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aide/ui/MainActivity;->VH:Lcom/aide/common/sa;

    invoke-virtual {v0}, Lcom/aide/common/sa;->FH()V

    :goto_0
    return-void

    :cond_1
    new-instance v0, Labcd/kh;

    invoke-direct {v0}, Labcd/kh;-><init>()V

    invoke-static {p0, v0}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Lcom/aide/common/ma;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public cb()V
    .registers 5

    const-wide v2, 0x14018d5f93c14457L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x14018d5f93c14457L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/MainActivity;->gn:Lcom/aide/common/sa;

    invoke-virtual {v0}, Lcom/aide/common/sa;->Hw()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public cn()V
    .registers 5

    const-wide v2, -0x1af038f0f11fff60L    # -6.43855156523886E178

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1af038f0f11fff60L    # -6.43855156523886E178

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->rN()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/aide/ui/MainActivity;->u7:Lcom/aide/ui/Wa;

    invoke-virtual {v0}, Lcom/aide/ui/Wa;->FH()V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/aide/ui/MainActivity;->EQ:Lcom/aide/ui/fa;

    invoke-virtual {v0}, Lcom/aide/ui/fa;->FH()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public dx()V
    .registers 5

    const-wide v2, -0x3511d33474f5d100L    # -9.031840538048856E52

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x3511d33474f5d100L    # -9.031840538048856E52

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->J8()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/AIDEEditorPager;->J8()V

    sget v0, Lcom/aide/ui/browsers/BrowserPager;->Xa:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/aide/ui/MainActivity;->j6(IZ)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public ef()V
    .registers 5

    const-wide v2, 0x1a82f4ccd6fe89ecL

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x1a82f4ccd6fe89ecL

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->vy()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/aide/ui/MainActivity;->gW:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    :cond_1
    invoke-direct {p0}, Lcom/aide/ui/MainActivity;->aq()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public ei()Z
    .registers 7

    const-wide v4, -0xf8d700c145b1350L    # -4.610932948817873E233

    const/4 v0, 0x0

    :try_start_0
    sget-boolean v1, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v1, :cond_0

    const-wide v2, -0xf8d700c145b1350L    # -4.610932948817873E233

    invoke-static {v2, v3, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/U;->XL()Labcd/Ak;

    move-result-object v1

    invoke-virtual {v1}, Labcd/Ak;->j6()Labcd/Tl;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/aide/ui/U;->XL()Labcd/Ak;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Labcd/Ak;->j6(Z)V

    invoke-virtual {p0, v1}, Lcom/aide/ui/MainActivity;->j6(Labcd/Tl;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :cond_1
    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public er()Z
    .registers 5

    const-wide v2, 0xd3942eb79b2c830L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, 0xd3942eb79b2c830L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-boolean v0, p0, Lcom/aide/ui/MainActivity;->j3:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public g3()V
    .registers 9

    const-wide v6, 0x4e4a255e65887891L    # 1.4097880013042698E69

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x4e4a255e65887891L    # 1.4097880013042698E69

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Lcom/aide/ui/MainActivity;->jO()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->J8()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/AIDEEditorPager;->getFileEditors()Ljava/util/List;

    move-result-object v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aide/ui/AIDEEditor;

    invoke-virtual {v0}, Lcom/aide/ui/AIDEEditor;->getModel()Labcd/Nk$a;

    move-result-object v4

    invoke-interface {v4}, Labcd/Nk$a;->Ws()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Labcd/FileSystemUtils;->tp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/aide/ui/U;->dx()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-interface {v4}, Labcd/Nk$a;->J0()Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " *"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-virtual {v2, v1}, Landroid/app/ActionBar;->getTabAt(I)Landroid/app/ActionBar$Tab;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v6, v7, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0

    :cond_3
    return-void
.end method

.method public gW()Z
    .registers 5

    const-wide v2, -0x10f11eb74dda9da3L    # -9.144169379434885E226

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x10f11eb74dda9da3L    # -9.144169379434885E226

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-boolean v0, p0, Lcom/aide/ui/MainActivity;->aM:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public gn()V
    .registers 7

    const-wide v4, -0xb83767416fa31cbL

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0xb83767416fa31cbL

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/U;->er()Labcd/Nk;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Nk;->we()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/aide/ui/na;

    invoke-direct {v0, p0}, Lcom/aide/ui/na;-><init>(Lcom/aide/ui/MainActivity;)V

    new-instance v1, Lcom/aide/ui/oa;

    invoke-direct {v1, p0}, Lcom/aide/ui/oa;-><init>(Lcom/aide/ui/MainActivity;)V

    const v2, 0x7f0d05e7

    const v3, 0x7f0d05e6

    invoke-static {p0, v2, v3, v0, v1}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;IILjava/lang/Runnable;Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
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

    const-wide v2, -0x1e6c06d89b7e4d4dL    # -1.1232245367419307E162

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1e6c06d89b7e4d4dL    # -1.1232245367419307E162

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/MainActivity;->Zo:Lcom/aide/common/KeyStrokeDetector;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(Landroid/graphics/Rect;)Landroid/view/View;
    .registers 14

    const-wide v10, 0x250bbe82e7fe089cL

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x250bbe82e7fe089cL

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aide/ui/MainActivity;->yS:Landroid/view/View;

    const v0, 0x7f08011f

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsoluteLayout;

    const/4 v1, 0x2

    new-array v1, v1, [I

    invoke-virtual {v0, v1}, Landroid/widget/AbsoluteLayout;->getLocationOnScreen([I)V

    invoke-virtual {v0}, Landroid/widget/AbsoluteLayout;->removeAllViews()V

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v5

    iget v6, p1, Landroid/graphics/Rect;->left:I

    const/4 v7, 0x0

    aget v7, v1, v7

    sub-int/2addr v6, v7

    iget v7, p1, Landroid/graphics/Rect;->top:I

    const/4 v8, 0x1

    aget v1, v1, v8

    sub-int v1, v7, v1

    invoke-direct {v3, v4, v5, v6, v1}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v2, v3}, Landroid/widget/AbsoluteLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v10, v11, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6()V
    .registers 5

    const-wide v2, 0x2845d3565ddfc820L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x2845d3565ddfc820L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Lcom/aide/ui/MainActivity;->Eq()V

    invoke-direct {p0}, Lcom/aide/ui/MainActivity;->hz()V

    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->Ws()Lcom/aide/ui/browsers/ErrorBrowser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/browsers/ErrorBrowser;->FH()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(I)V
    .registers 6

    const-wide v2, -0x3e1ea0f0bd5139b1L    # -2.3315399894617076E9

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x3e1ea0f0bd5139b1L    # -2.3315399894617076E9

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;I)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/aide/ui/MainActivity;->v5(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v0, v2, v3, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(Labcd/Tl;)V
    .registers 6

    const-wide v2, -0x1eccd28ff19947e0L    # -1.6851148285533243E160

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1eccd28ff19947e0L    # -1.6851148285533243E160

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/aide/ui/MainActivity;->j6(Labcd/Tl;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(Labcd/Tl;Z)V
    .registers 10

    const-wide v2, -0x1d73a42a30ef705bL    # -5.225819629764688E166

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p2}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v4, -0x1d73a42a30ef705bL    # -5.225819629764688E166

    invoke-static {v4, v5, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p1, Labcd/Tl;->FH:Ljava/lang/String;

    invoke-static {v0}, Labcd/FileSystemUtils;->J8(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Labcd/Tl;->FH:Ljava/lang/String;

    invoke-static {}, Lcom/aide/ui/U;->er()Labcd/Nk;

    move-result-object v1

    invoke-virtual {v1}, Labcd/Nk;->DW()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->J8()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v0

    iget v1, p1, Labcd/Tl;->Hw:I

    iget v4, p1, Labcd/Tl;->v5:I

    iget v5, p1, Labcd/Tl;->Zo:I

    iget v6, p1, Labcd/Tl;->VH:I

    invoke-virtual {v0, v1, v4, v5, v6}, Lcom/aide/ui/AIDEEditorPager;->j6(IIII)V

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->J8()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/AIDEEditorPager;->we()V

    :cond_1
    invoke-static {}, Lcom/aide/ui/U;->XL()Labcd/Ak;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Labcd/Ak;->j6(Z)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-static {}, Lcom/aide/ui/U;->XL()Labcd/Ak;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Ak;->Zo()Z

    move-result v1

    invoke-static {}, Lcom/aide/ui/U;->XL()Labcd/Ak;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Labcd/Ak;->j6(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {}, Lcom/aide/ui/U;->er()Labcd/Nk;

    move-result-object v0

    iget-object v4, p1, Labcd/Tl;->FH:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Labcd/Nk;->j6(Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_4

    :try_start_2
    invoke-static {}, Lcom/aide/ui/U;->XL()Labcd/Ak;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Labcd/Ak;->j6(Z)V

    :cond_4
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->J8()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v0

    iget v1, p1, Labcd/Tl;->Hw:I

    iget v4, p1, Labcd/Tl;->v5:I

    iget v5, p1, Labcd/Tl;->Zo:I

    iget v6, p1, Labcd/Tl;->VH:I

    invoke-virtual {v0, v1, v4, v5, v6}, Lcom/aide/ui/AIDEEditorPager;->j6(IIII)V

    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->J8()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/AIDEEditorPager;->EQ()V

    invoke-static {}, Lcom/aide/ui/U;->XL()Labcd/Ak;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Labcd/Ak;->j6(Z)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v0, :cond_5

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p2}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5
    throw v1

    :catch_1
    move-exception v0

    :try_start_3
    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p1, Labcd/Tl;->FH:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " could not be loaded!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v0, v4, v5}, Lcom/s1243808733/util/Toasty;->toast(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_2

    :try_start_4
    invoke-static {}, Lcom/aide/ui/U;->XL()Labcd/Ak;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Labcd/Ak;->j6(Z)V

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_6

    invoke-static {}, Lcom/aide/ui/U;->XL()Labcd/Ak;

    move-result-object v1

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Labcd/Ak;->j6(Z)V

    :cond_6
    throw v0
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
.end method

.method public j6(Landroid/view/View;Landroid/graphics/Rect;)V
    .registers 13

    const-wide v2, 0xbe26b4889ebf355L    # 2.00983988161895E-251

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, 0xbe26b4889ebf355L    # 2.00983988161895E-251

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Lcom/aide/ui/MainActivity;->yS:Landroid/view/View;

    const v0, 0x7f08011f

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsoluteLayout;

    const/4 v1, 0x2

    new-array v1, v1, [I

    invoke-virtual {v0, v1}, Landroid/widget/AbsoluteLayout;->getLocationOnScreen([I)V

    invoke-virtual {v0}, Landroid/widget/AbsoluteLayout;->removeAllViews()V

    new-instance v4, Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v6

    iget v7, p2, Landroid/graphics/Rect;->left:I

    const/4 v8, 0x0

    aget v8, v1, v8

    sub-int/2addr v7, v8

    iget v8, p2, Landroid/graphics/Rect;->top:I

    const/4 v9, 0x1

    aget v1, v1, v9

    sub-int v1, v8, v1

    invoke-direct {v4, v5, v6, v7, v1}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, p1, v4}, Landroid/widget/AbsoluteLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v0, :cond_1

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public j6(Ljava/lang/String;)V
    .registers 6

    const-wide v2, 0x94e1fab65387428L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x94e1fab65387428L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Lcom/aide/ui/MainActivity;->Eq()V

    invoke-direct {p0}, Lcom/aide/ui/MainActivity;->hz()V

    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->Ws()Lcom/aide/ui/browsers/ErrorBrowser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/browsers/ErrorBrowser;->Hw()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    const-wide v2, -0x19f218c8ad381095L    # -3.970679802334919E183

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x19f218c8ad381095L    # -3.970679802334919E183

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->J8()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/AIDEEditorPager;->J8()V

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v0

    invoke-static {}, Lcom/s1243808733/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v1

    const v4, 0x7f0d06ac

    invoke-virtual {v1, v4}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Lcom/aide/ui/wa;

    invoke-direct {v4, p0}, Lcom/aide/ui/wa;-><init>(Lcom/aide/ui/MainActivity;)V

    const/4 v5, 0x0

    invoke-static {v0, v1, v4, v5}, Lcom/aide/ui/U;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/aide/ui/U;->J0()Labcd/lk;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Labcd/lk;->j6(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v0, :cond_1

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
    .registers 12

    const-wide v6, 0x666c23dd69f88b05L    # 2.3914039641080346E185

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x666c23dd69f88b05L    # 2.3914039641080346E185

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-static {p0}, Lcom/aide/common/g;->J8(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "Rate"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "Rated"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "Rate"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "Rated"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    sget-object v3, Lcom/aide/ui/U;->j6:Ljava/lang/String;

    const-string v4, "rate"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/aide/common/Wa;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-eqz p3, :cond_1

    invoke-interface {p3}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v0, :cond_3

    move-wide v2, v6

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v1
.end method

.method public j6(Z)V
    .registers 8

    const-wide v4, 0x36eabdbbc3313b0L

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    sget-boolean v2, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v2, :cond_0

    const-wide v2, 0x36eabdbbc3313b0L

    invoke-static {v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Z)V

    :cond_0
    iget-object v3, p0, Lcom/aide/ui/MainActivity;->er:Lcom/aide/ui/La;

    if-eqz p1, :cond_1

    iget-boolean v2, p0, Lcom/aide/ui/MainActivity;->Mr:Z

    if-eqz v2, :cond_1

    move v2, v0

    :goto_0
    invoke-virtual {v3, v2}, Lcom/aide/ui/La;->j6(Z)V

    invoke-static {}, Lcom/aide/ui/U;->j6()Labcd/we;

    move-result-object v2

    if-nez p1, :cond_2

    :goto_1
    invoke-virtual {v2, v0}, Labcd/we;->j6(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :cond_1
    move v2, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v0, v4, v5, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v0
.end method

.method public j6(ZLjava/lang/String;Lcom/aide/ui/trainer/g$i;)V
    .registers 12

    const-wide v6, -0x1d454eea7d8a5ef8L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v0, :cond_0

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v0, -0x1d454eea7d8a5ef8L

    move-object v2, p0

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aide/ui/MainActivity;->gW:Z

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/aide/ui/MainActivity;->FH(Z)V

    :goto_0
    invoke-static {}, Lcom/aide/ui/U;->er()Labcd/Nk;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Labcd/Nk;->j6(ZZ)V

    if-eqz p2, :cond_5

    invoke-static {}, Lcom/aide/ui/U;->SI()Labcd/Cl;

    move-result-object v0

    invoke-virtual {v0, p2}, Labcd/Cl;->FH(Ljava/lang/String;)V

    :cond_1
    :goto_1
    invoke-static {p1}, Lcom/aide/ui/U;->j6(Z)V

    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->recreate()V

    return-void

    :cond_2
    invoke-static {}, Lcom/aide/ui/U;->er()Labcd/Nk;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Nk;->DW()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/aide/ui/U;->J8()Labcd/mk;

    move-result-object v1

    invoke-static {v0}, Labcd/FileSystemUtils;->EQ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Labcd/mk;->j6(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v0, :cond_3

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p1}, Ljava/lang/Boolean;-><init>(Z)V

    move-wide v2, v6

    move-object v4, p0

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v1

    :cond_4
    :try_start_1
    invoke-static {}, Lcom/aide/ui/U;->J8()Labcd/mk;

    move-result-object v0

    invoke-static {}, Lcom/aide/ui/U;->J8()Labcd/mk;

    move-result-object v1

    invoke-virtual {v1}, Labcd/mk;->DW()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Labcd/mk;->j6(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    if-eqz p3, :cond_1

    invoke-static {}, Lcom/aide/ui/U;->SI()Labcd/Cl;

    move-result-object v0

    invoke-virtual {v0, p3}, Labcd/Cl;->v5(Lcom/aide/ui/trainer/g$i;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public jJ()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x40176323d3d9b8b0L
    .end annotation

    const-wide v2, 0xb7f27bbe441f080L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, 0xb7f27bbe441f080L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/U;->dx()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/aide/common/g;->Hw(Landroid/content/Context;)F

    move-result v0

    const v1, 0x44188000    # 610.0f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_2

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/aide/common/g;->j6(Landroid/app/Activity;Z)V

    :cond_1
    :goto_0
    invoke-static {p0}, Lcom/aide/common/g;->FH(Landroid/app/Activity;)V

    return-void

    :cond_2
    invoke-static {p0}, Lcom/aide/common/g;->QX(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/aide/common/g;->j6(Landroid/app/Activity;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3
    throw v0
.end method

.method public lg()Lcom/aide/ui/views/SplitView;
    .registers 5

    const-wide v2, -0x1681c404d7f188d7L    # -1.4464288382506605E200

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1681c404d7f188d7L    # -1.4464288382506605E200

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    const v0, 0x7f080124

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/aide/ui/views/SplitView;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public lp()V
    .registers 5

    const-wide v2, 0x10a3e41319759a90L    # 1.639940504552641E-228

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x10a3e41319759a90L    # 1.639940504552641E-228

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    const/4 v0, -0x2

    invoke-virtual {p0, v0}, Lcom/aide/ui/MainActivity;->Hw(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public nw()V
    .registers 7

    const-wide v4, -0x116b0fef8fa11ac0L    # -4.843806771749574E224

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x116b0fef8fa11ac0L    # -4.843806771749574E224

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/U;->XL()Labcd/Ak;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Ak;->v5()Labcd/Tl;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/aide/ui/U;->XL()Labcd/Ak;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Labcd/Ak;->j6(Z)V

    invoke-virtual {p0, v0}, Lcom/aide/ui/MainActivity;->j6(Labcd/Tl;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 14
    .annotation runtime Labcd/su;
        method = 0x49ffabb7b9d8a187L
    .end annotation

    const-wide v8, 0xe9dd2f40670a86dL

    const/4 v6, -0x1

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v0, :cond_0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, 0xe9dd2f40670a86dL

    move-object v2, p0

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-static {p0, p1, p2, p3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Object;IILandroid/content/Intent;)V

    const/16 v0, 0xc

    if-ne p1, v0, :cond_2

    if-ne p2, v6, :cond_1

    invoke-static {p3}, Lcom/aide/ui/activities/GotoBrowserActivity;->j6(Landroid/content/Intent;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const v0, 0x123abc

    if-ne p1, v0, :cond_4

    invoke-static {}, Lcom/aide/ui/U;->QX()Labcd/yk;

    move-result-object v0

    invoke-virtual {v0, p3}, Labcd/yk;->j6(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v0, :cond_3

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-wide v2, v8

    move-object v4, p0

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v1

    :cond_4
    const/16 v0, 0xf

    if-ne p1, v0, :cond_5

    if-ne p2, v6, :cond_1

    :try_start_1
    invoke-static {p3}, Lcom/aide/ui/build/OutputConsoleActivity;->j6(Landroid/content/Intent;)V

    goto :goto_0

    :cond_5
    const/16 v0, 0xd

    if-ne p1, v0, :cond_7

    if-ne p2, v6, :cond_1

    invoke-static {p3}, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->j6(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/aide/ui/U;->SI()Labcd/Cl;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Cl;->j6()V

    goto :goto_0

    :cond_6
    invoke-static {p3}, Lcom/aide/uidesigner/XmlLayoutDesignActivity;->DW(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/aide/ui/U;->SI()Labcd/Cl;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Cl;->BT()V

    goto :goto_0

    :cond_7
    const/16 v0, 0xe

    if-ne p1, v0, :cond_8

    if-ne p2, v6, :cond_1

    invoke-static {}, Lcom/aide/ui/U;->SI()Labcd/Cl;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Cl;->j6()V

    goto :goto_0

    :cond_8
    const/16 v0, 0x10

    if-ne p1, v0, :cond_9

    invoke-static {p0}, Lcom/aide/ui/ib;->VH(Landroid/app/Activity;)V

    goto :goto_0

    :cond_9
    const/16 v0, 0x11

    if-ne p1, v0, :cond_a

    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->ca()V

    invoke-static {}, Lcom/aide/ui/U;->j6()Labcd/we;

    move-result-object v0

    invoke-virtual {v0}, Labcd/we;->j6()V

    sget-object v0, Lcom/aide/ui/build/f;->j6:Lcom/aide/ui/build/android/B;

    invoke-virtual {v0}, Lcom/aide/ui/build/android/B;->VH()V

    goto :goto_0

    :cond_a
    const/16 v0, 0x12

    if-ne p1, v0, :cond_b

    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->ca()V

    invoke-static {}, Lcom/aide/ui/U;->j6()Labcd/we;

    move-result-object v0

    invoke-virtual {v0}, Labcd/we;->j6()V

    sget-object v0, Lcom/aide/ui/build/f;->DW:Lcom/aide/ui/build/java/h;

    invoke-virtual {v0}, Lcom/aide/ui/build/java/h;->VH()V

    goto/16 :goto_0

    :cond_b
    const/16 v0, 0x13

    if-ne p1, v0, :cond_c

    invoke-static {}, Lcom/aide/ui/U;->j6()Labcd/we;

    move-result-object v0

    invoke-virtual {v0}, Labcd/we;->j6()V

    sget-object v0, Lcom/aide/ui/build/f;->Hw:Labcd/Le;

    invoke-virtual {v0}, Labcd/Le;->VH()V

    goto/16 :goto_0

    :cond_c
    const/16 v0, 0x14

    if-ne p1, v0, :cond_1

    invoke-static {}, Lcom/aide/ui/U;->j6()Labcd/we;

    move-result-object v0

    invoke-virtual {v0}, Labcd/we;->j6()V

    sget-object v0, Lcom/aide/ui/build/f;->v5:Lcom/aide/ui/build/javascript/a;

    invoke-virtual {v0}, Lcom/aide/ui/build/javascript/a;->VH()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public onBackPressed()V
    .registers 9

    const-wide/16 v6, 0x7d0

    const-wide v4, -0x42a37514fac419c0L    # -4.056154328310318E-13

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x42a37514fac419c0L    # -4.056154328310318E-13

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/MainActivity;->u7:Lcom/aide/ui/Wa;

    invoke-virtual {v0}, Lcom/aide/ui/Wa;->DW()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/aide/ui/MainActivity;->u7:Lcom/aide/ui/Wa;

    invoke-virtual {v0}, Lcom/aide/ui/Wa;->j6()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->lg()Lcom/aide/ui/views/SplitView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/views/SplitView;->isSplit()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/aide/ui/MainActivity;->FH(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3
    throw v0

    :cond_4
    :try_start_1
    invoke-static {}, Lcom/aide/ui/U;->dx()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->ei()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_5
    invoke-static {p0}, Lcom/aide/common/g;->J8(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/aide/ui/MainActivity;->v5:J

    sub-long v2, v0, v2

    cmp-long v2, v2, v6

    if-gez v2, :cond_6

    invoke-static {p0}, Lcom/aide/ui/activities/TrainerCourseActivity;->j6(Landroid/app/Activity;)V

    goto :goto_0

    :cond_6
    iput-wide v0, p0, Lcom/aide/ui/MainActivity;->v5:J

    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0d0667

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/s1243808733/util/Toasty;->toast(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/aide/ui/MainActivity;->v5:J

    sub-long v2, v0, v2

    cmp-long v2, v2, v6

    if-gez v2, :cond_8

    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->gn()V

    goto :goto_0

    :cond_8
    iput-wide v0, p0, Lcom/aide/ui/MainActivity;->v5:J

    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0d0667

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/s1243808733/util/Toasty;->toast(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 6

    const-wide v2, 0xa6ca3e61eb5a139L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, 0xa6ca3e61eb5a139L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->j3()Lcom/aide/common/KeyStrokeDetector;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/aide/common/KeyStrokeDetector;->j6(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->jJ()V

    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->ef()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 14

    const-wide v10, 0x45d01cc9729a957L

    const/4 v0, 0x1

    const/4 v8, 0x0

    const-wide v2, 0x16db5858385L

    :try_start_0
    const-string v4, "androidRelease"

    const-string v5, "https://backbone-direct.appfour.com/project/SvkPQDcCSkSU4JZRRqsTuw/variant/androidRelease/audience/dev/probes.zip"

    const-string v6, "https://backbone-cdn.appfour.com/project/SvkPQDcCSkSU4JZRRqsTuw/variant/androidRelease/audience/public/probes.zip"

    const-string v7, "https://backbone-ingest.appfour.com/api/report/v1alpha1/data/project/SvkPQDcCSkSU4JZRRqsTuw"

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Object;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v1, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v1, :cond_0

    const-wide v2, 0x45d01cc9729a957L

    invoke-static {v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const-string v1, "onCreate"

    invoke-static {p0, v1}, Lcom/aide/common/AIDELog;->infoWithClassName(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/aide/common/g;->j6()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Ltv/ouya/console/api/i;->FH()Ltv/ouya/console/api/i;

    move-result-object v1

    const-string v2, "9b57b7e2-2fa3-44db-9131-04b76a1f491c"

    invoke-virtual {v1, p0, v2}, Ltv/ouya/console/api/i;->j6(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    invoke-static {p0}, Lcom/aide/ui/U;->j6(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/aide/common/g;->j6(Landroid/app/Activity;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/aide/ui/MainActivity;->gW:Z

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/aide/ui/MainActivity;->a8:Landroid/os/Handler;

    invoke-static {p0}, Lcom/aide/ui/aa;->j6(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/aide/ui/MainActivity;->QX:Z

    invoke-static {}, Lcom/aide/ui/U;->Mr()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/aide/common/g;->j6(Landroid/app/Activity;Ljava/lang/String;)V

    invoke-static {}, Labcd/F;->DW()Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Lcom/aide/ui/za;

    invoke-direct {v1, p0}, Lcom/aide/ui/za;-><init>(Lcom/aide/ui/MainActivity;)V

    invoke-static {p0, v1}, Labcd/F;->j6(Landroid/content/Context;Labcd/G;)V

    :cond_2
    invoke-super {p0, p1}, Lcom/aide/ui/ThemedActionbarActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/aide/ui/U;->dx()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-direct {p0}, Lcom/aide/ui/MainActivity;->jO()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/view/Window;->requestFeature(I)Z

    :cond_3
    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_1f

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_1f

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    :goto_0
    invoke-static {p0, v2}, Lcom/aide/ui/U;->j6(Lcom/aide/ui/MainActivity;Ljava/lang/String;)V

    new-instance v1, Lcom/aide/ui/Z;

    const v3, 0x7f0b0005

    invoke-direct {v1, p0, v3}, Lcom/aide/ui/Z;-><init>(Lcom/aide/ui/MainActivity;I)V

    iput-object v1, p0, Lcom/aide/ui/MainActivity;->rN:Lcom/aide/ui/Z;

    new-instance v1, Lcom/aide/common/KeyStrokeDetector;

    invoke-direct {v1, p0}, Lcom/aide/common/KeyStrokeDetector;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/aide/ui/MainActivity;->Zo:Lcom/aide/common/KeyStrokeDetector;

    invoke-static {p0, p0}, Lcom/aide/ui/aa;->j6(Landroid/content/Context;Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    invoke-static {}, Lcom/aide/ui/aa;->Hw()I

    move-result v1

    iput v1, p0, Lcom/aide/ui/MainActivity;->U2:I

    invoke-static {p0}, Lcom/s1243808733/aide/application/AppTheme;->initTheme(Landroid/app/Activity;)V

    const v1, 0x7f0a0026

    invoke-static {v1}, Lcom/s1243808733/aide/MainListener;->setContentView(I)V

    invoke-static {p0}, Lcom/aide/common/g;->DW(Landroid/app/Activity;)V

    invoke-static {}, Lcom/aide/ui/U;->dx()Z

    move-result v1

    if-nez v1, :cond_4

    const v1, 0x7f0800f3

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lcom/aide/common/g;->j6(Landroid/view/View;)V

    :cond_4
    new-instance v1, Lcom/aide/ui/La;

    invoke-direct {v1, p0}, Lcom/aide/ui/La;-><init>(Lcom/aide/ui/MainActivity;)V

    iput-object v1, p0, Lcom/aide/ui/MainActivity;->er:Lcom/aide/ui/La;

    invoke-direct {p0}, Lcom/aide/ui/MainActivity;->FN()V

    new-instance v1, Lcom/aide/ui/Ga;

    const v3, 0x7f0800f4

    invoke-direct {v1, p0, v3}, Lcom/aide/ui/Ga;-><init>(Landroid/app/Activity;I)V

    iput-object v1, p0, Lcom/aide/ui/MainActivity;->J0:Lcom/aide/ui/Ga;

    iget-object v1, p0, Lcom/aide/ui/MainActivity;->J0:Lcom/aide/ui/Ga;

    invoke-static {}, Lcom/aide/ui/U;->dx()Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/aide/ui/Ga;->j6(Z)V

    iget-object v1, p0, Lcom/aide/ui/MainActivity;->J0:Lcom/aide/ui/Ga;

    new-instance v3, Lcom/aide/ui/Aa;

    invoke-direct {v3, p0}, Lcom/aide/ui/Aa;-><init>(Lcom/aide/ui/MainActivity;)V

    invoke-virtual {v1, v3}, Lcom/aide/ui/Ga;->j6(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->lg()Lcom/aide/ui/views/SplitView;

    move-result-object v3

    invoke-static {}, Lcom/aide/ui/U;->dx()Z

    move-result v1

    if-nez v1, :cond_d

    invoke-static {}, Lcom/aide/ui/aa;->EQ()Z

    move-result v1

    if-eqz v1, :cond_d

    move v1, v0

    :goto_1
    invoke-virtual {v3, v1}, Lcom/aide/ui/views/SplitView;->setSwipeEnabled(Z)V

    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->lg()Lcom/aide/ui/views/SplitView;

    move-result-object v1

    new-instance v3, Lcom/aide/ui/Ba;

    invoke-direct {v3, p0}, Lcom/aide/ui/Ba;-><init>(Lcom/aide/ui/MainActivity;)V

    invoke-virtual {v1, v3}, Lcom/aide/ui/views/SplitView;->setOnSplitChangeListener(Lcom/aide/ui/views/SplitView$a;)V

    const v1, 0x7f08011e

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v3, Lcom/aide/ui/Ca;

    invoke-direct {v3, p0}, Lcom/aide/ui/Ca;-><init>(Lcom/aide/ui/MainActivity;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/aide/ui/U;->dx()Z

    move-result v1

    if-eqz v1, :cond_e

    :goto_2
    invoke-static {}, Lcom/aide/ui/U;->dx()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/aide/ui/U;->v5()Lcom/aide/ui/build/d;

    move-result-object v1

    new-instance v3, Lcom/aide/ui/Da;

    invoke-direct {v3, p0}, Lcom/aide/ui/Da;-><init>(Lcom/aide/ui/MainActivity;)V

    invoke-virtual {v1, v3}, Lcom/aide/ui/build/d;->j6(Lcom/aide/ui/build/d$a;)V

    :cond_5
    invoke-static {}, Lcom/aide/ui/U;->dx()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {p0}, Lcom/aide/common/g;->J8(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->hide()V

    :cond_6
    invoke-static {}, Lcom/aide/ui/U;->er()Labcd/Nk;

    move-result-object v1

    invoke-virtual {v1, v2}, Labcd/Nk;->Hw(Ljava/lang/String;)V

    sget-object v1, Lcom/aide/ui/U;->j6:Ljava/lang/String;

    const-string v2, "com.aide.web"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->Mr()Lcom/aide/ui/browsers/LogCatBrowser;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aide/ui/browsers/LogCatBrowser;->EQ()V

    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->J0()Lcom/aide/ui/browsers/DebugBrowser;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aide/ui/browsers/DebugBrowser;->FH()V

    :cond_7
    invoke-static {}, Lcom/aide/ui/U;->XL()Labcd/Ak;

    move-result-object v1

    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->J8()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aide/ui/AIDEEditorPager;->getCurrentFileSpan()Labcd/Tl;

    move-result-object v2

    invoke-virtual {v1, v2}, Labcd/Ak;->j6(Labcd/Tl;)V

    invoke-static {}, Lcom/aide/ui/U;->we()Labcd/ck;

    move-result-object v1

    invoke-virtual {v1, p0}, Labcd/ck;->j6(Labcd/ck$a;)V

    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->J8()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/aide/ui/AIDEEditorPager;->setSoftKeyboardListener(Lcom/aide/ui/AIDEEditorPager$b;)V

    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->jJ()V

    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->ef()V

    invoke-direct {p0}, Lcom/aide/ui/MainActivity;->yO()V

    iget-boolean v1, p0, Lcom/aide/ui/MainActivity;->aM:Z

    if-eqz v1, :cond_8

    const-string v1, "First run after inital install"

    invoke-static {v1}, Labcd/F;->j6(Ljava/lang/String;)V

    :cond_8
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "EXTRA_SHOWN_FROM_TRAINER_NOTIFICATION"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "Shown from trainer notification"

    invoke-static {v1}, Labcd/F;->j6(Ljava/lang/String;)V

    :cond_9
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "EXTRA_SHOWN_FROM_PROMO_NOTIFICATION"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, "Shown from promo notification"

    invoke-static {v1}, Labcd/F;->j6(Ljava/lang/String;)V

    :cond_a
    invoke-static {}, Lcom/aide/ui/U;->sG()Z

    move-result v1

    if-nez v1, :cond_b

    invoke-static {}, Lcom/aide/ui/U;->dx()Z

    move-result v1

    if-nez v1, :cond_b

    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v1

    invoke-virtual {v1}, Labcd/Zk;->j3()Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/aide/ui/U;->j6(Z)V

    :cond_b
    invoke-static {}, Lcom/aide/ui/Ha;->gn()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-static {}, Lcom/aide/ui/U;->U2()Labcd/Ek;

    move-result-object v1

    invoke-virtual {v1}, Labcd/Ek;->VH()Z

    move-result v1

    if-nez v1, :cond_12

    invoke-static {}, Lcom/aide/ui/U;->U2()Labcd/Ek;

    move-result-object v1

    invoke-virtual {v1}, Labcd/Ek;->Zo()Z

    move-result v1

    if-nez v1, :cond_12

    invoke-static {}, Lcom/aide/ui/U;->U2()Labcd/Ek;

    move-result-object v1

    invoke-virtual {v1}, Labcd/Ek;->Mr()Z

    move-result v1

    if-nez v1, :cond_12

    invoke-static {}, Lcom/aide/ui/U;->dx()Z

    move-result v1

    if-nez v1, :cond_c

    invoke-static {}, Lcom/aide/ui/U;->sG()Z

    move-result v1

    if-nez v1, :cond_12

    :cond_c
    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-direct {v1}, Ljava/util/GregorianCalendar;-><init>()V

    invoke-static {}, Lcom/aide/ui/Ha;->FH()Ljava/util/GregorianCalendar;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/GregorianCalendar;->before(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/aide/ui/Ha;->FH()Ljava/util/GregorianCalendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {p0}, Lcom/aide/ui/MainActivity;->VH(Landroid/content/Context;)I

    move-result v4

    const-string v5, "20% off special offer"

    const-string v6, "Special offer"

    const-string v7, "Save 20% on an annual subscription"

    invoke-static/range {v1 .. v7}, Lcom/aide/ui/PromoNotificationAlarmReceiver;->j6(Landroid/content/Context;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    invoke-static {}, Lcom/aide/common/g;->j6()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-static {}, Ltv/ouya/console/api/i;->FH()Ltv/ouya/console/api/i;

    move-result-object v1

    invoke-virtual {v1}, Ltv/ouya/console/api/i;->v5()Z

    move-result v1

    if-nez v1, :cond_13

    new-instance v4, Lcom/aide/ui/Ea;

    invoke-direct {v4, p0}, Lcom/aide/ui/Ea;-><init>(Lcom/aide/ui/MainActivity;)V

    new-instance v5, Lcom/aide/ui/ja;

    invoke-direct {v5, p0}, Lcom/aide/ui/ja;-><init>(Lcom/aide/ui/MainActivity;)V

    const-string v1, "AIDE for OUYA"

    const-string v2, "This version of AIDE is only intended to run on the OUYA. Contact info@appfour.com for details."

    const/4 v3, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Runnable;Ljava/lang/Runnable;)V

    :goto_4
    return-void

    :cond_d
    move v1, v8

    goto/16 :goto_1

    :cond_e
    invoke-direct {p0}, Lcom/aide/ui/MainActivity;->jO()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/app/ActionBar;->setNavigationMode(I)V

    invoke-static {p0}, Lcom/aide/common/g;->QX(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_f

    invoke-static {}, Lcom/aide/ui/U;->SI()Labcd/Cl;

    move-result-object v1

    invoke-virtual {v1}, Labcd/Cl;->j3()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    :cond_f
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v1, :cond_10

    invoke-static {v0, v10, v11, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_10
    throw v0

    :cond_11
    :try_start_1
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const/16 v3, 0x10

    invoke-virtual {v1, v3}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070001

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const v1, 0x7f0800ed

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v3, Lcom/aide/ui/N;

    invoke-direct {v3, p0}, Lcom/aide/ui/N;-><init>(Lcom/aide/ui/MainActivity;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const v1, 0x7f080121

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v3, Lcom/aide/ui/O;

    invoke-direct {v3, p0}, Lcom/aide/ui/O;-><init>(Lcom/aide/ui/MainActivity;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    :cond_12
    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/aide/ui/PromoNotificationAlarmReceiver;->j6(Landroid/content/Context;)V

    goto/16 :goto_3

    :cond_13
    invoke-static {}, Lcom/aide/ui/U;->dx()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-static {}, Lcom/aide/ui/U;->SI()Labcd/Cl;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Cl;->ei()V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "EXTRA_SHOWN_FROM_UPDATE_TRAINER_NOTIFICATION"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-static {p0}, Lcom/aide/ui/activities/TrainerCourseActivity;->j6(Landroid/app/Activity;)V

    goto/16 :goto_4

    :cond_14
    invoke-static {p0}, Lcom/aide/ui/ib;->u7(Landroid/app/Activity;)V

    goto/16 :goto_4

    :cond_15
    invoke-direct {p0}, Lcom/aide/ui/MainActivity;->CU()V

    invoke-virtual {p0}, Landroid/app/Activity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_18

    :goto_5
    if-nez v0, :cond_1e

    invoke-static {}, Lcom/aide/ui/U;->er()Labcd/Nk;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Nk;->tp()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-static {}, Lcom/aide/ui/U;->tp()Labcd/Ji;

    move-result-object v0

    invoke-static {}, Lcom/aide/ui/U;->er()Labcd/Nk;

    move-result-object v1

    invoke-virtual {v1}, Labcd/Nk;->DW()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Labcd/Ji;->Hw(Ljava/lang/String;)V

    :cond_16
    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Zk;->j3()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-static {}, Lcom/aide/ui/U;->tp()Labcd/Ji;

    move-result-object v0

    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v1

    invoke-virtual {v1}, Labcd/Zk;->Ws()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Labcd/Ji;->DW(Ljava/util/List;)V

    :cond_17
    invoke-direct {p0}, Lcom/aide/ui/MainActivity;->XG()V

    invoke-direct {p0}, Lcom/aide/ui/MainActivity;->kQ()V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "EXTRA_NAVIGATE_BREAKPOINT"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-direct {p0}, Lcom/aide/ui/MainActivity;->Xa()V

    goto/16 :goto_4

    :cond_18
    move v0, v8

    goto :goto_5

    :cond_19
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "EXTRA_SHOWN_FROM_UPDATE_TRAINER_NOTIFICATION"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-static {p0}, Lcom/aide/ui/activities/TrainerCourseActivity;->j6(Landroid/app/Activity;)V

    goto/16 :goto_4

    :cond_1a
    sget-object v0, Lcom/aide/ui/U;->j6:Ljava/lang/String;

    const-string v1, "com.aide.ui"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1b

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "EXTRA_SHOWN_FROM_PROMO_NOTIFICATION"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-static {}, Lcom/aide/ui/U;->dx()Z

    move-result v0

    if-nez v0, :cond_1b

    invoke-static {p0}, Lcom/aide/ui/ib;->u7(Landroid/app/Activity;)V

    goto/16 :goto_4

    :cond_1b
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1c

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "EXTRA_SHOWN_FROM_GCM_NOTIFICATION"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "EXTRA_GCM_NOTIFICATION_IAP_PRODUCT_ID"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const-string v0, "Shown from GCM notification"

    invoke-static {v0}, Labcd/F;->j6(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "EXTRA_GCM_NOTIFICATION_IAP_PRODUCT_ID"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/aide/ui/ib;->j6(Landroid/app/Activity;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_1c
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1d

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "EXTRA_UPGRADE_NOTIFICATION_CLICKED"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1d

    const-string v0, "Shown from upgrade notification"

    invoke-static {v0}, Labcd/F;->j6(Ljava/lang/String;)V

    new-instance v0, Lcom/aide/ui/ka;

    invoke-direct {v0, p0}, Lcom/aide/ui/ka;-><init>(Lcom/aide/ui/MainActivity;)V

    invoke-static {p0, v0}, Lcom/aide/ui/marketing/WhatsNewDialog;->j6(Landroid/app/Activity;Ljava/lang/Runnable;)V

    goto/16 :goto_4

    :cond_1d
    invoke-static {p0}, Lcom/aide/ui/ib;->gn(Landroid/app/Activity;)V

    goto/16 :goto_4

    :cond_1e
    invoke-static {p0}, Lcom/aide/ui/ib;->Zo(Landroid/app/Activity;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_4

    :cond_1f
    move-object v2, v1

    goto/16 :goto_0
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x3a606ba0f135488cL
    .end annotation

    const-wide v2, 0x97eccde17b400L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    const-wide v4, 0x97eccde17b400L

    invoke-static {v4, v5, p0, v0, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-static {p0, p1}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;I)Landroid/app/Dialog;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v0, :cond_1

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method protected onDestroy()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x28a072cc34962373L
    .end annotation

    const-wide v2, 0x36d084aa3578fb11L    # 1.157347968805432E-44

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x36d084aa3578fb11L    # 1.157347968805432E-44

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDestroy - finishing: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/aide/common/AIDELog;->infoWithClassName(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/aide/ui/MainActivity;->a8:Landroid/os/Handler;

    iget-object v1, p0, Lcom/aide/ui/MainActivity;->lg:Lcom/aide/ui/MainActivity$a;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/aide/ui/U;->we()Labcd/ck;

    move-result-object v0

    invoke-virtual {v0, p0}, Labcd/ck;->DW(Labcd/ck$a;)V

    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->J8()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/AIDEEditorPager;->j3()V

    invoke-static {p0, p0}, Lcom/aide/ui/aa;->DW(Landroid/content/Context;Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    invoke-static {}, Lcom/aide/ui/U;->Sf()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 10

    const-wide v2, -0x13f775e4d2e12dc0L    # -2.5816196980466632E212

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    const-wide v4, -0x13f775e4d2e12dc0L    # -2.5816196980466632E212

    invoke-static {v4, v5, p0, v0, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/MainActivity;->Zo:Lcom/aide/common/KeyStrokeDetector;

    invoke-virtual {v0, p1, p2}, Lcom/aide/common/KeyStrokeDetector;->j6(ILandroid/view/KeyEvent;)V

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v0, :cond_1

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 10

    const-wide v2, 0x51ac692188e5d47fL    # 2.759626041669824E85

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    const-wide v4, 0x51ac692188e5d47fL    # 2.759626041669824E85

    invoke-static {v4, v5, p0, v0, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const/16 v0, 0x52

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->J8()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/AIDEEditorPager;->J0()V

    :cond_1
    iget-object v0, p0, Lcom/aide/ui/MainActivity;->Zo:Lcom/aide/common/KeyStrokeDetector;

    invoke-virtual {v0, p1, p2}, Lcom/aide/common/KeyStrokeDetector;->DW(ILandroid/view/KeyEvent;)V

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v0, :cond_2

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x7793dba808cdc4fL
    .end annotation

    const-wide v6, 0x32171ccf1758c7fL

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x32171ccf1758c7fL

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-static {p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Object;Landroid/content/Intent;)V

    const-string v0, "onNewIntent"

    invoke-static {p0, v0}, Lcom/aide/common/AIDELog;->infoWithClassName(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    if-eqz p1, :cond_2

    const-string v0, "EXTRA_SHOWN_FROM_UPDATE_TRAINER_NOTIFICATION"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/aide/ui/activities/TrainerCourseActivity;->j6(Landroid/app/Activity;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-eqz p1, :cond_4

    const-string v0, "EXTRA_SHOWN_FROM_TRAINER_NOTIFICATION"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "Shown from trainer notification"

    invoke-static {v0}, Labcd/F;->j6(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v6, v7, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v0

    :cond_4
    if-eqz p1, :cond_5

    :try_start_1
    const-string v0, "EXTRA_SHOWN_FROM_PROMO_NOTIFICATION"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "Shown from promo notification"

    invoke-static {v0}, Labcd/F;->j6(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/aide/ui/ib;->u7(Landroid/app/Activity;)V

    goto :goto_0

    :cond_5
    if-eqz p1, :cond_6

    const-string v0, "EXTRA_SHOWN_FROM_GCM_NOTIFICATION"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "Shown from gcm notification"

    invoke-static {v0}, Labcd/F;->j6(Ljava/lang/String;)V

    const-string v0, "EXTRA_GCM_NOTIFICATION_IAP_PRODUCT_ID"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/aide/ui/ib;->j6(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    if-eqz p1, :cond_7

    const-string v0, "EXTRA_UPGRADE_NOTIFICATION_CLICKED"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "Shown from upgrade notification"

    invoke-static {v0}, Labcd/F;->j6(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/aide/ui/marketing/WhatsNewDialog;->j6(Landroid/app/Activity;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_7
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "EXTRA_NAVIGATE_PLAY_STORE_INTENT_SENDER"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "EXTRA_NAVIGATE_PLAY_STORE_INTENT_SENDER"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/IntentSender;

    invoke-static {p0, v0}, Labcd/yk;->j6(Landroid/app/Activity;Landroid/content/IntentSender;)V

    goto/16 :goto_0

    :cond_8
    if-eqz p1, :cond_c

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "EXTRA_SHOWN_FROM_NOTIFICATION"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {}, Lcom/aide/ui/U;->we()Labcd/ck;

    move-result-object v0

    invoke-virtual {v0}, Labcd/ck;->FH()I

    move-result v0

    if-lez v0, :cond_9

    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->KD()V

    :cond_9
    invoke-static {}, Lcom/aide/ui/U;->v5()Lcom/aide/ui/build/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/build/d;->VH()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {}, Lcom/aide/ui/U;->v5()Lcom/aide/ui/build/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/build/d;->gn()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->ca()V

    goto/16 :goto_0

    :cond_a
    invoke-static {}, Lcom/aide/ui/U;->Ws()Lcom/aide/ui/scm/ua;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/scm/ua;->VH()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->sy()V

    goto/16 :goto_0

    :cond_b
    invoke-static {}, Lcom/aide/ui/U;->tp()Labcd/Ji;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Ji;->VH()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->x9()V

    goto/16 :goto_0

    :cond_c
    if-eqz p1, :cond_d

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/aide/ui/MainActivity;->Hw(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_d
    if-eqz p1, :cond_e

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "NavigateFile"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "NavigateLine"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "NavigateColumn"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    new-instance v0, Labcd/Tl;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v4, "NavigateFile"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move v4, v2

    move v5, v3

    invoke-direct/range {v0 .. v5}, Labcd/Tl;-><init>(Ljava/lang/String;IIII)V

    invoke-virtual {p0, v0}, Lcom/aide/ui/MainActivity;->j6(Labcd/Tl;)V

    goto/16 :goto_0

    :cond_e
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "EXTRA_NAVIGATE_BREAKPOINT"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/aide/ui/MainActivity;->Xa()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 8

    const-wide v4, -0x4701932ba1861e0L

    const/4 v0, 0x1

    :try_start_0
    sget-boolean v1, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v1, :cond_0

    const-wide v2, -0x4701932ba1861e0L

    invoke-static {v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x102002c

    if-ne v1, v2, :cond_2

    invoke-static {}, Lcom/aide/ui/U;->SI()Labcd/Cl;

    move-result-object v1

    invoke-virtual {v1}, Labcd/Cl;->j3()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p0}, Lcom/aide/ui/activities/TrainerCourseActivity;->j6(Landroid/app/Activity;)V

    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-static {v1}, Lcom/aide/ui/V;->DW(I)Labcd/Yl;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-interface {v1}, Labcd/Yl;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Main Menu: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Labcd/F;->j6(Ljava/lang/String;)V

    invoke-interface {v1}, Labcd/Yl;->run()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v0

    :cond_4
    :try_start_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-static {v1}, Lcom/aide/ui/V;->j6(I)Labcd/Hl;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-interface {v1}, Labcd/Hl;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Action bar command: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Labcd/Hl;->DW()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Labcd/F;->j6(Ljava/lang/String;)V

    invoke-interface {v1}, Labcd/Hl;->run()Z

    goto :goto_0

    :cond_5
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x102a3bc90f602b03L
    .end annotation

    const-wide v4, -0x1c524e36f9ac52f7L    # -1.4344425952796383E172

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1c524e36f9ac52f7L    # -1.4344425952796383E172

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    const-string v0, "onPause"

    invoke-static {p0, v0}, Lcom/aide/common/AIDELog;->infoWithClassName(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lcom/aide/ui/MainActivity;->U2:I

    if-lez v0, :cond_1

    invoke-static {}, Lcom/aide/ui/U;->er()Labcd/Nk;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Labcd/Nk;->j6(ZZ)V

    :cond_1
    invoke-static {}, Lcom/aide/ui/U;->dx()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/aide/ui/U;->ei()Lcom/aide/ui/trainer/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/trainer/e;->j6()V

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aide/ui/MainActivity;->Mr:Z

    invoke-super {p0}, Landroid/app/Activity;->onPause()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3
    throw v0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 8

    const-wide v4, 0x24e18ed276cd9f18L    # 4.947256633470233E-131

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x24e18ed276cd9f18L    # 4.947256633470233E-131

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    invoke-static {}, Lcom/aide/ui/U;->dx()Z

    move-result v2

    if-eqz v2, :cond_3

    const v2, 0x7f0b000d

    invoke-virtual {v0, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    :goto_0
    invoke-static {}, Lcom/aide/ui/U;->sh()Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "onPrepareOptionsMenu"

    invoke-static {v0}, Lcom/crashlytics/android/Crashlytics;->log(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/aide/ui/MainActivity;->j6(Landroid/view/Menu;)V

    invoke-static {p0}, Lcom/aide/common/g;->QX(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0800f9

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {p0}, Lcom/aide/common/g;->Hw(Landroid/content/Context;)F

    move-result v0

    const/high16 v3, 0x43b40000    # 360.0f

    cmpl-float v0, v0, v3

    if-lez v0, :cond_5

    const/4 v0, 0x1

    :goto_1
    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_1
    iget-object v0, p0, Lcom/aide/ui/MainActivity;->tp:Lcom/aide/ui/Za;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/aide/ui/MainActivity;->tp:Lcom/aide/ui/Za;

    invoke-virtual {v0}, Lcom/aide/ui/Za;->DW()V

    iget-object v0, p0, Lcom/aide/ui/MainActivity;->EQ:Lcom/aide/ui/fa;

    invoke-virtual {v0}, Lcom/aide/ui/fa;->DW()V

    :cond_2
    :goto_2
    return v1

    :cond_3
    const v2, 0x7f0b000c

    invoke-virtual {v0, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    new-instance v0, Lcom/aide/ui/Za;

    invoke-direct {v0, p1}, Lcom/aide/ui/Za;-><init>(Landroid/view/Menu;)V

    iput-object v0, p0, Lcom/aide/ui/MainActivity;->tp:Lcom/aide/ui/Za;

    new-instance v0, Lcom/aide/ui/fa;

    invoke-direct {v0, p1}, Lcom/aide/ui/fa;-><init>(Landroid/view/Menu;)V

    iput-object v0, p0, Lcom/aide/ui/MainActivity;->EQ:Lcom/aide/ui/fa;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v1, :cond_4

    invoke-static {v0, v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    throw v0

    :cond_5
    const/4 v0, 0x0

    goto :goto_1

    :cond_6
    :try_start_1
    const-string v0, "onPrepareOptionsMenu when shut down."

    invoke-static {v0}, Lcom/crashlytics/android/Crashlytics;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 12

    const-wide v6, -0x370c90506155fa45L    # -2.7090211426596776E43

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v0, :cond_0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, -0x370c90506155fa45L    # -2.7090211426596776E43

    move-object v2, p0

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const/16 v0, 0x15

    if-ne p1, v0, :cond_2

    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->QX()Lcom/aide/ui/browsers/FileBrowser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/browsers/FileBrowser;->Zo()V

    invoke-static {p0}, Lcom/aide/ui/ib;->v5(Landroid/app/Activity;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/16 v0, 0x16

    if-ne p1, v0, :cond_1

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v0

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v0, v1}, Lcom/aide/ui/MainActivity;->FH(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->Zo()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v0, :cond_3

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    move-wide v2, v6

    move-object v4, p0

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v1
.end method

.method protected onResume()V
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x160ecf6eac6921d4L
    .end annotation

    const-wide v4, 0xa74dc7160456540L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, 0xa74dc7160456540L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aide/ui/MainActivity;->Mr:Z

    iget-object v1, p0, Lcom/aide/ui/MainActivity;->J8:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lcom/aide/ui/MainActivity;->J8:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-boolean v0, p0, Lcom/aide/ui/MainActivity;->Ws:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/aide/ui/U;->er()Labcd/Nk;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Labcd/Nk;->j6(ZZ)V

    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->recreate()V

    :goto_0
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->ef()V

    invoke-static {}, Lcom/aide/ui/U;->dx()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Zk;->j3()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Zk;->aM()Z

    :cond_1
    return-void

    :cond_2
    invoke-static {}, Lcom/aide/ui/U;->tp()Labcd/Ji;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Ji;->u7()V

    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->vJ()V

    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Zk;->a8()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3
    throw v0

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .registers 5

    const-wide v2, -0x32447d7502b67178L    # -2.8971341205244366E66

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x32447d7502b67178L    # -2.8971341205244366E66

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const-string v0, "dummy"

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 10

    const-wide v2, -0x682c1c5187351351L    # -6.811520496247521E-194

    const/4 v0, 0x1

    :try_start_0
    sget-boolean v1, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v1, :cond_0

    const-wide v4, -0x682c1c5187351351L    # -6.811520496247521E-194

    invoke-static {v4, v5, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const-string v1, "send_analytics_data"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {}, Labcd/F;->j6()V

    :goto_0
    invoke-static {}, Lcom/aide/ui/aa;->Hw()I

    move-result v1

    iput v1, p0, Lcom/aide/ui/MainActivity;->U2:I

    const-string v1, "user_androidjar"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "user_m2repositories"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v1

    invoke-virtual {v1}, Labcd/Zk;->er()V

    :cond_2
    invoke-static {}, Lcom/aide/ui/U;->EQ()Labcd/Xj;

    move-result-object v1

    invoke-virtual {v1}, Labcd/Xj;->FH()V

    sget-object v1, Lcom/aide/ui/U;->j6:Ljava/lang/String;

    const-string v4, "com.aide.web"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->Mr()Lcom/aide/ui/browsers/LogCatBrowser;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aide/ui/browsers/LogCatBrowser;->v5()V

    :cond_3
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->lg()Lcom/aide/ui/views/SplitView;

    move-result-object v1

    invoke-static {}, Lcom/aide/ui/U;->dx()Z

    move-result v4

    if-nez v4, :cond_9

    invoke-static {}, Lcom/aide/ui/aa;->EQ()Z

    move-result v4

    if-eqz v4, :cond_9

    :goto_1
    invoke-virtual {v1, v0}, Lcom/aide/ui/views/SplitView;->setSwipeEnabled(Z)V

    const-string v0, "light_theme"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "app_language"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "editor_tabs"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "send_analytics_data"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aide/ui/MainActivity;->Ws:Z

    :cond_5
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->J8()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/AIDEEditorPager;->Zo()V

    const-string v0, "editor_font_size"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->J8()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/AIDEEditorPager;->VH()V

    :cond_6
    return-void

    :cond_7
    const-string v1, "Setting changed"

    const-string v4, "key"

    invoke-static {v4, p2}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v4

    invoke-static {v1, v4}, Labcd/F;->j6(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v0, :cond_8

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_8
    throw v1

    :cond_9
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected onStart()V
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x12b816c690e2216fL
    .end annotation

    const-wide v4, -0x1a1e20a85053abfbL    # -5.93295469924567E182

    const/4 v0, 0x1

    :try_start_0
    sget-boolean v1, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v1, :cond_0

    const-wide v2, -0x1a1e20a85053abfbL    # -5.93295469924567E182

    invoke-static {v2, v3, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "isPremiumKeyInstalled"

    invoke-static {}, Lcom/aide/ui/U;->U2()Labcd/Ek;

    move-result-object v3

    invoke-virtual {v3}, Labcd/Ek;->VH()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "isPremium"

    invoke-static {}, Lcom/aide/ui/U;->U2()Labcd/Ek;

    move-result-object v3

    invoke-virtual {v3}, Labcd/Ek;->Zo()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/aide/ui/U;->U2()Labcd/Ek;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Ek;->VH()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-static {}, Lcom/aide/ui/U;->U2()Labcd/Ek;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Ek;->Zo()Z

    move-result v2

    if-eqz v2, :cond_6

    :goto_0
    const-string v2, "isPremiumHacked"

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "isUiBuilderKeyInstalled"

    invoke-static {}, Lcom/aide/ui/U;->U2()Labcd/Ek;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Ek;->we()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "isUiBuilderLicensed"

    invoke-static {}, Lcom/aide/ui/U;->U2()Labcd/Ek;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Ek;->EQ()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Main"

    invoke-static {p0, v0, v1}, Labcd/F;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {}, Lcom/aide/ui/U;->sG()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/aide/ui/U;->dx()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "Trainer view"

    :goto_1
    :try_start_1
    invoke-static {v0}, Labcd/F;->v5(Ljava/lang/String;)V

    :cond_1
    const-string v0, "os.arch"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "unknown"

    :cond_2
    :try_start_2
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "86"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lcom/aide/ui/U;->cn()Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-result v1

    if-eqz v1, :cond_3

    const-string v0, "x86"

    :cond_3
    :try_start_3
    invoke-static {v0}, Labcd/F;->Hw(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CPU arch: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Labcd/F;->j6(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/aide/common/g;->J8(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "Android TV detected"

    invoke-static {v0}, Labcd/F;->j6(Ljava/lang/String;)V

    :cond_4
    invoke-static {p0}, Lcom/aide/common/g;->Ws(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "Chromebook detected"

    invoke-static {v0}, Labcd/F;->j6(Ljava/lang/String;)V

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aide/ui/MainActivity;->j3:Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    return-void

    :cond_6
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_7
    const-string v0, "Expert view"

    goto :goto_1

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v1, :cond_8

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_8
    throw v0
.end method

.method protected onStop()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x2febc4795c3ee333L
    .end annotation

    const-wide v2, -0x662307f847986ebL    # -6.605505675453735E277

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x662307f847986ebL    # -6.605505675453735E277

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-static {p0}, Lcom/aide/common/g;->Ws(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->J8()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/AIDEEditorPager;->J8()V

    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    const-string v0, "Main"

    invoke-static {p0, v0}, Labcd/F;->j6(Landroid/app/Activity;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aide/ui/MainActivity;->j3:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public onUserLeaveHint()V
    .registers 5

    const-wide v2, -0x5268d6c48fca0a10L    # -4.54799296152156E-89

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x5268d6c48fca0a10L    # -4.54799296152156E-89

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->J8()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/AIDEEditorPager;->J8()V

    invoke-super {p0}, Landroid/app/Activity;->onUserLeaveHint()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public rN()Z
    .registers 5

    const-wide v2, 0x1281272057394920L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x1281272057394920L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Lcom/aide/ui/MainActivity;->jO()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public recreate()V
    .registers 5

    const-wide v2, -0x15fff782e74c93d5L    # -3.927228708246018E202

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x15fff782e74c93d5L    # -3.927228708246018E202

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/common/ma;->Hw()V

    invoke-super {p0}, Landroid/app/Activity;->recreate()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public ro()V
    .registers 5

    const-wide v2, -0x310088975c780cd8L    # -3.4747742424800895E72

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x310088975c780cd8L    # -3.4747742424800895E72

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->J8()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/AIDEEditorPager;->J8()V

    sget v0, Lcom/aide/ui/browsers/BrowserPager;->et:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/aide/ui/MainActivity;->j6(IZ)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public sG()V
    .registers 5

    const-wide v2, -0xa25cd95b530dc8cL

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0xa25cd95b530dc8cL

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->rN()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/aide/ui/MainActivity;->u7:Lcom/aide/ui/Wa;

    invoke-virtual {v0}, Lcom/aide/ui/Wa;->Hw()V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/aide/ui/MainActivity;->tp:Lcom/aide/ui/Za;

    invoke-virtual {v0}, Lcom/aide/ui/Za;->FH()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public sh()V
    .registers 5

    const-wide v2, -0x2fb3ca10d7298b88L    # -6.533147275839593E78

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x2fb3ca10d7298b88L    # -6.533147275839593E78

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->J8()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/AIDEEditorPager;->J8()V

    sget v0, Lcom/aide/ui/browsers/BrowserPager;->hz:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/aide/ui/MainActivity;->j6(IZ)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public sy()V
    .registers 5

    const-wide v2, 0x154d16a377f61233L    # 4.530157357810249E-206

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x154d16a377f61233L    # 4.530157357810249E-206

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    new-instance v0, Labcd/ji;

    invoke-direct {v0}, Labcd/ji;-><init>()V

    invoke-static {p0, v0}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Lcom/aide/common/ma;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public tp()Lcom/aide/ui/browsers/BrowserPager;
    .registers 5

    const-wide v2, -0x1d49a17555aba0d1L    # -3.297691811334727E167

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1d49a17555aba0d1L    # -3.297691811334727E167

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    const v0, 0x7f0800ef

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/aide/ui/browsers/BrowserPager;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public u7()F
    .registers 5

    const-wide v2, 0x4f36ad9de4988c4cL    # 4.006889432870309E73

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x4f36ad9de4988c4cL    # 4.006889432870309E73

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-static {p0}, Lcom/aide/common/g;->QX(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/aide/ui/MainActivity;->et()Lcom/aide/ui/AIDEErrorsView;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x41200000    # 10.0f

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    :goto_0
    return v0

    :cond_1
    invoke-static {p0}, Lcom/aide/common/g;->Hw(Landroid/content/Context;)F

    move-result v0

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/high16 v2, 0x43960000    # 300.0f

    sub-float/2addr v0, v2

    mul-float/2addr v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public v5()V
    .registers 5

    const-wide v2, 0x43923fd25f02e288L    # 3.2875023043190016E17

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x43923fd25f02e288L    # 3.2875023043190016E17

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->BT()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/aide/ui/MainActivity;->Zo(Z)V

    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->J8()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->BT()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/aide/ui/AIDEEditorPager;->setIdentifierClickingEnabled(Z)V

    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->ef()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public v5(Z)V
    .registers 6

    const-wide v2, -0x5dc4f09b7f38427L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x5dc4f09b7f38427L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Z)V

    :cond_0
    iput-boolean p1, p0, Lcom/aide/ui/MainActivity;->vy:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/aide/ui/MainActivity;->jJ()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v0, v2, v3, p0, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public vJ()V
    .registers 5

    const-wide v2, 0x1c8a5f5d529c8e97L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x1c8a5f5d529c8e97L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/U;->VH()Landroid/app/Activity;

    move-result-object v0

    if-ne v0, p0, :cond_1

    invoke-static {}, Lcom/aide/ui/U;->er()Labcd/Nk;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Labcd/Nk;->j6(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public vy()Z
    .registers 5

    const-wide v2, 0x2c1b911d62e5314fL    # 3.2264772896451455E-96

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x2c1b911d62e5314fL    # 3.2264772896451455E-96

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/MainActivity;->tp:Lcom/aide/ui/Za;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aide/ui/MainActivity;->tp:Lcom/aide/ui/Za;

    invoke-virtual {v0}, Lcom/aide/ui/Za;->j6()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/aide/ui/MainActivity;->EQ:Lcom/aide/ui/fa;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/aide/ui/MainActivity;->EQ:Lcom/aide/ui/fa;

    invoke-virtual {v0}, Lcom/aide/ui/fa;->j6()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v1, :cond_4

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_4
    throw v0
.end method

.method public we()Ljava/lang/String;
    .registers 7

    const-wide v4, -0x4bdfc451c8fcd97cL    # -1.293043170447027E-57

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x4bdfc451c8fcd97cL    # -1.293043170447027E-57

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {v0}, Lcom/aide/common/AIDELog;->DW(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    const-string v0, ""

    goto :goto_0

    :catch_1
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public x9()V
    .registers 5

    const-wide v2, 0xb0b6406fae31a9fL

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, 0xb0b6406fae31a9fL

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    new-instance v0, Labcd/Qh;

    invoke-direct {v0}, Labcd/Qh;-><init>()V

    invoke-static {p0, v0}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Lcom/aide/common/ma;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public yS()Z
    .registers 5

    const-wide v2, -0x490ea7d61b594810L    # -4.860933201060293E-44

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/MainActivity;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x490ea7d61b594810L    # -4.860933201060293E-44

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-boolean v0, p0, Lcom/aide/ui/MainActivity;->Mr:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/MainActivity;->Hw:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method
