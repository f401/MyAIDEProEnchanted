.class public abstract Lcom/aide/ui/build/OutputConsoleActivity;
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
.field protected FH:Lcom/aide/ui/build/OutputConsole;
    .annotation runtime Labcd/ru;
        field = 0x1050928372597f20L
    .end annotation
.end field

.field protected Hw:Landroid/os/Handler;
    .annotation runtime Labcd/ru;
        field = 0x1d3545f6d6b10cebL
    .end annotation
.end field

.field private VH:I
    .annotation runtime Labcd/ru;
        field = -0x1b630458baf1386cL
    .end annotation
.end field

.field private Zo:I
    .annotation runtime Labcd/ru;
        field = -0x36a5068f3a0fea1bL
    .end annotation
.end field

.field private gn:Lcom/aide/common/TextToSpeechHelper;
    .annotation runtime Labcd/ru;
        field = 0x20f88b9fa45f5fd0L
    .end annotation
.end field

.field private v5:Landroid/media/SoundPool;
    .annotation runtime Labcd/ru;
        field = -0x26cd057152a111b0L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/ui/build/OutputConsoleActivity;

    const-wide v1, 0xa1c6947f77ec70dL

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, -0x67e568b7e0bb2b34L

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/build/OutputConsoleActivity;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/build/OutputConsoleActivity;->DW:Z

    if-eqz v4, :cond_19

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_19
    throw v3
.end method

.method static synthetic DW(Lcom/aide/ui/build/OutputConsoleActivity;)Landroid/media/SoundPool;
    .registers 1

    iget-object p0, p0, Lcom/aide/ui/build/OutputConsoleActivity;->v5:Landroid/media/SoundPool;

    return-object p0
.end method

.method static synthetic FH(Lcom/aide/ui/build/OutputConsoleActivity;)Lcom/aide/common/TextToSpeechHelper;
    .registers 1

    iget-object p0, p0, Lcom/aide/ui/build/OutputConsoleActivity;->gn:Lcom/aide/common/TextToSpeechHelper;

    return-object p0
.end method

.method static synthetic Hw(Lcom/aide/ui/build/OutputConsoleActivity;)I
    .registers 1

    iget p0, p0, Lcom/aide/ui/build/OutputConsoleActivity;->Zo:I

    return p0
.end method

