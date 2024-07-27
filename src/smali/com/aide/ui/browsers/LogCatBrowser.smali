.class public Lcom/aide/ui/browsers/LogCatBrowser;
.super Landroid/widget/LinearLayout;

# interfaces
.implements Labcd/Gk$b;
.implements Lcom/aide/ui/browsers/a;


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
.field private FH:Z
    .annotation runtime Labcd/ru;
        field = 0x1eb7815a93648000L
    .end annotation
.end field

.field private Hw:Z
    .annotation runtime Labcd/ru;
        field = 0xb5a8358792b9d1bL
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide v2, 0x67c62fd5ed9375c9L    # 7.908298614517782E191

    const-class v0, Lcom/aide/ui/browsers/LogCatBrowser;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 8

    const-wide v4, 0x2f1036849bf565f0L    # 5.341257613879713E-82

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/browsers/LogCatBrowser;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x2f1036849bf565f0L    # 5.341257613879713E-82

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/aide/ui/browsers/LogCatBrowser;->QX()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/browsers/LogCatBrowser;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 10

    const-wide v2, 0x432db81cf05ec2f3L    # 4.1826043779731135E15

    const/4 v4, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/browsers/LogCatBrowser;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x432db81cf05ec2f3L    # 4.1826043779731135E15

    const/4 v5, 0x0

    invoke-static {v0, v1, v5, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/aide/ui/browsers/LogCatBrowser;->QX()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/browsers/LogCatBrowser;->DW:Z

    if-eqz v0, :cond_1

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method private QX()V
    .registers 9
    .annotation runtime Labcd/su;
        method = -0x22606fb160cf5f3L
    .end annotation

    const-wide v6, -0x3403194441e160bL    # -7.935044785597638E292

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/browsers/LogCatBrowser;->j6:Z

    if-eqz v0, :cond_0

    const-wide v4, -0x3403194441e160bL    # -7.935044785597638E292

    invoke-static {v4, v5, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-direct {v0, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x7f0a0025

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->removeAllViews()V

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const v3, 0x7f0800e0

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    new-instance v3, Lcom/aide/ui/browsers/m;

    invoke-direct {v3, p0, v0}, Lcom/aide/ui/browsers/m;-><init>(Lcom/aide/ui/browsers/LogCatBrowser;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "Logcat"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v3, "FilterType"

    const/4 v4, -0x1

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "FilterValue"

    const-string v5, ""

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-ltz v3, :cond_6

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/aide/ui/browsers/LogCatBrowser;->Hw:Z

    if-eqz v3, :cond_5

    if-eq v3, v1, :cond_4

    const/4 v0, 0x2

    if-eq v3, v0, :cond_3

    const/4 v0, 0x3

    if-eq v3, v0, :cond_1

    :goto_1
    invoke-static {}, Lcom/aide/ui/U;->a8()Labcd/Gk;

    move-result-object v0

    invoke-virtual {v0, p0}, Labcd/Gk;->j6(Labcd/Gk$b;)V

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/aide/ui/browsers/LogCatBrowser;->getConsole()Lcom/aide/ui/LogCatConsole;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/aide/ui/LogCatConsole;->DW(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/browsers/LogCatBrowser;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v6, v7, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0

    :cond_3
    :try_start_1
    invoke-direct {p0}, Lcom/aide/ui/browsers/LogCatBrowser;->getConsole()Lcom/aide/ui/LogCatConsole;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/aide/ui/LogCatConsole;->Hw(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lcom/aide/ui/browsers/LogCatBrowser;->getConsole()Lcom/aide/ui/LogCatConsole;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/aide/ui/LogCatConsole;->v5(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    invoke-direct {p0}, Lcom/aide/ui/browsers/LogCatBrowser;->getConsole()Lcom/aide/ui/LogCatConsole;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/aide/ui/LogCatConsole;->FH(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :cond_6
    move v0, v2

    goto :goto_0
.end method

.method private XL()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x50f00ef622b1888L
    .end annotation

    const-wide v2, -0x31ef6241c53cdf08L    # -1.1199285809002407E68

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/browsers/LogCatBrowser;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x31ef6241c53cdf08L    # -1.1199285809002407E68

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/U;->a8()Labcd/Gk;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/aide/ui/browsers/LogCatBrowser;->FH:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Labcd/Gk;->j6(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/browsers/LogCatBrowser;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method private getConsole()Lcom/aide/ui/LogCatConsole;
    .registers 5
    .annotation runtime Labcd/su;
        method = 0xc3e9a8ca6e17080L
    .end annotation

    const-wide v2, -0x158ce483af50b540L    # -5.990704300073856E204

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/browsers/LogCatBrowser;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x158ce483af50b540L    # -5.990704300073856E204

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    const v0, 0x7f0800df

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/aide/ui/LogCatConsole;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/browsers/LogCatBrowser;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method static synthetic j6(Lcom/aide/ui/browsers/LogCatBrowser;)Lcom/aide/ui/LogCatConsole;
    .registers 2

    invoke-direct {p0}, Lcom/aide/ui/browsers/LogCatBrowser;->getConsole()Lcom/aide/ui/LogCatConsole;

    move-result-object v0

    return-object v0
.end method

.method private j6(ILjava/lang/String;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0xe807200ed71d7dbL
    .end annotation

    const-wide v2, 0x19361f117b53047dL

    const/4 v0, 0x0

    :try_start_0
    sget-boolean v1, Lcom/aide/ui/browsers/LogCatBrowser;->j6:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    const-wide v4, 0x19361f117b53047dL

    invoke-static {v4, v5, p0, v1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v4, "Logcat"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v4, "FilterType"

    invoke-interface {v1, v4, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v4, "FilterValue"

    invoke-interface {v1, v4, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    if-ltz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p0, Lcom/aide/ui/browsers/LogCatBrowser;->Hw:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/browsers/LogCatBrowser;->DW:Z

    if-eqz v0, :cond_2

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1
.end method

.method static synthetic j6(Lcom/aide/ui/browsers/LogCatBrowser;ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/aide/ui/browsers/LogCatBrowser;->j6(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public DW()V
    .registers 5

    const-wide v2, -0x1f17df894e7f4027L    # -6.625027060125532E158

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/browsers/LogCatBrowser;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1f17df894e7f4027L    # -6.625027060125532E158

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Lcom/aide/ui/browsers/LogCatBrowser;->XL()V

    invoke-static {}, Lcom/aide/ui/U;->a8()Labcd/Gk;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Gk;->Zo()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/browsers/LogCatBrowser;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public EQ()V
    .registers 5

    const-wide v2, -0x1bd59c6d4aca840bL    # -3.263395705949368E174

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/browsers/LogCatBrowser;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1bd59c6d4aca840bL    # -3.263395705949368E174

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Lcom/aide/ui/browsers/LogCatBrowser;->getConsole()Lcom/aide/ui/LogCatConsole;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/LogCatConsole;->er()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/browsers/LogCatBrowser;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public FH()V
    .registers 5

    const-wide v2, 0x337185349a5894cfL    # 6.814331598441526E-61

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/browsers/LogCatBrowser;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x337185349a5894cfL    # 6.814331598441526E-61

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Lcom/aide/ui/browsers/LogCatBrowser;->getConsole()Lcom/aide/ui/LogCatConsole;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/LogCatConsole;->a8()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/browsers/LogCatBrowser;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public Hw()V
    .registers 5

    const-wide v2, 0x55a78c09d14eba8L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/browsers/LogCatBrowser;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x55a78c09d14eba8L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    const/4 v0, -0x1

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcom/aide/ui/browsers/LogCatBrowser;->j6(ILjava/lang/String;)V

    invoke-direct {p0}, Lcom/aide/ui/browsers/LogCatBrowser;->getConsole()Lcom/aide/ui/LogCatConsole;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/LogCatConsole;->lg()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/browsers/LogCatBrowser;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public J0()Z
    .registers 5

    const-wide v2, -0x2c7c02eeb5f310d9L    # -2.084730132902853E94

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/browsers/LogCatBrowser;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x2c7c02eeb5f310d9L    # -2.084730132902853E94

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-boolean v0, p0, Lcom/aide/ui/browsers/LogCatBrowser;->FH:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/browsers/LogCatBrowser;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public J8()V
    .registers 5

    const-wide v2, -0x1e59ab1bf3a4c7dbL    # -2.5116991155218668E162

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/browsers/LogCatBrowser;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1e59ab1bf3a4c7dbL    # -2.5116991155218668E162

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aide/ui/browsers/LogCatBrowser;->FH:Z

    invoke-direct {p0}, Lcom/aide/ui/browsers/LogCatBrowser;->XL()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/browsers/LogCatBrowser;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public VH()V
    .registers 5

    const-wide v2, -0x2d372903be3bab63L    # -6.324942377459638E90

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/browsers/LogCatBrowser;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x2d372903be3bab63L    # -6.324942377459638E90

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Zk;->J0()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Labcd/gj;->P8(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/aide/ui/U;->vy()Labcd/Zk;

    move-result-object v1

    invoke-virtual {v1}, Labcd/Zk;->tp()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Labcd/gj;->FH(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-direct {p0, v1, v0}, Lcom/aide/ui/browsers/LogCatBrowser;->j6(ILjava/lang/String;)V

    invoke-direct {p0}, Lcom/aide/ui/browsers/LogCatBrowser;->getConsole()Lcom/aide/ui/LogCatConsole;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/aide/ui/LogCatConsole;->DW(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/browsers/LogCatBrowser;->DW:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public Ws()V
    .registers 5

    const-wide v2, 0xb9a45ae3e294f88L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/browsers/LogCatBrowser;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0xb9a45ae3e294f88L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aide/ui/browsers/LogCatBrowser;->FH:Z

    invoke-direct {p0}, Lcom/aide/ui/browsers/LogCatBrowser;->XL()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/browsers/LogCatBrowser;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public Zo()V
    .registers 5

    const-wide v2, -0x3570beef2fb3ef0L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/browsers/LogCatBrowser;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x3570beef2fb3ef0L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Lcom/aide/ui/browsers/LogCatBrowser;->getConsole()Lcom/aide/ui/LogCatConsole;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/views/CodeEditText;->v5()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/browsers/LogCatBrowser;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public gn()V
    .registers 7

    const-wide v4, -0x3287f9f101879188L    # -1.5812420945942418E65

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/browsers/LogCatBrowser;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x3287f9f101879188L    # -1.5812420945942418E65

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v0

    invoke-direct {p0}, Lcom/aide/ui/browsers/LogCatBrowser;->getConsole()Lcom/aide/ui/LogCatConsole;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aide/ui/LogCatConsole;->getAllPriortities()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/aide/ui/browsers/p;

    invoke-direct {v2, p0}, Lcom/aide/ui/browsers/p;-><init>(Lcom/aide/ui/browsers/LogCatBrowser;)V

    const-string v3, "Priority"

    invoke-static {v0, v3, v1, v2}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/util/List;Lcom/aide/common/ab;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/browsers/LogCatBrowser;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6()V
    .registers 5

    const-wide v2, -0x232c8f966b8208c7L    # -1.4468197025672475E139

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/browsers/LogCatBrowser;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x232c8f966b8208c7L    # -1.4468197025672475E139

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Lcom/aide/ui/browsers/LogCatBrowser;->getConsole()Lcom/aide/ui/LogCatConsole;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/views/CodeEditText;->gn()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/browsers/LogCatBrowser;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(Labcd/Gk$a;)V
    .registers 6

    const-wide v2, -0x3dad1314d7b7d950L    # -3.251369823046045E11

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/browsers/LogCatBrowser;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x3dad1314d7b7d950L    # -3.251369823046045E11

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Lcom/aide/ui/browsers/LogCatBrowser;->getConsole()Lcom/aide/ui/LogCatConsole;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/aide/ui/LogCatConsole;->j6(Labcd/Gk$a;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/browsers/LogCatBrowser;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0x34db1d3c7dddb88L
    .end annotation

    const-wide v2, -0x3fa7ff048397478L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/browsers/LogCatBrowser;->j6:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v4, -0x3fa7ff048397478L

    invoke-static {v4, v5, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onVisibilityChanged(Landroid/view/View;I)V

    invoke-direct {p0}, Lcom/aide/ui/browsers/LogCatBrowser;->XL()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/browsers/LogCatBrowser;->DW:Z

    if-eqz v0, :cond_1

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public tp()V
    .registers 7

    const-wide v4, -0x2d39bbd61024bd0cL    # -5.669647834246843E90

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/browsers/LogCatBrowser;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x2d39bbd61024bd0cL    # -5.669647834246843E90

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v0

    invoke-direct {p0}, Lcom/aide/ui/browsers/LogCatBrowser;->getConsole()Lcom/aide/ui/LogCatConsole;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aide/ui/LogCatConsole;->getAllTags()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/aide/ui/browsers/o;

    invoke-direct {v2, p0}, Lcom/aide/ui/browsers/o;-><init>(Lcom/aide/ui/browsers/LogCatBrowser;)V

    const-string v3, "Tag"

    invoke-static {v0, v3, v1, v2}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/util/List;Lcom/aide/common/ab;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/browsers/LogCatBrowser;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public u7()V
    .registers 7

    const-wide v4, 0x1ec290e0b56bc791L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/browsers/LogCatBrowser;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x1ec290e0b56bc791L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v0

    invoke-direct {p0}, Lcom/aide/ui/browsers/LogCatBrowser;->getConsole()Lcom/aide/ui/LogCatConsole;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aide/ui/LogCatConsole;->getAllProcesses()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/aide/ui/browsers/n;

    invoke-direct {v2, p0}, Lcom/aide/ui/browsers/n;-><init>(Lcom/aide/ui/browsers/LogCatBrowser;)V

    const-string v3, "Process"

    invoke-static {v0, v3, v1, v2}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/util/List;Lcom/aide/common/ab;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/browsers/LogCatBrowser;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public v5()V
    .registers 5

    const-wide v2, -0x1d2a61cd9f3095fL    # -6.142574245215028E299

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/browsers/LogCatBrowser;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1d2a61cd9f3095fL    # -6.142574245215028E299

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Lcom/aide/ui/browsers/LogCatBrowser;->getConsole()Lcom/aide/ui/LogCatConsole;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/LogCatConsole;->rN()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/browsers/LogCatBrowser;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public we()Z
    .registers 5

    const-wide v2, -0x35c53a66e4c8e3c0L    # -3.912712813725595E49

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/browsers/LogCatBrowser;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x35c53a66e4c8e3c0L    # -3.912712813725595E49

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-boolean v0, p0, Lcom/aide/ui/browsers/LogCatBrowser;->Hw:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/browsers/LogCatBrowser;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method
