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
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
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
    .locals 1

    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->adapter:Lcom/s1243808733/aide/application/activity/icons/IconAdapter;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$fgetdpi(Lcom/s1243808733/aide/application/activity/icons/IconActivity;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->dpi:[Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$fgetmGridView(Lcom/s1243808733/aide/application/activity/icons/IconActivity;)Landroid/widget/GridView;
    .locals 1

    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->mGridView:Landroid/widget/GridView;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$fgetmProgressView(Lcom/s1243808733/aide/application/activity/icons/IconActivity;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->mProgressView:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$fgetmTipsView(Lcom/s1243808733/aide/application/activity/icons/IconActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->mTipsView:Landroid/widget/TextView;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$fputadapter(Lcom/s1243808733/aide/application/activity/icons/IconActivity;Lcom/s1243808733/aide/application/activity/icons/IconAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->adapter:Lcom/s1243808733/aide/application/activity/icons/IconAdapter;

    return-void
.end method

.method static bridge synthetic -$$Nest$mexportToPNG(Lcom/s1243808733/aide/application/activity/icons/IconActivity;Landroid/app/Activity;Lcom/s1243808733/aide/application/activity/icons/Icon;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->exportToPNG(Landroid/app/Activity;Lcom/s1243808733/aide/application/activity/icons/Icon;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetActivity(Lcom/s1243808733/aide/application/activity/icons/IconActivity;)Lcom/s1243808733/aide/application/activity/icons/IconActivity;
    .locals 1

    invoke-direct {p0}, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->getActivity()Lcom/s1243808733/aide/application/activity/icons/IconActivity;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic -$$Nest$mshowMsgDialog(Lcom/s1243808733/aide/application/activity/icons/IconActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->showMsgDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetdpi_dimen()[I
    .locals 1

    sget-object v0, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->dpi_dimen:[I

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetsData()Ljava/util/Map;
    .locals 1

    sget-object v0, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->sData:Ljava/util/Map;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfputsData(Ljava/util/Map;)V
    .locals 0

    sput-object p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->sData:Ljava/util/Map;

    return-void
.end method

.method static bridge synthetic -$$Nest$smgetIconZip()Ljava/io/File;
    .locals 1

    invoke-static {}, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->getIconZip()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 87
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->sData:Ljava/util/Map;

    .line 93
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

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

    nop

    :array_0
    .array-data 4
        0x18
        0x24
        0x30
        0x48
        0x60
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

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
    .locals 2

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
    const/high16 v0, 0x42a40000    # 82.0f

    invoke-static {v0}, Lcom/blankj/utilcode/util/SizeUtils;->dp2px(F)I

    move-result v0

    int-to-float v0, v0

    .line 819
    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    div-float v0, v1, v0

    float-to-int v0, v0

    return v0
.end method

.method private exportToPNG(Landroid/app/Activity;Lcom/s1243808733/aide/application/activity/icons/Icon;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 14

    .line 335
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 336
    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 337
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 338
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "\u56fe\u6807\u540d\uff1a"

    :goto_0
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 339
    const v1, 0x1010036

    invoke-static {p0, v1}, Lcom/s1243808733/util/Utils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 340
    const/high16 v1, 0x41700000    # 15.0f

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 341
    new-instance v8, Landroid/widget/EditText;

    invoke-direct {v8, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 342
    move-object/from16 v0, p5

    invoke-virtual {v8, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 344
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 345
    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 348
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 349
    const/4 v1, 0x1

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 350
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 351
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "\u56fe\u6807\u5c3a\u5bf8\uff1a"

    :goto_1
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 352
    const/high16 v1, 0x41700000    # 15.0f

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 353
    const v1, 0x1010036

    invoke-static {p0, v1}, Lcom/s1243808733/util/Utils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 356
    new-instance v11, Landroid/widget/EditText;

    invoke-direct {v11, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 357
    const/4 v1, 0x2

    invoke-virtual {v11, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 358
    const/16 v1, 0x8

    invoke-virtual {v11, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 360
    new-instance v5, Landroid/widget/Spinner;

    invoke-direct {v5, p1}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    .line 361
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->isLightTheme()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 362
    const-string v1, "spinner_bg"

    invoke-static {v1}, Lcom/blankj/utilcode/util/ResourceUtils;->getDrawableIdByName(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v5, v1}, Landroid/widget/Spinner;->setPopupBackgroundResource(I)V

    .line 368
    :goto_2
    const/high16 v1, 0x3f000000    # 0.5f

    invoke-static {v1}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v1

    invoke-virtual {v5, v1}, Landroid/widget/Spinner;->setDropDownVerticalOffset(I)V

    .line 370
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "\u81ea\u5b9a\u4e49"

    :goto_3
    const/4 v6, 0x7

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const/16 v9, 0x30

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v7

    const/4 v7, 0x1

    const/16 v9, 0x48

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v7

    const/4 v7, 0x2

    const/16 v9, 0x60

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v7

    const/4 v7, 0x3

    const/16 v9, 0x90

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v7

    const/4 v7, 0x4

    const/16 v9, 0xc0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v7

    const/4 v7, 0x5

    const/16 v9, 0x200

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v7

    const/4 v7, 0x6

    aput-object v1, v6, v7

    .line 372
    new-instance v1, Landroid/widget/ArrayAdapter;

    const v7, 0x1090003

    const v9, 0x1020014

    invoke-direct {v1, p1, v7, v9, v6}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    invoke-virtual {v5, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 373
    new-instance v1, Lcom/s1243808733/aide/application/activity/icons/IconActivity$8;

    invoke-direct {v1, p0, v6, v11}, Lcom/s1243808733/aide/application/activity/icons/IconActivity$8;-><init>(Lcom/s1243808733/aide/application/activity/icons/IconActivity;[Ljava/lang/Object;Landroid/widget/EditText;)V

    invoke-virtual {v5, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    const/4 v1, 0x0

    :goto_4
    const/4 v7, 0x7

    if-ge v1, v7, :cond_5

    .line 392
    aget-object v7, v6, v1

    .line 393
    const/16 v9, 0x60

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 394
    invoke-virtual {v5, v1}, Landroid/widget/Spinner;->setSelection(I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 338
    :cond_1
    const-string v1, "Icon name:"

    goto/16 :goto_0

    .line 351
    :cond_2
    const-string v1, "Icon size:"

    goto/16 :goto_1

    .line 365
    :cond_3
    const-string v1, "spinner_bg_2"

    invoke-static {v1}, Lcom/blankj/utilcode/util/ResourceUtils;->getDrawableIdByName(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v5, v1}, Landroid/widget/Spinner;->setPopupBackgroundResource(I)V

    goto/16 :goto_2

    .line 370
    :cond_4
    const-string v1, "Customize"

    goto :goto_3

    .line 399
    :cond_5
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 400
    const/4 v1, -0x1

    const/4 v4, -0x2

    invoke-virtual {v3, v11, v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 401
    const/4 v1, -0x1

    const/4 v4, -0x2

    invoke-virtual {v3, v5, v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 403
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 404
    const/4 v1, 0x1

    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 405
    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 406
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "\u56fe\u6807\u989c\u8272\uff1a"

    :goto_5
    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 407
    const/high16 v1, 0x41700000    # 15.0f

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 408
    const v1, 0x1010036

    invoke-static {p0, v1}, Lcom/s1243808733/util/Utils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 410
    const/4 v1, 0x0

    const/high16 v4, 0x41200000    # 10.0f

    invoke-static {v4}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v4

    const/4 v7, 0x0

    const/high16 v9, 0x40c00000    # 6.0f

    invoke-static {v9}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v9

    invoke-virtual {v6, v1, v4, v7, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 412
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 413
    new-instance v4, Lnet/margaritov/preference/colorpicker/AlphaPatternDrawable;

    const/16 v7, 0xc

    invoke-direct {v4, v7}, Lnet/margaritov/preference/colorpicker/AlphaPatternDrawable;-><init>(I)V

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 415
    new-instance v4, Lcom/s1243808733/view/ColorBackgroundTextView;

    invoke-direct {v4, p1}, Lcom/s1243808733/view/ColorBackgroundTextView;-><init>(Landroid/content/Context;)V

    .line 416
    const/high16 v7, 0x40a00000    # 5.0f

    invoke-static {v7}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v7

    const/high16 v9, 0x40a00000    # 5.0f

    invoke-static {v9}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v9

    const/high16 v10, 0x40a00000    # 5.0f

    invoke-static {v10}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v10

    const/high16 v12, 0x40a00000    # 5.0f

    invoke-static {v12}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v12

    invoke-virtual {v4, v7, v9, v10, v12}, Lcom/s1243808733/view/ColorBackgroundTextView;->setPadding(IIII)V

    .line 417
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x17

    if-lt v7, v9, :cond_6

    invoke-static {p0}, Lcom/s1243808733/util/Utils;->getSelectableItemBackground(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/s1243808733/util/Utils$$ExternalSyntheticApiModelOutline0;->m(Lcom/s1243808733/view/ColorBackgroundTextView;Landroid/graphics/drawable/Drawable;)V

    .line 418
    :cond_6
    const/4 v7, -0x1

    const/4 v9, -0x2

    invoke-virtual {v1, v4, v7, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 420
    const v7, -0x8a8a8b

    invoke-virtual {v4, v7}, Lcom/s1243808733/view/ColorBackgroundTextView;->setColor(I)V

    .line 421
    new-instance v7, Lcom/s1243808733/aide/application/activity/icons/IconActivity$9;

    invoke-direct {v7, p0, p1, v4, v6}, Lcom/s1243808733/aide/application/activity/icons/IconActivity$9;-><init>(Lcom/s1243808733/aide/application/activity/icons/IconActivity;Landroid/app/Activity;Lcom/s1243808733/view/ColorBackgroundTextView;Landroid/widget/TextView;)V

    invoke-virtual {v4, v7}, Lcom/s1243808733/view/ColorBackgroundTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 440
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 441
    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-virtual {v5, v1, v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 443
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 444
    const/4 v6, -0x1

    const/high16 v7, 0x41800000    # 16.0f

    invoke-static {v7}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v7

    invoke-virtual {v5, v1, v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 447
    new-instance v6, Landroid/widget/CheckBox;

    invoke-direct {v6, p1}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    .line 448
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "\u81ea\u9002\u5e94\u56fe\u6807\uff08\u4e0d\u63a8\u8350\uff09"

    :goto_6
    invoke-virtual {v6, v1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 450
    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 451
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, "\u5c06\u751f\u6210\u591a\u4e2a\u9002\u5e94\u4e0d\u540c\u5c4f\u5e55\u5206\u8fa8\u7387\u7684\u56fe\u6807\u3002\u4e0d\u63a8\u8350\u4f7f\u7528\uff0c\u8be5\u529f\u80fd\u9010\u6e10\u6dd8\u6c70\uff0c\u63a8\u8350\u4f7f\u7528\u77e2\u91cf\u56fe\uff08vector\uff09"

    :goto_7
    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 453
    new-instance v1, Lcom/s1243808733/aide/application/activity/icons/IconActivity$10;

    invoke-direct {v1, p0, v3, v7}, Lcom/s1243808733/aide/application/activity/icons/IconActivity$10;-><init>(Lcom/s1243808733/aide/application/activity/icons/IconActivity;Landroid/widget/LinearLayout;Landroid/widget/TextView;)V

    invoke-virtual {v6, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 467
    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 468
    const/16 v1, 0x8

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 470
    new-instance v9, Landroid/widget/LinearLayout;

    invoke-direct {v9, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 471
    const/4 v1, 0x1

    invoke-virtual {v9, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 472
    const/high16 v1, 0x41c00000    # 24.0f

    invoke-static {v1}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v1

    const/high16 v10, 0x41800000    # 16.0f

    invoke-static {v10}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v10

    const/high16 v12, 0x41c00000    # 24.0f

    invoke-static {v12}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v12

    const/4 v13, 0x0

    invoke-virtual {v9, v1, v10, v12, v13}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 473
    const/4 v1, -0x1

    const/4 v10, -0x2

    invoke-virtual {v9, v2, v1, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 474
    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-virtual {v9, v5, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 475
    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-virtual {v9, v3, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 477
    const/4 v1, -0x2

    const/4 v2, -0x2

    invoke-virtual {v9, v6, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 478
    const/4 v1, -0x2

    const/4 v2, -0x2

    invoke-virtual {v9, v7, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    const/4 v1, 0x1

    move/from16 v0, p6

    if-ne v0, v1, :cond_7

    .line 481
    const/4 v1, 0x0

    invoke-virtual {v6, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 484
    :cond_7
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    move/from16 v0, p6

    if-ne v0, v1, :cond_c

    .line 485
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v1, "\u5bfc\u51faPNG"

    :goto_8
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 486
    invoke-virtual {v1, v9}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v1, 0x1

    move/from16 v0, p6

    if-ne v0, v1, :cond_f

    .line 487
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v1

    if-eqz v1, :cond_e

    const-string v1, "\u5bfc\u51fa"

    :goto_9
    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 488
    const/high16 v2, 0x1040000

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 489
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    .line 490
    invoke-virtual {v9}, Landroid/app/AlertDialog;->show()V

    .line 492
    new-instance v1, Lcom/s1243808733/aide/application/activity/icons/IconActivity$11;

    invoke-direct {v1, p0, v9}, Lcom/s1243808733/aide/application/activity/icons/IconActivity$11;-><init>(Lcom/s1243808733/aide/application/activity/icons/IconActivity;Landroid/app/AlertDialog;)V

    invoke-virtual {v8, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 508
    new-instance v1, Lcom/s1243808733/aide/application/activity/icons/IconActivity$12;

    invoke-direct {v1, p0, v9, v11}, Lcom/s1243808733/aide/application/activity/icons/IconActivity$12;-><init>(Lcom/s1243808733/aide/application/activity/icons/IconActivity;Landroid/app/AlertDialog;Landroid/widget/EditText;)V

    invoke-virtual {v11, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 530
    const/4 v1, -0x1

    invoke-virtual {v9, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v13

    new-instance v1, Lcom/s1243808733/aide/application/activity/icons/IconActivity$13;

    move-object v2, p0

    move-object/from16 v3, p2

    move-object/from16 v5, p4

    move-object/from16 v7, p3

    move/from16 v10, p6

    move-object v12, p1

    invoke-direct/range {v1 .. v12}, Lcom/s1243808733/aide/application/activity/icons/IconActivity$13;-><init>(Lcom/s1243808733/aide/application/activity/icons/IconActivity;Lcom/s1243808733/aide/application/activity/icons/Icon;Lcom/s1243808733/view/ColorBackgroundTextView;Ljava/lang/String;Landroid/widget/CheckBox;Ljava/io/File;Landroid/widget/EditText;Landroid/app/AlertDialog;ILandroid/widget/EditText;Landroid/app/Activity;)V

    invoke-virtual {v13, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    .line 406
    :cond_8
    const-string v1, "Icon color:"

    goto/16 :goto_5

    .line 448
    :cond_9
    const-string v1, "Adaptive Icon (Not recommended)"

    goto/16 :goto_6

    .line 451
    :cond_a
    const-string v1, "Multiple icons will be generated for different screen resolutions. This function is phased out, so it is recommended to use vector graph (vector)"

    goto/16 :goto_7

    .line 485
    :cond_b
    const-string v1, "Export png"

    goto :goto_8

    :cond_c
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v1

    if-eqz v1, :cond_d

    const-string v1, "\u6dfb\u52a0\u5230\u9879\u76ee"

    goto :goto_8

    :cond_d
    const-string v1, "Add to project"

    goto :goto_8

    .line 487
    :cond_e
    const-string v1, "Export"

    goto :goto_9

    :cond_f
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v1

    if-eqz v1, :cond_10

    const-string v1, "\u6dfb\u52a0"

    goto :goto_9

    :cond_10
    const-string v1, "Add"

    goto :goto_9
.end method

.method private getActivity()Lcom/s1243808733/aide/application/activity/icons/IconActivity;
    .locals 0

    return-object p0
.end method

.method private getContentView()Landroid/view/View;
    .locals 8

    const/4 v5, -0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/high16 v6, 0x41800000    # 16.0f

    const/4 v7, -0x1

    .line 739
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 740
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 742
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->mEditText:Landroid/widget/EditText;

    .line 743
    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 744
    iget-object v2, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->mEditText:Landroid/widget/EditText;

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u6b63\u5728\u52a0\u8f7d\u4e2d..."

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 745
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 746
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->mEditText:Landroid/widget/EditText;

    new-instance v2, Lcom/s1243808733/aide/application/activity/icons/IconActivity$14;

    invoke-direct {v2, p0}, Lcom/s1243808733/aide/application/activity/icons/IconActivity$14;-><init>(Lcom/s1243808733/aide/application/activity/icons/IconActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 762
    new-instance v0, Landroid/widget/GridView;

    invoke-direct {v0, p0}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->mGridView:Landroid/widget/GridView;

    .line 763
    invoke-direct {p0}, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->calcNumOfRows()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 771
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0, v3}, Landroid/widget/GridView;->setFastScrollEnabled(Z)V

    .line 773
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 776
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 777
    invoke-static {v6}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v2

    invoke-static {v6}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v3

    invoke-virtual {v0, v2, v4, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 778
    iget-object v2, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v2, v7, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 779
    invoke-virtual {v1, v0, v7, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 783
    new-instance v2, Landroid/widget/RelativeLayout;

    invoke-direct {v2, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 784
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v2, v0, v7, v7}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    .line 787
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->mProgressView:Landroid/widget/LinearLayout;

    .line 788
    const/16 v3, 0x11

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 789
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->mProgressView:Landroid/widget/LinearLayout;

    new-instance v3, Landroid/widget/ProgressBar;

    invoke-direct {v3, p0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 790
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->mProgressView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0, v7, v7}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    .line 795
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->mTipsView:Landroid/widget/TextView;

    .line 796
    const/16 v3, 0x11

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 797
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->mTipsView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setClickable(Z)V

    .line 798
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->mTipsView:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 799
    iget-object v3, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->mTipsView:Landroid/widget/TextView;

    const-string v0, "\u6ca1\u6709\u5728\u5f53\u524d\u5206\u7c7b\u4e2d\u641c\u7d22\u5230\u7ed3\u679c"

    const-string v4, "No search results were found in the current category"

    invoke-static {v0, v4}, Lcom/s1243808733/util/Utils;->zhOrEn(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 800
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->mTipsView:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 801
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->mTipsView:Landroid/widget/TextView;

    const v3, 0x1010036

    invoke-static {p0, v3}, Lcom/s1243808733/util/Utils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 803
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->mTipsView:Landroid/widget/TextView;

    invoke-static {v6}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v3

    invoke-static {v6}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v4

    invoke-static {v6}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v5

    invoke-static {v6}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v6

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 805
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->mTipsView:Landroid/widget/TextView;

    invoke-virtual {v2, v0, v7, v7}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    .line 809
    invoke-virtual {v1, v2, v7, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    return-object v1

    .line 744
    :cond_0
    const-string v0, "Loading..."

    goto/16 :goto_0
.end method

.method private static getIconZip()Ljava/io/File;
    .locals 1

    .line 600
    sget-object v0, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->iconZipFile:Ljava/io/File;

    return-object v0
.end method

.method public static getIs(Lcom/s1243808733/aide/application/activity/icons/Icon;)Ljava/io/InputStream;
    .locals 8

    const/4 v1, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 280
    const-string v0, "filePath"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/s1243808733/aide/application/activity/icons/Icon;->getFilePath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v0, v2}, Lcom/blankj/utilcode/util/LogUtils;->iTag(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 283
    :try_start_0
    new-instance v2, Ljava/util/zip/ZipFile;

    invoke-static {}, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->getIconZip()Ljava/io/File;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 284
    :try_start_1
    invoke-virtual {p0}, Lcom/s1243808733/aide/application/activity/icons/Icon;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    .line 285
    invoke-virtual {v2, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v0

    .line 286
    new-instance v3, Ljava/io/File;

    invoke-static {}, Lcom/s1243808733/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Application;->getCacheDir()Ljava/io/File;

    move-result-object v4

    const-string v5, "iconis.tmp"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 287
    invoke-static {v3, v0}, Lcom/blankj/utilcode/util/FileIOUtils;->writeFileFromIS(Ljava/io/File;Ljava/io/InputStream;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 288
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 293
    new-array v1, v7, [Ljava/io/Closeable;

    aput-object v2, v1, v6

    invoke-static {v1}, Lcom/blankj/utilcode/util/CloseUtils;->closeIOQuietly([Ljava/io/Closeable;)V

    :goto_0
    return-object v0

    :cond_0
    new-array v0, v7, [Ljava/io/Closeable;

    aput-object v2, v0, v6

    invoke-static {v0}, Lcom/blankj/utilcode/util/CloseUtils;->closeIOQuietly([Ljava/io/Closeable;)V

    :goto_1
    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v2, v1

    .line 291
    :goto_2
    const/4 v3, 0x1

    :try_start_2
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v3}, Lcom/blankj/utilcode/util/LogUtils;->i([Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 293
    new-array v0, v7, [Ljava/io/Closeable;

    aput-object v2, v0, v6

    invoke-static {v0}, Lcom/blankj/utilcode/util/CloseUtils;->closeIOQuietly([Ljava/io/Closeable;)V

    goto :goto_1

    :catchall_1
    move-exception v0

    new-array v1, v7, [Ljava/io/Closeable;

    aput-object v2, v1, v6

    invoke-static {v1}, Lcom/blankj/utilcode/util/CloseUtils;->closeIOQuietly([Ljava/io/Closeable;)V

    .line 294
    throw v0

    .line 293
    :catchall_2
    move-exception v0

    goto :goto_2
.end method

.method public static getSvg(Lcom/s1243808733/aide/application/activity/icons/Icon;)Ljava/lang/String;
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 300
    :try_start_0
    invoke-static {p0}, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->getIs(Lcom/s1243808733/aide/application/activity/icons/Icon;)Ljava/io/InputStream;

    move-result-object v1

    .line 301
    const-string v0, "utf-8"

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/ConvertUtils;->inputStream2String(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 302
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/io/Closeable;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-static {v2}, Lcom/blankj/utilcode/util/CloseUtils;->closeIOQuietly([Ljava/io/Closeable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 308
    :goto_0
    return-object v0

    .line 302
    :catchall_0
    move-exception v0

    .line 305
    new-array v1, v5, [Ljava/lang/Object;

    aput-object v0, v1, v4

    invoke-static {v1}, Lcom/blankj/utilcode/util/LogUtils;->i([Ljava/lang/Object;)V

    .line 308
    const-string v0, ""

    goto :goto_0
.end method

.method public static parseSvgToXml(Lcom/s1243808733/aide/application/activity/icons/Icon;)Ljava/lang/String;
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 313
    :try_start_0
    invoke-static {p0}, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->getIs(Lcom/s1243808733/aide/application/activity/icons/Icon;)Ljava/io/InputStream;

    move-result-object v0

    .line 314
    const-string v1, "utf-8"

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/ConvertUtils;->inputStream2String(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 315
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/io/Closeable;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v2}, Lcom/blankj/utilcode/util/CloseUtils;->closeIOQuietly([Ljava/io/Closeable;)V

    .line 316
    invoke-static {v1}, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->parseSvgToXml(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 321
    :goto_0
    return-object v0

    .line 316
    :catchall_0
    move-exception v0

    .line 318
    new-array v1, v5, [Ljava/lang/Object;

    aput-object v0, v1, v4

    invoke-static {v1}, Lcom/blankj/utilcode/util/LogUtils;->i([Ljava/lang/Object;)V

    .line 321
    const-string v0, ""

    goto :goto_0
.end method

.method public static parseSvgToXml(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v3, -0x1

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
    invoke-static {v0, v0, v3, v3}, Lcom/github/megatronking/svg/generator/svg/Svg2Vector;->parseSvgToXml(Ljava/io/File;Ljava/io/File;II)Ljava/lang/String;

    .line 328
    invoke-static {v0}, Lcom/blankj/utilcode/util/FileIOUtils;->readFile2String(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .line 329
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-object v1
.end method

.method private showMsgDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 115
    invoke-static {p0, p1, p2}, Lcom/s1243808733/util/Utils;->showMsgDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 106
    invoke-super {p0, p1}, Lcom/s1243808733/app/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 107
    invoke-direct {p0}, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->setContentView(Landroid/view/View;)V

    .line 108
    invoke-virtual {p0}, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u56fe\u6807\u4e2d\u5fc3"

    :goto_0
    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 109
    invoke-virtual {p0}, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 111
    new-instance v0, Lcom/s1243808733/aide/application/activity/icons/IconActivity$loadIconTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/s1243808733/aide/application/activity/icons/IconActivity$loadIconTask;-><init>(Lcom/s1243808733/aide/application/activity/icons/IconActivity;Lcom/s1243808733/aide/application/activity/icons/IconActivity$loadIconTask-IA;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/s1243808733/aide/application/activity/icons/IconActivity$loadIconTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    .line 108
    :cond_0
    const-string v0, "Material Icon"

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 825
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u5206\u7c7b"

    :goto_0
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

    move-result v0

    return v0

    .line 825
    :cond_0
    const-string v0, "Categories"

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 120
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->adapter:Lcom/s1243808733/aide/application/activity/icons/IconAdapter;

    invoke-virtual {v0, p3}, Lcom/s1243808733/aide/application/activity/icons/IconAdapter;->getItem(I)Lcom/s1243808733/aide/application/activity/icons/Icon;

    move-result-object v3

    .line 121
    new-instance v4, Landroid/widget/PopupMenu;

    invoke-direct {v4, p0, p2}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 122
    invoke-virtual {v4}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v5

    .line 124
    new-instance v6, Ljava/io/File;

    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    sget-object v8, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-direct {v0, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v7, "Icon"

    invoke-direct {v6, v0, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 125
    invoke-static {}, Lcom/s1243808733/aide/util/ProjectUtils;->getCurrentProject()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/aide/util/ProjectUtils;->getRes(Ljava/io/File;)Ljava/io/File;

    move-result-object v7

    .line 127
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u6dfb\u52a0\u5230\u5de5\u7a0b"

    :goto_0
    invoke-interface {v5, v0}, Landroid/view/Menu;->addSubMenu(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v8

    .line 128
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\u6dfb\u52a0\u4e3aPNG"

    :goto_1
    invoke-interface {v8, v2, v1, v1, v0}, Landroid/view/SubMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v9, Lcom/s1243808733/aide/application/activity/icons/IconActivity$1;

    invoke-direct {v9, p0, v3, v7}, Lcom/s1243808733/aide/application/activity/icons/IconActivity$1;-><init>(Lcom/s1243808733/aide/application/activity/icons/IconActivity;Lcom/s1243808733/aide/application/activity/icons/Icon;Ljava/io/File;)V

    invoke-interface {v0, v9}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 136
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "\u6dfb\u52a0\u4e3aVector"

    :goto_2
    invoke-interface {v8, v2, v1, v1, v0}, Landroid/view/SubMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v9, Lcom/s1243808733/aide/application/activity/icons/IconActivity$2;

    invoke-direct {v9, p0, v3, v7}, Lcom/s1243808733/aide/application/activity/icons/IconActivity$2;-><init>(Lcom/s1243808733/aide/application/activity/icons/IconActivity;Lcom/s1243808733/aide/application/activity/icons/Icon;Ljava/io/File;)V

    invoke-interface {v0, v9}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    if-nez v7, :cond_3

    move v0, v1

    .line 186
    :goto_3
    invoke-interface {v8, v2, v0}, Landroid/view/SubMenu;->setGroupEnabled(IZ)V

    .line 189
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "\u5bfc\u51fa\u56fe\u6807"

    :goto_4
    invoke-interface {v5, v0}, Landroid/view/Menu;->addSubMenu(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v1

    .line 190
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "\u5bfc\u51fa\u4e3aPNG"

    :goto_5
    invoke-interface {v1, v0}, Landroid/view/SubMenu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v2, Lcom/s1243808733/aide/application/activity/icons/IconActivity$3;

    invoke-direct {v2, p0, v6, v3}, Lcom/s1243808733/aide/application/activity/icons/IconActivity$3;-><init>(Lcom/s1243808733/aide/application/activity/icons/IconActivity;Ljava/io/File;Lcom/s1243808733/aide/application/activity/icons/Icon;)V

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 201
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "\u5bfc\u51fa\u4e3aVector"

    :goto_6
    invoke-interface {v1, v0}, Landroid/view/SubMenu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v2, Lcom/s1243808733/aide/application/activity/icons/IconActivity$4;

    invoke-direct {v2, p0, v6, v3}, Lcom/s1243808733/aide/application/activity/icons/IconActivity$4;-><init>(Lcom/s1243808733/aide/application/activity/icons/IconActivity;Ljava/io/File;Lcom/s1243808733/aide/application/activity/icons/Icon;)V

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 214
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "\u5bfc\u51fa\u4e3aSVG"

    :goto_7
    invoke-interface {v1, v0}, Landroid/view/SubMenu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/s1243808733/aide/application/activity/icons/IconActivity$5;

    invoke-direct {v1, p0, v6, v3}, Lcom/s1243808733/aide/application/activity/icons/IconActivity$5;-><init>(Lcom/s1243808733/aide/application/activity/icons/IconActivity;Ljava/io/File;Lcom/s1243808733/aide/application/activity/icons/Icon;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 228
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "\u8f6c\u6362\u4e3aSvg"

    :goto_8
    invoke-interface {v5, v0}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/s1243808733/aide/application/activity/icons/IconActivity$6;

    invoke-direct {v1, p0, v3}, Lcom/s1243808733/aide/application/activity/icons/IconActivity$6;-><init>(Lcom/s1243808733/aide/application/activity/icons/IconActivity;Lcom/s1243808733/aide/application/activity/icons/Icon;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 253
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "\u8f6c\u6362\u4e3aVector"

    :goto_9
    invoke-interface {v5, v0}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/s1243808733/aide/application/activity/icons/IconActivity$7;

    invoke-direct {v1, p0, v3}, Lcom/s1243808733/aide/application/activity/icons/IconActivity$7;-><init>(Lcom/s1243808733/aide/application/activity/icons/IconActivity;Lcom/s1243808733/aide/application/activity/icons/Icon;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 276
    invoke-virtual {v4}, Landroid/widget/PopupMenu;->show()V

    return-void

    .line 127
    :cond_0
    const-string v0, "Add to project"

    goto/16 :goto_0

    .line 128
    :cond_1
    const-string v0, "Add as png"

    goto/16 :goto_1

    .line 136
    :cond_2
    const-string v0, "Add as vector"

    goto/16 :goto_2

    :cond_3
    move v0, v2

    goto/16 :goto_3

    .line 189
    :cond_4
    const-string v0, "Export Icon"

    goto :goto_4

    .line 190
    :cond_5
    const-string v0, "Export to png"

    goto :goto_5

    .line 201
    :cond_6
    const-string v0, "Export to vector"

    goto :goto_6

    .line 214
    :cond_7
    const-string v0, "Export to svg"

    goto :goto_7

    .line 228
    :cond_8
    const-string v0, "Convert to svg"

    goto :goto_8

    .line 253
    :cond_9
    const-string v0, "Convert to vector"

    goto :goto_9
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 893
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 898
    :goto_0
    invoke-super {p0, p1}, Lcom/s1243808733/app/base/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 895
    :cond_0
    invoke-virtual {p0}, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->finish()V

    goto :goto_0
.end method

.method setAdapterData(Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x1

    .line 730
    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->currentTag:Ljava/lang/String;

    .line 731
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->adapter:Lcom/s1243808733/aide/application/activity/icons/IconAdapter;

    invoke-virtual {v0}, Lcom/s1243808733/aide/application/activity/icons/IconAdapter;->reset()V

    .line 732
    iget-object v1, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->adapter:Lcom/s1243808733/aide/application/activity/icons/IconAdapter;

    sget-object v0, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->sData:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {v1, v0}, Lcom/s1243808733/aide/application/activity/icons/IconAdapter;->setList(Ljava/util/List;)V

    .line 733
    iget-object v1, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->mEditText:Landroid/widget/EditText;

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\u5728%d\u4e2a\u56fe\u6807\u4e2d\u641c\u7d22..."

    :goto_0
    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->adapter:Lcom/s1243808733/aide/application/activity/icons/IconAdapter;

    invoke-virtual {v4}, Lcom/s1243808733/aide/application/activity/icons/IconAdapter;->getCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 734
    invoke-virtual {p0}, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 735
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/icons/IconActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setEnabled(Z)V

    :cond_0
    return-void

    .line 733
    :cond_1
    const-string v0, "Search in %d icon"

    goto :goto_0
.end method
