.class Lcom/s1243808733/aide/project/ProjectDialog$CreateProjectView;
.super Landroid/widget/LinearLayout;
.source "ProjectDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s1243808733/aide/project/ProjectDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CreateProjectView"
.end annotation


# instance fields
.field private Addcrashhandler:Landroid/widget/CheckBox;

.field private input_packageName:Lcom/s1243808733/aide/project/ProjectDialog$TitleEditText;

.field private input_projectName:Lcom/s1243808733/aide/project/ProjectDialog$TitleEditText;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 8

    const/16 v5, 0x18

    const/4 v4, 0x0

    const/4 v3, -0x2

    .line 550
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 551
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u5e94\u7528\u540d\uff1a"

    :goto_0
    new-instance v1, Lcom/s1243808733/aide/project/ProjectDialog$TitleEditText;

    invoke-direct {v1, p1, v0}, Lcom/s1243808733/aide/project/ProjectDialog$TitleEditText;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    iput-object v1, p0, Lcom/s1243808733/aide/project/ProjectDialog$CreateProjectView;->input_projectName:Lcom/s1243808733/aide/project/ProjectDialog$TitleEditText;

    .line 552
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\u5305\u540d\uff1a"

    :goto_1
    new-instance v1, Lcom/s1243808733/aide/project/ProjectDialog$TitleEditText;

    invoke-direct {v1, p1, v0}, Lcom/s1243808733/aide/project/ProjectDialog$TitleEditText;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    iput-object v1, p0, Lcom/s1243808733/aide/project/ProjectDialog$CreateProjectView;->input_packageName:Lcom/s1243808733/aide/project/ProjectDialog$TitleEditText;

    .line 554
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/s1243808733/aide/project/ProjectDialog$CreateProjectView;->setOrientation(I)V

    .line 555
    iget-object v0, p0, Lcom/s1243808733/aide/project/ProjectDialog$CreateProjectView;->input_projectName:Lcom/s1243808733/aide/project/ProjectDialog$TitleEditText;

    invoke-virtual {p0, v0}, Lcom/s1243808733/aide/project/ProjectDialog$CreateProjectView;->addView(Landroid/view/View;)V

    .line 556
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Lcom/s1243808733/aide/project/ProjectDialog$CreateProjectView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v1, -0x1

    const/4 v2, 0x5

    int-to-float v2, v2

    invoke-static {v2}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/s1243808733/aide/project/ProjectDialog$CreateProjectView;->addView(Landroid/view/View;II)V

    .line 558
    iget-object v0, p0, Lcom/s1243808733/aide/project/ProjectDialog$CreateProjectView;->input_packageName:Lcom/s1243808733/aide/project/ProjectDialog$TitleEditText;

    invoke-virtual {p0, v0}, Lcom/s1243808733/aide/project/ProjectDialog$CreateProjectView;->addView(Landroid/view/View;)V

    .line 561
    new-instance v0, Landroid/widget/CheckBox;

    invoke-direct {v0, p1}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/s1243808733/aide/project/ProjectDialog$CreateProjectView;->Addcrashhandler:Landroid/widget/CheckBox;

    .line 562
    iget-object v1, p0, Lcom/s1243808733/aide/project/ProjectDialog$CreateProjectView;->Addcrashhandler:Landroid/widget/CheckBox;

    const-string/jumbo v0, "\u6dfb\u52a0\u5f02\u5e38\u5904\u7406\u5668"

    const-string v2, "Add crash handler"

    invoke-static {v0, v2}, Lcom/s1243808733/util/Utils;->zhOrEn(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 563
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 564
    const/16 v1, 0xa

    int-to-float v1, v1

    invoke-static {v1}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 565
    iget-object v1, p0, Lcom/s1243808733/aide/project/ProjectDialog$CreateProjectView;->Addcrashhandler:Landroid/widget/CheckBox;

    invoke-virtual {p0, v1, v0}, Lcom/s1243808733/aide/project/ProjectDialog$CreateProjectView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 567
    iget-object v0, p0, Lcom/s1243808733/aide/project/ProjectDialog$CreateProjectView;->Addcrashhandler:Landroid/widget/CheckBox;

    invoke-static {}, Lcom/s1243808733/util/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "newproject_addcrashhandler"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 568
    iget-object v0, p0, Lcom/s1243808733/aide/project/ProjectDialog$CreateProjectView;->Addcrashhandler:Landroid/widget/CheckBox;

    new-instance v1, Lcom/s1243808733/aide/project/ProjectDialog$CreateProjectView$100000016;

    invoke-direct {v1, p0}, Lcom/s1243808733/aide/project/ProjectDialog$CreateProjectView$100000016;-><init>(Lcom/s1243808733/aide/project/ProjectDialog$CreateProjectView;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 576
    int-to-float v0, v5

    invoke-static {v0}, Lcom/s1243808733/aide/project/PUtils;->dp2px(F)I

    move-result v0

    const/16 v1, 0x10

    int-to-float v1, v1

    invoke-static {v1}, Lcom/s1243808733/aide/project/PUtils;->dp2px(F)I

    move-result v1

    int-to-float v2, v5

    invoke-static {v2}, Lcom/s1243808733/aide/project/PUtils;->dp2px(F)I

    move-result v2

    invoke-virtual {p0, v0, v1, v2, v4}, Lcom/s1243808733/aide/project/ProjectDialog$CreateProjectView;->setPadding(IIII)V

    return-void

    .line 551
    :cond_0
    const-string v0, "App Name:"

    goto/16 :goto_0

    .line 552
    :cond_1
    const-string v0, "Package Name:"

    goto/16 :goto_1
.end method

.method static synthetic access$L1000031(Lcom/s1243808733/aide/project/ProjectDialog$CreateProjectView;)Lcom/s1243808733/aide/project/ProjectDialog$TitleEditText;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/aide/project/ProjectDialog$CreateProjectView;->input_projectName:Lcom/s1243808733/aide/project/ProjectDialog$TitleEditText;

    return-object v0
.end method

.method static synthetic access$L1000032(Lcom/s1243808733/aide/project/ProjectDialog$CreateProjectView;)Lcom/s1243808733/aide/project/ProjectDialog$TitleEditText;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/aide/project/ProjectDialog$CreateProjectView;->input_packageName:Lcom/s1243808733/aide/project/ProjectDialog$TitleEditText;

    return-object v0
.end method

.method static synthetic access$L1000033(Lcom/s1243808733/aide/project/ProjectDialog$CreateProjectView;)Landroid/widget/CheckBox;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/aide/project/ProjectDialog$CreateProjectView;->Addcrashhandler:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$S1000031(Lcom/s1243808733/aide/project/ProjectDialog$CreateProjectView;Lcom/s1243808733/aide/project/ProjectDialog$TitleEditText;)V
    .registers 2

    iput-object p1, p0, Lcom/s1243808733/aide/project/ProjectDialog$CreateProjectView;->input_projectName:Lcom/s1243808733/aide/project/ProjectDialog$TitleEditText;

    return-void
.end method

.method static synthetic access$S1000032(Lcom/s1243808733/aide/project/ProjectDialog$CreateProjectView;Lcom/s1243808733/aide/project/ProjectDialog$TitleEditText;)V
    .registers 2

    iput-object p1, p0, Lcom/s1243808733/aide/project/ProjectDialog$CreateProjectView;->input_packageName:Lcom/s1243808733/aide/project/ProjectDialog$TitleEditText;

    return-void
.end method

.method static synthetic access$S1000033(Lcom/s1243808733/aide/project/ProjectDialog$CreateProjectView;Landroid/widget/CheckBox;)V
    .registers 2

    iput-object p1, p0, Lcom/s1243808733/aide/project/ProjectDialog$CreateProjectView;->Addcrashhandler:Landroid/widget/CheckBox;

    return-void
.end method
