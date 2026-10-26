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
.field public static MAX_DISPLAY_CMD_MENU_ITEM_COUNT:I = 0x5


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
.method static bridge synthetic -$$Nest$fgetmActivity(Lcom/s1243808733/aide/GradleBuildEvent;)Lcom/s1243808733/aide/AideMainActivity;
    .locals 1

    iget-object v0, p0, Lcom/s1243808733/aide/GradleBuildEvent;->mActivity:Lcom/s1243808733/aide/AideMainActivity;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Lcom/s1243808733/aide/api/MainActivityEventWrapper;-><init>()V

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/s1243808733/aide/GradleBuildEvent;->mFastClickRecorder:Ljava/util/Map;

    return-void
.end method

.method private createIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4

    .line 294
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

    .line 296
    const/high16 v1, 0x41b00000    # 22.0f

    invoke-static {v1}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v1

    const/high16 v2, 0x41b00000    # 22.0f

    invoke-static {v2}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/blankj/utilcode/util/ImageUtils;->scale(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :goto_0
    return-object v0

    :catchall_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private createText(Lcom/s1243808733/aide/util/Command;)Ljava/lang/CharSequence;
    .locals 2

    .line 270
    invoke-virtual {p1}, Lcom/s1243808733/aide/util/Command;->getCmd()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gradle "

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    const-string v0, "ic_run_gradle"

    .line 273
    :goto_0
    invoke-virtual {p1}, Lcom/s1243808733/aide/util/Command;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/s1243808733/aide/GradleBuildEvent;->createText(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 270
    :cond_0
    const-string v0, "ic_run_cmd"

    goto :goto_0
.end method

.method private createText(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 4

    const/4 v3, 0x2

    .line 277
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/blankj/utilcode/util/SpanUtils;->with(Landroid/widget/TextView;)Lcom/blankj/utilcode/util/SpanUtils;

    move-result-object v0

    .line 280
    invoke-direct {p0, p1}, Lcom/s1243808733/aide/GradleBuildEvent;->createIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 282
    invoke-virtual {v0, v1, v3}, Lcom/blankj/utilcode/util/SpanUtils;->appendImage(Landroid/graphics/Bitmap;I)Lcom/blankj/utilcode/util/SpanUtils;

    move-result-object v1

    .line 283
    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v2}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/blankj/utilcode/util/SpanUtils;->appendSpace(I)Lcom/blankj/utilcode/util/SpanUtils;

    .line 285
    :cond_0
    invoke-virtual {v0, p2}, Lcom/blankj/utilcode/util/SpanUtils;->append(Ljava/lang/CharSequence;)Lcom/blankj/utilcode/util/SpanUtils;

    .line 287
    invoke-virtual {v0, v3}, Lcom/blankj/utilcode/util/SpanUtils;->setVerticalAlign(I)Lcom/blankj/utilcode/util/SpanUtils;

    .line 289
    invoke-virtual {v0}, Lcom/blankj/utilcode/util/SpanUtils;->create()Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method private saveFile()V
    .locals 0

    .line 242
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->saveFiles()V

    return-void
.end method

.method public static trimBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 11

    const/4 v2, 0x0

    .line 306
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 307
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 310
    mul-int v0, v3, v7

    new-array v1, v0, [I

    move-object v0, p0

    move v4, v2

    move v5, v2

    move v6, v3

    .line 311
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    move v5, v2

    move v0, v3

    move v8, v2

    move v4, v7

    move v6, v2

    :goto_0
    if-ge v6, v7, :cond_5

    move v9, v2

    :goto_1
    if-ge v9, v3, :cond_4

    .line 314
    mul-int v10, v6, v3

    add-int/2addr v10, v9

    aget v10, v1, v10

    .line 315
    invoke-static {v10}, Landroid/graphics/Color;->alpha(I)I

    move-result v10

    if-eqz v10, :cond_3

    if-ge v9, v0, :cond_0

    move v0, v9

    :cond_0
    if-le v9, v8, :cond_1

    move v8, v9

    :cond_1
    if-ge v6, v4, :cond_2

    move v4, v6

    :cond_2
    if-le v6, v5, :cond_3

    move v5, v6

    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 327
    :cond_5
    sub-int v1, v8, v0

    add-int/lit8 v1, v1, 0x1

    sub-int v2, v5, v4

    add-int/lit8 v2, v2, 0x1

    invoke-static {p0, v0, v4, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getProcessKill()V
    .locals 4

    .line 229
    iget-object v0, p0, Lcom/s1243808733/aide/GradleBuildEvent;->mActivity:Lcom/s1243808733/aide/AideMainActivity;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Lcom/s1243808733/aide/AideMainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 231
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    .line 232
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 233
    iget-object v2, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string v3, "com.aide.ui:Termux"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 234
    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 42
    invoke-super {p0, p1, p2}, Lcom/s1243808733/aide/api/MainActivityEventWrapper;->onCreate(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 43
    check-cast p1, Lcom/s1243808733/aide/AideMainActivity;

    iput-object p1, p0, Lcom/s1243808733/aide/GradleBuildEvent;->mActivity:Lcom/s1243808733/aide/AideMainActivity;

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/s1243808733/aide/GradleBuildEvent;->mOptionsMenu:Landroid/view/Menu;

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    const/4 v0, 0x1

    .line 65
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x7f08010f

    if-ne v1, v2, :cond_2

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

    if-eqz v1, :cond_3

    .line 73
    invoke-static {}, Lcom/s1243808733/aide/util/ProjectUtils;->getCurrentProject()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 74
    invoke-static {v1}, Lcom/s1243808733/aide/util/ProjectUtils;->isGradleProject(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 75
    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    .line 77
    invoke-virtual {p0, p1, v1}, Lcom/s1243808733/aide/GradleBuildEvent;->showGradleBuildDialog(Landroid/view/MenuItem;Ljava/lang/String;)V

    goto :goto_0

    .line 87
    :cond_1
    iget-object v0, p0, Lcom/s1243808733/aide/GradleBuildEvent;->mActivity:Lcom/s1243808733/aide/AideMainActivity;

    invoke-static {v0}, Lcom/blankj/utilcode/util/KeyboardUtils;->hideSoftInput(Landroid/app/Activity;)V

    .line 91
    :cond_2
    invoke-super {p0, p1}, Lcom/s1243808733/aide/api/MainActivityEventWrapper;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0

    .line 82
    :cond_3
    invoke-virtual {p0, p1}, Lcom/s1243808733/aide/GradleBuildEvent;->showBuildDialog(Landroid/view/MenuItem;)V

    goto :goto_0
.end method

.method showBuildDialog(Landroid/view/MenuItem;)V
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/s1243808733/aide/GradleBuildEvent;->mActivity:Lcom/s1243808733/aide/AideMainActivity;

    invoke-static {v0}, Lcom/blankj/utilcode/util/KeyboardUtils;->hideSoftInput(Landroid/app/Activity;)V

    .line 96
    iget-object v0, p0, Lcom/s1243808733/aide/GradleBuildEvent;->mActivity:Lcom/s1243808733/aide/AideMainActivity;

    invoke-virtual {v0, p1}, Lcom/s1243808733/aide/AideMainActivity;->superOnOptionsItemSelected(Landroid/view/MenuItem;)Z

    return-void
.end method

.method showGradleBuildDialog(Landroid/view/MenuItem;Ljava/lang/String;)V
    .locals 9

    .line 150
    invoke-static {}, Lcom/s1243808733/aide/util/CustomCommand;->getCommands()[Lcom/s1243808733/aide/util/Command;

    move-result-object v1

    .line 151
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v2

    .line 154
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    if-eqz v2, :cond_0

    .line 157
    const-string v0, "\u6784\u5efa\u5e94\u7528"

    :goto_0
    const-string v4, "ic_run_build"

    invoke-direct {p0, v4, v0}, Lcom/s1243808733/aide/GradleBuildEvent;->createText(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    const-string v4, "build"

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    const-string v0, "ic_run_refresh"

    iget-object v4, p0, Lcom/s1243808733/aide/GradleBuildEvent;->mActivity:Lcom/s1243808733/aide/AideMainActivity;

    const v5, 0x7f0d0064

    invoke-virtual {v4, v5}, Lcom/s1243808733/aide/AideMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v0, v4}, Lcom/s1243808733/aide/GradleBuildEvent;->createText(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    const-string v4, "rebuild"

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v2, :cond_1

    .line 160
    const-string v0, "\u8fd0\u884c\u7ec8\u7aef"

    :goto_1
    const-string v4, "ic_run_terminal"

    invoke-direct {p0, v4, v0}, Lcom/s1243808733/aide/GradleBuildEvent;->createText(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    const-string v4, "terminal"

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 162
    :goto_2
    array-length v4, v1

    if-ge v0, v4, :cond_2

    sget v4, Lcom/s1243808733/aide/GradleBuildEvent;->MAX_DISPLAY_CMD_MENU_ITEM_COUNT:I

    if-gt v0, v4, :cond_2

    .line 163
    aget-object v4, v1, v0

    .line 164
    invoke-direct {p0, v4}, Lcom/s1243808733/aide/GradleBuildEvent;->createText(Lcom/s1243808733/aide/util/Command;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 157
    :cond_0
    const-string v0, "Build"

    goto :goto_0

    .line 160
    :cond_1
    const-string v0, "Terminal"

    goto :goto_1

    .line 170
    :cond_2
    iget-object v0, p0, Lcom/s1243808733/aide/GradleBuildEvent;->mActivity:Lcom/s1243808733/aide/AideMainActivity;

    new-instance v4, Landroid/widget/PopupMenu;

    const v5, 0x7f08010f

    invoke-virtual {v0, v5}, Lcom/s1243808733/aide/AideMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-direct {v4, v0, v5}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 172
    invoke-virtual {v4}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v5

    .line 174
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 175
    invoke-interface {v5, v0}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v7

    new-instance v8, Lcom/s1243808733/aide/GradleBuildEvent$2;

    invoke-direct {v8, p0, v3, v0, p1}, Lcom/s1243808733/aide/GradleBuildEvent$2;-><init>(Lcom/s1243808733/aide/GradleBuildEvent;Ljava/util/Map;Ljava/lang/CharSequence;Landroid/view/MenuItem;)V

    .line 176
    invoke-interface {v7, v8}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_3

    .line 207
    :cond_3
    array-length v0, v1

    sget v3, Lcom/s1243808733/aide/GradleBuildEvent;->MAX_DISPLAY_CMD_MENU_ITEM_COUNT:I

    if-le v0, v3, :cond_5

    if-eqz v2, :cond_4

    .line 208
    const-string v0, "\u66f4\u591a\u547d\u4ee4.."

    :goto_4
    const-string v2, "ic_run_more_vert"

    invoke-direct {p0, v2, v0}, Lcom/s1243808733/aide/GradleBuildEvent;->createText(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v5, v0}, Landroid/view/Menu;->addSubMenu(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v2

    .line 209
    sget v0, Lcom/s1243808733/aide/GradleBuildEvent;->MAX_DISPLAY_CMD_MENU_ITEM_COUNT:I

    :goto_5
    array-length v3, v1

    if-ge v0, v3, :cond_5

    .line 210
    aget-object v3, v1, v0

    .line 211
    invoke-direct {p0, v3}, Lcom/s1243808733/aide/GradleBuildEvent;->createText(Lcom/s1243808733/aide/util/Command;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v2, v5}, Landroid/view/SubMenu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v5

    new-instance v6, Lcom/s1243808733/aide/GradleBuildEvent$3;

    invoke-direct {v6, p0, v3}, Lcom/s1243808733/aide/GradleBuildEvent$3;-><init>(Lcom/s1243808733/aide/GradleBuildEvent;Lcom/s1243808733/aide/util/Command;)V

    .line 212
    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 208
    :cond_4
    const-string v0, "More commands.."

    goto :goto_4

    .line 223
    :cond_5
    invoke-virtual {v4}, Landroid/widget/PopupMenu;->show()V

    return-void
.end method

.method verifyClick(I)Z
    .locals 4

    .line 54
    iget-object v0, p0, Lcom/s1243808733/aide/GradleBuildEvent;->mFastClickRecorder:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/s1243808733/aide/GradleBuildEvent;->mFastClickRecorder:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sub-long v0, v2, v0

    const-wide/16 v2, 0x12c

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x0

    .line 59
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/s1243808733/aide/GradleBuildEvent;->mFastClickRecorder:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    goto :goto_0
.end method
