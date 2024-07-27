.class public Lcom/s1243808733/util/Toasty;
.super Ljava/lang/Object;
.source "Toasty.java"


# annotations
.annotation runtime Landroid/annotation/SuppressLint;
    value = "InflateParams"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/s1243808733/util/Toasty$Config;,
        Lcom/s1243808733/util/Toasty$ToastyUtils;
    }
.end annotation


# static fields
.field public static final LENGTH_LONG:I = 0x1

.field public static final LENGTH_SHORT:I

.field private static final LOADED_TOAST_TYPEFACE:Landroid/graphics/Typeface;

.field private static allowQueue:Z

.field static app_icon:Landroid/graphics/drawable/Drawable;

.field private static currentTypeface:Landroid/graphics/Typeface;

.field public static enable:Z

.field private static lastToast:Landroid/widget/Toast;

.field private static textSize:I

.field private static tintIcon:Z

.field static utils_toast_view_lefticon_resid:I

.field static utils_toast_view_msg_resid:I

.field static utils_toast_view_resid:I


# direct methods
.method static final constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    const-string v0, "sans-serif-condensed"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/s1243808733/util/Toasty;->LOADED_TOAST_TYPEFACE:Landroid/graphics/Typeface;

    sget-object v0, Lcom/s1243808733/util/Toasty;->LOADED_TOAST_TYPEFACE:Landroid/graphics/Typeface;

    sput-object v0, Lcom/s1243808733/util/Toasty;->currentTypeface:Landroid/graphics/Typeface;

    const/16 v0, 0xe

    sput v0, Lcom/s1243808733/util/Toasty;->textSize:I

    const/4 v0, 0x1

    sput-boolean v0, Lcom/s1243808733/util/Toasty;->tintIcon:Z

    sput-boolean v1, Lcom/s1243808733/util/Toasty;->allowQueue:Z

    const/4 v0, 0x0

    check-cast v0, Landroid/widget/Toast;

    sput-object v0, Lcom/s1243808733/util/Toasty;->lastToast:Landroid/widget/Toast;

    sput-boolean v1, Lcom/s1243808733/util/Toasty;->enable:Z

    sput v1, Lcom/s1243808733/util/Toasty;->utils_toast_view_resid:I

    sput v1, Lcom/s1243808733/util/Toasty;->utils_toast_view_lefticon_resid:I

    const v0, 0x102000b

    sput v0, Lcom/s1243808733/util/Toasty;->utils_toast_view_msg_resid:I

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$L1000000()Landroid/graphics/Typeface;
    .registers 1

    sget-object v0, Lcom/s1243808733/util/Toasty;->LOADED_TOAST_TYPEFACE:Landroid/graphics/Typeface;

    return-object v0
.end method

.method static synthetic access$L1000001()Landroid/graphics/Typeface;
    .registers 1

    sget-object v0, Lcom/s1243808733/util/Toasty;->currentTypeface:Landroid/graphics/Typeface;

    return-object v0
.end method

.method static synthetic access$L1000002()I
    .registers 1

    sget v0, Lcom/s1243808733/util/Toasty;->textSize:I

    return v0
.end method

.method static synthetic access$L1000003()Z
    .registers 1

    sget-boolean v0, Lcom/s1243808733/util/Toasty;->tintIcon:Z

    return v0
.end method

.method static synthetic access$L1000004()Z
    .registers 1

    sget-boolean v0, Lcom/s1243808733/util/Toasty;->allowQueue:Z

    return v0
.end method

.method static synthetic access$S1000000(Landroid/graphics/Typeface;)V
    .registers 1

    sput-object p0, Lcom/s1243808733/util/Toasty;->LOADED_TOAST_TYPEFACE:Landroid/graphics/Typeface;

    return-void
.end method

.method static synthetic access$S1000001(Landroid/graphics/Typeface;)V
    .registers 1

    sput-object p0, Lcom/s1243808733/util/Toasty;->currentTypeface:Landroid/graphics/Typeface;

    return-void
.end method

.method static synthetic access$S1000002(I)V
    .registers 1

    sput p0, Lcom/s1243808733/util/Toasty;->textSize:I

    return-void
.end method

.method static synthetic access$S1000003(Z)V
    .registers 1

    sput-boolean p0, Lcom/s1243808733/util/Toasty;->tintIcon:Z

    return-void
.end method

.method static synthetic access$S1000004(Z)V
    .registers 1

    sput-boolean p0, Lcom/s1243808733/util/Toasty;->allowQueue:Z

    return-void
