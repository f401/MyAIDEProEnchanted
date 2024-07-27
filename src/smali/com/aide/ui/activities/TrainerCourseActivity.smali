.class public Lcom/aide/ui/activities/TrainerCourseActivity;
.super Landroid/app/Activity;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aide/ui/activities/TrainerCourseActivity$a;
    }
.end annotation


# static fields
.field private static DW:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field

.field private static FH:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field private static j6:Z
    .annotation runtime Labcd/ru;
        field = -0x4c092971464e708L
    .end annotation
.end field


# instance fields
.field private Hw:Landroid/support/v4/app/a;
    .annotation runtime Labcd/ru;
        field = -0x24301887dfa31afL
    .end annotation
.end field

.field private VH:Lcom/aide/ui/trainer/g$i;
    .annotation runtime Labcd/ru;
        field = -0x1a3ae9599ac3cf85L
    .end annotation
.end field

.field private Zo:Ljava/util/List;
    .annotation runtime Labcd/ru;
        field = 0x333407fd363661e9L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aide/ui/trainer/g$c;",
            ">;"
        }
    .end annotation
.end field

.field private gn:Z
    .annotation runtime Labcd/ru;
        field = 0x2114cd8f188e92d0L
    .end annotation
.end field

.field private tp:I
    .annotation runtime Labcd/ru;
        field = -0x8e41289980028cdL
    .end annotation
.end field

.field private u7:Z
    .annotation runtime Labcd/ru;
        field = -0x33d5defa4438e35L
    .end annotation
.end field

