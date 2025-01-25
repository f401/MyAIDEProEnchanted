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
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mOptionsMenu:Landroid/view/Menu;


# direct methods
.method static bridge synthetic -$$Nest$fgetmActivity(Lcom/s1243808733/aide/GradleBuildEvent;)Lcom/s1243808733/aide/AideMainActivity;
    .registers 1

    iget-object p0, p0, Lcom/s1243808733/aide/GradleBuildEvent;->mActivity:Lcom/s1243808733/aide/AideMainActivity;

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 32
    invoke-direct {p0}, Lcom/s1243808733/aide/api/MainActivityEventWrapper;-><init>()V

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/s1243808733/aide/GradleBuildEvent;->mFastClickRecorder:Ljava/util/Map;

    return-void
.end method

.method private createIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 5

    .line 294
    :try_start_0
    iget-object v0, p0, Lcom/s1243808733/aide/GradleBuildEvent;->mActivity:Lcom/s1243808733/aide/AideMainActivity;

    invoke-static {p1}, Lcom/blankj/utilcode/util/ResourceUtils;->getDrawableIdByName(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/s1243808733/aide/AideMainActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-static {p1}, Lcom/blankj/utilcode/util/ImageUtils;->drawable2Bitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p1

    iget-object v0, p0, Lcom/s1243808733/aide/GradleBuildEvent;->mActivity:Lcom/s1243808733/aide/AideMainActivity;

    const v1, 0x1010036

    invoke-static {v0, v1}, Lcom/s1243808733/util/Utils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/s1243808733/aide/application/activity/icons/IconActivity$ImageUtils;->drawColor(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 296
    const/high16 v0, 0x41b00000  # 22.0f

    invoke-static {v0}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v1

    invoke-static {v0}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v0

    const/4 v2, 0x1

    invoke-static {p1, v1, v0, v2}, Lcom/blankj/utilcode/util/ImageUtils;->scale(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_2a
    .catchall {:try_start_0 .. :try_end_2a} :catchall_2b

    return-object p1

    :catchall_2b
    move-exception p1

    const/4 p1, 0x0

    return-object p1
.end method

.method private createText(Lcom/s1243808733/aide/util/Command;)Ljava/lang/CharSequence;
    .registers 4

    .line 270
    invoke-virtual {p1}, Lcom/s1243808733/aide/util/Command;->getCmd()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gradle "

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 271
    const-string v0, "ic_run_gradle"

    goto :goto_15

    .line 270
    :cond_13
    const-string v0, "ic_run_cmd"

    .line 273
    :goto_15
    invoke-virtual {p1}, Lcom/s1243808733/aide/util/Command;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/s1243808733/aide/GradleBuildEvent;->createText(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method private createText(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 6

    .line 277
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/blankj/utilcode/util/SpanUtils;->with(Landroid/widget/TextView;)Lcom/blankj/utilcode/util/SpanUtils;

    move-result-object v0

    .line 280
    invoke-direct {p0, p1}, Lcom/s1243808733/aide/GradleBuildEvent;->createIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    const/4 v1, 0x2

    if-eqz p1, :cond_19

    .line 282
    invoke-virtual {v0, p1, v1}, Lcom/blankj/utilcode/util/SpanUtils;->appendImage(Landroid/graphics/Bitmap;I)Lcom/blankj/utilcode/util/SpanUtils;

    move-result-object p1

    .line 283
    const/high16 v2, 0x41200000  # 10.0f

    invoke-static {v2}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/blankj/utilcode/util/SpanUtils;->appendSpace(I)Lcom/blankj/utilcode/util/SpanUtils;

    .line 285
    :cond_19
    invoke-virtual {v0, p2}, Lcom/blankj/utilcode/util/SpanUtils;->append(Ljava/lang/CharSequence;)Lcom/blankj/utilcode/util/SpanUtils;

    .line 287
    invoke-virtual {v0, v1}, Lcom/blankj/utilcode/util/SpanUtils;->setVerticalAlign(I)Lcom/blankj/utilcode/util/SpanUtils;

    .line 289
    invoke-virtual {v0}, Lcom/blankj/utilcode/util/SpanUtils;->create()Landroid/text/SpannableStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method private saveFile()V
    .registers 1

    .line 242
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->saveFiles()V

    return-void
.end method

.method public static trimBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 12

    .line 306
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 307
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    .line 310
    mul-int v0, v9, v8

    new-array v10, v0, [I

    .line 311
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, v10

    move v3, v9

    move v6, v9

    move v7, v8

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    const/4 v0, 0x0

    move v3, v8

    move v2, v9

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1d
    if-ge v1, v8, :cond_3f

    const/4 v6, 0x0

    :goto_20
    if-ge v6, v9, :cond_3c

    .line 314
    mul-int v7, v1, v9

    add-int/2addr v7, v6

    aget v7, v10, v7

    .line 315
    invoke-static {v7}, Landroid/graphics/Color;->alpha(I)I

    move-result v7

    if-eqz v7, :cond_39

    if-ge v6, v2, :cond_30

    move v2, v6

    :cond_30
    if-le v6, v4, :cond_33

    move v4, v6

    :cond_33
    if-ge v1, v3, :cond_36

    move v3, v1

    :cond_36
    if-le v1, v5, :cond_39

    move v5, v1

    :cond_39
    add-int/lit8 v6, v6, 0x1

    goto :goto_20

    :cond_3c
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 327
    :cond_3f
    sub-int/2addr v4, v2

    add-int/lit8 v4, v4, 0x1

    sub-int/2addr v5, v3

    add-int/lit8 v5, v5, 0x1

    invoke-static {p0, v2, v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getProcessKill()V
    .registers 5

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

    move-result-object v0

    :cond_12
    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 233
    iget-object v2, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string v3, "com.aide.ui:Termux"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 234
    iget v1, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {v1}, Landroid/os/Process;->killProcess(I)V

    goto :goto_12

    :cond_2e
    return-void
.end method

.method public onCreate(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    .line 42
    invoke-super {p0, p1, p2}, Lcom/s1243808733/aide/api/MainActivityEventWrapper;->onCreate(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 43
    check-cast p1, Lcom/s1243808733/aide/AideMainActivity;

    iput-object p1, p0, Lcom/s1243808733/aide/GradleBuildEvent;->mActivity:Lcom/s1243808733/aide/AideMainActivity;

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)V
    .registers 2

    .line 48
    iput-object p1, p0, Lcom/s1243808733/aide/GradleBuildEvent;->mOptionsMenu:Landroid/view/Menu;

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 5

    .line 65
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f08010f

    if-ne v0, v1, :cond_35

    .line 69
    invoke-virtual {p0, v0}, Lcom/s1243808733/aide/GradleBuildEvent;->verifyClick(I)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_11

    return v1

    .line 72
    :cond_11
    invoke-static {}, Lcom/s1243808733/aide/AdvancedSetting;->isEnableGradle()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 73
    invoke-static {}, Lcom/s1243808733/aide/util/ProjectUtils;->getCurrentProject()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 74
    invoke-static {v0}, Lcom/s1243808733/aide/util/ProjectUtils;->isGradleProject(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 75
    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    .line 77
    invoke-virtual {p0, p1, v0}, Lcom/s1243808733/aide/GradleBuildEvent;->showGradleBuildDialog(Landroid/view/MenuItem;Ljava/lang/String;)V

    return v1

    .line 87
    :cond_2b
    iget-object v0, p0, Lcom/s1243808733/aide/GradleBuildEvent;->mActivity:Lcom/s1243808733/aide/AideMainActivity;

    invoke-static {v0}, Lcom/blankj/utilcode/util/KeyboardUtils;->hideSoftInput(Landroid/app/Activity;)V

    goto :goto_35

    .line 82
    :cond_31
    invoke-virtual {p0, p1}, Lcom/s1243808733/aide/GradleBuildEvent;->showBuildDialog(Landroid/view/MenuItem;)V

    return v1

    .line 91
    :cond_35
    :goto_35
    invoke-super {p0, p1}, Lcom/s1243808733/aide/api/MainActivityEventWrapper;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method showBuildDialog(Landroid/view/MenuItem;)V
    .registers 3

    .line 95
    iget-object v0, p0, Lcom/s1243808733/aide/GradleBuildEvent;->mActivity:Lcom/s1243808733/aide/AideMainActivity;

    invoke-static {v0}, Lcom/blankj/utilcode/util/KeyboardUtils;->hideSoftInput(Landroid/app/Activity;)V

    .line 96
    iget-object v0, p0, Lcom/s1243808733/aide/GradleBuildEvent;->mActivity:Lcom/s1243808733/aide/AideMainActivity;

    invoke-virtual {v0, p1}, Lcom/s1243808733/aide/AideMainActivity;->superOnOptionsItemSelected(Landroid/view/MenuItem;)Z

    return-void
.end method

.method showGradleBuildDialog(Landroid/view/MenuItem;Ljava/lang/String;)V
    .registers 11

    .line 150
    invoke-static {}, Lcom/s1243808733/aide/util/CustomCommand;->getCommands()[Lcom/s1243808733/aide/util/Command;

    move-result-object p2

    .line 151
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    .line 154
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    if-eqz v0, :cond_12

    .line 157
    const-string v2, "构建应用"

    goto :goto_14

    :cond_12
    const-string v2, "Build"

    :goto_14
    const-string v3, "ic_run_build"

    invoke-direct {p0, v3, v2}, Lcom/s1243808733/aide/GradleBuildEvent;->createText(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    const-string v3, "build"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    iget-object v2, p0, Lcom/s1243808733/aide/GradleBuildEvent;->mActivity:Lcom/s1243808733/aide/AideMainActivity;

    const v3, 0x7f0d0064

    invoke-virtual {v2, v3}, Lcom/s1243808733/aide/AideMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ic_run_refresh"

    invoke-direct {p0, v3, v2}, Lcom/s1243808733/aide/GradleBuildEvent;->createText(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    const-string v3, "rebuild"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_38

    .line 160
    const-string v2, "运行终端"

    goto :goto_3a

    :cond_38
    const-string v2, "Terminal"

    :goto_3a
    const-string v3, "ic_run_terminal"

    invoke-direct {p0, v3, v2}, Lcom/s1243808733/aide/GradleBuildEvent;->createText(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    const-string v3, "terminal"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    .line 162
    :goto_46
    array-length v3, p2

    if-ge v2, v3, :cond_59

    sget v3, Lcom/s1243808733/aide/GradleBuildEvent;->MAX_DISPLAY_CMD_MENU_ITEM_COUNT:I

    if-gt v2, v3, :cond_59

    .line 163
    aget-object v3, p2, v2

    .line 164
    invoke-direct {p0, v3}, Lcom/s1243808733/aide/GradleBuildEvent;->createText(Lcom/s1243808733/aide/util/Command;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_46

    .line 170
    :cond_59
    iget-object v2, p0, Lcom/s1243808733/aide/GradleBuildEvent;->mActivity:Lcom/s1243808733/aide/AideMainActivity;

    new-instance v3, Landroid/widget/PopupMenu;

    const v4, 0x7f08010f

    invoke-virtual {v2, v4}, Lcom/s1243808733/aide/AideMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 172
    invoke-virtual {v3}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    .line 174
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_73
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    .line 175
    invoke-interface {v2, v5}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v6

    new-instance v7, Lcom/s1243808733/aide/GradleBuildEvent$2;

    invoke-direct {v7, p0, v1, v5, p1}, Lcom/s1243808733/aide/GradleBuildEvent$2;-><init>(Lcom/s1243808733/aide/GradleBuildEvent;Ljava/util/Map;Ljava/lang/CharSequence;Landroid/view/MenuItem;)V

    .line 176
    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_73

    .line 207
    :cond_8c
    array-length p1, p2

    sget v1, Lcom/s1243808733/aide/GradleBuildEvent;->MAX_DISPLAY_CMD_MENU_ITEM_COUNT:I

    if-le p1, v1, :cond_bc

    if-eqz v0, :cond_96

    .line 208
    const-string p1, "更多命令.."

    goto :goto_98

    :cond_96
    const-string p1, "More commands.."

    :goto_98
    const-string v0, "ic_run_more_vert"

    invoke-direct {p0, v0, p1}, Lcom/s1243808733/aide/GradleBuildEvent;->createText(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {v2, p1}, Landroid/view/Menu;->addSubMenu(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object p1

    .line 209
    sget v0, Lcom/s1243808733/aide/GradleBuildEvent;->MAX_DISPLAY_CMD_MENU_ITEM_COUNT:I

    :goto_a4
    array-length v1, p2

    if-ge v0, v1, :cond_bc

    .line 210
    aget-object v1, p2, v0

    .line 211
    invoke-direct {p0, v1}, Lcom/s1243808733/aide/GradleBuildEvent;->createText(Lcom/s1243808733/aide/util/Command;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {p1, v2}, Landroid/view/SubMenu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v2

    new-instance v4, Lcom/s1243808733/aide/GradleBuildEvent$3;

    invoke-direct {v4, p0, v1}, Lcom/s1243808733/aide/GradleBuildEvent$3;-><init>(Lcom/s1243808733/aide/GradleBuildEvent;Lcom/s1243808733/aide/util/Command;)V

    .line 212
    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    add-int/lit8 v0, v0, 0x1

    goto :goto_a4

    .line 223
    :cond_bc
    invoke-virtual {v3}, Landroid/widget/PopupMenu;->show()V

    return-void
.end method

.method verifyClick(I)Z
    .registers 7

    .line 54
    iget-object v0, p0, Lcom/s1243808733/aide/GradleBuildEvent;->mFastClickRecorder:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 55
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/s1243808733/aide/GradleBuildEvent;->mFastClickRecorder:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x12c

    cmp-long v4, v0, v2

    if-gez v4, :cond_29

    const/4 p1, 0x0

    return p1

    .line 59
    :cond_29
    iget-object v0, p0, Lcom/s1243808733/aide/GradleBuildEvent;->mFastClickRecorder:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1
.end method
