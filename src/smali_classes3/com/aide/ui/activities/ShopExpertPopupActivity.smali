.class public Lcom/aide/ui/activities/ShopExpertPopupActivity;
.super Landroid/app/Activity;


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
.field protected FH:Landroid/view/View;
    .annotation runtime Labcd/ru;
        field = -0xcea6c435bae8071L
    .end annotation
.end field

.field protected Hw:Landroid/app/AlertDialog;
    .annotation runtime Labcd/ru;
        field = -0x1d689fec43b3b040L
    .end annotation
.end field

.field private VH:Z
    .annotation runtime Labcd/ru;
        field = 0x4a7b5497f782db40L
    .end annotation
.end field

.field private Zo:Z
    .annotation runtime Labcd/ru;
        field = 0x34355b540c23d0c7L
    .end annotation
.end field

.field private gn:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = 0x4d7cf3f721be0640L
    .end annotation
.end field

.field private v5:Ljava/util/Map;
    .annotation runtime Labcd/ru;
        field = -0x3bc39f71b9a83c59L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Labcd/yk$g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/ui/activities/ShopExpertPopupActivity;

    const-wide v1, 0x25f9816461dca1e8L

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, -0x2ca7ad6da50088L

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/activities/ShopExpertPopupActivity;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/aide/ui/activities/ShopExpertPopupActivity;->VH:Z

    invoke-static {}, Lcom/aide/ui/U;->QX()Labcd/yk;

    move-result-object v3

    invoke-virtual {v3}, Labcd/yk;->DW()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/aide/ui/activities/ShopExpertPopupActivity;->gn:Ljava/lang/String;
    :try_end_1d
    .catchall {:try_start_6 .. :try_end_1d} :catchall_1e

    return-void

    :catchall_1e
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/activities/ShopExpertPopupActivity;->DW:Z

    if-eqz v4, :cond_26

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_26
    throw v3
.end method

