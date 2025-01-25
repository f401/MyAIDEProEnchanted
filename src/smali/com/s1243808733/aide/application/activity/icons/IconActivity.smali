.class public Lcom/s1243808733/aide/application/activity/icons/IconActivity;
.super Lcom/s1243808733/app/base/BaseActivity;
.source "IconActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/s1243808733/aide/application/activity/icons/IconActivity$ImageUtils;,
        Lcom/s1243808733/aide/application/activity/icons/IconActivity$loadIconTask;
    }
.end annotation


# static fields
.field static KEY_ALL:Ljava/lang/String;

.field static KEY_OTHER:Ljava/lang/String;

.field public static ZIP_META_PATH:Ljava/lang/String;

.field public static ZIP_SVG_PATH:Ljava/lang/String;

.field private static dpi_dimen:[I

.field static iconAssetsZip:Ljava/lang/String;

.field static iconZipFile:Ljava/io/File;

.field private static sData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/s1243808733/aide/application/activity/icons/Icon;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private adapter:Lcom/s1243808733/aide/application/activity/icons/IconAdapter;

.field currentTag:Ljava/lang/String;

.field private dpi:[Ljava/lang/String;

.field private mEditText:Landroid/widget/EditText;

.field private mGridView:Landroid/widget/GridView;

.field private mProgressView:Landroid/widget/LinearLayout;

.field private mTipsView:Landroid/widget/TextView;


# direct methods
.method static bridge synthetic -$$Nest$fgetadapter(Lcom/s1243808733/aide/application/activity/icons/IconActivity;)Lcom/s1243808733/aide/application/activity/icons/IconAdapter;
    .registers 1

    iget-object p0, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->adapter:Lcom/s1243808733/aide/application/activity/icons/IconAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdpi(Lcom/s1243808733/aide/application/activity/icons/IconActivity;)[Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->dpi:[Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmGridView(Lcom/s1243808733/aide/application/activity/icons/IconActivity;)Landroid/widget/GridView;
    .registers 1

    iget-object p0, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->mGridView:Landroid/widget/GridView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmProgressView(Lcom/s1243808733/aide/application/activity/icons/IconActivity;)Landroid/widget/LinearLayout;
    .registers 1

    iget-object p0, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->mProgressView:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTipsView(Lcom/s1243808733/aide/application/activity/icons/IconActivity;)Landroid/widget/TextView;
    .registers 1

    iget-object p0, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->mTipsView:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputadapter(Lcom/s1243808733/aide/application/activity/icons/IconActivity;Lcom/s1243808733/aide/application/activity/icons/IconAdapter;)V
    .registers 2

    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->adapter:Lcom/s1243808733/aide/application/activity/icons/IconAdapter;

    return-void
.end method

.method static bridge synthetic -$$Nest$mexportToPNG(Lcom/s1243808733/aide/application/activity/icons/IconActivity;Landroid/app/Activity;Lcom/s1243808733/aide/application/activity/icons/Icon;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->exportToPNG(Landroid/app/Activity;Lcom/s1243808733/aide/application/activity/icons/Icon;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetActivity(Lcom/s1243808733/aide/application/activity/icons/IconActivity;)Lcom/s1243808733/aide/application/activity/icons/IconActivity;
    .registers 1

    invoke-direct {p0}, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->getActivity()Lcom/s1243808733/aide/application/activity/icons/IconActivity;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mshowMsgDialog(Lcom/s1243808733/aide/application/activity/icons/IconActivity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->showMsgDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetdpi_dimen()[I
    .registers 1

    sget-object v0, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->dpi_dimen:[I

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetsData()Ljava/util/Map;
    .registers 1

    sget-object v0, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->sData:Ljava/util/Map;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfputsData(Ljava/util/Map;)V
    .registers 1

    sput-object p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->sData:Ljava/util/Map;

    return-void
.end method

.method static bridge synthetic -$$Nest$smgetIconZip()Ljava/io/File;
    .registers 1

    invoke-static {}, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->getIconZip()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 5

    .line 87
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->sData:Ljava/util/Map;

    .line 93
    const/16 v0, 0x48

    const/16 v1, 0x60

    const/16 v2, 0x18

    const/16 v3, 0x24

    const/16 v4, 0x30

    filled-new-array {v2, v3, v4, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->dpi_dimen:[I

    .line 95
    const-string v0, "All"

    sput-object v0, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->KEY_ALL:Ljava/lang/String;

    const-string v0, "Other"

    sput-object v0, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->KEY_OTHER:Ljava/lang/String;

    .line 97
    const-string v0, "icon.zip"

    invoke-static {v0}, Lcom/s1243808733/util/Utils;->getAssetsDataFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->iconAssetsZip:Ljava/lang/String;

    .line 99
    const-string v0, "MaterialDesign-master/svg/"

    sput-object v0, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->ZIP_SVG_PATH:Ljava/lang/String;

    .line 100
    const-string v0, "MaterialDesign-master/meta.json"

    sput-object v0, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->ZIP_META_PATH:Ljava/lang/String;

    .line 594
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/s1243808733/util/Utils;->getSdDataFile()Ljava/io/File;

    move-result-object v1

    const-string v2, "material_icon.zip"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->iconZipFile:Ljava/io/File;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 79
    invoke-direct {p0}, Lcom/s1243808733/app/base/BaseActivity;-><init>()V

    .line 91
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "mdpi"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "hdpi"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "xhdpi"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "xxhdpi"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "xxxhdpi"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->dpi:[Ljava/lang/String;

    return-void
.end method

.method private calcNumOfRows()I
    .registers 3

    .line 815
    invoke-direct {p0}, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->getActivity()Lcom/s1243808733/aide/application/activity/icons/IconActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 816
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 817
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 818
    const/high16 v0, 0x42a40000  # 82.0f

    invoke-static {v0}, Lcom/blankj/utilcode/util/SizeUtils;->dp2px(F)I

    move-result v0

    int-to-float v0, v0

    .line 819
    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    div-float/2addr v1, v0

    float-to-int v0, v1

    return v0
.end method

.method private exportToPNG(Landroid/app/Activity;Lcom/s1243808733/aide/application/activity/icons/Icon;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 25

    .line 335
    move-object/from16 v12, p0

    move-object/from16 v11, p1

    move/from16 v9, p6

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v11}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 336
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 337
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v11}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 338
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v3

    if-eqz v3, :cond_1d

    const-string v3, "图标名："

    goto :goto_1f

    :cond_1d
    const-string v3, "Icon name:"

    :goto_1f
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 339
    const v3, 0x1010036

    invoke-static {v12, v3}, Lcom/s1243808733/util/Utils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 340
    const/high16 v4, 0x41700000  # 15.0f

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 341
    new-instance v7, Landroid/widget/EditText;

    invoke-direct {v7, v11}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 342
    move-object/from16 v5, p5

    invoke-virtual {v7, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 344
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 345
    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 348
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v11}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 349
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 350
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v11}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 351
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v6

    if-eqz v6, :cond_57

    const-string v6, "图标尺寸："

    goto :goto_59

    :cond_57
    const-string v6, "Icon size:"

    :goto_59
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 352
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 353
    invoke-static {v12, v3}, Lcom/s1243808733/util/Utils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 356
    new-instance v10, Landroid/widget/EditText;

    invoke-direct {v10, v11}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 357
    const/4 v6, 0x2

    invoke-virtual {v10, v6}, Landroid/widget/EditText;->setInputType(I)V

    .line 358
    const/16 v8, 0x8

    invoke-virtual {v10, v8}, Landroid/widget/EditText;->setVisibility(I)V

    .line 360
    new-instance v13, Landroid/widget/Spinner;

    invoke-direct {v13, v11}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    .line 361
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->isLightTheme()Z

    move-result v14

    if-eqz v14, :cond_89

    .line 362
    const-string v14, "spinner_bg"

    invoke-static {v14}, Lcom/blankj/utilcode/util/ResourceUtils;->getDrawableIdByName(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/widget/Spinner;->setPopupBackgroundResource(I)V

    goto :goto_92

    .line 365
    :cond_89
    const-string v14, "spinner_bg_2"

    invoke-static {v14}, Lcom/blankj/utilcode/util/ResourceUtils;->getDrawableIdByName(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/widget/Spinner;->setPopupBackgroundResource(I)V

    .line 368
    :goto_92
    const/high16 v14, 0x3f000000  # 0.5f

    invoke-static {v14}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/widget/Spinner;->setDropDownVerticalOffset(I)V

    .line 370
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v14

    if-eqz v14, :cond_a4

    const-string v14, "自定义"

    goto :goto_a6

    :cond_a4
    const-string v14, "Customize"

    :goto_a6
    const/4 v15, 0x7

    new-array v8, v15, [Ljava/lang/Object;

    const/16 v16, 0x30

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/4 v3, 0x0

    aput-object v16, v8, v3

    const/16 v16, 0x48

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v8, v1

    const/16 v16, 0x60

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v8, v6

    const/16 v6, 0x90

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v17, 0x3

    aput-object v6, v8, v17

    const/16 v6, 0xc0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v17, 0x4

    aput-object v6, v8, v17

    const/16 v6, 0x200

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v17, 0x5

    aput-object v6, v8, v17

    const/4 v6, 0x6

    aput-object v14, v8, v6

    .line 372
    new-instance v6, Landroid/widget/ArrayAdapter;

    const v14, 0x1090003

    const v3, 0x1020014

    invoke-direct {v6, v11, v14, v3, v8}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    invoke-virtual {v13, v6}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 373
    new-instance v3, Lcom/s1243808733/aide/application/activity/icons/IconActivity$8;

    invoke-direct {v3, v12, v8, v10}, Lcom/s1243808733/aide/application/activity/icons/IconActivity$8;-><init>(Lcom/s1243808733/aide/application/activity/icons/IconActivity;[Ljava/lang/Object;Landroid/widget/EditText;)V

    invoke-virtual {v13, v3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    const/4 v3, 0x0

    :goto_fa
    if-ge v3, v15, :cond_10e

    .line 392
    aget-object v6, v8, v3

    .line 393
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v6, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10b

    .line 394
    invoke-virtual {v13, v3}, Landroid/widget/Spinner;->setSelection(I)V

    :cond_10b
    add-int/lit8 v3, v3, 0x1

    goto :goto_fa

    .line 399
    :cond_10e
    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 400
    const/4 v3, -0x1

    const/4 v5, -0x2

    invoke-virtual {v2, v10, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 401
    invoke-virtual {v2, v13, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 403
    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, v11}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 404
    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 405
    new-instance v8, Landroid/widget/TextView;

    invoke-direct {v8, v11}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 406
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v13

    if-eqz v13, :cond_12f

    const-string v13, "图标颜色："

    goto :goto_131

    :cond_12f
    const-string v13, "Icon color:"

    :goto_131
    invoke-virtual {v8, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 407
    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 408
    const v4, 0x1010036

    invoke-static {v12, v4}, Lcom/s1243808733/util/Utils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 410
    const/high16 v4, 0x41200000  # 10.0f

    invoke-static {v4}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v4

    const/high16 v13, 0x40c00000  # 6.0f

    invoke-static {v13}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v13

    const/4 v14, 0x0

    invoke-virtual {v8, v14, v4, v14, v13}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 412
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, v11}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 413
    new-instance v13, Lnet/margaritov/preference/colorpicker/AlphaPatternDrawable;

    const/16 v14, 0xc

    invoke-direct {v13, v14}, Lnet/margaritov/preference/colorpicker/AlphaPatternDrawable;-><init>(I)V

    invoke-virtual {v4, v13}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 415
    new-instance v13, Lcom/s1243808733/view/ColorBackgroundTextView;

    invoke-direct {v13, v11}, Lcom/s1243808733/view/ColorBackgroundTextView;-><init>(Landroid/content/Context;)V

    .line 416
    const/high16 v14, 0x40a00000  # 5.0f

    invoke-static {v14}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v15

    invoke-static {v14}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v1

    invoke-static {v14}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v3

    invoke-static {v14}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v14

    invoke-virtual {v13, v15, v1, v3, v14}, Lcom/s1243808733/view/ColorBackgroundTextView;->setPadding(IIII)V

    .line 417
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v1, v3, :cond_187

    invoke-static/range {p0 .. p0}, Lcom/s1243808733/util/Utils;->getSelectableItemBackground(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v13, v1}, Lcom/s1243808733/util/Utils$$ExternalSyntheticApiModelOutline0;->m(Lcom/s1243808733/view/ColorBackgroundTextView;Landroid/graphics/drawable/Drawable;)V

    .line 418
    :cond_187
    const/4 v1, -0x1

    invoke-virtual {v4, v13, v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 420
    const v3, -0x8a8a8b

    invoke-virtual {v13, v3}, Lcom/s1243808733/view/ColorBackgroundTextView;->setColor(I)V

    .line 421
    new-instance v3, Lcom/s1243808733/aide/application/activity/icons/IconActivity$9;

    invoke-direct {v3, v12, v11, v13, v8}, Lcom/s1243808733/aide/application/activity/icons/IconActivity$9;-><init>(Lcom/s1243808733/aide/application/activity/icons/IconActivity;Landroid/app/Activity;Lcom/s1243808733/view/ColorBackgroundTextView;Landroid/widget/TextView;)V

    invoke-virtual {v13, v3}, Lcom/s1243808733/view/ColorBackgroundTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 440
    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 441
    invoke-virtual {v6, v4, v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 443
    new-instance v3, Landroid/view/View;

    invoke-direct {v3, v11}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 444
    const/high16 v4, 0x41800000  # 16.0f

    invoke-static {v4}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v8

    invoke-virtual {v6, v3, v1, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 447
    new-instance v8, Landroid/widget/CheckBox;

    invoke-direct {v8, v11}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    .line 448
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v1

    if-eqz v1, :cond_1bb

    const-string v1, "自适应图标（不推荐）"

    goto :goto_1bd

    :cond_1bb
    const-string v1, "Adaptive Icon (Not recommended)"

    :goto_1bd
    invoke-virtual {v8, v1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 450
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v11}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 451
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v3

    if-eqz v3, :cond_1ce

    const-string v3, "将生成多个适应不同屏幕分辨率的图标。不推荐使用，该功能逐渐淘汰，推荐使用矢量图（vector）"

    goto :goto_1d0

    :cond_1ce
    const-string v3, "Multiple icons will be generated for different screen resolutions. This function is phased out, so it is recommended to use vector graph (vector)"

    :goto_1d0
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 453
    new-instance v3, Lcom/s1243808733/aide/application/activity/icons/IconActivity$10;

    invoke-direct {v3, v12, v2, v1}, Lcom/s1243808733/aide/application/activity/icons/IconActivity$10;-><init>(Lcom/s1243808733/aide/application/activity/icons/IconActivity;Landroid/widget/LinearLayout;Landroid/widget/TextView;)V

    invoke-virtual {v8, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 467
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 468
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 470
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v11}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 471
    const/4 v14, 0x1

    invoke-virtual {v3, v14}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 472
    const/high16 v14, 0x41c00000  # 24.0f

    invoke-static {v14}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v15

    invoke-static {v4}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v4

    invoke-static {v14}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v14

    const/4 v5, 0x0

    invoke-virtual {v3, v15, v4, v14, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 473
    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-virtual {v3, v0, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 474
    invoke-virtual {v3, v6, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 475
    invoke-virtual {v3, v2, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 477
    invoke-virtual {v3, v8, v5, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 478
    invoke-virtual {v3, v1, v5, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    const/4 v0, 0x1

    if-ne v9, v0, :cond_217

    .line 481
    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 484
    :cond_217
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v11}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    if-ne v9, v0, :cond_22a

    .line 485
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_227

    const-string v0, "导出PNG"

    goto :goto_235

    :cond_227
    const-string v0, "Export png"

    goto :goto_235

    :cond_22a
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_233

    const-string v0, "添加到项目"

    goto :goto_235

    :cond_233
    const-string v0, "Add to project"

    :goto_235
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 486
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    if-ne v9, v1, :cond_24c

    .line 487
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v1

    if-eqz v1, :cond_249

    const-string v1, "导出"

    goto :goto_257

    :cond_249
    const-string v1, "Export"

    goto :goto_257

    :cond_24c
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v1

    if-eqz v1, :cond_255

    const-string v1, "添加"

    goto :goto_257

    :cond_255
    const-string v1, "Add"

    :goto_257
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 488
    const/high16 v1, 0x1040000

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 489
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v14

    .line 490
    invoke-virtual {v14}, Landroid/app/AlertDialog;->show()V

    .line 492
    new-instance v0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$11;

    invoke-direct {v0, v12, v14}, Lcom/s1243808733/aide/application/activity/icons/IconActivity$11;-><init>(Lcom/s1243808733/aide/application/activity/icons/IconActivity;Landroid/app/AlertDialog;)V

    invoke-virtual {v7, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 508
    new-instance v0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$12;

    invoke-direct {v0, v12, v14, v10}, Lcom/s1243808733/aide/application/activity/icons/IconActivity$12;-><init>(Lcom/s1243808733/aide/application/activity/icons/IconActivity;Landroid/app/AlertDialog;Landroid/widget/EditText;)V

    invoke-virtual {v10, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 530
    const/4 v0, -0x1

    invoke-virtual {v14, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v15

    new-instance v6, Lcom/s1243808733/aide/application/activity/icons/IconActivity$13;

    move-object v0, v6

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object v3, v13

    move-object/from16 v4, p4

    move-object v5, v8

    move-object v13, v6

    move-object/from16 v6, p3

    move-object v8, v14

    move/from16 v9, p6

    move-object/from16 v11, p1

    invoke-direct/range {v0 .. v11}, Lcom/s1243808733/aide/application/activity/icons/IconActivity$13;-><init>(Lcom/s1243808733/aide/application/activity/icons/IconActivity;Lcom/s1243808733/aide/application/activity/icons/Icon;Lcom/s1243808733/view/ColorBackgroundTextView;Ljava/lang/String;Landroid/widget/CheckBox;Ljava/io/File;Landroid/widget/EditText;Landroid/app/AlertDialog;ILandroid/widget/EditText;Landroid/app/Activity;)V

    invoke-virtual {v15, v13}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private getActivity()Lcom/s1243808733/aide/application/activity/icons/IconActivity;
    .registers 1

    return-object p0
.end method

.method private getContentView()Landroid/view/View;
    .registers 9

    .line 739
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 740
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 742
    new-instance v2, Landroid/widget/EditText;

    invoke-direct {v2, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->mEditText:Landroid/widget/EditText;

    .line 743
    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 744
    iget-object v2, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->mEditText:Landroid/widget/EditText;

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v3

    if-eqz v3, :cond_1e

    const-string v3, "正在加载中..."

    goto :goto_20

    :cond_1e
    const-string v3, "Loading..."

    :goto_20
    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 745
    iget-object v2, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->mEditText:Landroid/widget/EditText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 746
    iget-object v2, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->mEditText:Landroid/widget/EditText;

    new-instance v4, Lcom/s1243808733/aide/application/activity/icons/IconActivity$14;

    invoke-direct {v4, p0}, Lcom/s1243808733/aide/application/activity/icons/IconActivity$14;-><init>(Lcom/s1243808733/aide/application/activity/icons/IconActivity;)V

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 762
    new-instance v2, Landroid/widget/GridView;

    invoke-direct {v2, p0}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->mGridView:Landroid/widget/GridView;

    .line 763
    invoke-direct {p0}, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->calcNumOfRows()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 771
    iget-object v2, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v2, v1}, Landroid/widget/GridView;->setFastScrollEnabled(Z)V

    .line 773
    iget-object v1, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v1, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 776
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 777
    const/high16 v2, 0x41800000  # 16.0f

    invoke-static {v2}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v4

    invoke-static {v2}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v5

    invoke-virtual {v1, v4, v3, v5, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 778
    iget-object v4, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->mEditText:Landroid/widget/EditText;

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-virtual {v1, v4, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 779
    invoke-virtual {v0, v1, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 783
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 784
    iget-object v4, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v1, v4, v5, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    .line 787
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->mProgressView:Landroid/widget/LinearLayout;

    .line 788
    const/16 v6, 0x11

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 789
    iget-object v4, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->mProgressView:Landroid/widget/LinearLayout;

    new-instance v7, Landroid/widget/ProgressBar;

    invoke-direct {v7, p0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 790
    iget-object v4, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->mProgressView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4, v5, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    .line 795
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->mTipsView:Landroid/widget/TextView;

    .line 796
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 797
    iget-object v4, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->mTipsView:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setClickable(Z)V

    .line 798
    iget-object v3, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->mTipsView:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 799
    iget-object v3, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->mTipsView:Landroid/widget/TextView;

    const-string v4, "没有在当前分类中搜索到结果"

    const-string v6, "No search results were found in the current category"

    invoke-static {v4, v6}, Lcom/s1243808733/util/Utils;->zhOrEn(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 800
    iget-object v3, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->mTipsView:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 801
    iget-object v3, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->mTipsView:Landroid/widget/TextView;

    const v4, 0x1010036

    invoke-static {p0, v4}, Lcom/s1243808733/util/Utils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 803
    iget-object v3, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->mTipsView:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v4

    invoke-static {v2}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v6

    invoke-static {v2}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v7

    invoke-static {v2}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v2

    invoke-virtual {v3, v4, v6, v7, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 805
    iget-object v2, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->mTipsView:Landroid/widget/TextView;

    invoke-virtual {v1, v2, v5, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    .line 809
    invoke-virtual {v0, v1, v5, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    return-object v0
.end method

.method private static getIconZip()Ljava/io/File;
    .registers 1

    .line 600
    sget-object v0, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->iconZipFile:Ljava/io/File;

    return-object v0
.end method

.method public static getIs(Lcom/s1243808733/aide/application/activity/icons/Icon;)Ljava/io/InputStream;
    .registers 8

    .line 280
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/s1243808733/aide/application/activity/icons/Icon;->getFilePath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "filePath"

    invoke-static {v2, v1}, Lcom/blankj/utilcode/util/LogUtils;->iTag(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 283
    const/4 v1, 0x0

    :try_start_10
    new-instance v2, Ljava/util/zip/ZipFile;

    invoke-static {}, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->getIconZip()Ljava/io/File;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_19
    .catchall {:try_start_10 .. :try_end_19} :catchall_51

    .line 284
    :try_start_19
    invoke-virtual {p0}, Lcom/s1243808733/aide/application/activity/icons/Icon;->getFilePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object p0

    .line 285
    invoke-virtual {v2, p0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object p0

    .line 286
    new-instance v4, Ljava/io/File;

    invoke-static {}, Lcom/s1243808733/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Application;->getCacheDir()Ljava/io/File;

    move-result-object v5

    const-string v6, "iconis.tmp"

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 287
    invoke-static {v4, p0}, Lcom/blankj/utilcode/util/FileIOUtils;->writeFileFromIS(Ljava/io/File;Ljava/io/InputStream;)Z

    move-result p0

    if-eqz p0, :cond_47

    .line 288
    new-instance p0, Ljava/io/FileInputStream;

    invoke-direct {p0, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3f
    .catchall {:try_start_19 .. :try_end_3f} :catchall_4f

    .line 293
    new-array v0, v0, [Ljava/io/Closeable;

    aput-object v2, v0, v3

    invoke-static {v0}, Lcom/blankj/utilcode/util/CloseUtils;->closeIOQuietly([Ljava/io/Closeable;)V

    return-object p0

    :cond_47
    new-array p0, v0, [Ljava/io/Closeable;

    aput-object v2, p0, v3

    invoke-static {p0}, Lcom/blankj/utilcode/util/CloseUtils;->closeIOQuietly([Ljava/io/Closeable;)V

    goto :goto_61

    :catchall_4f
    move-exception p0

    goto :goto_53

    :catchall_51
    move-exception p0

    move-object v2, v1

    .line 291
    :goto_53
    :try_start_53
    new-array v4, v0, [Ljava/lang/Object;

    aput-object p0, v4, v3

    invoke-static {v4}, Lcom/blankj/utilcode/util/LogUtils;->i([Ljava/lang/Object;)V
    :try_end_5a
    .catchall {:try_start_53 .. :try_end_5a} :catchall_62

    .line 293
    new-array p0, v0, [Ljava/io/Closeable;

    aput-object v2, p0, v3

    invoke-static {p0}, Lcom/blankj/utilcode/util/CloseUtils;->closeIOQuietly([Ljava/io/Closeable;)V

    :goto_61
    return-object v1

    :catchall_62
    move-exception p0

    new-array v0, v0, [Ljava/io/Closeable;

    aput-object v2, v0, v3

    invoke-static {v0}, Lcom/blankj/utilcode/util/CloseUtils;->closeIOQuietly([Ljava/io/Closeable;)V

    .line 294
    throw p0
.end method

.method public static getSvg(Lcom/s1243808733/aide/application/activity/icons/Icon;)Ljava/lang/String;
    .registers 5

    .line 300
    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_2
    invoke-static {p0}, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->getIs(Lcom/s1243808733/aide/application/activity/icons/Icon;)Ljava/io/InputStream;

    move-result-object p0

    .line 301
    const-string v2, "utf-8"

    invoke-static {p0, v2}, Lcom/blankj/utilcode/util/ConvertUtils;->inputStream2String(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 302
    new-array v3, v1, [Ljava/io/Closeable;

    aput-object p0, v3, v0

    invoke-static {v3}, Lcom/blankj/utilcode/util/CloseUtils;->closeIOQuietly([Ljava/io/Closeable;)V
    :try_end_13
    .catchall {:try_start_2 .. :try_end_13} :catchall_14

    return-object v2

    :catchall_14
    move-exception p0

    .line 305
    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v0

    invoke-static {v1}, Lcom/blankj/utilcode/util/LogUtils;->i([Ljava/lang/Object;)V

    .line 308
    const-string p0, ""

    return-object p0
.end method

.method public static parseSvgToXml(Lcom/s1243808733/aide/application/activity/icons/Icon;)Ljava/lang/String;
    .registers 5

    .line 313
    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_2
    invoke-static {p0}, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->getIs(Lcom/s1243808733/aide/application/activity/icons/Icon;)Ljava/io/InputStream;

    move-result-object p0

    .line 314
    const-string v2, "utf-8"

    invoke-static {p0, v2}, Lcom/blankj/utilcode/util/ConvertUtils;->inputStream2String(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 315
    new-array v3, v1, [Ljava/io/Closeable;

    aput-object p0, v3, v0

    invoke-static {v3}, Lcom/blankj/utilcode/util/CloseUtils;->closeIOQuietly([Ljava/io/Closeable;)V

    .line 316
    invoke-static {v2}, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->parseSvgToXml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_17
    .catchall {:try_start_2 .. :try_end_17} :catchall_18

    return-object p0

    :catchall_18
    move-exception p0

    .line 318
    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v0

    invoke-static {v1}, Lcom/blankj/utilcode/util/LogUtils;->i([Ljava/lang/Object;)V

    .line 321
    const-string p0, ""

    return-object p0
.end method

.method public static parseSvgToXml(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 325
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/s1243808733/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "1.tmp"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 326
    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/FileIOUtils;->writeFileFromString(Ljava/io/File;Ljava/lang/String;)Z

    .line 327
    const/4 p0, -0x1

    invoke-static {v0, v0, p0, p0}, Lcom/github/megatronking/svg/generator/svg/Svg2Vector;->parseSvgToXml(Ljava/io/File;Ljava/io/File;II)Ljava/lang/String;

    .line 328
    invoke-static {v0}, Lcom/blankj/utilcode/util/FileIOUtils;->readFile2String(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    .line 329
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-object p0
.end method

.method private showMsgDialog(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 115
    invoke-static {p0, p1, p2}, Lcom/s1243808733/util/Utils;->showMsgDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 106
    invoke-super {p0, p1}, Lcom/s1243808733/app/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 107
    invoke-direct {p0}, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->getContentView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->setContentView(Landroid/view/View;)V

    .line 108
    invoke-virtual {p0}, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_17

    const-string v0, "图标中心"

    goto :goto_19

    :cond_17
    const-string v0, "Material Icon"

    :goto_19
    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 109
    invoke-virtual {p0}, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 111
    new-instance p1, Lcom/s1243808733/aide/application/activity/icons/IconActivity$loadIconTask;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/s1243808733/aide/application/activity/icons/IconActivity$loadIconTask;-><init>(Lcom/s1243808733/aide/application/activity/icons/IconActivity;Lcom/s1243808733/aide/application/activity/icons/IconActivity$loadIconTask-IA;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p1, v0}, Lcom/s1243808733/aide/application/activity/icons/IconActivity$loadIconTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4

    .line 825
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "分类"

    goto :goto_b

    :cond_9
    const-string v0, "Categories"

    :goto_b
    invoke-interface {p1, v0}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 826
    const-string v1, "ic_menu_mdicon_category"

    invoke-static {v1}, Lcom/blankj/utilcode/util/ResourceUtils;->getDrawableIdByName(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 827
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/s1243808733/aide/application/activity/icons/IconActivity$15;

    invoke-direct {v1, p0}, Lcom/s1243808733/aide/application/activity/icons/IconActivity$15;-><init>(Lcom/s1243808733/aide/application/activity/icons/IconActivity;)V

    .line 828
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 888
    invoke-super {p0, p1}, Lcom/s1243808733/app/base/BaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 120
    iget-object p1, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->adapter:Lcom/s1243808733/aide/application/activity/icons/IconAdapter;

    invoke-virtual {p1, p3}, Lcom/s1243808733/aide/application/activity/icons/IconAdapter;->getItem(I)Lcom/s1243808733/aide/application/activity/icons/Icon;

    move-result-object p1

    .line 121
    new-instance p3, Landroid/widget/PopupMenu;

    invoke-direct {p3, p0, p2}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 122
    invoke-virtual {p3}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object p2

    .line 124
    new-instance p4, Ljava/io/File;

    new-instance p5, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    sget-object v1, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-direct {p5, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v0, "Icon"

    invoke-direct {p4, p5, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 125
    invoke-static {}, Lcom/s1243808733/aide/util/ProjectUtils;->getCurrentProject()Ljava/io/File;

    move-result-object p5

    invoke-static {p5}, Lcom/s1243808733/aide/util/ProjectUtils;->getRes(Ljava/io/File;)Ljava/io/File;

    move-result-object p5

    .line 127
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_32

    const-string v0, "添加到工程"

    goto :goto_34

    :cond_32
    const-string v0, "Add to project"

    :goto_34
    invoke-interface {p2, v0}, Landroid/view/Menu;->addSubMenu(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v0

    .line 128
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v1

    if-eqz v1, :cond_41

    const-string v1, "添加为PNG"

    goto :goto_43

    :cond_41
    const-string v1, "Add as png"

    :goto_43
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3, v3, v1}, Landroid/view/SubMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    new-instance v4, Lcom/s1243808733/aide/application/activity/icons/IconActivity$1;

    invoke-direct {v4, p0, p1, p5}, Lcom/s1243808733/aide/application/activity/icons/IconActivity$1;-><init>(Lcom/s1243808733/aide/application/activity/icons/IconActivity;Lcom/s1243808733/aide/application/activity/icons/Icon;Ljava/io/File;)V

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 136
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v1

    if-eqz v1, :cond_5a

    const-string v1, "添加为Vector"

    goto :goto_5c

    :cond_5a
    const-string v1, "Add as vector"

    :goto_5c
    invoke-interface {v0, v2, v3, v3, v1}, Landroid/view/SubMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    new-instance v4, Lcom/s1243808733/aide/application/activity/icons/IconActivity$2;

    invoke-direct {v4, p0, p1, p5}, Lcom/s1243808733/aide/application/activity/icons/IconActivity$2;-><init>(Lcom/s1243808733/aide/application/activity/icons/IconActivity;Lcom/s1243808733/aide/application/activity/icons/Icon;Ljava/io/File;)V

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    if-nez p5, :cond_6b

    goto :goto_6c

    :cond_6b
    const/4 v3, 0x1

    .line 186
    :goto_6c
    invoke-interface {v0, v2, v3}, Landroid/view/SubMenu;->setGroupEnabled(IZ)V

    .line 189
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result p5

    if-eqz p5, :cond_78

    const-string p5, "导出图标"

    goto :goto_7a

    :cond_78
    const-string p5, "Export Icon"

    :goto_7a
    invoke-interface {p2, p5}, Landroid/view/Menu;->addSubMenu(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object p5

    .line 190
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_87

    const-string v0, "导出为PNG"

    goto :goto_89

    :cond_87
    const-string v0, "Export to png"

    :goto_89
    invoke-interface {p5, v0}, Landroid/view/SubMenu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/s1243808733/aide/application/activity/icons/IconActivity$3;

    invoke-direct {v1, p0, p4, p1}, Lcom/s1243808733/aide/application/activity/icons/IconActivity$3;-><init>(Lcom/s1243808733/aide/application/activity/icons/IconActivity;Ljava/io/File;Lcom/s1243808733/aide/application/activity/icons/Icon;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 201
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_9e

    const-string v0, "导出为Vector"

    goto :goto_a0

    :cond_9e
    const-string v0, "Export to vector"

    :goto_a0
    invoke-interface {p5, v0}, Landroid/view/SubMenu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/s1243808733/aide/application/activity/icons/IconActivity$4;

    invoke-direct {v1, p0, p4, p1}, Lcom/s1243808733/aide/application/activity/icons/IconActivity$4;-><init>(Lcom/s1243808733/aide/application/activity/icons/IconActivity;Ljava/io/File;Lcom/s1243808733/aide/application/activity/icons/Icon;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 214
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_b5

    const-string v0, "导出为SVG"

    goto :goto_b7

    :cond_b5
    const-string v0, "Export to svg"

    :goto_b7
    invoke-interface {p5, v0}, Landroid/view/SubMenu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p5

    new-instance v0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$5;

    invoke-direct {v0, p0, p4, p1}, Lcom/s1243808733/aide/application/activity/icons/IconActivity$5;-><init>(Lcom/s1243808733/aide/application/activity/icons/IconActivity;Ljava/io/File;Lcom/s1243808733/aide/application/activity/icons/Icon;)V

    invoke-interface {p5, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 228
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result p4

    if-eqz p4, :cond_cc

    const-string p4, "转换为Svg"

    goto :goto_ce

    :cond_cc
    const-string p4, "Convert to svg"

    :goto_ce
    invoke-interface {p2, p4}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p4

    new-instance p5, Lcom/s1243808733/aide/application/activity/icons/IconActivity$6;

    invoke-direct {p5, p0, p1}, Lcom/s1243808733/aide/application/activity/icons/IconActivity$6;-><init>(Lcom/s1243808733/aide/application/activity/icons/IconActivity;Lcom/s1243808733/aide/application/activity/icons/Icon;)V

    invoke-interface {p4, p5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 253
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result p4

    if-eqz p4, :cond_e3

    const-string p4, "转换为Vector"

    goto :goto_e5

    :cond_e3
    const-string p4, "Convert to vector"

    :goto_e5
    invoke-interface {p2, p4}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p2

    new-instance p4, Lcom/s1243808733/aide/application/activity/icons/IconActivity$7;

    invoke-direct {p4, p0, p1}, Lcom/s1243808733/aide/application/activity/icons/IconActivity$7;-><init>(Lcom/s1243808733/aide/application/activity/icons/IconActivity;Lcom/s1243808733/aide/application/activity/icons/Icon;)V

    invoke-interface {p2, p4}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 276
    invoke-virtual {p3}, Landroid/widget/PopupMenu;->show()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4

    .line 893
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_a

    goto :goto_d

    .line 895
    :cond_a
    invoke-virtual {p0}, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->finish()V

    .line 898
    :goto_d
    invoke-super {p0, p1}, Lcom/s1243808733/app/base/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method setAdapterData(Ljava/lang/String;)V
    .registers 8

    .line 730
    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->currentTag:Ljava/lang/String;

    .line 731
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->adapter:Lcom/s1243808733/aide/application/activity/icons/IconAdapter;

    invoke-virtual {v0}, Lcom/s1243808733/aide/application/activity/icons/IconAdapter;->reset()V

    .line 732
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->adapter:Lcom/s1243808733/aide/application/activity/icons/IconAdapter;

    sget-object v1, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->sData:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/s1243808733/aide/application/activity/icons/IconAdapter;->setList(Ljava/util/List;)V

    .line 733
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->mEditText:Landroid/widget/EditText;

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v1

    if-eqz v1, :cond_1f

    const-string v1, "在%d个图标中搜索..."

    goto :goto_21

    :cond_1f
    const-string v1, "Search in %d icon"

    :goto_21
    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->adapter:Lcom/s1243808733/aide/application/activity/icons/IconAdapter;

    invoke-virtual {v4}, Lcom/s1243808733/aide/application/activity/icons/IconAdapter;->getCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 734
    invoke-virtual {p0}, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 735
    iget-object p1, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_4c

    iget-object p1, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    :cond_4c
    return-void
.end method
