.class public Lcom/aide/common/g;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation


# static fields
.field private static DW:Ljava/util/Locale;
    .annotation runtime Labcd/ru;
        field = 0x4336d37799b9c585L
    .end annotation
.end field

.field private static FH:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field

.field private static Hw:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field private static j6:Ljava/lang/Boolean;
    .annotation runtime Labcd/ru;
        field = 0x3f10614bbf3a5ad3L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/common/g;

    const-wide v1, -0x4f5fa34ecae7e20cL  # -1.8087126003135542E-74

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, 0xf97221694900808L

    :try_start_6
    sget-boolean v3, Lcom/aide/common/g;->FH:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v3

    sget-boolean v4, Lcom/aide/common/g;->Hw:Z

    if-eqz v4, :cond_19

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_19
    throw v3
.end method

.method public static DW(Landroid/content/Context;)F
    .registers 6

    const/4 v0, 0x0

    const-wide v1, 0x379034d1468b1b90L  # 4.650985253768627E-41

    :try_start_6
    sget-boolean v3, Lcom/aide/common/g;->FH:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-static {p0}, Lcom/aide/common/g;->j6(Landroid/content/Context;)F

    move-result v3

    invoke-static {p0}, Lcom/aide/common/g;->Hw(Landroid/content/Context;)F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result p0
    :try_end_19
    .catchall {:try_start_6 .. :try_end_19} :catchall_1a

    return p0

    :catchall_1a
    move-exception v3

    sget-boolean v4, Lcom/aide/common/g;->Hw:Z

    if-eqz v4, :cond_22

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_22
    throw v3
.end method

.method public static DW(Landroid/content/Context;I)I
    .registers 9

    :try_start_0
    sget-boolean v0, Lcom/aide/common/g;->FH:Z

    if-eqz v0, :cond_12

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, 0x89f9f1a99b58545L

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, p0, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_12
    filled-new-array {p1}, [I

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_23
    .catchall {:try_start_0 .. :try_end_23} :catchall_24

    return v1

    :catchall_24
    move-exception v0

    sget-boolean v1, Lcom/aide/common/g;->Hw:Z

    if-eqz v1, :cond_39

    const-wide v2, 0x89f9f1a99b58545L

    const/4 v4, 0x0

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p1}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v5, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_39
    throw v0
.end method