.method private VH()V
    .registers 7
    .annotation runtime Labcd/su;
        method = 0xc219e40f1e4ed98L
    .end annotation

    const-wide v0, -0x3f9f77e5a02f0907L  # -132.25321951688218

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/OutputConsoleActivity;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "EXTRA_TRAINER_ACTION"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v3, -0x1

    invoke-virtual {p0, v3, v2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    iget-object v2, p0, Lcom/aide/ui/build/OutputConsoleActivity;->Hw:Landroid/os/Handler;

    new-instance v3, Lcom/aide/ui/build/o;

    invoke-direct {v3, p0}, Lcom/aide/ui/build/o;-><init>(Lcom/aide/ui/build/OutputConsoleActivity;)V

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_27
    .catchall {:try_start_5 .. :try_end_27} :catchall_28

    return-void

    :catchall_28
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/OutputConsoleActivity;->DW:Z

    if-eqz v3, :cond_30

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_30
    throw v2
.end method

.method private Zo()Z
    .registers 6
    .annotation runtime Labcd/su;
        method = -0xe43ef69ce8b22dbL
    .end annotation

    const-wide v0, -0x2eeb9862c3bd32d0L  # -3.871060490723847E82

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/OutputConsoleActivity;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "EXTRA_TRAINER"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_18

    return v0

    :catchall_18
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/OutputConsoleActivity;->DW:Z

    if-eqz v3, :cond_20

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_20
    throw v2
.end method

.method private gn()V
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x30563b1de3562999L
    .end annotation

    const-wide v0, -0x2f5af403652b9e58L  # -3.1194312055975817E80

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/OutputConsoleActivity;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/build/OutputConsoleActivity;->Hw:Landroid/os/Handler;

    new-instance v3, Lcom/aide/ui/build/q;

    invoke-direct {v3, p0}, Lcom/aide/ui/build/q;-><init>(Lcom/aide/ui/build/OutputConsoleActivity;)V

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_19

    return-void

    :catchall_19
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/OutputConsoleActivity;->DW:Z

    if-eqz v3, :cond_21

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_21
    throw v2
.end method

.method static synthetic j6(Lcom/aide/ui/build/OutputConsoleActivity;)I
    .registers 1

    iget p0, p0, Lcom/aide/ui/build/OutputConsoleActivity;->VH:I

    return p0
.end method

.method public static j6(Landroid/app/Activity;ZILandroid/content/Intent;)V
    .registers 13

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/OutputConsoleActivity;->j6:Z

    if-eqz v0, :cond_19

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p1}, Ljava/lang/Boolean;-><init>(Z)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0xe0d40f676cb2689L  # 5.483971472547244E-241

    const/4 v3, 0x0

    move-object v4, p0

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_19
    const-string v0, "EXTRA_THEME"

    invoke-virtual {p3, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "EXTRA_LANGUAGE"

    invoke-static {}, Lcom/aide/ui/U;->Mr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/aide/ui/U;->dx()Z

    move-result v0

    if-eqz v0, :cond_c3

    invoke-static {}, Lcom/aide/ui/U;->SI()Labcd/Cl;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Cl;->Zo()Lcom/aide/ui/trainer/g$a;

    move-result-object v0

    invoke-static {}, Lcom/aide/ui/U;->SI()Labcd/Cl;

    move-result-object v1

    invoke-virtual {v1}, Labcd/Cl;->VH()Lcom/aide/ui/trainer/g$d;

    move-result-object v1

    const-string v2, "EXTRA_TRAINER"

    const/4 v3, 0x1

    invoke-virtual {p3, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "EXTRA_SOUND"

    invoke-static {}, Lcom/aide/ui/aa;->J0()Z

    move-result v3

    invoke-virtual {p3, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "EXTRA_SPEAK"

    invoke-static {}, Lcom/aide/ui/aa;->J8()Z

    move-result v3

    invoke-virtual {p3, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "EXTRA_HEADER"

    invoke-virtual {v0}, Lcom/aide/ui/trainer/g$c;->J0()[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "EXTRA_TRAINER_HEADER_ICON"

    invoke-virtual {v0}, Lcom/aide/ui/trainer/g$c;->Hw()I

    move-result v0

    invoke-virtual {p3, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "EXTRA_TRAINER_LOCALE"

    invoke-virtual {v1}, Lcom/aide/ui/trainer/g$d;->Zo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "EXTRA_TRAINER_OUTPUT"

    invoke-virtual {v1}, Lcom/aide/ui/trainer/g$d;->v5()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "EXTRA_TRAINER_FAIL"

    invoke-virtual {v1}, Lcom/aide/ui/trainer/g$d;->u7()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "EXTRA_TRAINER_FAIL_BUTTON"

    invoke-static {}, Lcom/aide/ui/U;->SI()Labcd/Cl;

    move-result-object v2

    invoke-virtual {v2}, Labcd/Cl;->tp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "EXTRA_TRAINER_SUCCESS"

    invoke-virtual {v1}, Lcom/aide/ui/trainer/g$d;->we()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "EXTRA_TRAINER_FAIL_TITLE"

    invoke-static {}, Lcom/aide/ui/U;->SI()Labcd/Cl;

    move-result-object v1

    invoke-virtual {v1}, Labcd/Cl;->EQ()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "EXTRA_TRAINER_SUCCESS_TITLE"

    invoke-static {}, Lcom/aide/ui/U;->SI()Labcd/Cl;

    move-result-object v1

    invoke-virtual {v1}, Labcd/Cl;->J0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "EXTRA_TRAINER_SUCCESS_BUTTON"

    invoke-static {}, Lcom/aide/ui/U;->SI()Labcd/Cl;

    move-result-object v1

    invoke-virtual {v1}, Labcd/Cl;->Ws()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, p3, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_c6

    :cond_c3
    invoke-virtual {p0, p3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_c6
    .catchall {:try_start_0 .. :try_end_c6} :catchall_c7

    :goto_c6
    return-void

    :catchall_c7
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/OutputConsoleActivity;->DW:Z

    if-eqz v1, :cond_e2

    const-wide v2, 0xe0d40f676cb2689L  # 5.483971472547244E-241

    const/4 v4, 0x0

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p1}, Ljava/lang/Boolean;-><init>(Z)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v5, p0

    move-object v8, p3

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_e2
    throw v0
.end method

.method public static j6(Landroid/content/Intent;)V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, 0x6a86886d6dc18660L  # 1.4129426496450827E205

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/build/OutputConsoleActivity;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    const-string v3, "EXTRA_TRAINER_ACTION"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_28

    invoke-static {}, Lcom/aide/ui/U;->SI()Labcd/Cl;

    move-result-object v3

    invoke-virtual {v3}, Labcd/Cl;->a8()Z

    move-result v3

    if-nez v3, :cond_28

    invoke-static {}, Lcom/aide/ui/U;->SI()Labcd/Cl;

    move-result-object v3

    invoke-virtual {v3}, Labcd/Cl;->nw()V

    goto :goto_2f

    :cond_28
    invoke-static {}, Lcom/aide/ui/U;->SI()Labcd/Cl;

    move-result-object v3

    invoke-virtual {v3}, Labcd/Cl;->gW()V
    :try_end_2f
    .catchall {:try_start_6 .. :try_end_2f} :catchall_30

    :goto_2f
    return-void

    :catchall_30
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/build/OutputConsoleActivity;->DW:Z

    if-eqz v4, :cond_38

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_38
    throw v3
.end method

.method static synthetic j6(Lcom/aide/ui/build/OutputConsoleActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/aide/ui/build/OutputConsoleActivity;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method private j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
    .registers 14
    .annotation runtime Labcd/su;
        method = -0x1b5786e3f2e47dc3L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/OutputConsoleActivity;->j6:Z

    if-eqz v0, :cond_11

    const-wide v1, 0x1aea6bb9ffe8d30L

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    iget-object v0, p0, Lcom/aide/ui/build/OutputConsoleActivity;->FH:Lcom/aide/ui/build/OutputConsole;

    invoke-virtual {v0}, Lcom/aide/ui/views/CodeEditText;->getScrollView()Lcom/aide/ui/views/CodeEditTextScrollView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/views/CodeEditTextScrollView;->getHeaderView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v2, 0x7f080132

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f080134

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f080131

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_46

    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4d

    :cond_46
    invoke-static {p2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_4d
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v4, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p0}, Lcom/aide/common/g;->gn(Landroid/content/Context;)F

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-static {p0}, Lcom/aide/common/g;->u7(Landroid/content/Context;)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-static {p0}, Lcom/aide/common/g;->v5(Landroid/content/Context;)F

    move-result v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextSize(F)V

    const v3, 0x7f080133

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v5, Lcom/aide/ui/build/r;

    invoke-direct {v5, p0, p4}, Lcom/aide/ui/build/r;-><init>(Lcom/aide/ui/build/OutputConsoleActivity;Ljava/lang/Runnable;)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v5, Lcom/aide/ui/build/s;

    invoke-direct {v5, p0, v4}, Lcom/aide/ui/build/s;-><init>(Lcom/aide/ui/build/OutputConsoleActivity;Landroid/widget/TextView;)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    invoke-direct {p0}, Lcom/aide/ui/build/OutputConsoleActivity;->Zo()Z

    move-result v4

    if-eqz v4, :cond_a2

    invoke-static {p0}, Lcom/aide/common/g;->J8(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_a2

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    const/high16 v5, 0x42400000  # 48.0f

    mul-float v5, v5, v4

    float-to-int v5, v5

    const/high16 v6, 0x41d80000  # 27.0f

    mul-float v4, v4, v6

    float-to-int v4, v4

    invoke-virtual {v3, v5, v4, v5, v1}, Landroid/view/View;->setPadding(IIII)V

    :cond_a2
    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-static {p0}, Lcom/aide/common/g;->FH(Landroid/content/Context;)I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v2}, Landroid/widget/TextView;->requestLayout()V

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->measure(II)V

    iget-object v0, p0, Lcom/aide/ui/build/OutputConsoleActivity;->FH:Lcom/aide/ui/build/OutputConsole;

    invoke-virtual {v0}, Lcom/aide/ui/views/CodeEditText;->getScrollView()Lcom/aide/ui/views/CodeEditTextScrollView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/views/CodeEditTextScrollView;->gn()V
    :try_end_c3
    .catchall {:try_start_0 .. :try_end_c3} :catchall_c4

    return-void

    :catchall_c4
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/OutputConsoleActivity;->DW:Z

    if-eqz v1, :cond_d7

    const-wide v2, 0x1aea6bb9ffe8d30L

    move-object v1, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-static/range {v1 .. v8}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d7
    throw v0
.end method

.method private u7()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x1978d779672f9859L
    .end annotation

    const-wide v0, 0x21aab8c6f8be9d0L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/OutputConsoleActivity;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/app/Activity;->setProgressBarIndeterminate(Z)V

    invoke-virtual {p0, v2}, Landroid/app/Activity;->setProgressBarIndeterminateVisibility(Z)V
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_1c

    :try_start_13
    invoke-virtual {p0}, Lcom/aide/ui/build/OutputConsoleActivity;->v5()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_16} :catch_17
    .catchall {:try_start_13 .. :try_end_16} :catchall_1c

    goto :goto_1b

    :catch_17
    move-exception v2

    :try_start_18
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_1c

    :goto_1b
    return-void

    :catchall_1c
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/OutputConsoleActivity;->DW:Z

    if-eqz v3, :cond_24

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_24
    throw v2
.end method


# virtual methods
.method protected DW()Z
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x3b707b6ace0d6604L
    .end annotation

    const-wide v0, -0x4de57e07b7cdf9bbL  # -2.458062608592571E-67

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/OutputConsoleActivity;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "EXTRA_SPEAK"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_18

    return v0

    :catchall_18
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/OutputConsoleActivity;->DW:Z

    if-eqz v3, :cond_20

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_20
    throw v2
.end method

.method protected abstract FH()I
.end method

.method protected Hw()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x2c443b0b37116c99L
    .end annotation

    const-wide v0, 0x751b191743e3760L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/OutputConsoleActivity;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/app/Activity;->setProgressBarIndeterminateVisibility(Z)V

    invoke-direct {p0}, Lcom/aide/ui/build/OutputConsoleActivity;->Zo()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "EXTRA_TRAINER_OUTPUT"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_30

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_30

    iget-object v3, p0, Lcom/aide/ui/build/OutputConsoleActivity;->FH:Lcom/aide/ui/build/OutputConsole;

    invoke-virtual {v3, v2}, Lcom/aide/ui/build/OutputConsole;->DW(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_34

    :cond_30
    invoke-direct {p0}, Lcom/aide/ui/build/OutputConsoleActivity;->gn()V

    goto :goto_37

    :cond_34
    invoke-direct {p0}, Lcom/aide/ui/build/OutputConsoleActivity;->VH()V
    :try_end_37
    .catchall {:try_start_5 .. :try_end_37} :catchall_38

    :cond_37
    :goto_37
    return-void

    :catchall_38
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/OutputConsoleActivity;->DW:Z

    if-eqz v3, :cond_40

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_40
    throw v2
.end method

.method public dispatchTouchEventForCatcher(Landroid/view/MotionEvent;Landroid/view/View;Landroid/app/Activity;)V
    .registers 4

    return-void
.end method

.method protected j6()Z
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x375e963827601b89L
    .end annotation

    const-wide v0, -0x51b0c6ba16ad9864L  # -1.2556711903879764E-85

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/OutputConsoleActivity;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "EXTRA_SOUND"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_18

    return v0

    :catchall_18
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/OutputConsoleActivity;->DW:Z

    if-eqz v3, :cond_20

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_20
    throw v2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 11
    .annotation runtime Labcd/su;
        method = -0x981cd28881f5573L
    .end annotation

    const-wide v1, 0x16db5858385L

    const-wide v7, -0x9e22d61ab80e20L

    :try_start_a
    const-string v3, "androidRelease"

    const-string v4, "https://backbone-direct.appfour.com/project/SvkPQDcCSkSU4JZRRqsTuw/variant/androidRelease/audience/dev/probes.zip"

    const-string v5, "https://backbone-cdn.appfour.com/project/SvkPQDcCSkSU4JZRRqsTuw/variant/androidRelease/audience/public/probes.zip"

    const-string v6, "https://backbone-ingest.appfour.com/api/report/v1alpha1/data/project/SvkPQDcCSkSU4JZRRqsTuw"

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Object;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/aide/ui/build/OutputConsoleActivity;->j6:Z

    if-eqz v0, :cond_1d

    invoke-static {v7, v8, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1d
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "EXTRA_LANGUAGE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/aide/common/g;->j6(Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "EXTRA_THEME"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_47

    const v1, 0x7f0e0004

    invoke-static {p0, v1}, Lcom/b;->light(Landroid/app/Activity;I)V

    goto :goto_4d

    :cond_47
    const v1, 0x7f0e0003

    invoke-static {p0, v1}, Lcom/b;->dark(Landroid/app/Activity;I)V

    :goto_4d
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    const v1, 0x7f0a0036

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(I)V

    invoke-direct {p0}, Lcom/aide/ui/build/OutputConsoleActivity;->Zo()Z

    move-result v1

    if-nez v1, :cond_74

    const v1, 0x7f080130

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lcom/aide/common/g;->j6(Landroid/view/View;)V

    :cond_74
    invoke-direct {p0}, Lcom/aide/ui/build/OutputConsoleActivity;->Zo()Z

    move-result v1

    if-eqz v1, :cond_87

    invoke-static {p0}, Lcom/aide/common/g;->J8(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_87

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->hide()V

    :cond_87
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/aide/ui/build/OutputConsoleActivity;->Hw:Landroid/os/Handler;

    const v1, 0x7f08012f

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/aide/ui/build/OutputConsole;

    iput-object v1, p0, Lcom/aide/ui/build/OutputConsoleActivity;->FH:Lcom/aide/ui/build/OutputConsole;

    invoke-direct {p0}, Lcom/aide/ui/build/OutputConsoleActivity;->Zo()Z

    move-result v3

    invoke-virtual {v1, v0, v3}, Lcom/aide/ui/build/OutputConsole;->j6(ZZ)V

    invoke-direct {p0}, Lcom/aide/ui/build/OutputConsoleActivity;->Zo()Z

    move-result v0

    if-eqz v0, :cond_e9

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "EXTRA_TRAINER_HEADER_ICON"

    const v4, 0x7f070076

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "EXTRA_HEADER"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/aide/common/Za;->j6(Landroid/app/ActionBar;I[Ljava/lang/String;)V

    new-instance v0, Landroid/media/SoundPool;

    const/4 v1, 0x3

    const/4 v3, 0x0

    invoke-direct {v0, v2, v1, v3}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/aide/ui/build/OutputConsoleActivity;->v5:Landroid/media/SoundPool;

    const v1, 0x7f0c0004

    invoke-virtual {v0, p0, v1, v2}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/aide/ui/build/OutputConsoleActivity;->Zo:I

    iget-object v0, p0, Lcom/aide/ui/build/OutputConsoleActivity;->v5:Landroid/media/SoundPool;

    const v1, 0x7f0c0001

    invoke-virtual {v0, p0, v1, v2}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/aide/ui/build/OutputConsoleActivity;->VH:I

    new-instance v0, Lcom/aide/common/TextToSpeechHelper;

    invoke-direct {v0, p0}, Lcom/aide/common/TextToSpeechHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/aide/ui/build/OutputConsoleActivity;->gn:Lcom/aide/common/TextToSpeechHelper;

    goto :goto_fd

    :cond_e9
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {p0}, Lcom/aide/ui/build/OutputConsoleActivity;->FH()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setIcon(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const-string v1, "Program Output"

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :goto_fd
    invoke-direct {p0}, Lcom/aide/ui/build/OutputConsoleActivity;->u7()V
    :try_end_100
    .catchall {:try_start_a .. :try_end_100} :catchall_101

    return-void

    :catchall_101
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/OutputConsoleActivity;->DW:Z

    if-eqz v1, :cond_109

    invoke-static {v0, v7, v8, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_109
    throw v0
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x41313317fa5166d4L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/OutputConsoleActivity;->j6:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x1fb56c3a97dafef1L  # 6.241340275905042E-156

    invoke-static {v1, v2, p0, v0, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    invoke-static {p0, p1}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;I)Landroid/app/Dialog;

    move-result-object p1
    :try_end_15
    .catchall {:try_start_0 .. :try_end_15} :catchall_16

    return-object p1

    :catchall_16
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/OutputConsoleActivity;->DW:Z

    if-eqz v1, :cond_2b

    const-wide v2, 0x1fb56c3a97dafef1L  # 6.241340275905042E-156

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
        method = -0x28492d8af738a80dL
    .end annotation

    const-wide v0, 0x1e121d41455c4f80L

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/OutputConsoleActivity;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v2, p0, Lcom/aide/ui/build/OutputConsoleActivity;->gn:Lcom/aide/common/TextToSpeechHelper;

    if-eqz v2, :cond_16

    invoke-virtual {v2}, Lcom/aide/common/TextToSpeechHelper;->j6()V
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_17

    :cond_16
    return-void

    :catchall_17
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/OutputConsoleActivity;->DW:Z

    if-eqz v3, :cond_1f

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1f
    throw v2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 6

    const-wide v0, 0x1f2f8c00bc1ca44dL  # 1.795100604095824E-158

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/OutputConsoleActivity;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x102002c

    if-ne v2, v3, :cond_1a

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/4 p1, 0x1

    return p1

    :cond_1a
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1
    :try_end_1e
    .catchall {:try_start_5 .. :try_end_1e} :catchall_1f

    return p1

    :catchall_1f
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/OutputConsoleActivity;->DW:Z

    if-eqz v3, :cond_27

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_27
    throw v2
.end method

.method protected abstract v5()V
.end method
