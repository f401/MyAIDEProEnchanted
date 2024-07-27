.class public Lcom/s1243808733/aide/GradleBuildEvent;
.super Lcom/s1243808733/aide/api/MainActivityEventWrapper;
.source "GradleBuildEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/s1243808733/aide/GradleBuildEvent$Option;
    }
.end annotation


# static fields
.field public static MAX_DISPLAY_CMD_MENU_ITEM_COUNT:I


# instance fields
.field private mActivity:Lcom/s1243808733/aide/AideMainActivity;

.field mFastClickRecorder:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mOptionsMenu:Landroid/view/Menu;


# direct methods
.method static final constructor <clinit>()V
    .registers 1

    const/4 v0, 0x5

    sput v0, Lcom/s1243808733/aide/GradleBuildEvent;->MAX_DISPLAY_CMD_MENU_ITEM_COUNT:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 323
    invoke-direct {p0}, Lcom/s1243808733/aide/api/MainActivityEventWrapper;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/s1243808733/aide/GradleBuildEvent;->mFastClickRecorder:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$L1000000(Lcom/s1243808733/aide/GradleBuildEvent;)Lcom/s1243808733/aide/AideMainActivity;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/aide/GradleBuildEvent;->mActivity:Lcom/s1243808733/aide/AideMainActivity;

    return-object v0
.end method

