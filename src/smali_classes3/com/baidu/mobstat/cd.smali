.class public Lcom/baidu/mobstat/cd;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static a(Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6

    const/4 v2, 0x0

    .line 244
    .line 246
    if-nez p0, :cond_0

    move-object v0, v2

    .line 266
    :goto_0
    return-object v0

    .line 250
    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 251
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 252
    if-nez v3, :cond_2

    .line 250
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 256
    :cond_2
    const/16 v0, -0x1388

    invoke-virtual {v3, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 257
    if-eqz v0, :cond_1

    instance-of v4, v0, Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 258
    check-cast v0, Ljava/lang/String;

    .line 259
    const-string v4, "baidu_mtj_edit_txtview"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v3

    goto :goto_0

    :cond_3
    move-object v0, v2

    .line 266
    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;)V
    .registers 3

    .line 72
    invoke-static {p0}, Lcom/baidu/mobstat/de;->a(Landroid/app/Activity;)Landroid/view/View;

    move-result-object v0

    .line 73
    const v1, 0x1020002

    :try_start_0
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :goto_0
    if-nez v0, :cond_1

    .line 87
    :cond_0
    :goto_1
    return-void

    .line 76
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0

    .line 83
    :cond_1
    invoke-static {v0}, Lcom/baidu/mobstat/cd;->a(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 84
    if-eqz v1, :cond_0

    .line 85
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_1
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

    .line 224
    return-void
.end method

.method public static a(Landroid/app/Activity;Z)V
    .registers 4

    .line 50
    invoke-static {p0}, Lcom/baidu/mobstat/de;->a(Landroid/app/Activity;)Landroid/view/View;

    move-result-object v0

    .line 51
    const v1, 0x1020002

    :try_start_0
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :goto_0
    if-nez v0, :cond_1

    .line 65
    :cond_0
    :goto_1
    return-void

    .line 54
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0

    .line 61
    :cond_1
    invoke-static {v0}, Lcom/baidu/mobstat/cd;->a(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 62
    if-eqz v1, :cond_0

    .line 63
    if-eqz p1, :cond_2

    const/4 v0, 0x0

    :goto_2
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_2
    const/4 v0, 0x4

    goto :goto_2
.end method

.method static synthetic a(Landroid/content/Context;)V
    .registers 1

    .line 23
    invoke-static {p0}, Lcom/baidu/mobstat/cd;->b(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(FFFF)Z
    .registers 5

    .line 23
    invoke-static {p0, p1, p2, p3}, Lcom/baidu/mobstat/cd;->b(FFFF)Z

    move-result v0

    return v0
.end method

.method public static a(Landroid/view/View;)Z
    .registers 3

    .line 33
    const/16 v0, -0x1388

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 36
    if-eqz v0, :cond_0

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 37
    check-cast v0, Ljava/lang/String;

    .line 38
    const-string v1, "baidu_mtj_edit_txtview"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    const/4 v0, 0x1

    .line 43
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Landroid/app/Activity;)V
    .registers 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 95
    invoke-static {p0}, Lcom/baidu/mobstat/de;->a(Landroid/app/Activity;)Landroid/view/View;

    move-result-object v0

    .line 97
    const v1, 0x1020002

    :try_start_0
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    :goto_0
    if-nez v0, :cond_1

    .line 148
    :cond_0
    :goto_1
    return-void

    .line 100
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0

    .line 108
    :cond_1
    if-eqz v0, :cond_0

    .line 109
    invoke-static {v0}, Lcom/baidu/mobstat/cd;->a(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 111
    if-nez v1, :cond_0

    .line 115
    new-instance v1, Lcom/baidu/mobstat/ca;

    invoke-direct {v1, p0}, Lcom/baidu/mobstat/ca;-><init>(Landroid/content/Context;)V

    .line 117
    const v2, -0xff8501

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 118
    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 119
    const-string/jumbo v2, "\u8fde\u63a5\u4e2d"

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

    goto :goto_1
.end method

.method private static b(Landroid/content/Context;)V
    .registers 4

    .line 273
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 274
    const-string/jumbo v1, "\u662f\u5426\u786e\u8ba4\u9000\u51fa\u8fde\u63a5?"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 275
    const-string/jumbo v1, "\u786e\u5b9a"

    new-instance v2, Lcom/baidu/mobstat/cd$3;

    invoke-direct {v2}, Lcom/baidu/mobstat/cd$3;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 289
    const-string v1, "\u53d6\u6d88"

    new-instance v2, Lcom/baidu/mobstat/cd$4;

    invoke-direct {v2}, Lcom/baidu/mobstat/cd$4;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 296
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 297
    return-void
.end method

.method private static b(FFFF)Z
    .registers 7

    const/high16 v2, 0x40a00000    # 5.0f

    .line 231
    sub-float v0, p0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 232
    sub-float v1, p2, p3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 233
    cmpl-float v0, v0, v2

    if-gtz v0, :cond_0

    cmpl-float v0, v1, v2

    if-lez v0, :cond_1

    .line 234
    :cond_0
    const/4 v0, 0x0

    .line 236
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