.field private v5:Lcom/aide/ui/trainer/g$c;
    .annotation runtime Labcd/ru;
        field = -0x3478f6f0c2ad36e8L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide v2, 0x2f3f02722eb6ac58L    # 4.086360808607656E-81

    const-class v0, Lcom/aide/ui/activities/TrainerCourseActivity;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 7

    const-wide v4, -0x4c01aacbf085e43L

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/activities/TrainerCourseActivity;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x4c01aacbf085e43L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/activities/TrainerCourseActivity;->FH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method private DW()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x1b910f403059785fL
    .end annotation

    const-wide v2, 0x3fb40aea7e610c8L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/activities/TrainerCourseActivity;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x3fb40aea7e610c8L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    const v0, 0x7f080197

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/View;->requestFocus(I)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/activities/TrainerCourseActivity;->FH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method static synthetic DW(Lcom/aide/ui/activities/TrainerCourseActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/aide/ui/activities/TrainerCourseActivity;->v5()V

    return-void
.end method

.method static synthetic DW(Lcom/aide/ui/activities/TrainerCourseActivity;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/aide/ui/activities/TrainerCourseActivity;->u7:Z

    return p1
.end method

.method private FH()Z
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x18ad5805073a6101L
    .end annotation

    const-wide v2, 0xb258a39a1cfc858L    # 5.73823339644301E-255

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/activities/TrainerCourseActivity;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, 0xb258a39a1cfc858L    # 5.73823339644301E-255

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-static {p0}, Lcom/aide/common/g;->J8(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/aide/common/g;->j6()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/activities/TrainerCourseActivity;->FH:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_3
    throw v0
.end method

.method static synthetic FH(Lcom/aide/ui/activities/TrainerCourseActivity;)Z
    .registers 2

    invoke-direct {p0}, Lcom/aide/ui/activities/TrainerCourseActivity;->FH()Z

    move-result v0

    return v0
.end method

.method private Hw()V
    .registers 11
    .annotation runtime Labcd/su;
        method = -0x6cf32eb246a45200L
    .end annotation

    const-wide v8, -0x439a27ba5127f925L    # -9.473677605397935E-18

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/activities/TrainerCourseActivity;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x439a27ba5127f925L    # -9.473677605397935E-18

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/aide/ui/activities/TrainerCourseActivity;->v5:Lcom/aide/ui/trainer/g$c;

    invoke-virtual {v0}, Lcom/aide/ui/trainer/g$c;->VH()I

    move-result v0

    if-lez v0, :cond_6

    const v0, 0x7f0d064c

    invoke-direct {p0, v6, v7, v0}, Lcom/aide/ui/activities/TrainerCourseActivity;->j6(Ljava/util/List;Ljava/util/List;I)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-static {}, Lcom/aide/ui/U;->U2()Labcd/Ek;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Ek;->u7()Z

    move-result v5

    const/4 v3, 0x0

    :goto_0
    iget-object v0, p0, Lcom/aide/ui/activities/TrainerCourseActivity;->v5:Lcom/aide/ui/trainer/g$c;

    invoke-virtual {v0}, Lcom/aide/ui/trainer/g$c;->VH()I

    move-result v0

    if-ge v3, v0, :cond_6

    iget-object v0, p0, Lcom/aide/ui/activities/TrainerCourseActivity;->v5:Lcom/aide/ui/trainer/g$c;

    invoke-virtual {v0, v3}, Lcom/aide/ui/trainer/g$c;->j6(I)Lcom/aide/ui/trainer/g$i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/trainer/g$i;->tp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    add-int/lit8 v0, v3, 0x1

    :goto_1
    iget-object v4, p0, Lcom/aide/ui/activities/TrainerCourseActivity;->v5:Lcom/aide/ui/trainer/g$c;

    invoke-virtual {v4}, Lcom/aide/ui/trainer/g$c;->VH()I

    move-result v4

    if-ge v0, v4, :cond_1

    iget-object v4, p0, Lcom/aide/ui/activities/TrainerCourseActivity;->v5:Lcom/aide/ui/trainer/g$c;

    invoke-virtual {v4, v0}, Lcom/aide/ui/trainer/g$c;->j6(I)Lcom/aide/ui/trainer/g$i;

    move-result-object v4

    invoke-virtual {v4}, Lcom/aide/ui/trainer/g$i;->tp()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_5

    :cond_1
    if-eqz v3, :cond_2

    invoke-direct {p0, v1}, Lcom/aide/ui/activities/TrainerCourseActivity;->j6(Landroid/widget/LinearLayout;)V

    :cond_2
    invoke-direct {p0, v1, v2}, Lcom/aide/ui/activities/TrainerCourseActivity;->j6(Landroid/widget/LinearLayout;Ljava/lang/String;)V

    if-nez v3, :cond_3

    invoke-direct {p0, v1}, Lcom/aide/ui/activities/TrainerCourseActivity;->j6(Landroid/widget/LinearLayout;)V

    :cond_3
    add-int/lit8 v4, v0, -0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/aide/ui/activities/TrainerCourseActivity;->j6(Landroid/widget/LinearLayout;Ljava/lang/String;IIZ)V

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    const v0, 0x7f080197

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/aide/ui/activities/TrainerCourseActivity$a;

    invoke-direct {v1, p0, v6, v7}, Lcom/aide/ui/activities/TrainerCourseActivity$a;-><init>(Lcom/aide/ui/activities/TrainerCourseActivity;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/o;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/activities/TrainerCourseActivity;->FH:Z

    if-eqz v1, :cond_7

    invoke-static {v0, v8, v9, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_7
    throw v0
.end method

.method static synthetic Hw(Lcom/aide/ui/activities/TrainerCourseActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/aide/ui/activities/TrainerCourseActivity;->VH()V

    return-void
.end method

.method private VH()V
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x15276506d842f975L
    .end annotation

    const-wide v4, -0x2a6a4264285c07d0L    # -1.947741086774069E104

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/activities/TrainerCourseActivity;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x2a6a4264285c07d0L    # -1.947741086774069E104

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/aide/ui/activities/Y;

    invoke-direct {v1, p0}, Lcom/aide/ui/activities/Y;-><init>(Lcom/aide/ui/activities/TrainerCourseActivity;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/activities/TrainerCourseActivity;->FH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method private Zo()V
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x138bee2bb5f3efa1L
    .end annotation

    const-wide v4, 0xb296867727249f4L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/activities/TrainerCourseActivity;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, 0xb296867727249f4L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/aide/ui/activities/TrainerCourseActivity;->v5:Lcom/aide/ui/trainer/g$c;

    invoke-virtual {v1}, Lcom/aide/ui/trainer/g$c;->Hw()I

    move-result v1

    iget-object v2, p0, Lcom/aide/ui/activities/TrainerCourseActivity;->v5:Lcom/aide/ui/trainer/g$c;

    invoke-virtual {v2}, Lcom/aide/ui/trainer/g$c;->J0()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/aide/common/Za;->j6(Landroid/app/ActionBar;I[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/activities/TrainerCourseActivity;->FH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method private j6(Landroid/content/Context;)I
    .registers 6
    .annotation runtime Labcd/su;
        method = -0xc826378395b1b71L
    .end annotation

    const-wide v2, -0x2b8babec6b0454ecL    # -6.947399950601571E98

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/activities/TrainerCourseActivity;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x2b8babec6b0454ecL    # -6.947399950601571E98

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-static {p1}, Lcom/aide/common/g;->Hw(Landroid/content/Context;)F
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    const/high16 v1, 0x44070000    # 540.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/activities/TrainerCourseActivity;->FH:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method private j6(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZLandroid/view/View$OnClickListener;)Landroid/view/View;
    .registers 16
    .annotation runtime Labcd/su;
        method = 0x608a538d2c5ba75L
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/activities/TrainerCourseActivity;->DW:Z

    if-eqz v0, :cond_0

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p4}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v0, 0x41ab5271c65d828L

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v7, p5

    invoke-static/range {v0 .. v7}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0a004c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    const v0, 0x7f08019c

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f08019b

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f08019a

    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f080199

    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-static {p0}, Lcom/aide/common/g;->VH(Landroid/content/Context;)F

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-static {p0}, Lcom/aide/common/g;->u7(Landroid/content/Context;)F

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-static {p0}, Lcom/aide/common/g;->v5(Landroid/content/Context;)F

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p4, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    const v0, 0x7f080198

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080198

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/aide/ui/activities/V;

    invoke-direct {v1, p0, v4}, Lcom/aide/ui/activities/V;-><init>(Lcom/aide/ui/activities/TrainerCourseActivity;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    :cond_1
    const/16 v0, 0x8

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/activities/TrainerCourseActivity;->FH:Z

    if-eqz v0, :cond_2

    const-wide v2, 0x41ab5271c65d828L

    new-instance v8, Ljava/lang/Boolean;

    invoke-direct {v8, p4}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v9, p5

    invoke-static/range {v1 .. v9}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1
.end method

.method private j6(Ljava/util/List;Ljava/util/List;I)Landroid/widget/LinearLayout;
    .registers 14
    .annotation runtime Labcd/su;
        method = -0x1017039ba315c930L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)",
            "Landroid/widget/LinearLayout;"
        }
    .end annotation

    const-wide v8, -0x1130cc36982a9b33L    # -5.7747510412052724E225

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/activities/TrainerCourseActivity;->DW:Z

    if-eqz v0, :cond_0

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, -0x1130cc36982a9b33L    # -5.7747510412052724E225

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0a0048

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x7f080186

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/activities/TrainerCourseActivity;->FH:Z

    if-eqz v0, :cond_1

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p3}, Ljava/lang/Integer;-><init>(I)V

    move-wide v2, v8

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method private j6()V
    .registers 5
    .annotation runtime Labcd/su;
        method = 0x5b9ee366cbc400L
    .end annotation

    const-wide v2, 0x1cdaca6de40005fbL

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/activities/TrainerCourseActivity;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x1cdaca6de40005fbL

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    const v0, 0x7f08018b

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout;

    if-eqz v0, :cond_1

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->j6(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/activities/TrainerCourseActivity;->FH:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public static j6(Landroid/app/Activity;)V
    .registers 7

    const-wide v4, -0x1c14ac180b840940L

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/activities/TrainerCourseActivity;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1c14ac180b840940L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/aide/ui/activities/TrainerCourseActivity;->j6(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/activities/TrainerCourseActivity;->FH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public static j6(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 9

    const-wide v2, -0x14ccdf73ca5bf414L    # -2.4563318554106137E208

    const/4 v4, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/activities/TrainerCourseActivity;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x14ccdf73ca5bf414L    # -2.4563318554106137E208

    const/4 v5, 0x0

    invoke-static {v0, v1, v5, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/aide/ui/activities/TrainerCourseActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "EXTRA_COURSE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/activities/TrainerCourseActivity;->FH:Z

    if-eqz v0, :cond_1

    move-object v5, p0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method private j6(Landroid/widget/LinearLayout;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = 0xd03830f7916c931L
    .end annotation

    const-wide v6, 0x877a9eae116cf60L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/activities/TrainerCourseActivity;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x877a9eae116cf60L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x41200000    # 10.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x40a00000    # 5.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x42700000    # 60.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const v4, 0x7f070037

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v3, v0, v1, v0, v1}, Landroid/widget/ImageView;->setPadding(IIII)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v0, v1, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {p1, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/activities/TrainerCourseActivity;->FH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v6, v7, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method private j6(Landroid/widget/LinearLayout;Ljava/lang/String;)V
    .registers 11
    .annotation runtime Labcd/su;
        method = -0x198266daff732548L
    .end annotation

    const-wide v2, -0x24f52aeb153f2c6dL    # -3.71986224132367E130

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/activities/TrainerCourseActivity;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x24f52aeb153f2c6dL    # -3.71986224132367E130

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x41200000    # 10.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v4, 0x40a00000    # 5.0f

    mul-float/2addr v1, v4

    float-to-int v1, v1

    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    invoke-static {p0}, Lcom/aide/common/g;->u7(Landroid/content/Context;)F

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v4, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v5, -0x777778

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-direct {v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v0, v1, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {p1, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/activities/TrainerCourseActivity;->FH:Z

    if-eqz v0, :cond_1

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method private j6(Landroid/widget/LinearLayout;Ljava/lang/String;IIZ)V
    .registers 19
    .annotation runtime Labcd/su;
        method = -0x3a9e3eadb3b9c850L
    .end annotation

    :try_start_0
    sget-boolean v2, Lcom/aide/ui/activities/TrainerCourseActivity;->DW:Z

    if-eqz v2, :cond_0

    new-instance v7, Ljava/lang/Integer;

    move/from16 v0, p3

    invoke-direct {v7, v0}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    move/from16 v0, p4

    invoke-direct {v8, v0}, Ljava/lang/Integer;-><init>(I)V

    new-instance v9, Ljava/lang/Boolean;

    move/from16 v0, p5

    invoke-direct {v9, v0}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v2, -0x15b4e5acc116015bL    # -1.0621889194391645E204

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v2 .. v9}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    new-instance v10, Landroid/widget/LinearLayout;

    invoke-direct {v10, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p1, v10, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v10}, Landroid/widget/LinearLayout;->removeAllViews()V

    const/4 v2, 0x0

    move v8, v2

    :goto_0
    iget v2, p0, Lcom/aide/ui/activities/TrainerCourseActivity;->tp:I

    if-ge v8, v2, :cond_8

    new-instance v11, Landroid/widget/LinearLayout;

    invoke-direct {v11, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    invoke-virtual {v11, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v2, 0x0

    invoke-virtual {v11, v2}, Landroid/widget/LinearLayout;->setClipChildren(Z)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v10, v11, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int v2, v8, p3

    move v9, v2

    :goto_1
    move/from16 v0, p4

    if-gt v9, v0, :cond_6

    iget-object v2, p0, Lcom/aide/ui/activities/TrainerCourseActivity;->v5:Lcom/aide/ui/trainer/g$c;

    invoke-virtual {v2, v9}, Lcom/aide/ui/trainer/g$c;->j6(I)Lcom/aide/ui/trainer/g$i;

    move-result-object v12

    invoke-virtual {v12}, Lcom/aide/ui/trainer/g$i;->EQ()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/aide/ui/U;->SI()Labcd/Cl;

    move-result-object v2

    invoke-virtual {v2, v12}, Labcd/Cl;->DW(Lcom/aide/ui/trainer/g$i;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/aide/ui/U;->SI()Labcd/Cl;

    move-result-object v3

    invoke-virtual {v3, v12}, Labcd/Cl;->j6(Lcom/aide/ui/trainer/g$i;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_1
    invoke-virtual {v12}, Lcom/aide/ui/trainer/g$i;->v5()I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    const/4 v4, 0x2

    if-gt v2, v4, :cond_2

    const-string v2, "x min"

    :goto_2
    :try_start_2
    invoke-static {}, Lcom/aide/ui/U;->SI()Labcd/Cl;

    move-result-object v4

    invoke-virtual {v4, v12}, Labcd/Cl;->DW(Lcom/aide/ui/trainer/g$i;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move-result v4

    if-eqz v4, :cond_3

    const-string v5, " \u2714"

    :goto_3
    :try_start_3
    invoke-virtual {v12}, Lcom/aide/ui/trainer/g$i;->Hw()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-static {}, Lcom/aide/ui/U;->SI()Labcd/Cl;

    move-result-object v2

    invoke-virtual {v2, v12}, Labcd/Cl;->Hw(Lcom/aide/ui/trainer/g$i;)Z

    move-result v6

    new-instance v7, Lcom/aide/ui/activities/Z;

    invoke-direct {v7, p0, v12}, Lcom/aide/ui/activities/Z;-><init>(Lcom/aide/ui/activities/TrainerCourseActivity;Lcom/aide/ui/trainer/g$i;)V

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/aide/ui/activities/TrainerCourseActivity;->j6(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZLandroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v11, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget v2, p0, Lcom/aide/ui/activities/TrainerCourseActivity;->tp:I

    add-int/2addr v2, v9

    move v9, v2

    goto :goto_1

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12}, Lcom/aide/ui/trainer/g$i;->v5()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " min"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_3
    if-nez p5, :cond_4

    invoke-virtual {v12}, Lcom/aide/ui/trainer/g$i;->J0()Z

    move-result v4

    if-nez v4, :cond_5

    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u27a5 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u27a5 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " \ud83d\udd12"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v5

    goto :goto_3

    :cond_6
    add-int/lit8 v2, v8, 0x1

    move v8, v2

    goto/16 :goto_0

    :catch_0
    move-exception v3

    :goto_4
    sget-boolean v2, Lcom/aide/ui/activities/TrainerCourseActivity;->FH:Z

    if-eqz v2, :cond_7

    const-wide v4, -0x15b4e5acc116015bL    # -1.0621889194391645E204

    new-instance v9, Ljava/lang/Integer;

    move/from16 v0, p3

    invoke-direct {v9, v0}, Ljava/lang/Integer;-><init>(I)V

    new-instance v10, Ljava/lang/Integer;

    move/from16 v0, p4

    invoke-direct {v10, v0}, Ljava/lang/Integer;-><init>(I)V

    new-instance v11, Ljava/lang/Boolean;

    move/from16 v0, p5

    invoke-direct {v11, v0}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v6, p0

    move-object v7, p1

    move-object v8, p2

    invoke-static/range {v3 .. v11}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_7
    throw v3

    :cond_8
    return-void

    :catch_1
    move-exception v3

    goto :goto_4
.end method

.method private j6(Landroid/widget/LinearLayout;Ljava/util/List;)V
    .registers 14
    .annotation runtime Labcd/su;
        method = -0x3090a2c051dfc613L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/LinearLayout;",
            "Ljava/util/List",
            "<",
            "Labcd/Sk$a;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/activities/TrainerCourseActivity;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x378b7c00eaa1d258L    # -1.1169761079932318E41

    invoke-static {v0, v1, p0, p1, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    new-instance v8, Landroid/widget/LinearLayout;

    invoke-direct {v8, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v8, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x0

    move v6, v0

    :goto_0
    iget v0, p0, Lcom/aide/ui/activities/TrainerCourseActivity;->tp:I

    if-ge v6, v0, :cond_3

    new-instance v9, Landroid/widget/LinearLayout;

    invoke-direct {v9, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->setClipChildren(Z)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v8, v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move v7, v6

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v7, v0, :cond_1

    invoke-interface {p2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/Sk$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/aide/ui/activities/TrainerCourseActivity;->v5:Lcom/aide/ui/trainer/g$c;

    invoke-virtual {v2}, Lcom/aide/ui/trainer/g$c;->DW()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".<br/><br/><b>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Labcd/Sk$a;->VH:Labcd/Sk$b;

    iget-object v2, v2, Labcd/Sk$b;->FH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "</b>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0d05ce

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v10, v0, Labcd/Sk$a;->DW:Ljava/lang/String;

    aput-object v10, v4, v5

    invoke-virtual {v1, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u27a5 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0625

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/aide/ui/activities/X;

    invoke-direct {v5, p0, v0}, Lcom/aide/ui/activities/X;-><init>(Lcom/aide/ui/activities/TrainerCourseActivity;Labcd/Sk$a;)V

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/aide/ui/activities/TrainerCourseActivity;->j6(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZLandroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget v0, p0, Lcom/aide/ui/activities/TrainerCourseActivity;->tp:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v0, v7

    move v7, v0

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/activities/TrainerCourseActivity;->FH:Z

    if-eqz v0, :cond_2

    const-wide v2, -0x378b7c00eaa1d258L    # -1.1169761079932318E41

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v1

    :cond_3
    return-void
.end method

.method private j6(Landroid/widget/LinearLayout;Ljava/util/List;Z)V
    .registers 16
    .annotation runtime Labcd/su;
        method = 0x6c5e7012833d8320L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/LinearLayout;",
            "Ljava/util/List",
            "<",
            "Lcom/aide/ui/trainer/g$j;",
            ">;Z)V"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/activities/TrainerCourseActivity;->DW:Z

    if-eqz v0, :cond_0

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p3}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v0, -0x4edeb29da575dc25L    # -4.896372287343279E-72

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    new-instance v8, Landroid/widget/LinearLayout;

    invoke-direct {v8, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p1, v8, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x0

    move v6, v0

    :goto_0
    iget v0, p0, Lcom/aide/ui/activities/TrainerCourseActivity;->tp:I

    if-ge v6, v0, :cond_6

    new-instance v9, Landroid/widget/LinearLayout;

    invoke-direct {v9, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->setClipChildren(Z)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v8, v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move v7, v6

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v7, v0, :cond_4

    invoke-interface {p2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aide/ui/trainer/g$j;

    invoke-static {}, Lcom/aide/ui/U;->BT()Labcd/el;

    move-result-object v1

    invoke-virtual {v1, v0}, Labcd/el;->DW(Lcom/aide/ui/trainer/g$j;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    if-eqz v1, :cond_2

    const-string v3, "\u27a5"

    :goto_2
    if-nez p3, :cond_1

    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " \ud83d\udd12"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/aide/ui/trainer/g$j;->VH()J

    move-result-wide v10

    sub-long/2addr v4, v10

    const-wide v10, 0x134fd9000L

    cmp-long v2, v4, v10

    if-gez v2, :cond_3

    if-nez v1, :cond_3

    const/4 v4, 0x1

    :goto_3
    invoke-virtual {v0}, Lcom/aide/ui/trainer/g$j;->gn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/aide/ui/trainer/g$j;->FH()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/aide/ui/activities/U;

    invoke-direct {v5, p0, v0}, Lcom/aide/ui/activities/U;-><init>(Lcom/aide/ui/activities/TrainerCourseActivity;Lcom/aide/ui/trainer/g$j;)V

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/aide/ui/activities/TrainerCourseActivity;->j6(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZLandroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget v0, p0, Lcom/aide/ui/activities/TrainerCourseActivity;->tp:I

    add-int/2addr v0, v7

    move v7, v0

    goto :goto_1

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u27a5 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0628

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v3

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    goto :goto_3

    :cond_4
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    :goto_4
    sget-boolean v0, Lcom/aide/ui/activities/TrainerCourseActivity;->FH:Z

    if-eqz v0, :cond_5

    const-wide v2, -0x4edeb29da575dc25L    # -4.896372287343279E-72

    new-instance v7, Ljava/lang/Boolean;

    invoke-direct {v7, p3}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5
    throw v1

    :cond_6
    return-void

    :catch_1
    move-exception v1

    goto :goto_4
.end method

.method static synthetic j6(Lcom/aide/ui/activities/TrainerCourseActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/aide/ui/activities/TrainerCourseActivity;->DW()V

    return-void
.end method

.method static synthetic j6(Lcom/aide/ui/activities/TrainerCourseActivity;Lcom/aide/ui/trainer/g$i;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/aide/ui/activities/TrainerCourseActivity;->j6(Lcom/aide/ui/trainer/g$i;Z)V

    return-void
.end method

.method static synthetic j6(Lcom/aide/ui/activities/TrainerCourseActivity;Lcom/aide/ui/trainer/g$j;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/aide/ui/activities/TrainerCourseActivity;->j6(Lcom/aide/ui/trainer/g$j;)V

    return-void
.end method

.method private j6(Lcom/aide/ui/trainer/g$i;Z)V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x16a7cfdc1e742ba0L
    .end annotation

    const-wide v2, -0x139c00c67f03917L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/activities/TrainerCourseActivity;->DW:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p2}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v4, -0x139c00c67f03917L

    invoke-static {v4, v5, p0, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    invoke-static {}, Lcom/aide/ui/U;->SI()Labcd/Cl;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Labcd/Cl;->j6(Lcom/aide/ui/trainer/g$i;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/activities/TrainerCourseActivity;->FH:Z

    if-eqz v0, :cond_1

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p2}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method private j6(Lcom/aide/ui/trainer/g$j;)V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x14b64c4e60270329L
    .end annotation

    const-wide v6, 0x15779d1fa398bd80L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/activities/TrainerCourseActivity;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x15779d1fa398bd80L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/ui/U;->U2()Labcd/Ek;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Ek;->u7()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/aide/ui/U;->U2()Labcd/Ek;

    move-result-object v0

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "selectSample:"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/aide/ui/trainer/g$j;->gn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    const v3, 0x7f0d0613

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Labcd/Ek;->j6(Landroid/app/Activity;IILjava/lang/String;Z)V

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/aide/ui/U;->BT()Labcd/el;

    move-result-object v0

    new-instance v1, Lcom/aide/ui/activities/ia;

    invoke-direct {v1, p0}, Lcom/aide/ui/activities/ia;-><init>(Lcom/aide/ui/activities/TrainerCourseActivity;)V

    invoke-virtual {v0, p0, p1, v1}, Labcd/el;->j6(Landroid/app/Activity;Lcom/aide/ui/trainer/g$j;Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/activities/TrainerCourseActivity;->FH:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v6, v7, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method static synthetic j6(Lcom/aide/ui/activities/TrainerCourseActivity;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/aide/ui/activities/TrainerCourseActivity;->gn:Z

    return p1
.end method

.method private v5()V
    .registers 13
    .annotation runtime Labcd/su;
        method = -0x107b4e9aeac5c410L
    .end annotation

    const-wide v10, -0x3208f2827e69eabL    # -3.137540153564767E293

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/activities/TrainerCourseActivity;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x3208f2827e69eabL    # -3.137540153564767E293

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    const v0, 0x7f08018c

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/aide/ui/activities/TrainerCourseActivity;->Zo:Ljava/util/List;

    iget-boolean v2, p0, Lcom/aide/ui/activities/TrainerCourseActivity;->gn:Z

    iget-boolean v3, p0, Lcom/aide/ui/activities/TrainerCourseActivity;->u7:Z

    new-instance v4, Lcom/aide/ui/activities/ca;

    invoke-direct {v4, p0}, Lcom/aide/ui/activities/ca;-><init>(Lcom/aide/ui/activities/TrainerCourseActivity;)V

    new-instance v5, Lcom/aide/ui/activities/da;

    invoke-direct {v5, p0}, Lcom/aide/ui/activities/da;-><init>(Lcom/aide/ui/activities/TrainerCourseActivity;)V

    new-instance v6, Lcom/aide/ui/activities/ea;

    invoke-direct {v6, p0}, Lcom/aide/ui/activities/ea;-><init>(Lcom/aide/ui/activities/TrainerCourseActivity;)V

    new-instance v7, Lcom/aide/ui/activities/ga;

    invoke-direct {v7, p0}, Lcom/aide/ui/activities/ga;-><init>(Lcom/aide/ui/activities/TrainerCourseActivity;)V

    new-instance v8, Lcom/aide/ui/activities/ha;

    invoke-direct {v8, p0}, Lcom/aide/ui/activities/ha;-><init>(Lcom/aide/ui/activities/TrainerCourseActivity;)V

    invoke-static/range {v0 .. v8}, Lcom/aide/ui/trainer/n;->j6(Landroid/widget/LinearLayout;Ljava/util/List;ZZLcom/aide/common/ab;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/activities/TrainerCourseActivity;->FH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v10, v11, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method


# virtual methods
.method protected j6(Lcom/aide/ui/trainer/g$c;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x16f6716af693fb74L
    .end annotation

    const-wide v2, 0x85f6f134950884fL

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/activities/TrainerCourseActivity;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x85f6f134950884fL

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/activities/TrainerCourseActivity;->v5:Lcom/aide/ui/trainer/g$c;

    invoke-virtual {p1, v0}, Lcom/aide/ui/trainer/g$c;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iput-object p1, p0, Lcom/aide/ui/activities/TrainerCourseActivity;->v5:Lcom/aide/ui/trainer/g$c;

    invoke-direct {p0}, Lcom/aide/ui/activities/TrainerCourseActivity;->Hw()V

    invoke-direct {p0}, Lcom/aide/ui/activities/TrainerCourseActivity;->Zo()V

    :cond_1
    invoke-direct {p0}, Lcom/aide/ui/activities/TrainerCourseActivity;->j6()V

    invoke-direct {p0}, Lcom/aide/ui/activities/TrainerCourseActivity;->DW()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/activities/TrainerCourseActivity;->FH:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method protected j6(Lcom/aide/ui/trainer/g$i;)V
    .registers 12
    .annotation runtime Labcd/su;
        method = -0x22b88a4de890c90fL
    .end annotation

    const-wide v8, 0x1b60b2f250fd9910L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/activities/TrainerCourseActivity;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x1b60b2f250fd9910L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p1}, Lcom/aide/ui/trainer/g$i;->J0()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/aide/ui/U;->U2()Labcd/Ek;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Ek;->u7()Z

    move-result v0

    if-nez v0, :cond_1

    iput-object p1, p0, Lcom/aide/ui/activities/TrainerCourseActivity;->VH:Lcom/aide/ui/trainer/g$i;

    invoke-static {}, Lcom/aide/ui/U;->U2()Labcd/Ek;

    move-result-object v0

    invoke-static {}, Lcom/aide/ui/U;->lg()Lcom/aide/ui/MainActivity;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "selectLesson:"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/aide/ui/trainer/g$i;->Zo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    const v3, 0x7f0d060f

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Labcd/Ek;->j6(Landroid/app/Activity;IILjava/lang/String;Z)V

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/aide/ui/U;->SI()Labcd/Cl;

    move-result-object v0

    invoke-virtual {v0, p1}, Labcd/Cl;->FH(Lcom/aide/ui/trainer/g$i;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0642

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0d0644

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0d0641

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/aide/ui/activities/ja;

    invoke-direct {v4, p0, p1}, Lcom/aide/ui/activities/ja;-><init>(Lcom/aide/ui/activities/TrainerCourseActivity;Lcom/aide/ui/trainer/g$i;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x7f0d0626

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/aide/ui/activities/T;

    invoke-direct {v6, p0, p1}, Lcom/aide/ui/activities/T;-><init>(Lcom/aide/ui/activities/TrainerCourseActivity;Lcom/aide/ui/trainer/g$i;)V

    const/4 v7, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/activities/TrainerCourseActivity;->FH:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v8, v9, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0

    :cond_3
    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0, p1, v0}, Lcom/aide/ui/activities/TrainerCourseActivity;->j6(Lcom/aide/ui/trainer/g$i;Z)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 14
    .annotation runtime Labcd/su;
        method = -0x4cd2e60d36948290L
    .end annotation

    const-wide v8, 0x144e1932a95df69L

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/activities/TrainerCourseActivity;->DW:Z

    if-eqz v0, :cond_0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v0, 0x144e1932a95df69L

    move-object v2, p0

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-static {p0, p1, p2, p3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Object;IILandroid/content/Intent;)V

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/aide/ui/activities/TrainerCourseActivity;->VH:Lcom/aide/ui/trainer/g$i;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aide/ui/activities/TrainerCourseActivity;->VH:Lcom/aide/ui/trainer/g$i;

    invoke-virtual {p0, v0}, Lcom/aide/ui/activities/TrainerCourseActivity;->j6(Lcom/aide/ui/trainer/g$i;)V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aide/ui/activities/TrainerCourseActivity;->VH:Lcom/aide/ui/trainer/g$i;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/activities/TrainerCourseActivity;->FH:Z

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
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 6

    const-wide v2, 0x1b76b03154109bdL

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/activities/TrainerCourseActivity;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x1b76b03154109bdL

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/aide/ui/activities/TrainerCourseActivity;->Hw:Landroid/support/v4/app/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aide/ui/activities/TrainerCourseActivity;->Hw:Landroid/support/v4/app/a;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/a;->j6(Landroid/content/res/Configuration;)V

    :cond_1
    invoke-direct {p0, p0}, Lcom/aide/ui/activities/TrainerCourseActivity;->j6(Landroid/content/Context;)I

    move-result v0

    iget v1, p0, Lcom/aide/ui/activities/TrainerCourseActivity;->tp:I

    if-eq v1, v0, :cond_2

    iput v0, p0, Lcom/aide/ui/activities/TrainerCourseActivity;->tp:I

    invoke-direct {p0}, Lcom/aide/ui/activities/TrainerCourseActivity;->Hw()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/activities/TrainerCourseActivity;->FH:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 12

    const-wide v8, -0x86d218130f557a9L    # -9.734818551408033E267

    const-wide v2, 0x16db5858385L

    :try_start_0
    const-string v4, "androidRelease"

    const-string v5, "https://backbone-direct.appfour.com/project/SvkPQDcCSkSU4JZRRqsTuw/variant/androidRelease/audience/dev/probes.zip"

    const-string v6, "https://backbone-cdn.appfour.com/project/SvkPQDcCSkSU4JZRRqsTuw/variant/androidRelease/audience/public/probes.zip"

    const-string v7, "https://backbone-ingest.appfour.com/api/report/v1alpha1/data/project/SvkPQDcCSkSU4JZRRqsTuw"

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Object;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/aide/ui/activities/TrainerCourseActivity;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x86d218130f557a9L    # -9.734818551408033E267

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0e0004

    invoke-static {p0, v0}, Lcom/b;->light(Landroid/app/Activity;I)V

    invoke-direct {p0}, Lcom/aide/ui/activities/TrainerCourseActivity;->FH()Z

    move-result v0

    if-eqz v0, :cond_5

    const v0, 0x7f0a004e

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aide/ui/activities/TrainerCourseActivity;->gn:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aide/ui/activities/TrainerCourseActivity;->u7:Z

    invoke-static {}, Lcom/aide/ui/U;->SI()Labcd/Cl;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Cl;->v5()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "XML Error"

    invoke-static {}, Lcom/aide/ui/U;->SI()Labcd/Cl;

    move-result-object v1

    invoke-virtual {v1}, Labcd/Cl;->v5()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "EXTRA_COURSE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/aide/ui/U;->SI()Labcd/Cl;

    move-result-object v1

    invoke-virtual {v1}, Labcd/Cl;->Zo()Lcom/aide/ui/trainer/g$a;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/aide/ui/U;->SI()Labcd/Cl;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Cl;->Zo()Lcom/aide/ui/trainer/g$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/trainer/g$c;->v5()Ljava/lang/String;

    move-result-object v0

    :cond_2
    invoke-static {}, Lcom/aide/ui/U;->SI()Labcd/Cl;

    move-result-object v1

    invoke-virtual {v1}, Labcd/Cl;->DW()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/aide/ui/activities/TrainerCourseActivity;->Zo:Ljava/util/List;

    invoke-static {}, Lcom/aide/ui/U;->SI()Labcd/Cl;

    move-result-object v1

    invoke-virtual {v1, v0}, Labcd/Cl;->j6(Ljava/lang/String;)Lcom/aide/ui/trainer/g$c;

    move-result-object v0

    iput-object v0, p0, Lcom/aide/ui/activities/TrainerCourseActivity;->v5:Lcom/aide/ui/trainer/g$c;

    iget-object v0, p0, Lcom/aide/ui/activities/TrainerCourseActivity;->v5:Lcom/aide/ui/trainer/g$c;

    if-nez v0, :cond_3

    invoke-static {}, Lcom/aide/ui/U;->SI()Labcd/Cl;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Cl;->aM()Lcom/aide/ui/trainer/g$c;

    move-result-object v0

    iput-object v0, p0, Lcom/aide/ui/activities/TrainerCourseActivity;->v5:Lcom/aide/ui/trainer/g$c;

    :cond_3
    invoke-direct {p0}, Lcom/aide/ui/activities/TrainerCourseActivity;->FH()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    :goto_1
    invoke-direct {p0, p0}, Lcom/aide/ui/activities/TrainerCourseActivity;->j6(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/aide/ui/activities/TrainerCourseActivity;->tp:I

    invoke-direct {p0}, Lcom/aide/ui/activities/TrainerCourseActivity;->v5()V

    invoke-direct {p0}, Lcom/aide/ui/activities/TrainerCourseActivity;->Hw()V

    invoke-direct {p0}, Lcom/aide/ui/activities/TrainerCourseActivity;->Zo()V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "EXTRA_COURSE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/aide/ui/activities/TrainerCourseActivity;->v5:Lcom/aide/ui/trainer/g$c;

    invoke-virtual {v0}, Lcom/aide/ui/trainer/g$c;->VH()I

    move-result v0

    if-lez v0, :cond_4

    const v0, 0x7f080197

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    :cond_4
    return-void

    :cond_5
    const v0, 0x7f0a0046

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/activities/TrainerCourseActivity;->FH:Z

    if-eqz v1, :cond_6

    invoke-static {v0, v8, v9, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_6
    throw v0

    :cond_7
    const v0, 0x7f08018b

    :try_start_1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v4/widget/DrawerLayout;

    new-instance v0, Landroid/support/v4/app/a;

    const v3, 0x7f070050

    const v4, 0x104000a

    const v5, 0x104000a

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/app/a;-><init>(Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;III)V

    iput-object v0, p0, Lcom/aide/ui/activities/TrainerCourseActivity;->Hw:Landroid/support/v4/app/a;

    new-instance v0, Lcom/aide/ui/activities/aa;

    invoke-direct {v0, p0, v2}, Lcom/aide/ui/activities/aa;-><init>(Lcom/aide/ui/activities/TrainerCourseActivity;Landroid/support/v4/widget/DrawerLayout;)V

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/aide/ui/activities/TrainerCourseActivity;->Hw:Landroid/support/v4/app/a;

    invoke-virtual {v2, v0}, Landroid/support/v4/widget/DrawerLayout;->setDrawerListener(Landroid/support/v4/widget/DrawerLayout$c;)V

    const v0, 0x7f080192

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {p0}, Lcom/aide/common/g;->DW(Landroid/content/Context;)F

    move-result v1

    const/high16 v3, 0x43fa0000    # 500.0f

    cmpl-float v1, v1, v3

    if-ltz v1, :cond_8

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    const/high16 v4, 0x43960000    # 300.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    :cond_8
    sget-boolean v0, Lcom/aide/ui/activities/TrainerCourseActivity;->j6:Z

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/aide/ui/U;->dx()Z

    move-result v0

    if-nez v0, :cond_a

    :cond_9
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "EXTRA_COURSE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    sput-boolean v0, Lcom/aide/ui/activities/TrainerCourseActivity;->j6:Z

    new-instance v0, Lcom/aide/ui/activities/ba;

    invoke-direct {v0, p0, v2}, Lcom/aide/ui/activities/ba;-><init>(Lcom/aide/ui/activities/TrainerCourseActivity;Landroid/support/v4/widget/DrawerLayout;)V

    const-wide/16 v4, 0x12c

    invoke-virtual {v2, v0, v4, v5}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_a
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    invoke-static {p0}, Lcom/aide/common/g;->DW(Landroid/app/Activity;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .registers 10
    .annotation runtime Labcd/su;
        method = 0xc608dea81b0ff4bL
    .end annotation

    const-wide v2, 0x1919c9b8fcac66d0L    # 9.260619088815876E-188

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/activities/TrainerCourseActivity;->DW:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    const-wide v4, 0x1919c9b8fcac66d0L    # 9.260619088815876E-188

    invoke-static {v4, v5, p0, v0, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-static {p0, p1}, Lcom/aide/common/ma;->j6(Landroid/app/Activity;I)Landroid/app/Dialog;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/activities/TrainerCourseActivity;->FH:Z

    if-eqz v0, :cond_1

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 6

    const-wide v2, 0x2b0be849f7db303bL    # 2.492014213891803E-101

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/activities/TrainerCourseActivity;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x2b0be849f7db303bL    # 2.492014213891803E-101

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0b000e

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/activities/TrainerCourseActivity;->FH:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .registers 11

    const-wide v2, -0x5f6536ce6434850L    # -7.281846984837175E279

    const/4 v1, 0x0

    const/4 v0, 0x1

    :try_start_0
    sget-boolean v4, Lcom/aide/ui/activities/TrainerCourseActivity;->DW:Z

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    const-wide v6, -0x5f6536ce6434850L    # -7.281846984837175E279

    invoke-static {v6, v7, p0, v4, p2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v4, p0, Lcom/aide/ui/activities/TrainerCourseActivity;->Hw:Landroid/support/v4/app/a;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/aide/ui/activities/TrainerCourseActivity;->Hw:Landroid/support/v4/app/a;

    invoke-virtual {v4, p2}, Landroid/support/v4/app/a;->j6(Landroid/view/MenuItem;)Z

    move-result v4

    if-eqz v4, :cond_1

    :goto_0
    return v0

    :cond_1
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    const v5, 0x7f08018d

    if-eq v4, v5, :cond_2

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    const v5, 0x7f08018e

    if-ne v4, v5, :cond_5

    :cond_2
    invoke-static {}, Lcom/aide/ui/aa;->J0()Z

    move-result v4

    if-nez v4, :cond_3

    move v1, v0

    :cond_3
    invoke-static {v1}, Lcom/aide/ui/aa;->j6(Z)V

    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-boolean v0, Lcom/aide/ui/activities/TrainerCourseActivity;->FH:Z

    if-eqz v0, :cond_4

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    move-object v4, p0

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    throw v1

    :cond_5
    :try_start_1
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    const v5, 0x7f08018f

    if-eq v4, v5, :cond_6

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    const v5, 0x7f080190

    if-ne v4, v5, :cond_8

    :cond_6
    invoke-static {}, Lcom/aide/ui/aa;->J8()Z

    move-result v4

    if-nez v4, :cond_7

    move v1, v0

    :cond_7
    invoke-static {v1}, Lcom/aide/ui/aa;->DW(Z)V

    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto :goto_0

    :cond_8
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    goto :goto_0
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x22b914bbfe482bc8L
    .end annotation

    const-wide v2, -0x14b7989db55c11e3L    # -6.267945978856808E208

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/activities/TrainerCourseActivity;->DW:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x14b7989db55c11e3L    # -6.267945978856808E208

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onPostCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/aide/ui/activities/TrainerCourseActivity;->Hw:Landroid/support/v4/app/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aide/ui/activities/TrainerCourseActivity;->Hw:Landroid/support/v4/app/a;

    invoke-virtual {v0}, Landroid/support/v4/app/a;->j6()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/activities/TrainerCourseActivity;->FH:Z

    if-eqz v1, :cond_2

    invoke-static {v0, v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    throw v0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 8

    const-wide v4, -0x5af7514cac13c9e0L

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    sget-boolean v2, Lcom/aide/ui/activities/TrainerCourseActivity;->DW:Z

    if-eqz v2, :cond_0

    const-wide v2, -0x5af7514cac13c9e0L

    invoke-static {v2, v3, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    const v2, 0x7f08018d

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-static {}, Lcom/aide/ui/aa;->J0()Z

    move-result v2

    if-nez v2, :cond_2

    move v2, v1

    :goto_0
    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v2, 0x7f08018e

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-static {}, Lcom/aide/ui/aa;->J0()Z

    move-result v3

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v2, 0x7f08018f

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-static {}, Lcom/aide/ui/aa;->J8()Z

    move-result v3

    if-nez v3, :cond_1

    move v0, v1

    :cond_1
    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v0, 0x7f080190

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-static {}, Lcom/aide/ui/aa;->J8()Z

    move-result v2

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :cond_2
    move v2, v0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/activities/TrainerCourseActivity;->FH:Z

    if-eqz v1, :cond_3

    invoke-static {v0, v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    throw v0
.end method
