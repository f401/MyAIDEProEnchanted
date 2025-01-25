.class public Lcom/aide/ui/activities/ShopLearningPopupActivity;
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
        field = 0x16e20950dbffd500L
    .end annotation
.end field

.field protected Hw:Landroid/app/AlertDialog;
    .annotation runtime Labcd/ru;
        field = -0x203da3c5181c673L
    .end annotation
.end field

.field private VH:Z
    .annotation runtime Labcd/ru;
        field = -0x2855ff0b4c92ee89L
    .end annotation
.end field

.field private Zo:Z
    .annotation runtime Labcd/ru;
        field = -0x2daae2cd68d8d400L
    .end annotation
.end field

.field private gn:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = 0x7ebebacbd13e278L
    .end annotation
.end field

.field private tp:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = -0xab0ce2dfd465ca0L
    .end annotation
.end field

.field private u7:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = -0x26f44a6954008207L
    .end annotation
.end field

.field private v5:Ljava/util/Map;
    .annotation runtime Labcd/ru;
        field = 0x144020e1c0727cd8L
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

    const-class v0, Lcom/aide/ui/activities/ShopLearningPopupActivity;

    const-wide v1, -0x16d3b28e19a2a2b8L  # -4.2312847618367747E198

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, 0x37d162abd54bfa8L

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/activities/ShopLearningPopupActivity;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/aide/ui/activities/ShopLearningPopupActivity;->VH:Z

    invoke-static {}, Lcom/aide/ui/U;->QX()Labcd/yk;

    move-result-object v3

    invoke-virtual {v3}, Labcd/yk;->FH()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/aide/ui/activities/ShopLearningPopupActivity;->gn:Ljava/lang/String;

    invoke-static {}, Lcom/aide/ui/U;->QX()Labcd/yk;

    move-result-object v3

    invoke-virtual {v3}, Labcd/yk;->v5()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/aide/ui/activities/ShopLearningPopupActivity;->u7:Ljava/lang/String;

    invoke-static {}, Lcom/aide/ui/U;->QX()Labcd/yk;

    move-result-object v3

    invoke-virtual {v3}, Labcd/yk;->Hw()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/aide/ui/activities/ShopLearningPopupActivity;->tp:Ljava/lang/String;
    :try_end_31
    .catchall {:try_start_6 .. :try_end_31} :catchall_32

    return-void

    :catchall_32
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/activities/ShopLearningPopupActivity;->DW:Z

    if-eqz v4, :cond_3a

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3a
    throw v3
.end method

