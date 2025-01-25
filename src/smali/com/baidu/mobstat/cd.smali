.class public Lcom/baidu/mobstat/cd;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static a(Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    const/4 v1, 0x0

    .line 250
    :goto_5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2d

    .line 251
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_12

    goto :goto_2a

    .line 256
    :cond_12
    const/16 v3, -0x1388

    invoke-virtual {v2, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2a

    .line 257
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_2a

    .line 258
    check-cast v3, Ljava/lang/String;

    .line 259
    const-string v4, "baidu_mtj_edit_txtview"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    move-object v0, v2

    goto :goto_2d

    :cond_2a
    :goto_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_2d
    :goto_2d
    return-object v0
.end method

.method public static a(Landroid/app/Activity;)V
    .registers 2

    .line 72
    invoke-static {p0}, Lcom/baidu/mobstat/de;->a(Landroid/app/Activity;)Landroid/view/View;

    move-result-object p0

    .line 75
    const v0, 0x1020002

    :try_start_7
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_10} :catch_11

    goto :goto_13

    :catch_11
    move-exception p0

    const/4 p0, 0x0

    :goto_13
    if-nez p0, :cond_16

    return-void

    .line 83
    :cond_16
    invoke-static {p0}, Lcom/baidu/mobstat/cd;->a(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 85
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1f
    return-void
.end method

.method private static a(Landroid/app/Activity;Landroid/widget/TextView;)V
    .registers 4

    .line 155
    invoke-virtual {p1}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 156
    check-cast v0, Landroid/view/View;

    .line 158
    new-instance v1, Lcom/baidu/mobstat/cd$2;

    invoke-direct {v1, v0, p0}, Lcom/baidu/mobstat/cd$2;-><init>(Landroid/view/View;Landroid/app/Activity;)V

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public static a(Landroid/app/Activity;Z)V
    .registers 3

    .line 50
    invoke-static {p0}, Lcom/baidu/mobstat/de;->a(Landroid/app/Activity;)Landroid/view/View;

    move-result-object p0

    .line 53
    const v0, 0x1020002

    :try_start_7
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_10} :catch_11

    goto :goto_13

    :catch_11
    move-exception p0

    const/4 p0, 0x0

    :goto_13
    if-nez p0, :cond_16

    return-void

    .line 61
    :cond_16
    invoke-static {p0}, Lcom/baidu/mobstat/cd;->a(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_24

    if-eqz p1, :cond_20

    const/4 p1, 0x0

    goto :goto_21

    :cond_20
    const/4 p1, 0x4

    .line 63
    :goto_21
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_24
    return-void
.end method

.method static synthetic a(Landroid/content/Context;)V
    .registers 1

    .line 23
    invoke-static {p0}, Lcom/baidu/mobstat/cd;->b(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(FFFF)Z
    .registers 4

    .line 23
    invoke-static {p0, p1, p2, p3}, Lcom/baidu/mobstat/cd;->b(FFFF)Z

    move-result p0

    return p0
.end method

.method public static a(Landroid/view/View;)Z
    .registers 2

    .line 35
    const/16 v0, -0x1388

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_18

    .line 36
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_18

    .line 37
    check-cast p0, Ljava/lang/String;

    .line 38
    const-string v0, "baidu_mtj_edit_txtview"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_18

    const/4 p0, 0x1

    goto :goto_19

    :cond_18
    const/4 p0, 0x0

    :goto_19
    return p0
.end method

.method public static b(Landroid/app/Activity;)V
    .registers 5

    .line 95
    invoke-static {p0}, Lcom/baidu/mobstat/de;->a(Landroid/app/Activity;)Landroid/view/View;

    move-result-object v0

    .line 99
    const v1, 0x1020002

    :try_start_7
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_d} :catch_e

    goto :goto_10

    :catch_e
    move-exception v0

    const/4 v0, 0x0

    :goto_10
    if-nez v0, :cond_13

    return-void

    :cond_13
    if-eqz v0, :cond_46

    .line 109
    invoke-static {v0}, Lcom/baidu/mobstat/cd;->a(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1c

    return-void

    .line 115
    :cond_1c
    new-instance v1, Lcom/baidu/mobstat/ca;

    invoke-direct {v1, p0}, Lcom/baidu/mobstat/ca;-><init>(Landroid/content/Context;)V

    .line 117
    const v2, -0xff8501

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 118
    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 119
    const-string v2, "连接中"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    const/16 v2, -0x1388

    const-string v3, "baidu_mtj_edit_txtview"

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    .line 125
    new-instance v2, Lcom/baidu/mobstat/cd$1;

    invoke-direct {v2, v0, p0, v1}, Lcom/baidu/mobstat/cd$1;-><init>(Landroid/view/View;Landroid/app/Activity;Landroid/widget/TextView;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 145
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 146
    invoke-static {p0, v1}, Lcom/baidu/mobstat/cd;->a(Landroid/app/Activity;Landroid/widget/TextView;)V

    :cond_46
    return-void
.end method

.method private static b(Landroid/content/Context;)V
    .registers 3

    .line 273
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 274
    const-string p0, "是否确认退出连接?"

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 275
    new-instance p0, Lcom/baidu/mobstat/cd$3;

    invoke-direct {p0}, Lcom/baidu/mobstat/cd$3;-><init>()V

    const-string v1, "确定"

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 289
    new-instance p0, Lcom/baidu/mobstat/cd$4;

    invoke-direct {p0}, Lcom/baidu/mobstat/cd$4;-><init>()V

    const-string v1, "取消"

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 296
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private static b(FFFF)Z
    .registers 4

    .line 231
    sub-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    .line 232
    sub-float/2addr p2, p3

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 p2, 0x40a00000  # 5.0f

    cmpl-float p0, p0, p2

    if-gtz p0, :cond_17

    cmpl-float p0, p1, p2

    if-lez p0, :cond_15

    goto :goto_17

    :cond_15
    const/4 p0, 0x1

    return p0

    :cond_17
    :goto_17
    const/4 p0, 0x0

    return p0
.end method
