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
.method static bridge synthetic -$$Nest$fgetAddcrashhandler(Lcom/s1243808733/aide/project/ProjectDialog$CreateProjectView;)Landroid/widget/CheckBox;
    .registers 1

    iget-object p0, p0, Lcom/s1243808733/aide/project/ProjectDialog$CreateProjectView;->Addcrashhandler:Landroid/widget/CheckBox;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetinput_packageName(Lcom/s1243808733/aide/project/ProjectDialog$CreateProjectView;)Lcom/s1243808733/aide/project/ProjectDialog$TitleEditText;
    .registers 1

    iget-object p0, p0, Lcom/s1243808733/aide/project/ProjectDialog$CreateProjectView;->input_packageName:Lcom/s1243808733/aide/project/ProjectDialog$TitleEditText;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetinput_projectName(Lcom/s1243808733/aide/project/ProjectDialog$CreateProjectView;)Lcom/s1243808733/aide/project/ProjectDialog$TitleEditText;
    .registers 1

    iget-object p0, p0, Lcom/s1243808733/aide/project/ProjectDialog$CreateProjectView;->input_projectName:Lcom/s1243808733/aide/project/ProjectDialog$TitleEditText;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 550
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 551
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "应用名："

    goto :goto_e

    :cond_c
    const-string v0, "App Name:"

    :goto_e
    new-instance v1, Lcom/s1243808733/aide/project/ProjectDialog$TitleEditText;

    invoke-direct {v1, p1, v0}, Lcom/s1243808733/aide/project/ProjectDialog$TitleEditText;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    iput-object v1, p0, Lcom/s1243808733/aide/project/ProjectDialog$CreateProjectView;->input_projectName:Lcom/s1243808733/aide/project/ProjectDialog$TitleEditText;

    .line 552
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_1e

    const-string v0, "包名："

    goto :goto_20

    :cond_1e
    const-string v0, "Package Name:"

    :goto_20
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

    const/high16 v1, 0x40a00000  # 5.0f

    invoke-static {v1}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v1

    const/4 v2, -0x1

    invoke-virtual {p0, v0, v2, v1}, Lcom/s1243808733/aide/project/ProjectDialog$CreateProjectView;->addView(Landroid/view/View;II)V

    .line 558
    iget-object v0, p0, Lcom/s1243808733/aide/project/ProjectDialog$CreateProjectView;->input_packageName:Lcom/s1243808733/aide/project/ProjectDialog$TitleEditText;

    invoke-virtual {p0, v0}, Lcom/s1243808733/aide/project/ProjectDialog$CreateProjectView;->addView(Landroid/view/View;)V

    .line 561
    new-instance v0, Landroid/widget/CheckBox;

    invoke-direct {v0, p1}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/s1243808733/aide/project/ProjectDialog$CreateProjectView;->Addcrashhandler:Landroid/widget/CheckBox;

    .line 562
    const-string p1, "添加异常处理器"

    const-string v1, "Add crash handler"

    invoke-static {p1, v1}, Lcom/s1243808733/util/Utils;->zhOrEn(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 563
    new-instance p1, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v0, -0x2

    invoke-direct {p1, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 564
    const/high16 v0, 0x41200000  # 10.0f

    invoke-static {v0}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 565
    iget-object v0, p0, Lcom/s1243808733/aide/project/ProjectDialog$CreateProjectView;->Addcrashhandler:Landroid/widget/CheckBox;

    invoke-virtual {p0, v0, p1}, Lcom/s1243808733/aide/project/ProjectDialog$CreateProjectView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 567
    iget-object p1, p0, Lcom/s1243808733/aide/project/ProjectDialog$CreateProjectView;->Addcrashhandler:Landroid/widget/CheckBox;

    invoke-static {}, Lcom/s1243808733/util/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "newproject_addcrashhandler"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 568
    iget-object p1, p0, Lcom/s1243808733/aide/project/ProjectDialog$CreateProjectView;->Addcrashhandler:Landroid/widget/CheckBox;

    new-instance v0, Lcom/s1243808733/aide/project/ProjectDialog$CreateProjectView$1;

    invoke-direct {v0, p0}, Lcom/s1243808733/aide/project/ProjectDialog$CreateProjectView$1;-><init>(Lcom/s1243808733/aide/project/ProjectDialog$CreateProjectView;)V

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 576
    const/high16 p1, 0x41c00000  # 24.0f

    invoke-static {p1}, Lcom/s1243808733/aide/project/PUtils;->dp2px(F)I

    move-result v0

    const/high16 v1, 0x41800000  # 16.0f

    invoke-static {v1}, Lcom/s1243808733/aide/project/PUtils;->dp2px(F)I

    move-result v1

    invoke-static {p1}, Lcom/s1243808733/aide/project/PUtils;->dp2px(F)I

    move-result p1

    invoke-virtual {p0, v0, v1, p1, v2}, Lcom/s1243808733/aide/project/ProjectDialog$CreateProjectView;->setPadding(IIII)V

    return-void
.end method