.method private static DW(Landroid/view/View;Ljava/lang/Class;)Landroid/view/View;
    .registers 9
    .annotation runtime Labcd/su;
        method = -0x2179a3d4c5d49eb3L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Landroid/view/View;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/common/g;->FH:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    const-wide v2, -0xa76716237cb76a7L

    invoke-static {v2, v3, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    if-nez p0, :cond_10

    return-object v1

    :cond_10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-ne v0, p1, :cond_17

    return-object p0

    :cond_17
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_33

    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    :goto_1f
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_33

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/aide/common/g;->DW(Landroid/view/View;Ljava/lang/Class;)Landroid/view/View;

    move-result-object v3
    :try_end_2d
    .catchall {:try_start_0 .. :try_end_2d} :catchall_34

    if-eqz v3, :cond_30

    return-object v3

    :cond_30
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    :cond_33
    return-object v1

    :catchall_34
    move-exception v0

    sget-boolean v1, Lcom/aide/common/g;->Hw:Z

    if-eqz v1, :cond_45

    const-wide v2, -0xa76716237cb76a7L

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_45
    goto :goto_47

    :goto_46
    throw v0

    :goto_47
    goto :goto_46
.end method

.method public static DW(Landroid/app/Activity;)V
    .registers 9

    const-string v0, "android"

    const-string v1, "id"

    const/4 v2, 0x0

    const-wide v3, -0x26f6bfd65d48d6dL  # -6.776293249014974E296

    :try_start_a
    sget-boolean v5, Lcom/aide/common/g;->FH:Z

    if-eqz v5, :cond_11

    invoke-static {v3, v4, v2, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-lt v5, v6, :cond_46

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v6, "action_bar"

    invoke-virtual {v5, v6, v1, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    instance-of v6, v5, Landroid/view/ViewGroup;

    const/4 v7, 0x0

    if-eqz v6, :cond_2f

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v5, v7}, Landroid/view/ViewGroup;->setTouchscreenBlocksFocus(Z)V

    :cond_2f
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v6, "action_bar_container"

    invoke-virtual {v5, v6, v1, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_46

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->setTouchscreenBlocksFocus(Z)V
    :try_end_46
    .catchall {:try_start_a .. :try_end_46} :catchall_47

    :cond_46
    return-void

    :catchall_47
    move-exception v0

    sget-boolean v1, Lcom/aide/common/g;->Hw:Z

    if-eqz v1, :cond_4f

    invoke-static {v0, v3, v4, v2, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_4f
    throw v0
.end method

.method public static DW(Landroid/view/MotionEvent;)Z
    .registers 6

    const/4 v0, 0x0

    const-wide v1, -0x3ca949d5e1e84210L  # -2.5570965989554112E16

    :try_start_6
    sget-boolean v3, Lcom/aide/common/g;->FH:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-static {p0}, Lcom/aide/common/g;->j6(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getButtonState()I

    move-result p0
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_1e

    const/4 v0, 0x2

    if-ne p0, v0, :cond_1c

    const/4 p0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 p0, 0x0

    :goto_1d
    return p0

    :catchall_1e
    move-exception v3

    sget-boolean v4, Lcom/aide/common/g;->Hw:Z

    if-eqz v4, :cond_26

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_26
    throw v3
.end method

.method public static EQ(Landroid/content/Context;)Z
    .registers 6

    const/4 v0, 0x0

    const-wide v1, -0x513ba2676af9d6efL  # -2.0966629516706665E-83

    :try_start_6
    sget-boolean v3, Lcom/aide/common/g;->FH:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->keyboard:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_28

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget p0, v3, Landroid/content/res/Configuration;->hardKeyboardHidden:I
    :try_end_24
    .catchall {:try_start_6 .. :try_end_24} :catchall_2a

    if-eq p0, v4, :cond_28

    const/4 p0, 0x1

    goto :goto_29

    :cond_28
    const/4 p0, 0x0

    :goto_29
    return p0

    :catchall_2a
    move-exception v3

    sget-boolean v4, Lcom/aide/common/g;->Hw:Z

    if-eqz v4, :cond_32

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_32
    throw v3
.end method

.method public static FH(Landroid/content/Context;)I
    .registers 6

    const/4 v0, 0x0

    const-wide v1, -0x3e6d25903deabae5L  # -7.907633652077143E7

    :try_start_6
    sget-boolean v3, Lcom/aide/common/g;->FH:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    const-string v3, "window"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getHeight()I

    move-result v4

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getWidth()I

    move-result v3

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result p0
    :try_end_29
    .catchall {:try_start_6 .. :try_end_29} :catchall_2a

    return p0

    :catchall_2a
    move-exception v3

    sget-boolean v4, Lcom/aide/common/g;->Hw:Z

    if-eqz v4, :cond_32

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_32
    throw v3
.end method

.method public static FH(Landroid/content/Context;I)I
    .registers 9

    :try_start_0
    sget-boolean v0, Lcom/aide/common/g;->FH:Z

    if-eqz v0, :cond_12

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x13f33d3fd3963f28L

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, p0, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_12
    filled-new-array {p1}, [I

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_22
    .catchall {:try_start_0 .. :try_end_22} :catchall_23

    return v1

    :catchall_23
    move-exception v0

    sget-boolean v1, Lcom/aide/common/g;->Hw:Z

    if-eqz v1, :cond_38

    const-wide v2, -0x13f33d3fd3963f28L

    const/4 v4, 0x0

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p1}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v5, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_38
    throw v0
.end method

.method public static FH(Landroid/app/Activity;)V
    .registers 8

    const/4 v0, 0x0

    const-wide v1, -0x52d5393c64771883L  # -4.1077487317266644E-91

    :try_start_6
    sget-boolean v3, Lcom/aide/common/g;->FH:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    new-instance v4, Lcom/aide/common/f;

    invoke-direct {v4, p0}, Lcom/aide/common/f;-><init>(Landroid/app/Activity;)V

    const-wide/16 v5, 0xc8

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1c
    .catchall {:try_start_6 .. :try_end_1c} :catchall_1d

    return-void

    :catchall_1d
    move-exception v3

    sget-boolean v4, Lcom/aide/common/g;->Hw:Z

    if-eqz v4, :cond_25

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_25
    throw v3
.end method

.method private static FH(Landroid/view/MotionEvent;)Z
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x242cf42eda96fda1L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0x1092ba5510b2d22bL  # 7.72025187633138E-229

    :try_start_6
    sget-boolean v3, Lcom/aide/common/g;->FH:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-eqz v3, :cond_21

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_21

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_29

    :cond_21
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getButtonState()I

    move-result p0
    :try_end_25
    .catchall {:try_start_6 .. :try_end_25} :catchall_2b

    if-nez p0, :cond_29

    const/4 p0, 0x1

    goto :goto_2a

    :cond_29
    const/4 p0, 0x0

    :goto_2a
    return p0

    :catchall_2b
    move-exception v3

    sget-boolean v4, Lcom/aide/common/g;->Hw:Z

    if-eqz v4, :cond_33

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_33
    throw v3
.end method

.method public static Hw(Landroid/content/Context;)F
    .registers 6

    const/4 v0, 0x0

    const-wide v1, -0x2c31c59804cbd2d3L  # -5.044291770132233E95

    :try_start_6
    sget-boolean v3, Lcom/aide/common/g;->FH:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    const-string v3, "window"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getWidth()I

    move-result p0
    :try_end_27
    .catchall {:try_start_6 .. :try_end_27} :catchall_2a

    int-to-float p0, p0

    div-float/2addr p0, v4

    return p0

    :catchall_2a
    move-exception v3

    sget-boolean v4, Lcom/aide/common/g;->Hw:Z

    if-eqz v4, :cond_32

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_32
    throw v3
.end method

.method public static Hw(Landroid/app/Activity;)V
    .registers 10

    const/4 v0, 0x0

    const-wide v1, 0xd2a72217face83cL

    :try_start_6
    sget-boolean v3, Lcom/aide/common/g;->FH:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-static {p0}, Lcom/aide/common/g;->J8(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_52

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    const/high16 v5, 0x40400000  # 3.0f

    mul-float v5, v5, v3

    invoke-virtual {v4, v5}, Landroid/app/ActionBar;->setElevation(F)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v6, "action_bar_container"

    const-string v7, "id"

    const-string v8, "android"

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_52

    const/high16 v5, 0x42400000  # 48.0f

    mul-float v5, v5, v3

    float-to-int v5, v5

    const/high16 v6, 0x41d80000  # 27.0f

    mul-float v3, v3, v6

    float-to-int v3, v3

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v3, v5, v6}, Landroid/view/View;->setPadding(IIII)V
    :try_end_52
    .catchall {:try_start_6 .. :try_end_52} :catchall_53

    :cond_52
    return-void

    :catchall_53
    move-exception v3

    sget-boolean v4, Lcom/aide/common/g;->Hw:Z

    if-eqz v4, :cond_5b

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_5b
    throw v3
.end method

.method public static J0(Landroid/content/Context;)Z
    .registers 6

    const/4 v0, 0x0

    const-wide v1, 0x2ca5195ee02fdf8dL  # 1.2643734529955771E-93

    :try_start_6
    sget-boolean v3, Lcom/aide/common/g;->FH:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-static {}, Lcom/aide/common/g;->j6()Z

    move-result v3

    if-nez v3, :cond_1b

    invoke-static {p0}, Lcom/aide/common/g;->J8(Landroid/content/Context;)Z

    move-result p0
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_1d

    if-nez p0, :cond_1b

    const/4 p0, 0x1

    goto :goto_1c

    :cond_1b
    const/4 p0, 0x0

    :goto_1c
    return p0

    :catchall_1d
    move-exception v3

    sget-boolean v4, Lcom/aide/common/g;->Hw:Z

    if-eqz v4, :cond_25

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_25
    throw v3
.end method

.method public static J8(Landroid/content/Context;)Z
    .registers 7

    const/4 v0, 0x0

    const-wide v1, -0x1ce3edadb65a220dL  # -2.6485260813674717E169

    :try_start_6
    sget-boolean v3, Lcom/aide/common/g;->FH:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    sget-object v3, Lcom/aide/common/g;->j6:Ljava/lang/Boolean;

    if-nez v3, :cond_34

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    sput-object v4, Lcom/aide/common/g;->j6:Ljava/lang/Boolean;

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_34

    const-string v4, "uimode"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/UiModeManager;

    invoke-virtual {v4}, Landroid/app/UiModeManager;->getCurrentModeType()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_2e

    const/4 v3, 0x1

    :cond_2e
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    sput-object v3, Lcom/aide/common/g;->j6:Ljava/lang/Boolean;

    :cond_34
    sget-object v3, Lcom/aide/common/g;->j6:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_3a
    .catchall {:try_start_6 .. :try_end_3a} :catchall_3b

    return p0

    :catchall_3b
    move-exception v3

    sget-boolean v4, Lcom/aide/common/g;->Hw:Z

    if-eqz v4, :cond_43

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_43
    throw v3
.end method

.method public static QX(Landroid/content/Context;)Z
    .registers 8

    const/4 v0, 0x0

    const-wide v1, -0x1e05b400d83232e0L  # -9.464585257325235E163

    :try_start_6
    sget-boolean v3, Lcom/aide/common/g;->FH:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x14

    if-lt v3, v4, :cond_2e

    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    sget v5, Lcom/aide/ui/Ma;->theme_name:I

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v3, v6}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v4

    if-eqz v4, :cond_2e

    const-string v4, "Material"

    iget-object v3, v3, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_2d
    .catchall {:try_start_6 .. :try_end_2d} :catchall_30

    return p0

    :cond_2e
    const/4 p0, 0x0

    return p0

    :catchall_30
    move-exception v3

    sget-boolean v4, Lcom/aide/common/g;->Hw:Z

    if-eqz v4, :cond_38

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_38
    throw v3
.end method

.method public static VH(Landroid/content/Context;)F
    .registers 6

    const/4 v0, 0x0

    const-wide v1, -0x641d7440cc66d98L

    :try_start_6
    sget-boolean v3, Lcom/aide/common/g;->FH:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-static {p0}, Lcom/aide/common/g;->DW(Landroid/content/Context;)F

    move-result v3

    const/high16 v4, 0x44340000  # 720.0f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1a

    const/high16 p0, 0x41c80000  # 25.0f

    return p0

    :cond_1a
    invoke-static {p0}, Lcom/aide/common/g;->DW(Landroid/content/Context;)F

    move-result p0
    :try_end_1e
    .catchall {:try_start_6 .. :try_end_1e} :catchall_2a

    const/high16 v0, 0x43c80000  # 400.0f

    cmpl-float p0, p0, v0

    if-ltz p0, :cond_27

    const/high16 p0, 0x41b00000  # 22.0f

    return p0

    :cond_27
    const/high16 p0, 0x41a00000  # 20.0f

    return p0

    :catchall_2a
    move-exception v3

    sget-boolean v4, Lcom/aide/common/g;->Hw:Z

    if-eqz v4, :cond_32

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_32
    throw v3
.end method

.method public static Ws(Landroid/content/Context;)Z
    .registers 6

    const/4 v0, 0x0

    const-wide v1, -0x2aeb2bcf93ca7859L  # -7.289271615944217E101

    :try_start_6
    sget-boolean v3, Lcom/aide/common/g;->FH:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "android.hardware.type.pc"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_28

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "org.chromium.arc.device_management"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0
    :try_end_23
    .catchall {:try_start_6 .. :try_end_23} :catchall_2a

    if-eqz p0, :cond_26

    goto :goto_28

    :cond_26
    const/4 p0, 0x0

    goto :goto_29

    :cond_28
    :goto_28
    const/4 p0, 0x1

    :goto_29
    return p0

    :catchall_2a
    move-exception v3

    sget-boolean v4, Lcom/aide/common/g;->Hw:Z

    if-eqz v4, :cond_32

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_32
    throw v3
.end method

.method public static Zo(Landroid/content/Context;)I
    .registers 6

    const/4 v0, 0x0

    const-wide v1, -0xa7f820bf546e140L  # -9.905120426486354E257

    :try_start_6
    sget-boolean v3, Lcom/aide/common/g;->FH:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-static {p0}, Lcom/aide/common/g;->DW(Landroid/content/Context;)F

    move-result v3

    const/high16 v4, 0x44340000  # 720.0f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1a

    const/16 p0, 0x15

    return p0

    :cond_1a
    invoke-static {p0}, Lcom/aide/common/g;->DW(Landroid/content/Context;)F

    move-result p0
    :try_end_1e
    .catchall {:try_start_6 .. :try_end_1e} :catchall_2a

    const/high16 v0, 0x43c80000  # 400.0f

    cmpl-float p0, p0, v0

    if-ltz p0, :cond_27

    const/16 p0, 0x12

    return p0

    :cond_27
    const/16 p0, 0xe

    return p0

    :catchall_2a
    move-exception v3

    sget-boolean v4, Lcom/aide/common/g;->Hw:Z

    if-eqz v4, :cond_32

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_32
    throw v3
.end method

.method public static gn(Landroid/content/Context;)F
    .registers 6

    const/4 v0, 0x0

    const-wide v1, 0xad87bfd7763bf90L

    :try_start_6
    sget-boolean v3, Lcom/aide/common/g;->FH:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-static {p0}, Lcom/aide/common/g;->DW(Landroid/content/Context;)F

    move-result v3

    const/high16 v4, 0x44340000  # 720.0f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1a

    const/high16 p0, 0x420c0000  # 35.0f

    return p0

    :cond_1a
    invoke-static {p0}, Lcom/aide/common/g;->DW(Landroid/content/Context;)F

    move-result p0
    :try_end_1e
    .catchall {:try_start_6 .. :try_end_1e} :catchall_2a

    const/high16 v0, 0x43c80000  # 400.0f

    cmpl-float p0, p0, v0

    if-ltz p0, :cond_27

    const/high16 p0, 0x41f00000  # 30.0f

    return p0

    :cond_27
    const/high16 p0, 0x41c80000  # 25.0f

    return p0

    :catchall_2a
    move-exception v3

    sget-boolean v4, Lcom/aide/common/g;->Hw:Z

    if-eqz v4, :cond_32

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_32
    throw v3
.end method

.method public static j6(Landroid/content/Context;)F
    .registers 6

    const/4 v0, 0x0

    const-wide v1, 0x44780fbd39b0e388L  # 7.101695742113453E21

    :try_start_6
    sget-boolean v3, Lcom/aide/common/g;->FH:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    const-string v3, "window"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getHeight()I

    move-result p0
    :try_end_27
    .catchall {:try_start_6 .. :try_end_27} :catchall_2a

    int-to-float p0, p0

    div-float/2addr p0, v4

    return p0

    :catchall_2a
    move-exception v3

    sget-boolean v4, Lcom/aide/common/g;->Hw:Z

    if-eqz v4, :cond_32

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_32
    throw v3
.end method

.method public static j6(Landroid/content/Context;I)I
    .registers 9

    :try_start_0
    sget-boolean v0, Lcom/aide/common/g;->FH:Z

    if-eqz v0, :cond_12

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x1140d3b8bc5f72ecL  # -2.8846614434863136E225

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, p0, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_12
    invoke-static {p0}, Lcom/aide/common/g;->DW(Landroid/content/Context;)F

    move-result p0
    :try_end_16
    .catchall {:try_start_0 .. :try_end_16} :catchall_25

    const/high16 v0, 0x43c80000  # 400.0f

    cmpl-float p0, p0, v0

    if-ltz p0, :cond_24

    int-to-float p0, p1

    const p1, 0x3fa66666  # 1.3f

    mul-float p0, p0, p1

    float-to-int p0, p0

    return p0

    :cond_24
    return p1

    :catchall_25
    move-exception v0

    sget-boolean v1, Lcom/aide/common/g;->Hw:Z

    if-eqz v1, :cond_3a

    const-wide v2, -0x1140d3b8bc5f72ecL  # -2.8846614434863136E225

    const/4 v4, 0x0

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p1}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v5, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3a
    throw v0
.end method

.method public static j6(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;
    .registers 11

    :try_start_0
    sget-boolean v0, Lcom/aide/common/g;->FH:Z

    if-eqz v0, :cond_18

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x62ac3e5971224075L

    const/4 v3, 0x0

    move-object v4, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_18
    invoke-static {p0, p1}, Lcom/aide/common/g;->FH(Landroid/content/Context;I)I

    move-result v0

    invoke-static {p0, v0}, Landroid/support/v4/content/b;->DW(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p0, p2}, Lcom/aide/common/g;->DW(Landroid/content/Context;I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V
    :try_end_29
    .catchall {:try_start_0 .. :try_end_29} :catchall_2a

    return-object v0

    :catchall_2a
    move-exception v0

    sget-boolean v1, Lcom/aide/common/g;->Hw:Z

    if-eqz v1, :cond_44

    const-wide v2, -0x62ac3e5971224075L

    const/4 v4, 0x0

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v5, p0

    invoke-static/range {v1 .. v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_44
    throw v0
.end method

.method static synthetic j6(Landroid/view/View;Ljava/lang/Class;)Landroid/view/View;
    .registers 2

    invoke-static {p0, p1}, Lcom/aide/common/g;->DW(Landroid/view/View;Ljava/lang/Class;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static j6(Landroid/app/Activity;)V
    .registers 7

    const/4 v0, 0x0

    const-wide v1, 0xa69bd37401d7120L

    :try_start_6
    sget-boolean v3, Lcom/aide/common/g;->FH:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-static {p0}, Lcom/aide/common/g;->DW(Landroid/content/Context;)F

    move-result v3
    :try_end_11
    .catchall {:try_start_6 .. :try_end_11} :catchall_30

    const/high16 v4, 0x44070000  # 540.0f

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_2f

    :try_start_17
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    const-class v4, Landroid/view/ViewConfiguration;

    const-string v5, "sHasPermanentMenuKey"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    if-eqz v4, :cond_2f

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_2d} :catch_2e
    .catchall {:try_start_17 .. :try_end_2d} :catchall_30

    goto :goto_2f

    :catch_2e
    move-exception p0

    :cond_2f
    :goto_2f
    return-void

    :catchall_30
    move-exception v3

    sget-boolean v4, Lcom/aide/common/g;->Hw:Z

    if-eqz v4, :cond_38

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_38
    throw v3
.end method

.method public static j6(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 9

    :try_start_0
    sget-boolean v0, Lcom/aide/common/g;->FH:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    const-wide v2, -0x3bf5f46034edd734L  # -6.005661965637711E19

    invoke-static {v2, v3, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    if-eqz p1, :cond_23

    const-string v0, "default"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, p1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    :goto_20
    sput-object v1, Lcom/aide/common/g;->DW:Ljava/util/Locale;

    goto :goto_26

    :cond_23
    sget-object v0, Lcom/aide/common/g;->DW:Ljava/util/Locale;

    goto :goto_20

    :goto_26
    if-eqz v0, :cond_49

    invoke-static {v0}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V
    :try_end_49
    .catchall {:try_start_0 .. :try_end_49} :catchall_4a

    :cond_49
    return-void

    :catchall_4a
    move-exception v0

    sget-boolean v1, Lcom/aide/common/g;->Hw:Z

    if-eqz v1, :cond_5b

    const-wide v2, -0x3bf5f46034edd734L  # -6.005661965637711E19

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5b
    goto :goto_5d

    :goto_5c
    throw v0

    :goto_5d
    goto :goto_5c
.end method

.method public static j6(Landroid/app/Activity;Z)V
    .registers 9

    :try_start_0
    sget-boolean v0, Lcom/aide/common/g;->FH:Z

    if-eqz v0, :cond_12

    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p1}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v1, -0x4f13d0e9ed8bf9c0L  # -4.9848560581968315E-73

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, p0, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_12
    .catchall {:try_start_0 .. :try_end_12} :catchall_40

    :cond_12
    :try_start_12
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "setHasEmbeddedTabs"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_3a} :catch_3b
    .catchall {:try_start_12 .. :try_end_3a} :catchall_40

    goto :goto_3f

    :catch_3b
    move-exception v0

    :try_start_3c
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_40

    :goto_3f
    return-void

    :catchall_40
    move-exception v0

    sget-boolean v1, Lcom/aide/common/g;->Hw:Z

    if-eqz v1, :cond_55

    const-wide v2, -0x4f13d0e9ed8bf9c0L  # -4.9848560581968315E-73

    const/4 v4, 0x0

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p1}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v1, v0

    move-object v5, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_55
    throw v0
.end method

.method public static j6(Landroid/content/Context;Landroid/graphics/Rect;)V
    .registers 9

    :try_start_0
    sget-boolean v0, Lcom/aide/common/g;->FH:Z

    if-eqz v0, :cond_d

    const-wide v0, 0x4a011c3041ad4837L  # 3.1258069666551715E48

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V
    :try_end_1b
    .catchall {:try_start_0 .. :try_end_1b} :catchall_1c

    return-void

    :catchall_1c
    move-exception v0

    sget-boolean v1, Lcom/aide/common/g;->Hw:Z

    if-eqz v1, :cond_2d

    const-wide v2, 0x4a011c3041ad4837L  # 3.1258069666551715E48

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2d
    throw v0
.end method

.method public static j6(Landroid/view/View;)V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, -0x23c025c834e386f8L

    :try_start_6
    sget-boolean v3, Lcom/aide/common/g;->FH:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    const/4 v3, 0x0

    invoke-static {p0, v3}, Lcom/aide/common/g;->j6(Landroid/view/View;Z)V
    :try_end_11
    .catchall {:try_start_6 .. :try_end_11} :catchall_12

    return-void

    :catchall_12
    move-exception v3

    sget-boolean v4, Lcom/aide/common/g;->Hw:Z

    if-eqz v4, :cond_1a

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1a
    throw v3
.end method

.method public static j6(Landroid/view/View;Z)V
    .registers 11

    :try_start_0
    sget-boolean v0, Lcom/aide/common/g;->FH:Z

    if-eqz v0, :cond_12

    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p1}, Ljava/lang/Boolean;-><init>(Z)V

    const-wide v1, 0xb8678a240a26061L

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, p0, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_12
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/aide/common/g;->J8(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6b

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    const/high16 v3, 0x40400000  # 3.0f

    mul-float v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setElevation(F)V

    const/high16 v2, 0x42400000  # 48.0f

    mul-float v2, v2, v1

    float-to-int v2, v2

    const/high16 v3, 0x41d80000  # 27.0f

    const/4 v4, 0x0

    if-eqz p1, :cond_45

    mul-float v5, v1, v3

    float-to-int v5, v5

    goto :goto_46

    :cond_45
    const/4 v5, 0x0

    :goto_46
    invoke-virtual {p0, v2, v4, v2, v5}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v6, "action_bar_container"

    const-string v7, "id"

    const-string v8, "android"

    invoke-virtual {v0, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_6b

    mul-float v1, v1, v3

    float-to-int v1, v1

    invoke-virtual {v0, v2, v1, v2, v4}, Landroid/view/View;->setPadding(IIII)V
    :try_end_6b
    .catchall {:try_start_0 .. :try_end_6b} :catchall_6c

    :cond_6b
    return-void

    :catchall_6c
    move-exception v0

    sget-boolean v1, Lcom/aide/common/g;->Hw:Z

    if-eqz v1, :cond_81

    const-wide v2, 0xb8678a240a26061L

    const/4 v4, 0x0

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p1}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v1, v0

    move-object v5, p0

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_81
    throw v0
.end method

.method public static j6(Landroid/widget/TextView;)V
    .registers 7

    const/4 v0, 0x0

    const-wide v1, -0x2c007e1ee64b5c64L  # -4.2062044958179545E96

    :try_start_6
    sget-boolean v3, Lcom/aide/common/g;->FH:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->scaledDensity:F

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    move-result v5

    float-to-int v5, v5

    invoke-static {v4, v5}, Lcom/aide/common/g;->j6(Landroid/content/Context;I)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    invoke-virtual {p0, v4}, Landroid/widget/TextView;->setTextSize(F)V
    :try_end_2d
    .catchall {:try_start_6 .. :try_end_2d} :catchall_2e

    return-void

    :catchall_2e
    move-exception v3

    sget-boolean v4, Lcom/aide/common/g;->Hw:Z

    if-eqz v4, :cond_36

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_36
    throw v3
.end method

.method public static j6()Z
    .registers 5

    const/4 v0, 0x0

    const-wide v1, 0x2e5d3704af4594e1L  # 2.34977279107845E-85

    :try_start_6
    sget-boolean v3, Lcom/aide/common/g;->FH:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_f

    :cond_d
    const/4 v0, 0x0

    return v0

    :catchall_f
    move-exception v3

    sget-boolean v4, Lcom/aide/common/g;->Hw:Z

    if-eqz v4, :cond_17

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v3
.end method

.method public static j6(Landroid/view/MotionEvent;)Z
    .registers 8

    const/4 v0, 0x0

    const-wide v1, 0x5acfc8455f912560L  # 2.753807616662981E129

    :try_start_6
    sget-boolean v3, Lcom/aide/common/g;->FH:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-static {p0}, Lcom/aide/common/g;->FH(Landroid/view/MotionEvent;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_15

    return v4

    :cond_15
    invoke-virtual {p0, v4}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v3

    const/4 v5, 0x3

    const/4 v6, 0x1

    if-ne v3, v5, :cond_1e

    return v6

    :cond_1e
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getSource()I

    move-result p0
    :try_end_22
    .catchall {:try_start_6 .. :try_end_22} :catchall_2d

    const/16 v0, 0x2002

    if-eq p0, v0, :cond_2c

    const v0, 0x100008

    if-eq p0, v0, :cond_2c

    return v4

    :cond_2c
    return v6

    :catchall_2d
    move-exception v3

    sget-boolean v4, Lcom/aide/common/g;->Hw:Z

    if-eqz v4, :cond_35

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_35
    throw v3
.end method

.method public static tp(Landroid/content/Context;)F
    .registers 7

    const/4 v0, 0x0

    const-wide v1, -0x39e7e71f1437b5b8L  # -4.772938633531187E29

    :try_start_6
    sget-boolean v3, Lcom/aide/common/g;->FH:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    move-object v3, p0

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget v3, v5, Landroid/graphics/Rect;->bottom:I

    iget p0, v5, Landroid/graphics/Rect;->top:I
    :try_end_2e
    .catchall {:try_start_6 .. :try_end_2e} :catchall_32

    sub-int/2addr v3, p0

    int-to-float p0, v3

    div-float/2addr p0, v4

    return p0

    :catchall_32
    move-exception v3

    sget-boolean v4, Lcom/aide/common/g;->Hw:Z

    if-eqz v4, :cond_3a

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_3a
    throw v3
.end method

.method public static u7(Landroid/content/Context;)F
    .registers 6

    const/4 v0, 0x0

    const-wide v1, 0xc3576f0245a4878L  # 7.49491036293329E-250

    :try_start_6
    sget-boolean v3, Lcom/aide/common/g;->FH:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-static {p0}, Lcom/aide/common/g;->DW(Landroid/content/Context;)F

    move-result v3

    const/high16 v4, 0x44340000  # 720.0f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1a

    const/high16 p0, 0x41a00000  # 20.0f

    return p0

    :cond_1a
    invoke-static {p0}, Lcom/aide/common/g;->DW(Landroid/content/Context;)F

    move-result p0
    :try_end_1e
    .catchall {:try_start_6 .. :try_end_1e} :catchall_2a

    const/high16 v0, 0x43c80000  # 400.0f

    cmpl-float p0, p0, v0

    if-ltz p0, :cond_27

    const/high16 p0, 0x41900000  # 18.0f

    return p0

    :cond_27
    const/high16 p0, 0x41700000  # 15.0f

    return p0

    :catchall_2a
    move-exception v3

    sget-boolean v4, Lcom/aide/common/g;->Hw:Z

    if-eqz v4, :cond_32

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_32
    throw v3
.end method

.method public static v5(Landroid/content/Context;)F
    .registers 6

    const/4 v0, 0x0

    const-wide v1, 0xb41a591a6875241L

    :try_start_6
    sget-boolean v3, Lcom/aide/common/g;->FH:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-static {p0}, Lcom/aide/common/g;->DW(Landroid/content/Context;)F

    move-result v3

    const/high16 v4, 0x44340000  # 720.0f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1a

    const/high16 p0, 0x41c80000  # 25.0f

    return p0

    :cond_1a
    invoke-static {p0}, Lcom/aide/common/g;->DW(Landroid/content/Context;)F

    move-result p0
    :try_end_1e
    .catchall {:try_start_6 .. :try_end_1e} :catchall_2a

    const/high16 v0, 0x43c80000  # 400.0f

    cmpl-float p0, p0, v0

    if-ltz p0, :cond_27

    const/high16 p0, 0x41b00000  # 22.0f

    return p0

    :cond_27
    const/high16 p0, 0x41a00000  # 20.0f

    return p0

    :catchall_2a
    move-exception v3

    sget-boolean v4, Lcom/aide/common/g;->Hw:Z

    if-eqz v4, :cond_32

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_32
    throw v3
.end method

.method public static we(Landroid/content/Context;)Z
    .registers 6

    const/4 v0, 0x0

    const-wide v1, -0x42a53a739e0fbe63L  # -3.804483600057768E-13

    :try_start_6
    sget-boolean v3, Lcom/aide/common/g;->FH:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->keyboard:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_29

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget p0, v3, Landroid/content/res/Configuration;->hardKeyboardHidden:I
    :try_end_24
    .catchall {:try_start_6 .. :try_end_24} :catchall_2a

    const/4 v0, 0x2

    if-ne p0, v0, :cond_28

    goto :goto_29

    :cond_28
    const/4 v4, 0x0

    :cond_29
    :goto_29
    return v4

    :catchall_2a
    move-exception v3

    sget-boolean v4, Lcom/aide/common/g;->Hw:Z

    if-eqz v4, :cond_32

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_32
    throw v3
.end method
