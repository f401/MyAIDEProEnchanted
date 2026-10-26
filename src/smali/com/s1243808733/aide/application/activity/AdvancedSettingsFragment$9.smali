.class Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$9;
.super Ljava/lang/Object;
.source "AdvancedSettingsFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;


# direct methods
.method static bridge synthetic -$$Nest$mshowUnInstallDialog(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$9;)V
    .locals 0

    invoke-direct {p0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$9;->showUnInstallDialog()V

    return-void
.end method

.method constructor <init>(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;)V
    .locals 0

    .line 408
    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$9;->this$0:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private show(Landroid/widget/TextView;)V
    .locals 8

    const/4 v3, 0x2

    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 429
    new-array v0, v3, [Ljava/lang/CharSequence;

    const-string v1, "\u672c\u5730\u5b89\u88c5"

    aput-object v1, v0, v2

    const-string v1, "\u5378\u8f7dGradle"

    aput-object v1, v0, v7

    new-array v1, v3, [Ljava/lang/CharSequence;

    const-string v3, "Local installation"

    aput-object v3, v1, v2

    const-string v3, "Uninstall Gradle"

    aput-object v3, v1, v7

    invoke-static {v0, v1}, Lcom/s1243808733/util/Utils;->zhOrEn(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    .line 431
    new-instance v3, Landroid/widget/PopupMenu;

    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v3, v1, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 432
    invoke-virtual {v3}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v4

    move v1, v2

    .line 433
    :goto_0
    array-length v5, v0

    if-ge v1, v5, :cond_0

    .line 435
    aget-object v5, v0, v1

    invoke-interface {v4, v7, v2, v2, v5}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v5

    new-instance v6, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$9$1;

    invoke-direct {v6, p0, v1}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$9$1;-><init>(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$9;I)V

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 454
    :cond_0
    invoke-virtual {v3}, Landroid/widget/PopupMenu;->show()V

    return-void
.end method

.method private showUnInstallDialog()V
    .locals 5

    .line 458
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$9;->this$0:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;

    invoke-virtual {v0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "rm -rvf %s/framework/&&exit"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$9;->this$0:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;

    invoke-virtual {v4}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/termux/app/TermuxActivity;->start(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 6

    const/4 v2, 0x0

    .line 412
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$9;->this$0:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;

    invoke-virtual {v0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->getCurrentList()Landroid/widget/ListView;

    move-result-object v3

    move v1, v2

    .line 414
    :goto_0
    invoke-virtual {v3}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 415
    invoke-virtual {v3, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 416
    const v4, 0x1020016

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 417
    invoke-virtual {p1}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 418
    invoke-direct {p0, v0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$9;->show(Landroid/widget/TextView;)V

    :cond_0
    return v2

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method