.method static synthetic DW(Lcom/aide/ui/activities/ShopExpertPopupActivity;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/aide/ui/activities/ShopExpertPopupActivity;->gn:Ljava/lang/String;

    return-object p0
.end method

.method private DW()Z
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x20143f015311d41fL
    .end annotation

    const-wide v0, 0x2ab21c910b848cc7L  # 5.054032461227068E-103

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/activities/ShopExpertPopupActivity;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    sget-object v2, Lcom/aide/ui/U;->j6:Ljava/lang/String;

    const-string v3, "com.aide.ui"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36

    invoke-static {}, Lcom/aide/ui/U;->U2()Labcd/Ek;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Ek;->VH()Z

    move-result v2

    if-nez v2, :cond_34

    invoke-static {}, Lcom/aide/ui/U;->U2()Labcd/Ek;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Ek;->we()Z

    move-result v2

    if-nez v2, :cond_34

    invoke-static {}, Lcom/aide/ui/U;->U2()Labcd/Ek;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Ek;->v5()Z

    move-result v0
    :try_end_32
    .catchall {:try_start_5 .. :try_end_32} :catchall_38

    if-eqz v0, :cond_36

    :cond_34
    const/4 v0, 0x1

    goto :goto_37

    :cond_36
    const/4 v0, 0x0

    :goto_37
    return v0

    :catchall_38
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/activities/ShopExpertPopupActivity;->DW:Z

    if-eqz v3, :cond_40

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_40
    throw v2
.end method

.method private FH()V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0xe77985cd88a60c1L
    .end annotation

    const-wide v0, -0x360ffbcc3e0e1b1L  # -1.933534286651222E292

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/activities/ShopExpertPopupActivity;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iget-object v3, p0, Lcom/aide/ui/activities/ShopExpertPopupActivity;->gn:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/aide/ui/U;->QX()Labcd/yk;

    move-result-object v3

    new-instance v4, Lcom/aide/ui/activities/J;

    invoke-direct {v4, p0}, Lcom/aide/ui/activities/J;-><init>(Lcom/aide/ui/activities/ShopExpertPopupActivity;)V

    invoke-virtual {v3, v2, v4}, Labcd/yk;->j6(Ljava/util/Set;Labcd/yk$a;)V
    :try_end_22
    .catchall {:try_start_5 .. :try_end_22} :catchall_23

    return-void

    :catchall_23
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/activities/ShopExpertPopupActivity;->DW:Z

    if-eqz v3, :cond_2b

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2b
    throw v2
.end method

.method static synthetic FH(Lcom/aide/ui/activities/ShopExpertPopupActivity;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/aide/ui/activities/ShopExpertPopupActivity;->Zo:Z

    return p0
.end method

.method static synthetic Hw(Lcom/aide/ui/activities/ShopExpertPopupActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/aide/ui/activities/ShopExpertPopupActivity;->j6()V

    return-void
.end method

.method static synthetic j6(Lcom/aide/ui/activities/ShopExpertPopupActivity;Ljava/util/Map;)Ljava/util/Map;
    .registers 2

    iput-object p1, p0, Lcom/aide/ui/activities/ShopExpertPopupActivity;->v5:Ljava/util/Map;

    return-object p1
.end method

.method private j6()V
    .registers 8
    .annotation runtime Labcd/su;
        method = 0x39ea190b3bc376e5L
    .end annotation

    const-wide v0, 0x18bd27e69ab20c1dL

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/activities/ShopExpertPopupActivity;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/activities/ShopExpertPopupActivity;->FH:Landroid/view/View;

    const v3, 0x7f080164

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/aide/ui/activities/ShopExpertPopupActivity;->FH:Landroid/view/View;

    const v3, 0x7f08015f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/aide/ui/activities/ShopExpertPopupActivity;->DW()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_58

    new-array v3, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/aide/ui/activities/ShopExpertPopupActivity;->v5:Ljava/util/Map;

    iget-object v6, p0, Lcom/aide/ui/activities/ShopExpertPopupActivity;->gn:Ljava/lang/String;

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Labcd/yk$g;

    iget-object v4, v4, Labcd/yk$g;->Zo:Ljava/lang/String;

    aput-object v4, v3, v5

    const v4, 0x7f0d060b

    invoke-virtual {p0, v4, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/aide/ui/activities/ShopExpertPopupActivity;->FH:Landroid/view/View;

    const v3, 0x7f080162

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const-string v3, "No thanks"

    :goto_54
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_70

    :cond_58
    new-array v3, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/aide/ui/activities/ShopExpertPopupActivity;->v5:Ljava/util/Map;

    iget-object v6, p0, Lcom/aide/ui/activities/ShopExpertPopupActivity;->gn:Ljava/lang/String;

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Labcd/yk$g;

    iget-object v4, v4, Labcd/yk$g;->Zo:Ljava/lang/String;

    aput-object v4, v3, v5

    const v4, 0x7f0d0606

    invoke-virtual {p0, v4, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_54

    :goto_70
    iget-object v2, p0, Lcom/aide/ui/activities/ShopExpertPopupActivity;->FH:Landroid/view/View;

    const v3, 0x7f080157

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    sget-object v2, Lcom/aide/ui/U;->j6:Ljava/lang/String;

    const-string v3, "com.aide.web"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_98

    iget-object v2, p0, Lcom/aide/ui/activities/ShopExpertPopupActivity;->FH:Landroid/view/View;

    const v3, 0x7f08015e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TableLayout;

    :goto_93
    invoke-virtual {v2, v5}, Landroid/widget/TableLayout;->setVisibility(I)V

    goto/16 :goto_11d

    :cond_98
    invoke-direct {p0}, Lcom/aide/ui/activities/ShopExpertPopupActivity;->DW()Z

    move-result v2

    if-eqz v2, :cond_f8

    iget-object v2, p0, Lcom/aide/ui/activities/ShopExpertPopupActivity;->FH:Landroid/view/View;

    const v3, 0x7f08015a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TableLayout;

    invoke-virtual {v2, v5}, Landroid/widget/TableLayout;->setVisibility(I)V

    invoke-static {}, Lcom/aide/ui/U;->U2()Labcd/Ek;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Ek;->VH()Z

    move-result v2

    const v3, 0x7f0700f9

    if-eqz v2, :cond_c7

    iget-object v2, p0, Lcom/aide/ui/activities/ShopExpertPopupActivity;->FH:Landroid/view/View;

    const v4, 0x7f08015c

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_c7
    invoke-static {}, Lcom/aide/ui/U;->U2()Labcd/Ek;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Ek;->we()Z

    move-result v2

    if-eqz v2, :cond_df

    iget-object v2, p0, Lcom/aide/ui/activities/ShopExpertPopupActivity;->FH:Landroid/view/View;

    const v4, 0x7f08015d

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_df
    invoke-static {}, Lcom/aide/ui/U;->U2()Labcd/Ek;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Ek;->v5()Z

    move-result v2

    if-eqz v2, :cond_11d

    iget-object v2, p0, Lcom/aide/ui/activities/ShopExpertPopupActivity;->FH:Landroid/view/View;

    const v4, 0x7f08015b

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_11d

    :cond_f8
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "EXTRA_HILIGHT_ADS"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_110

    iget-object v2, p0, Lcom/aide/ui/activities/ShopExpertPopupActivity;->FH:Landroid/view/View;

    const v3, 0x7f080159

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TableLayout;

    goto :goto_93

    :cond_110
    iget-object v2, p0, Lcom/aide/ui/activities/ShopExpertPopupActivity;->FH:Landroid/view/View;

    const v3, 0x7f080158

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TableLayout;
    :try_end_11b
    .catchall {:try_start_5 .. :try_end_11b} :catchall_11e

    goto/16 :goto_93

    :cond_11d
    :goto_11d
    return-void

    :catchall_11e
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/activities/ShopExpertPopupActivity;->DW:Z

    if-eqz v3, :cond_126

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_126
    goto :goto_128

    :goto_127
    throw v2

    :goto_128
    goto :goto_127
.end method

.method static synthetic j6(Lcom/aide/ui/activities/ShopExpertPopupActivity;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/aide/ui/activities/ShopExpertPopupActivity;->j6(Ljava/lang/String;)V

    return-void
.end method

.method private j6(Ljava/lang/String;)V
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x215d019355db7540L
    .end annotation

    const-wide v0, 0x38e8e405fdef000L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/activities/ShopExpertPopupActivity;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/activities/ShopExpertPopupActivity;->FH:Landroid/view/View;

    const v3, 0x7f080164

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/aide/ui/activities/ShopExpertPopupActivity;->FH:Landroid/view/View;

    const v4, 0x7f080157

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v2, p0, Lcom/aide/ui/activities/ShopExpertPopupActivity;->FH:Landroid/view/View;

    const v4, 0x7f080158

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TableLayout;

    invoke-virtual {v2, v3}, Landroid/widget/TableLayout;->setVisibility(I)V

    iget-object v2, p0, Lcom/aide/ui/activities/ShopExpertPopupActivity;->FH:Landroid/view/View;

    const v3, 0x7f080161

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<b>Error! Please verify that:</b><br><br>- the device is connected to the internet,<br>- the latest version of the Google Play Store is installed,<br>- you are signed in with a valid Google account.<br><br>More information about troubleshooting is available at:<br><br><a href=\'https://support.google.com/googleplay/digital-content/\'>https://support.google.com/googleplay/digital-content/</a><br><br><em>Error details: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "</em>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V
    :try_end_69
    .catchall {:try_start_5 .. :try_end_69} :catchall_6a

    return-void

    :catchall_6a
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/activities/ShopExpertPopupActivity;->DW:Z

    if-eqz v3, :cond_72

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_72
    throw v2
.end method

.method static synthetic j6(Lcom/aide/ui/activities/ShopExpertPopupActivity;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/aide/ui/activities/ShopExpertPopupActivity;->VH:Z

    return p0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 11

    const-wide v1, 0x16db5858385L

    const-wide v7, -0x9f89c05c72569e0L

    :try_start_a
    const-string v3, "androidRelease"

    const-string v4, "https://backbone-direct.appfour.com/project/SvkPQDcCSkSU4JZRRqsTuw/variant/androidRelease/audience/dev/probes.zip"

    const-string v5, "https://backbone-cdn.appfour.com/project/SvkPQDcCSkSU4JZRRqsTuw/variant/androidRelease/audience/public/probes.zip"

    const-string v6, "https://backbone-ingest.appfour.com/api/report/v1alpha1/data/project/SvkPQDcCSkSU4JZRRqsTuw"

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Object;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/aide/ui/activities/ShopExpertPopupActivity;->j6:Z

    if-eqz v0, :cond_1d

    invoke-static {v7, v8, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1d
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/aide/ui/U;->sh()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_2a
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "EXTRA_LINKID"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ExpertShopShownWithLinkId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Labcd/F;->j6(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/aide/ui/activities/ShopExpertPopupActivity;->FH()V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "EXTRA_IS_OPTIONAL_OFFER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_5b

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aide/ui/activities/ShopExpertPopupActivity;->VH:Z

    :cond_5b
    new-instance v0, Lcom/aide/ui/activities/G;

    invoke-direct {v0, p0}, Lcom/aide/ui/activities/G;-><init>(Lcom/aide/ui/activities/ShopExpertPopupActivity;)V

    invoke-static {p0, v0}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Lcom/aide/common/ma;)V
    :try_end_63
    .catchall {:try_start_a .. :try_end_63} :catchall_64

    return-void

    :catchall_64
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/activities/ShopExpertPopupActivity;->DW:Z

    if-eqz v1, :cond_6c

    invoke-static {v0, v7, v8, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_6c
    throw v0
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x5a8acdde0ee0e797L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/activities/ShopExpertPopupActivity;->j6:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x3759b4889bd6a727L  # 4.61064583361168E-42

    invoke-static {v1, v2, p0, v0, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    invoke-static {p0, p1}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;I)Landroid/app/Dialog;

    move-result-object p1
    :try_end_15
    .catchall {:try_start_0 .. :try_end_15} :catchall_16

    return-object p1

    :catchall_16
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/activities/ShopExpertPopupActivity;->DW:Z

    if-eqz v1, :cond_2b

    const-wide v2, 0x3759b4889bd6a727L  # 4.61064583361168E-42

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
        method = 0x1f98a06f9f82110L
    .end annotation

    const-wide v0, 0xf811c0473802868L  # 5.381077500469709E-234

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/activities/ShopExpertPopupActivity;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/aide/ui/activities/ShopExpertPopupActivity;->Zo:Z
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_13

    return-void

    :catchall_13
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/activities/ShopExpertPopupActivity;->DW:Z

    if-eqz v3, :cond_1b

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1b
    throw v2
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/activities/ShopExpertPopupActivity;->j6:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x27524cead65fe73L  # -5.488714663967172E296

    invoke-static {v1, v2, p0, v0, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_23

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/4 p1, 0x1

    return p1

    :cond_23
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result p1
    :try_end_27
    .catchall {:try_start_0 .. :try_end_27} :catchall_28

    return p1

    :catchall_28
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/activities/ShopExpertPopupActivity;->DW:Z

    if-eqz v1, :cond_3d

    const-wide v2, -0x27524cead65fe73L  # -5.488714663967172E296

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v4, p0

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3d
    throw v0
.end method

.method protected onPause()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x8a4c293d9e9a6b8L
    .end annotation

    const-wide v0, 0x36de4f3382475e0L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/activities/ShopExpertPopupActivity;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    invoke-static {p0}, Lcom/aide/ui/U;->DW(Landroid/app/Activity;)V
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_13

    return-void

    :catchall_13
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/activities/ShopExpertPopupActivity;->DW:Z

    if-eqz v3, :cond_1b

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1b
    throw v2
.end method

.method protected onStart()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x648e21e65f1dc40L
    .end annotation

    const-wide v0, 0x58f9a470dbc72c8L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/activities/ShopExpertPopupActivity;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    const-string v2, "ShopExpertPopup"

    invoke-static {p0, v2}, Labcd/F;->DW(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return-void

    :catchall_15
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/activities/ShopExpertPopupActivity;->DW:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1d
    throw v2
.end method

.method protected onStop()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x299504bc4f26111cL
    .end annotation

    const-wide v0, -0x1f719084b772dbbcL  # -1.3058336057244087E157

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/activities/ShopExpertPopupActivity;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    const-string v2, "ShopExpertPopup"

    invoke-static {p0, v2}, Labcd/F;->j6(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return-void

    :catchall_15
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/activities/ShopExpertPopupActivity;->DW:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1d
    throw v2
.end method