.end method

.method public static cancel()V
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 69
    sget-object v0, Lcom/s1243808733/util/Toasty;->lastToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/s1243808733/util/Toasty;->getToast()Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    :cond_0
    return-void
.end method

.method private static createDefaultToast(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
    .registers 8

    const/4 v4, 0x0

    .line 430
    invoke-static {}, Lcom/s1243808733/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 432
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 433
    sget v1, Lcom/s1243808733/util/Toasty;->utils_toast_view_resid:I

    if-gtz v1, :cond_0

    .line 434
    const-string v1, "utils_toast_view"

    invoke-static {v1}, Lcom/blankj/utilcode/util/ResourceUtils;->getLayoutIdByName(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/s1243808733/util/Toasty;->utils_toast_view_resid:I

    .line 436
    :cond_0
    sget v1, Lcom/s1243808733/util/Toasty;->utils_toast_view_lefticon_resid:I

    if-gtz v1, :cond_1

    .line 437
    const-string v1, "utvLeftIconView"

    invoke-static {v1}, Lcom/blankj/utilcode/util/ResourceUtils;->getIdByName(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/s1243808733/util/Toasty;->utils_toast_view_lefticon_resid:I

    .line 439
    :cond_1
    sget v3, Lcom/s1243808733/util/Toasty;->utils_toast_view_resid:I

    const/4 v1, 0x0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v0, v3, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 440
    sget v0, Lcom/s1243808733/util/Toasty;->utils_toast_view_lefticon_resid:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 441
    sget-object v3, Lcom/s1243808733/util/Toasty;->app_icon:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_2

    .line 442
    invoke-static {}, Lcom/blankj/utilcode/util/AppUtils;->getAppIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    sput-object v3, Lcom/s1243808733/util/Toasty;->app_icon:Landroid/graphics/drawable/Drawable;

    .line 444
    :cond_2
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 445
    sget-object v3, Lcom/s1243808733/util/Toasty;->app_icon:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v3}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 446
    sget v0, Lcom/s1243808733/util/Toasty;->utils_toast_view_msg_resid:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 447
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 449
    invoke-virtual {v2, v1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 450
    return-object v2
.end method

.method public static custom(IIIIZZ)Landroid/widget/Toast;
    .registers 13
    .annotation runtime Landroidj/support/annotation/CheckResult;
    .end annotation

    .line 332
    invoke-static {}, Lcom/s1243808733/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/s1243808733/util/Toasty$ToastyUtils;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {p2}, Lcom/s1243808733/util/Toasty$ToastyUtils;->getColor(I)I

    move-result v2

    const v3, 0x7f05005f

    invoke-static {v3}, Lcom/s1243808733/util/Toasty$ToastyUtils;->getColor(I)I

    move-result v3

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Lcom/s1243808733/util/Toasty;->custom(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;IIIZZ)Landroid/widget/Toast;

    move-result-object v0

    return-object v0
.end method

.method public static custom(ILandroid/graphics/drawable/Drawable;IIIZZ)Landroid/widget/Toast;
    .registers 14
    .annotation runtime Landroidj/support/annotation/CheckResult;
    .end annotation

    .line 358
    invoke-static {}, Lcom/s1243808733/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Lcom/s1243808733/util/Toasty$ToastyUtils;->getColor(I)I

    move-result v2

    invoke-static {p3}, Lcom/s1243808733/util/Toasty$ToastyUtils;->getColor(I)I

    move-result v3

    move-object v1, p1

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-static/range {v0 .. v6}, Lcom/s1243808733/util/Toasty;->custom(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;IIIZZ)Landroid/widget/Toast;

    move-result-object v0

    return-object v0
.end method

.method public static custom(ILandroid/graphics/drawable/Drawable;IIZZ)Landroid/widget/Toast;
    .registers 13
    .annotation runtime Landroidj/support/annotation/CheckResult;
    .end annotation

    .line 350
    invoke-static {}, Lcom/s1243808733/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Lcom/s1243808733/util/Toasty$ToastyUtils;->getColor(I)I

    move-result v2

    const v1, 0x7f05005f

    invoke-static {v1}, Lcom/s1243808733/util/Toasty$ToastyUtils;->getColor(I)I

    move-result v3

    move-object v1, p1

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Lcom/s1243808733/util/Toasty;->custom(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;IIIZZ)Landroid/widget/Toast;

    move-result-object v0

    return-object v0
.end method

.method public static custom(ILandroid/graphics/drawable/Drawable;IZ)Landroid/widget/Toast;
    .registers 11
    .annotation runtime Landroidj/support/annotation/CheckResult;
    .end annotation

    .line 317
    invoke-static {}, Lcom/s1243808733/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, -0x1

    const v1, 0x7f05005f

    invoke-static {v1}, Lcom/s1243808733/util/Toasty$ToastyUtils;->getColor(I)I

    move-result v3

    const/4 v6, 0x0

    move-object v1, p1

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v6}, Lcom/s1243808733/util/Toasty;->custom(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;IIIZZ)Landroid/widget/Toast;

    move-result-object v0

    return-object v0
.end method

.method public static custom(Ljava/lang/CharSequence;IIIZZ)Landroid/widget/Toast;
    .registers 13
    .annotation runtime Landroidj/support/annotation/CheckResult;
    .end annotation

    .line 341
    invoke-static {p1}, Lcom/s1243808733/util/Toasty$ToastyUtils;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {p2}, Lcom/s1243808733/util/Toasty$ToastyUtils;->getColor(I)I

    move-result v2

    const v0, 0x7f05005f

    invoke-static {v0}, Lcom/s1243808733/util/Toasty$ToastyUtils;->getColor(I)I

    move-result v3

    move-object v0, p0

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Lcom/s1243808733/util/Toasty;->custom(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;IIIZZ)Landroid/widget/Toast;

    move-result-object v0

    return-object v0
.end method

.method public static custom(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;IIIZZ)Landroid/widget/Toast;
    .registers 12
    .annotation runtime Landroid/annotation/SuppressLint;
        value = "ShowToast"
    .end annotation

    .annotation runtime Landroidj/support/annotation/CheckResult;
    .end annotation

    .line 370
    invoke-static {}, Lcom/s1243808733/util/Toasty;->isEnable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 371
    sget-boolean v0, Lcom/s1243808733/util/Toasty;->allowQueue:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/s1243808733/util/Toasty;->cancel()V

    .line 372
    :cond_0
    invoke-static {}, Lcom/s1243808733/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0, p0, p4}, Lcom/s1243808733/util/Toasty;->createDefaultToast(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 374
    sput-object v0, Lcom/s1243808733/util/Toasty;->lastToast:Landroid/widget/Toast;

    .line 413
    :goto_0
    return-object v0

    .line 378
    :cond_1
    invoke-static {}, Lcom/s1243808733/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1, p4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 380
    invoke-static {}, Lcom/s1243808733/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v3, 0x7f0a0051

    const/4 v1, 0x0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v0, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 382
    const v0, 0x7f0801b9

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 383
    const v1, 0x7f0801ba

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 384
    if-eqz p6, :cond_2

    .line 387
    invoke-static {p2}, Lcom/s1243808733/util/Toasty$ToastyUtils;->tint9PatchDrawableFrame(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 390
    :goto_1
    invoke-static {v4, v3}, Lcom/s1243808733/util/Toasty$ToastyUtils;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 392
    if-eqz p5, :cond_6

    .line 393
    if-nez p1, :cond_3

    .line 394
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Avoid passing \'icon\' as null if \'withIcon\' is set to true"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 389
    :cond_2
    const v3, 0x7f07013e

    invoke-static {v3}, Lcom/s1243808733/util/Toasty$ToastyUtils;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_1

    .line 395
    :cond_3
    sget-boolean v3, Lcom/s1243808733/util/Toasty;->tintIcon:Z

    if-eqz v3, :cond_4

    invoke-static {p1, p3}, Lcom/s1243808733/util/Toasty$ToastyUtils;->tintIcon(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :cond_4
    invoke-static {v0, p1}, Lcom/s1243808733/util/Toasty$ToastyUtils;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 400
    :goto_2
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 401
    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 402
    sget-object v0, Lcom/s1243808733/util/Toasty;->currentTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 403
    const/4 v0, 0x2

    sget v3, Lcom/s1243808733/util/Toasty;->textSize:I

    int-to-float v3, v3

    invoke-virtual {v1, v0, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 405
    invoke-virtual {v2, v4}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 407
    sget-boolean v0, Lcom/s1243808733/util/Toasty;->allowQueue:Z

    if-nez v0, :cond_5

    .line 408
    invoke-static {}, Lcom/s1243808733/util/Toasty;->cancel()V

    .line 411
    :cond_5
    sput-object v2, Lcom/s1243808733/util/Toasty;->lastToast:Landroid/widget/Toast;

    move-object v0, v2

    .line 413
    goto :goto_0

    .line 397
    :cond_6
    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2
.end method

.method public static custom(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;IZ)Landroid/widget/Toast;
    .registers 11
    .annotation runtime Landroidj/support/annotation/CheckResult;
    .end annotation

    .line 324
    const/4 v2, -0x1

    const v0, 0x7f05005f

    invoke-static {v0}, Lcom/s1243808733/util/Toasty$ToastyUtils;->getColor(I)I

    move-result v3

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v6}, Lcom/s1243808733/util/Toasty;->custom(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;IIIZZ)Landroid/widget/Toast;

    move-result-object v0

    return-object v0
.end method

.method public static error(I)Landroid/widget/Toast;
    .registers 4
    .annotation runtime Landroidj/support/annotation/CheckResult;
    .end annotation

    .line 282
    invoke-static {}, Lcom/s1243808733/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/s1243808733/util/Toasty;->error(Ljava/lang/CharSequence;IZ)Landroid/widget/Toast;

    move-result-object v0

    return-object v0
.end method

.method public static error(II)Landroid/widget/Toast;
    .registers 4
    .annotation runtime Landroidj/support/annotation/CheckResult;
    .end annotation

    .line 292
    invoke-static {}, Lcom/s1243808733/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/s1243808733/util/Toasty;->error(Ljava/lang/CharSequence;IZ)Landroid/widget/Toast;

    move-result-object v0

    return-object v0
.end method

.method public static error(IIZ)Landroid/widget/Toast;
    .registers 10
    .annotation runtime Landroidj/support/annotation/CheckResult;
    .end annotation

    .line 302
    invoke-static {}, Lcom/s1243808733/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f070133

    invoke-static {v1}, Lcom/s1243808733/util/Toasty$ToastyUtils;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const v2, 0x7f050060

    invoke-static {v2}, Lcom/s1243808733/util/Toasty$ToastyUtils;->getColor(I)I

    move-result v2

    const v3, 0x7f05005f

    invoke-static {v3}, Lcom/s1243808733/util/Toasty$ToastyUtils;->getColor(I)I

    move-result v3

    const/4 v6, 0x1

    move v4, p1

    move v5, p2

    invoke-static/range {v0 .. v6}, Lcom/s1243808733/util/Toasty;->custom(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;IIIZZ)Landroid/widget/Toast;

    move-result-object v0

    return-object v0
.end method

.method public static error(Ljava/lang/CharSequence;)Landroid/widget/Toast;
    .registers 3
    .annotation runtime Landroidj/support/annotation/CheckResult;
    .end annotation

    .line 287
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/s1243808733/util/Toasty;->error(Ljava/lang/CharSequence;IZ)Landroid/widget/Toast;

    move-result-object v0

    return-object v0
.end method

.method public static error(Ljava/lang/CharSequence;I)Landroid/widget/Toast;
    .registers 3
    .annotation runtime Landroidj/support/annotation/CheckResult;
    .end annotation

    .line 297
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/s1243808733/util/Toasty;->error(Ljava/lang/CharSequence;IZ)Landroid/widget/Toast;

    move-result-object v0

    return-object v0
.end method

.method public static error(Ljava/lang/CharSequence;IZ)Landroid/widget/Toast;
    .registers 10
    .annotation runtime Landroidj/support/annotation/CheckResult;
    .end annotation

    .line 309
    const v0, 0x7f070133

    invoke-static {v0}, Lcom/s1243808733/util/Toasty$ToastyUtils;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const v0, 0x7f050060

    invoke-static {v0}, Lcom/s1243808733/util/Toasty$ToastyUtils;->getColor(I)I

    move-result v2

    const v0, 0x7f05005f

    invoke-static {v0}, Lcom/s1243808733/util/Toasty$ToastyUtils;->getColor(I)I

    move-result v3

    const/4 v6, 0x1

    move-object v0, p0

    move v4, p1

    move v5, p2

    invoke-static/range {v0 .. v6}, Lcom/s1243808733/util/Toasty;->custom(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;IIIZZ)Landroid/widget/Toast;

    move-result-object v0

    return-object v0
.end method

.method public static getToast()Landroid/widget/Toast;
    .registers 1

    .line 65
    sget-object v0, Lcom/s1243808733/util/Toasty;->lastToast:Landroid/widget/Toast;

    return-object v0
.end method

.method public static info(I)Landroid/widget/Toast;
    .registers 4
    .annotation runtime Landroidj/support/annotation/CheckResult;
    .end annotation

    .line 213
    invoke-static {}, Lcom/s1243808733/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/s1243808733/util/Toasty;->info(Ljava/lang/CharSequence;IZ)Landroid/widget/Toast;

    move-result-object v0

    return-object v0
.end method

.method public static info(II)Landroid/widget/Toast;
    .registers 4
    .annotation runtime Landroidj/support/annotation/CheckResult;
    .end annotation

    .line 223
    invoke-static {}, Lcom/s1243808733/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/s1243808733/util/Toasty;->info(Ljava/lang/CharSequence;IZ)Landroid/widget/Toast;

    move-result-object v0

    return-object v0
.end method

.method public static info(IIZ)Landroid/widget/Toast;
    .registers 10
    .annotation runtime Landroidj/support/annotation/CheckResult;
    .end annotation

    .line 233
    invoke-static {}, Lcom/s1243808733/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f070135

    invoke-static {v1}, Lcom/s1243808733/util/Toasty$ToastyUtils;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const v2, 0x7f050061

    invoke-static {v2}, Lcom/s1243808733/util/Toasty$ToastyUtils;->getColor(I)I

    move-result v2

    const v3, 0x7f05005f

    invoke-static {v3}, Lcom/s1243808733/util/Toasty$ToastyUtils;->getColor(I)I

    move-result v3

    const/4 v6, 0x1

    move v4, p1

    move v5, p2

    invoke-static/range {v0 .. v6}, Lcom/s1243808733/util/Toasty;->custom(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;IIIZZ)Landroid/widget/Toast;

    move-result-object v0

    return-object v0
.end method

.method public static info(Ljava/lang/CharSequence;)Landroid/widget/Toast;
    .registers 3
    .annotation runtime Landroidj/support/annotation/CheckResult;
    .end annotation

    .line 218
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/s1243808733/util/Toasty;->info(Ljava/lang/CharSequence;IZ)Landroid/widget/Toast;

    move-result-object v0

    return-object v0
.end method

.method public static info(Ljava/lang/CharSequence;I)Landroid/widget/Toast;
    .registers 3
    .annotation runtime Landroidj/support/annotation/CheckResult;
    .end annotation

    .line 228
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/s1243808733/util/Toasty;->info(Ljava/lang/CharSequence;IZ)Landroid/widget/Toast;

    move-result-object v0

    return-object v0
.end method

.method public static info(Ljava/lang/CharSequence;IZ)Landroid/widget/Toast;
    .registers 10
    .annotation runtime Landroidj/support/annotation/CheckResult;
    .end annotation

    .line 240
    const v0, 0x7f070135

    invoke-static {v0}, Lcom/s1243808733/util/Toasty$ToastyUtils;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const v0, 0x7f050061

    invoke-static {v0}, Lcom/s1243808733/util/Toasty$ToastyUtils;->getColor(I)I

    move-result v2

    const v0, 0x7f05005f

    invoke-static {v0}, Lcom/s1243808733/util/Toasty$ToastyUtils;->getColor(I)I

    move-result v3

    const/4 v6, 0x1

    move-object v0, p0

    move v4, p1

    move v5, p2

    invoke-static/range {v0 .. v6}, Lcom/s1243808733/util/Toasty;->custom(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;IIIZZ)Landroid/widget/Toast;

    move-result-object v0

    return-object v0
.end method

.method private static isEnable()Z
    .registers 1

    .line 417
    sget-boolean v0, Lcom/s1243808733/util/Toasty;->enable:Z

    return v0
.end method

.method public static normal(I)Landroid/widget/Toast;
    .registers 4
    .annotation runtime Landroidj/support/annotation/CheckResult;
    .end annotation

    const/4 v2, 0x0

    .line 112
    invoke-static {}, Lcom/s1243808733/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v2, v0, v2}, Lcom/s1243808733/util/Toasty;->normal(Ljava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Z)Landroid/widget/Toast;

    move-result-object v0

    return-object v0
.end method

.method public static normal(II)Landroid/widget/Toast;
    .registers 5
    .annotation runtime Landroidj/support/annotation/CheckResult;
    .end annotation

    .line 132
    invoke-static {}, Lcom/s1243808733/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-static {v1, p1, v0, v2}, Lcom/s1243808733/util/Toasty;->normal(Ljava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Z)Landroid/widget/Toast;

    move-result-object v0

    return-object v0
.end method

.method public static normal(IILandroid/graphics/drawable/Drawable;)Landroid/widget/Toast;
    .registers 5
    .annotation runtime Landroidj/support/annotation/CheckResult;
    .end annotation

    .line 143
    invoke-static {}, Lcom/s1243808733/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, p2, v1}, Lcom/s1243808733/util/Toasty;->normal(Ljava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Z)Landroid/widget/Toast;

    move-result-object v0

    return-object v0
.end method

.method public static normal(IILandroid/graphics/drawable/Drawable;Z)Landroid/widget/Toast;
    .registers 11
    .annotation runtime Landroidj/support/annotation/CheckResult;
    .end annotation

    .line 155
    invoke-static {}, Lcom/s1243808733/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f050064

    invoke-static {v1}, Lcom/s1243808733/util/Toasty$ToastyUtils;->getColor(I)I

    move-result v2

    const v1, 0x7f05005f

    invoke-static {v1}, Lcom/s1243808733/util/Toasty$ToastyUtils;->getColor(I)I

    move-result v3

    const/4 v6, 0x1

    move-object v1, p2

    move v4, p1

    move v5, p3

    invoke-static/range {v0 .. v6}, Lcom/s1243808733/util/Toasty;->custom(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;IIIZZ)Landroid/widget/Toast;

    move-result-object v0

    return-object v0
.end method

.method public static normal(ILandroid/graphics/drawable/Drawable;)Landroid/widget/Toast;
    .registers 5
    .annotation runtime Landroidj/support/annotation/CheckResult;
    .end annotation

    .line 122
    invoke-static {}, Lcom/s1243808733/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, p1, v2}, Lcom/s1243808733/util/Toasty;->normal(Ljava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Z)Landroid/widget/Toast;

    move-result-object v0

    return-object v0
.end method

.method public static normal(Ljava/lang/CharSequence;)Landroid/widget/Toast;
    .registers 3
    .annotation runtime Landroidj/support/annotation/CheckResult;
    .end annotation

    const/4 v1, 0x0

    .line 117
    const/4 v0, 0x0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-static {p0, v1, v0, v1}, Lcom/s1243808733/util/Toasty;->normal(Ljava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Z)Landroid/widget/Toast;

    move-result-object v0

    return-object v0
.end method

.method public static normal(Ljava/lang/CharSequence;I)Landroid/widget/Toast;
    .registers 4
    .annotation runtime Landroidj/support/annotation/CheckResult;
    .end annotation

    .line 137
    const/4 v0, 0x0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/s1243808733/util/Toasty;->normal(Ljava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Z)Landroid/widget/Toast;

    move-result-object v0

    return-object v0
.end method

.method public static normal(Ljava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;)Landroid/widget/Toast;
    .registers 4
    .annotation runtime Landroidj/support/annotation/CheckResult;
    .end annotation

    .line 149
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/s1243808733/util/Toasty;->normal(Ljava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Z)Landroid/widget/Toast;

    move-result-object v0

    return-object v0
.end method

.method public static normal(Ljava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Z)Landroid/widget/Toast;
    .registers 11
    .annotation runtime Landroidj/support/annotation/CheckResult;
    .end annotation

    .line 162
    const v0, 0x7f050064

    invoke-static {v0}, Lcom/s1243808733/util/Toasty$ToastyUtils;->getColor(I)I

    move-result v2

    const v0, 0x7f05005f

    invoke-static {v0}, Lcom/s1243808733/util/Toasty$ToastyUtils;->getColor(I)I

    move-result v3

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p2

    move v4, p1

    move v5, p3

    invoke-static/range {v0 .. v6}, Lcom/s1243808733/util/Toasty;->custom(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;IIIZZ)Landroid/widget/Toast;

    move-result-object v0

    return-object v0
.end method

.method public static normal(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/Toast;
    .registers 4
    .annotation runtime Landroidj/support/annotation/CheckResult;
    .end annotation

    .line 127
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, p1, v1}, Lcom/s1243808733/util/Toasty;->normal(Ljava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Z)Landroid/widget/Toast;

    move-result-object v0

    return-object v0
.end method

.method public static success(I)Landroid/widget/Toast;
    .registers 4
    .annotation runtime Landroidj/support/annotation/CheckResult;
    .end annotation

    .line 247
    invoke-static {}, Lcom/s1243808733/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/s1243808733/util/Toasty;->success(Ljava/lang/CharSequence;IZ)Landroid/widget/Toast;

    move-result-object v0

    return-object v0
.end method

.method public static success(II)Landroid/widget/Toast;
    .registers 4
    .annotation runtime Landroidj/support/annotation/CheckResult;
    .end annotation

    .line 257
    invoke-static {}, Lcom/s1243808733/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/s1243808733/util/Toasty;->success(Ljava/lang/CharSequence;IZ)Landroid/widget/Toast;

    move-result-object v0

    return-object v0
.end method

.method public static success(IIZ)Landroid/widget/Toast;
    .registers 10
    .annotation runtime Landroidj/support/annotation/CheckResult;
    .end annotation

    .line 267
    invoke-static {}, Lcom/s1243808733/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f070132

    invoke-static {v1}, Lcom/s1243808733/util/Toasty$ToastyUtils;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const v2, 0x7f050062

    invoke-static {v2}, Lcom/s1243808733/util/Toasty$ToastyUtils;->getColor(I)I

    move-result v2

    const v3, 0x7f05005f

    invoke-static {v3}, Lcom/s1243808733/util/Toasty$ToastyUtils;->getColor(I)I

    move-result v3

    const/4 v6, 0x1

    move v4, p1

    move v5, p2

    invoke-static/range {v0 .. v6}, Lcom/s1243808733/util/Toasty;->custom(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;IIIZZ)Landroid/widget/Toast;

    move-result-object v0

    return-object v0
.end method

.method public static success(Landroid/content/Context;II)Landroid/widget/Toast;
    .registers 4
    .annotation runtime Landroidj/support/annotation/CheckResult;
    .end annotation

    .line 97
    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lcom/s1243808733/util/Toasty;->success(IIZ)Landroid/widget/Toast;

    move-result-object v0

    return-object v0
.end method

.method public static success(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
    .registers 4
    .annotation runtime Landroidj/support/annotation/CheckResult;
    .end annotation

    .line 103
    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lcom/s1243808733/util/Toasty;->success(Ljava/lang/CharSequence;IZ)Landroid/widget/Toast;

    move-result-object v0

    return-object v0
.end method

.method public static success(Ljava/lang/CharSequence;)Landroid/widget/Toast;
    .registers 3
    .annotation runtime Landroidj/support/annotation/CheckResult;
    .end annotation

    .line 252
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/s1243808733/util/Toasty;->success(Ljava/lang/CharSequence;IZ)Landroid/widget/Toast;

    move-result-object v0

    return-object v0
.end method

.method public static success(Ljava/lang/CharSequence;I)Landroid/widget/Toast;
    .registers 3
    .annotation runtime Landroidj/support/annotation/CheckResult;
    .end annotation

    .line 262
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/s1243808733/util/Toasty;->success(Ljava/lang/CharSequence;IZ)Landroid/widget/Toast;

    move-result-object v0

    return-object v0
.end method

.method public static success(Ljava/lang/CharSequence;IZ)Landroid/widget/Toast;
    .registers 10
    .annotation runtime Landroidj/support/annotation/CheckResult;
    .end annotation

    .line 274
    const v0, 0x7f070132

    invoke-static {v0}, Lcom/s1243808733/util/Toasty$ToastyUtils;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const v0, 0x7f050062

    invoke-static {v0}, Lcom/s1243808733/util/Toasty$ToastyUtils;->getColor(I)I

    move-result v2

    const v0, 0x7f05005f

    invoke-static {v0}, Lcom/s1243808733/util/Toasty$ToastyUtils;->getColor(I)I

    move-result v3

    const/4 v6, 0x1

    move-object v0, p0

    move v4, p1

    move v5, p2

    invoke-static/range {v0 .. v6}, Lcom/s1243808733/util/Toasty;->custom(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;IIIZZ)Landroid/widget/Toast;

    move-result-object v0

    return-object v0
.end method

.method public static toast(I)Landroid/widget/Toast;
    .registers 2
    .annotation runtime Landroidj/support/annotation/CheckResult;
    .end annotation

    .line 76
    invoke-static {}, Lcom/s1243808733/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/util/Toasty;->toast(Ljava/lang/CharSequence;)Landroid/widget/Toast;

    move-result-object v0

    return-object v0
.end method

.method public static toast(Landroid/content/Context;II)Landroid/widget/Toast;
    .registers 4
    .annotation runtime Landroidj/support/annotation/CheckResult;
    .end annotation

    .line 86
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/s1243808733/util/Toasty;->toast(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    return-object v0
.end method

.method public static toast(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
    .registers 4
    .annotation runtime Landroidj/support/annotation/CheckResult;
    .end annotation

    .line 91
    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lcom/s1243808733/util/Toasty;->info(Ljava/lang/CharSequence;IZ)Landroid/widget/Toast;

    move-result-object v0

    return-object v0
.end method

.method public static toast(Ljava/lang/CharSequence;)Landroid/widget/Toast;
    .registers 3
    .annotation runtime Landroidj/support/annotation/CheckResult;
    .end annotation

    .line 81
    invoke-static {}, Lcom/s1243808733/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/s1243808733/util/Toasty;->toast(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    return-object v0
.end method

.method public static warning(I)Landroid/widget/Toast;
    .registers 4
    .annotation runtime Landroidj/support/annotation/CheckResult;
    .end annotation

    .line 168
    invoke-static {}, Lcom/s1243808733/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/s1243808733/util/Toasty;->warning(Ljava/lang/CharSequence;IZ)Landroid/widget/Toast;

    move-result-object v0

    return-object v0
.end method

.method public static warning(II)Landroid/widget/Toast;
    .registers 4
    .annotation runtime Landroidj/support/annotation/CheckResult;
    .end annotation

    .line 178
    invoke-static {}, Lcom/s1243808733/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/s1243808733/util/Toasty;->warning(Ljava/lang/CharSequence;IZ)Landroid/widget/Toast;

    move-result-object v0

    return-object v0
.end method

.method public static warning(IIZ)Landroid/widget/Toast;
    .registers 10
    .annotation runtime Landroidj/support/annotation/CheckResult;
    .end annotation

    .line 199
    invoke-static {}, Lcom/s1243808733/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f070134

    invoke-static {v1}, Lcom/s1243808733/util/Toasty$ToastyUtils;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const v2, 0x7f050063

    invoke-static {v2}, Lcom/s1243808733/util/Toasty$ToastyUtils;->getColor(I)I

    move-result v2

    const v3, 0x7f05005f

    invoke-static {v3}, Lcom/s1243808733/util/Toasty$ToastyUtils;->getColor(I)I

    move-result v3

    const/4 v6, 0x1

    move v4, p1

    move v5, p2

    invoke-static/range {v0 .. v6}, Lcom/s1243808733/util/Toasty;->custom(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;IIIZZ)Landroid/widget/Toast;

    move-result-object v0

    return-object v0
.end method

.method public static warning(Landroid/content/Context;II)Landroid/widget/Toast;
    .registers 4
    .annotation runtime Landroidj/support/annotation/CheckResult;
    .end annotation

    .line 189
    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lcom/s1243808733/util/Toasty;->warning(IIZ)Landroid/widget/Toast;

    move-result-object v0

    return-object v0
.end method

.method public static warning(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
    .registers 4
    .annotation runtime Landroidj/support/annotation/CheckResult;
    .end annotation

    .line 184
    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lcom/s1243808733/util/Toasty;->warning(Ljava/lang/CharSequence;IZ)Landroid/widget/Toast;

    move-result-object v0

    return-object v0
.end method

.method public static warning(Ljava/lang/CharSequence;)Landroid/widget/Toast;
    .registers 3
    .annotation runtime Landroidj/support/annotation/CheckResult;
    .end annotation

    .line 173
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/s1243808733/util/Toasty;->warning(Ljava/lang/CharSequence;IZ)Landroid/widget/Toast;

    move-result-object v0

    return-object v0
.end method

.method public static warning(Ljava/lang/CharSequence;I)Landroid/widget/Toast;
    .registers 3
    .annotation runtime Landroidj/support/annotation/CheckResult;
    .end annotation

    .line 194
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/s1243808733/util/Toasty;->warning(Ljava/lang/CharSequence;IZ)Landroid/widget/Toast;

    move-result-object v0

    return-object v0
.end method

.method public static warning(Ljava/lang/CharSequence;IZ)Landroid/widget/Toast;
    .registers 10
    .annotation runtime Landroidj/support/annotation/CheckResult;
    .end annotation

    .line 206
    const v0, 0x7f070134

    invoke-static {v0}, Lcom/s1243808733/util/Toasty$ToastyUtils;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const v0, 0x7f050063

    invoke-static {v0}, Lcom/s1243808733/util/Toasty$ToastyUtils;->getColor(I)I

    move-result v2

    const v0, 0x7f05005f

    invoke-static {v0}, Lcom/s1243808733/util/Toasty$ToastyUtils;->getColor(I)I

    move-result v3

    const/4 v6, 0x1

    move-object v0, p0

    move v4, p1

    move v5, p2

    invoke-static/range {v0 .. v6}, Lcom/s1243808733/util/Toasty;->custom(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;IIIZZ)Landroid/widget/Toast;

    move-result-object v0

    return-object v0
.end method