.method static synthetic DW(Lcom/aide/ui/activities/ShopLearningPopupActivity;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/aide/ui/activities/ShopLearningPopupActivity;->gn:Ljava/lang/String;

    return-object p0
.end method

.method private DW()V
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x39ac9a9220df5280L
    .end annotation

    const-wide v0, 0x2ea38efb059f9e07L  # 5.033929834752586E-84

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/activities/ShopLearningPopupActivity;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iget-object v3, p0, Lcom/aide/ui/activities/ShopLearningPopupActivity;->u7:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/aide/ui/activities/ShopLearningPopupActivity;->gn:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/aide/ui/activities/ShopLearningPopupActivity;->tp:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/aide/ui/U;->QX()Labcd/yk;

    move-result-object v3

    new-instance v4, Lcom/aide/ui/activities/S;

    invoke-direct {v4, p0}, Lcom/aide/ui/activities/S;-><init>(Lcom/aide/ui/activities/ShopLearningPopupActivity;)V

    invoke-virtual {v3, v2, v4}, Labcd/yk;->j6(Ljava/util/Set;Labcd/yk$a;)V
    :try_end_2c
    .catchall {:try_start_5 .. :try_end_2c} :catchall_2d

    return-void

    :catchall_2d
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/activities/ShopLearningPopupActivity;->DW:Z

    if-eqz v3, :cond_35

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_35
    throw v2
.end method

.method static synthetic FH(Lcom/aide/ui/activities/ShopLearningPopupActivity;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/aide/ui/activities/ShopLearningPopupActivity;->u7:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic Hw(Lcom/aide/ui/activities/ShopLearningPopupActivity;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/aide/ui/activities/ShopLearningPopupActivity;->Zo:Z

    return p0
.end method

.method static synthetic j6(Lcom/aide/ui/activities/ShopLearningPopupActivity;Ljava/util/Map;)Ljava/util/Map;
    .registers 2

    iput-object p1, p0, Lcom/aide/ui/activities/ShopLearningPopupActivity;->v5:Ljava/util/Map;

    return-object p1
.end method

.method private j6()V
    .registers 9
    .annotation runtime Labcd/su;
        method = -0x3513a9bd66253724L
    .end annotation

    const-wide v0, -0x3199f0913ea4d263L  # -4.757952585112368E69

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/activities/ShopLearningPopupActivity;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/activities/ShopLearningPopupActivity;->FH:Landroid/view/View;

    const v3, 0x7f08016f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/aide/ui/activities/ShopLearningPopupActivity;->FH:Landroid/view/View;

    const v3, 0x7f080169

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/aide/ui/activities/ShopLearningPopupActivity;->FH:Landroid/view/View;

    const v4, 0x7f080171

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/aide/ui/activities/ShopLearningPopupActivity;->v5:Ljava/util/Map;

    iget-object v7, p0, Lcom/aide/ui/activities/ShopLearningPopupActivity;->gn:Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Labcd/yk$g;

    iget-object v6, v6, Labcd/yk$g;->Zo:Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const v6, 0x7f0d0615

    invoke-virtual {p0, v6, v5}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-array v2, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/aide/ui/activities/ShopLearningPopupActivity;->v5:Ljava/util/Map;

    iget-object v5, p0, Lcom/aide/ui/activities/ShopLearningPopupActivity;->tp:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Labcd/yk$g;

    iget-object v4, v4, Labcd/yk$g;->Zo:Ljava/lang/String;

    aput-object v4, v2, v7

    invoke-virtual {p0, v6, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/aide/ui/activities/ShopLearningPopupActivity;->FH:Landroid/view/View;

    const v3, 0x7f080165

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    sget-object v2, Lcom/aide/ui/U;->j6:Ljava/lang/String;

    const-string v3, "com.aide.web"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8a

    iget-object v2, p0, Lcom/aide/ui/activities/ShopLearningPopupActivity;->FH:Landroid/view/View;

    const v3, 0x7f080167

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TableLayout;

    :goto_86
    invoke-virtual {v2, v7}, Landroid/widget/TableLayout;->setVisibility(I)V

    goto :goto_96

    :cond_8a
    iget-object v2, p0, Lcom/aide/ui/activities/ShopLearningPopupActivity;->FH:Landroid/view/View;

    const v3, 0x7f080166

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TableLayout;
    :try_end_95
    .catchall {:try_start_5 .. :try_end_95} :catchall_97

    goto :goto_86

    :goto_96
    return-void

    :catchall_97
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/activities/ShopLearningPopupActivity;->DW:Z

    if-eqz v3, :cond_9f

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_9f
    goto :goto_a1

    :goto_a0
    throw v2

    :goto_a1
    goto :goto_a0
.end method

.method static synthetic j6(Lcom/aide/ui/activities/ShopLearningPopupActivity;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/aide/ui/activities/ShopLearningPopupActivity;->j6(Ljava/lang/String;)V

    return-void
.end method

.method private j6(Ljava/lang/String;)V
    .registers 7
    .annotation runtime Labcd/su;
        method = 0x7e3fd90511a1e63L
    .end annotation

    const-wide v0, -0xbe67ef51aee9480L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/activities/ShopLearningPopupActivity;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/activities/ShopLearningPopupActivity;->FH:Landroid/view/View;

    const v3, 0x7f08016f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/aide/ui/activities/ShopLearningPopupActivity;->FH:Landroid/view/View;

    const v4, 0x7f080165

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v2, p0, Lcom/aide/ui/activities/ShopLearningPopupActivity;->FH:Landroid/view/View;

    const v4, 0x7f080166

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TableLayout;

    invoke-virtual {v2, v3}, Landroid/widget/TableLayout;->setVisibility(I)V

    iget-object v2, p0, Lcom/aide/ui/activities/ShopLearningPopupActivity;->FH:Landroid/view/View;

    const v3, 0x7f08016d

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

    sget-boolean v3, Lcom/aide/ui/activities/ShopLearningPopupActivity;->DW:Z

    if-eqz v3, :cond_72

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_72
    throw v2
.end method

.method static synthetic j6(Lcom/aide/ui/activities/ShopLearningPopupActivity;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/aide/ui/activities/ShopLearningPopupActivity;->VH:Z

    return p0
.end method

.method static synthetic v5(Lcom/aide/ui/activities/ShopLearningPopupActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/aide/ui/activities/ShopLearningPopupActivity;->j6()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 11

    const-wide v1, 0x16db5858385L

    const-wide v7, 0xa6bd26630d1bf80L

    :try_start_a
    const-string v3, "androidRelease"

    const-string v4, "https://backbone-direct.appfour.com/project/SvkPQDcCSkSU4JZRRqsTuw/variant/androidRelease/audience/dev/probes.zip"

    const-string v5, "https://backbone-cdn.appfour.com/project/SvkPQDcCSkSU4JZRRqsTuw/variant/androidRelease/audience/public/probes.zip"

    const-string v6, "https://backbone-ingest.appfour.com/api/report/v1alpha1/data/project/SvkPQDcCSkSU4JZRRqsTuw"

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Object;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/aide/ui/activities/ShopLearningPopupActivity;->j6:Z

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

    const-string v2, "LearningShopShownWithLinkId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Labcd/F;->j6(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/aide/ui/activities/ShopLearningPopupActivity;->DW()V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "EXTRA_IS_OPTIONAL_OFFER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_5b

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aide/ui/activities/ShopLearningPopupActivity;->VH:Z

    :cond_5b
    new-instance v0, Lcom/aide/ui/activities/O;

    invoke-direct {v0, p0}, Lcom/aide/ui/activities/O;-><init>(Lcom/aide/ui/activities/ShopLearningPopupActivity;)V

    invoke-static {p0, v0}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Lcom/aide/common/ma;)V
    :try_end_63
    .catchall {:try_start_a .. :try_end_63} :catchall_64

    return-void

    :catchall_64
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/activities/ShopLearningPopupActivity;->DW:Z

    if-eqz v1, :cond_6c

    invoke-static {v0, v7, v8, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_6c
    throw v0
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x10dae37f232aa098L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/activities/ShopLearningPopupActivity;->j6:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x30c426144817e4c1L  # -4.920890466136913E73

    invoke-static {v1, v2, p0, v0, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    invoke-static {p0, p1}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;I)Landroid/app/Dialog;

    move-result-object p1
    :try_end_15
    .catchall {:try_start_0 .. :try_end_15} :catchall_16

    return-object p1

    :catchall_16
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/activities/ShopLearningPopupActivity;->DW:Z

    if-eqz v1, :cond_2b

    const-wide v2, -0x30c426144817e4c1L  # -4.920890466136913E73

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
        method = 0x13390b724d3ea0ddL
    .end annotation

    const-wide v0, 0x351a2cd4cb36eab0L  # 6.83202561516649E-53

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/activities/ShopLearningPopupActivity;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/aide/ui/activities/ShopLearningPopupActivity;->Zo:Z
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_13

    return-void

    :catchall_13
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/activities/ShopLearningPopupActivity;->DW:Z

    if-eqz v3, :cond_1b

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1b
    throw v2
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .registers 10

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/activities/ShopLearningPopupActivity;->j6:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x6bc4a38ba96434dL

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

    sget-boolean v1, Lcom/aide/ui/activities/ShopLearningPopupActivity;->DW:Z

    if-eqz v1, :cond_3d

    const-wide v2, 0x6bc4a38ba96434dL

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
        method = 0x1b44418780b21f25L
    .end annotation

    const-wide v0, 0x1a89af188673b8c8L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/activities/ShopLearningPopupActivity;->j6:Z

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

    sget-boolean v3, Lcom/aide/ui/activities/ShopLearningPopupActivity;->DW:Z

    if-eqz v3, :cond_1b

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1b
    throw v2
.end method

.method protected onStart()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x1daf0a9b76f9ad01L
    .end annotation

    const-wide v0, 0x1cd4caa397ca5de0L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/activities/ShopLearningPopupActivity;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    const-string v2, "shopLearningPopup"

    invoke-static {p0, v2}, Labcd/F;->DW(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return-void

    :catchall_15
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/activities/ShopLearningPopupActivity;->DW:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1d
    throw v2
.end method

.method protected onStop()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0xddfd1ecb27b1757L
    .end annotation

    const-wide v0, -0x1dd413fe0a05214cL  # -8.039567565825841E164

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/activities/ShopLearningPopupActivity;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    const-string v2, "shopLearningPopup"

    invoke-static {p0, v2}, Labcd/F;->j6(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_15

    return-void

    :catchall_15
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/activities/ShopLearningPopupActivity;->DW:Z

    if-eqz v3, :cond_1d

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1d
    throw v2
.end method