.method static synthetic access$S1000000(Lcom/s1243808733/aide/GradleBuildEvent;Lcom/s1243808733/aide/AideMainActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/s1243808733/aide/GradleBuildEvent;->mActivity:Lcom/s1243808733/aide/AideMainActivity;

    return-void
.end method

.method private createIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 6

    const/16 v3, 0x16

    .line 289
    :try_start_0
    iget-object v0, p0, Lcom/s1243808733/aide/GradleBuildEvent;->mActivity:Lcom/s1243808733/aide/AideMainActivity;

    invoke-static {p1}, Lcom/blankj/utilcode/util/ResourceUtils;->getDrawableIdByName(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/s1243808733/aide/AideMainActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/ImageUtils;->drawable2Bitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/s1243808733/aide/GradleBuildEvent;->mActivity:Lcom/s1243808733/aide/AideMainActivity;

    const v2, 0x1010036

    invoke-static {v1, v2}, Lcom/s1243808733/util/Utils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/s1243808733/aide/application/activity/icons/IconActivity$ImageUtils;->drawColor(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 291
    int-to-float v1, v3

    invoke-static {v1}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v1

    int-to-float v2, v3

    invoke-static {v2}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/blankj/utilcode/util/ImageUtils;->scale(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 295
    :goto_0
    return-object v0

    .line 293
    :catch_0
    move-exception v0

    .line 295
    const/4 v0, 0x0

    check-cast v0, Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method private createText(Lcom/s1243808733/aide/util/Command;)Ljava/lang/CharSequence;
    .registers 5

    .line 264
    const-string v0, "ic_run_cmd"

    .line 265
    invoke-virtual {p1}, Lcom/s1243808733/aide/util/Command;->getCmd()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "gradle "

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 266
    const-string v0, "ic_run_gradle"

    .line 268
    :cond_0
    invoke-virtual {p1}, Lcom/s1243808733/aide/util/Command;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/s1243808733/aide/GradleBuildEvent;->createText(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private createText(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 7

    const/4 v3, 0x2

    .line 272
    const/4 v0, 0x0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0}, Lcom/blankj/utilcode/util/SpanUtils;->with(Landroid/widget/TextView;)Lcom/blankj/utilcode/util/SpanUtils;

    move-result-object v0

    .line 275
    invoke-direct {p0, p1}, Lcom/s1243808733/aide/GradleBuildEvent;->createIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 276
    if-eqz v1, :cond_0

    .line 277
    invoke-virtual {v0, v1, v3}, Lcom/blankj/utilcode/util/SpanUtils;->appendImage(Landroid/graphics/Bitmap;I)Lcom/blankj/utilcode/util/SpanUtils;

    move-result-object v1

    const/16 v2, 0xa

    int-to-float v2, v2

    invoke-static {v2}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/blankj/utilcode/util/SpanUtils;->appendSpace(I)Lcom/blankj/utilcode/util/SpanUtils;

    .line 280
    :cond_0
    invoke-virtual {v0, p2}, Lcom/blankj/utilcode/util/SpanUtils;->append(Ljava/lang/CharSequence;)Lcom/blankj/utilcode/util/SpanUtils;

    .line 282
    invoke-virtual {v0, v3}, Lcom/blankj/utilcode/util/SpanUtils;->setVerticalAlign(I)Lcom/blankj/utilcode/util/SpanUtils;

    .line 284
    invoke-virtual {v0}, Lcom/blankj/utilcode/util/SpanUtils;->create()Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method private saveFile()V
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 237
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->saveFiles()V

    return-void
.end method

.method public static trimBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 12

    const/4 v2, 0x0

    .line 301
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 302
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 305
    mul-int v0, v3, v7

    new-array v1, v0, [I

    move-object v0, p0

    move v4, v2

    move v5, v2

    move v6, v3

    .line 306
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    move v0, v2

    move v5, v3

    move v6, v2

    move v8, v7

    move v4, v2

    .line 307
    :goto_0
    if-lt v4, v7, :cond_0

    .line 322
    sub-int v1, v6, v5

    add-int/lit8 v1, v1, 0x1

    sub-int/2addr v0, v8

    add-int/lit8 v0, v0, 0x1

    invoke-static {p0, v5, v8, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_0
    move v9, v2

    .line 308
    :goto_1
    if-lt v9, v3, :cond_1

    .line 307
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 309
    :cond_1
    mul-int v10, v4, v3

    add-int/2addr v10, v9

    aget v10, v1, v10

    .line 310
    invoke-static {v10}, Landroid/graphics/Color;->alpha(I)I

    move-result v10

    if-eqz v10, :cond_5

    .line 311
    if-ge v9, v5, :cond_2

    move v5, v9

    .line 313
    :cond_2
    if-le v9, v6, :cond_3

    move v6, v9

    .line 315
    :cond_3
    if-ge v4, v8, :cond_4

    move v8, v4

    .line 317
    :cond_4
    if-le v4, v0, :cond_5

    move v0, v4

    .line 308
    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_1
.end method


# virtual methods
.method public getProcessKill()V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 224
    iget-object v0, p0, Lcom/s1243808733/aide/GradleBuildEvent;->mActivity:Lcom/s1243808733/aide/AideMainActivity;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Lcom/s1243808733/aide/AideMainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 225
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    .line 227
    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 229
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 227
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 228
    iget-object v2, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string v3, "com.aide.ui:Termux"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 229
    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    goto :goto_0
.end method

.method public onCreate(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 42
    invoke-super {p0, p1, p2}, Lcom/s1243808733/aide/api/MainActivityEventWrapper;->onCreate(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 43
    check-cast p1, Lcom/s1243808733/aide/AideMainActivity;

    iput-object p1, p0, Lcom/s1243808733/aide/GradleBuildEvent;->mActivity:Lcom/s1243808733/aide/AideMainActivity;

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/Menu;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 48
    iput-object p1, p0, Lcom/s1243808733/aide/GradleBuildEvent;->mOptionsMenu:Landroid/view/Menu;

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 5
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v0, 0x1

    .line 65
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 67
    const v2, 0x7f08010f

    if-ne v1, v2, :cond_3

    .line 69
    invoke-virtual {p0, v1}, Lcom/s1243808733/aide/GradleBuildEvent;->verifyClick(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 91
    :goto_0
    return v0

    .line 72
    :cond_0
    invoke-static {}, Lcom/s1243808733/aide/AdvancedSetting;->isEnableGradle()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 73
    invoke-static {}, Lcom/s1243808733/aide/util/ProjectUtils;->getCurrentProject()Ljava/io/File;

    move-result-object v1

    .line 74
    if-eqz v1, :cond_2

    invoke-static {v1}, Lcom/s1243808733/aide/util/ProjectUtils;->isGradleProject(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 75
    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    .line 77
    invoke-virtual {p0, p1, v1}, Lcom/s1243808733/aide/GradleBuildEvent;->showGradleBuildDialog(Landroid/view/MenuItem;Ljava/lang/String;)V

    goto :goto_0

    .line 82
    :cond_1
    invoke-virtual {p0, p1}, Lcom/s1243808733/aide/GradleBuildEvent;->showBuildDialog(Landroid/view/MenuItem;)V

    goto :goto_0

    .line 87
    :cond_2
    iget-object v0, p0, Lcom/s1243808733/aide/GradleBuildEvent;->mActivity:Lcom/s1243808733/aide/AideMainActivity;

    invoke-static {v0}, Lcom/blankj/utilcode/util/KeyboardUtils;->hideSoftInput(Landroid/app/Activity;)V

    .line 91
    :cond_3
    invoke-super {p0, p1}, Lcom/s1243808733/aide/api/MainActivityEventWrapper;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method showBuildDialog(Landroid/view/MenuItem;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/MenuItem;",
            ")V"
        }
    .end annotation

    .line 95
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    .line 98
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 101
    if-eqz v0, :cond_0

    const-string/jumbo v0, "\u6784\u5efa\u5e94\u7528"

    :goto_0
    const-string v2, "ic_run_build"

    invoke-direct {p0, v2, v0}, Lcom/s1243808733/aide/GradleBuildEvent;->createText(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    const-string v2, "build"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    const-string v0, "ic_run_refresh"

    iget-object v2, p0, Lcom/s1243808733/aide/GradleBuildEvent;->mActivity:Lcom/s1243808733/aide/AideMainActivity;

    const v3, 0x7f0d0064

    invoke-virtual {v2, v3}, Lcom/s1243808733/aide/AideMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/s1243808733/aide/GradleBuildEvent;->createText(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    const-string v2, "rebuild"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    new-instance v2, Landroid/widget/PopupMenu;

    iget-object v3, p0, Lcom/s1243808733/aide/GradleBuildEvent;->mActivity:Lcom/s1243808733/aide/AideMainActivity;

    iget-object v0, p0, Lcom/s1243808733/aide/GradleBuildEvent;->mActivity:Lcom/s1243808733/aide/AideMainActivity;

    const v4, 0x7f08010f

    invoke-virtual {v0, v4}, Lcom/s1243808733/aide/AideMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-direct {v2, v3, v0}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 107
    invoke-virtual {v2}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v3

    .line 109
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 110
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 138
    invoke-virtual {v2}, Landroid/widget/PopupMenu;->show()V

    return-void

    .line 101
    :cond_0
    const-string v0, "Build"

    goto :goto_0

    .line 109
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 110
    invoke-interface {v3, v0}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v5

    new-instance v6, Lcom/s1243808733/aide/GradleBuildEvent$100000000;

    invoke-direct {v6, p0, v1, v0, p1}, Lcom/s1243808733/aide/GradleBuildEvent$100000000;-><init>(Lcom/s1243808733/aide/GradleBuildEvent;Ljava/util/Map;Ljava/lang/CharSequence;Landroid/view/MenuItem;)V

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_1
.end method

.method showGradleBuildDialog(Landroid/view/MenuItem;Ljava/lang/String;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/MenuItem;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 145
    invoke-static {}, Lcom/s1243808733/aide/util/CustomCommand;->getCommands()[Lcom/s1243808733/aide/util/Command;

    move-result-object v1

    .line 146
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v2

    .line 149
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 152
    if-eqz v2, :cond_2

    const-string/jumbo v0, "\u6784\u5efa\u5e94\u7528"

    :goto_0
    const-string v4, "ic_run_build"

    invoke-direct {p0, v4, v0}, Lcom/s1243808733/aide/GradleBuildEvent;->createText(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    const-string v4, "build"

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    const-string v0, "ic_run_refresh"

    iget-object v4, p0, Lcom/s1243808733/aide/GradleBuildEvent;->mActivity:Lcom/s1243808733/aide/AideMainActivity;

    const v5, 0x7f0d0064

    invoke-virtual {v4, v5}, Lcom/s1243808733/aide/AideMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v0, v4}, Lcom/s1243808733/aide/GradleBuildEvent;->createText(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    const-string v4, "rebuild"

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    if-eqz v2, :cond_3

    const-string/jumbo v0, "\u8fd0\u884c\u7ec8\u7aef"

    :goto_1
    const-string v4, "ic_run_terminal"

    invoke-direct {p0, v4, v0}, Lcom/s1243808733/aide/GradleBuildEvent;->createText(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    const-string v4, "terminal"

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    const/4 v0, 0x0

    :goto_2
    array-length v4, v1

    if-ge v0, v4, :cond_0

    sget v4, Lcom/s1243808733/aide/GradleBuildEvent;->MAX_DISPLAY_CMD_MENU_ITEM_COUNT:I

    if-le v0, v4, :cond_4

    .line 165
    :cond_0
    new-instance v4, Landroid/widget/PopupMenu;

    iget-object v5, p0, Lcom/s1243808733/aide/GradleBuildEvent;->mActivity:Lcom/s1243808733/aide/AideMainActivity;

    iget-object v0, p0, Lcom/s1243808733/aide/GradleBuildEvent;->mActivity:Lcom/s1243808733/aide/AideMainActivity;

    const v6, 0x7f08010f

    invoke-virtual {v0, v6}, Lcom/s1243808733/aide/AideMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-direct {v4, v5, v0}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 167
    invoke-virtual {v4}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v5

    .line 169
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 170
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    .line 202
    array-length v0, v1

    sget v3, Lcom/s1243808733/aide/GradleBuildEvent;->MAX_DISPLAY_CMD_MENU_ITEM_COUNT:I

    if-le v0, v3, :cond_1

    .line 203
    if-eqz v2, :cond_6

    const-string/jumbo v0, "\u66f4\u591a\u547d\u4ee4.."

    :goto_4
    const-string v2, "ic_run_more_vert"

    invoke-direct {p0, v2, v0}, Lcom/s1243808733/aide/GradleBuildEvent;->createText(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v5, v0}, Landroid/view/Menu;->addSubMenu(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v2

    .line 204
    sget v0, Lcom/s1243808733/aide/GradleBuildEvent;->MAX_DISPLAY_CMD_MENU_ITEM_COUNT:I

    :goto_5
    array-length v3, v1

    if-lt v0, v3, :cond_7

    .line 218
    :cond_1
    invoke-virtual {v4}, Landroid/widget/PopupMenu;->show()V

    return-void

    .line 152
    :cond_2
    const-string v0, "Build"

    goto :goto_0

    .line 155
    :cond_3
    const-string v0, "Terminal"

    goto :goto_1

    .line 158
    :cond_4
    aget-object v4, v1, v0

    .line 159
    invoke-direct {p0, v4}, Lcom/s1243808733/aide/GradleBuildEvent;->createText(Lcom/s1243808733/aide/util/Command;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 169
    :cond_5
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 170
    invoke-interface {v5, v0}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v7

    new-instance v8, Lcom/s1243808733/aide/GradleBuildEvent$100000001;

    invoke-direct {v8, p0, v3, v0, p1}, Lcom/s1243808733/aide/GradleBuildEvent$100000001;-><init>(Lcom/s1243808733/aide/GradleBuildEvent;Ljava/util/Map;Ljava/lang/CharSequence;Landroid/view/MenuItem;)V

    invoke-interface {v7, v8}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_3

    .line 203
    :cond_6
    const-string v0, "More commands.."

    goto :goto_4

    .line 205
    :cond_7
    aget-object v3, v1, v0

    .line 206
    invoke-direct {p0, v3}, Lcom/s1243808733/aide/GradleBuildEvent;->createText(Lcom/s1243808733/aide/util/Command;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v2, v5}, Landroid/view/SubMenu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v5

    new-instance v6, Lcom/s1243808733/aide/GradleBuildEvent$100000002;

    invoke-direct {v6, p0, v3}, Lcom/s1243808733/aide/GradleBuildEvent$100000002;-><init>(Lcom/s1243808733/aide/GradleBuildEvent;Lcom/s1243808733/aide/util/Command;)V

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 204
    add-int/lit8 v0, v0, 0x1

    goto :goto_5
.end method

.method verifyClick(I)Z
    .registers 8

    .line 54
    iget-object v0, p0, Lcom/s1243808733/aide/GradleBuildEvent;->mFastClickRecorder:Ljava/util/Map;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/s1243808733/aide/GradleBuildEvent;->mFastClickRecorder:Ljava/util/Map;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sub-long v0, v2, v0

    const/16 v2, 0x12c

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 56
    const/4 v0, 0x0

    .line 60
    :goto_0
    return v0

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/s1243808733/aide/GradleBuildEvent;->mFastClickRecorder:Ljava/util/Map;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v2, Ljava/lang/Long;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Ljava/lang/Long;-><init>(J)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    const/4 v0, 0x1

    goto :goto_0
.end method
