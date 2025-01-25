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
    .registers 1

    invoke-direct {p0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$9;->showUnInstallDialog()V

    return-void
.end method

.method constructor <init>(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;)V
    .registers 2

    .line 408
    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$9;->this$0:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private show(Landroid/widget/TextView;)V
    .registers 9

    .line 429
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/CharSequence;

    const-string v2, "本地安装"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "卸载Gradle"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    new-array v0, v0, [Ljava/lang/CharSequence;

    const-string v2, "Local installation"

    aput-object v2, v0, v3

    const-string v2, "Uninstall Gradle"

    aput-object v2, v0, v4

    invoke-static {v1, v0}, Lcom/s1243808733/util/Utils;->zhOrEn(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    .line 431
    new-instance v1, Landroid/widget/PopupMenu;

    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 432
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object p1

    const/4 v2, 0x0

    .line 433
    :goto_2b
    array-length v5, v0

    if-ge v2, v5, :cond_3f

    .line 435
    aget-object v5, v0, v2

    invoke-interface {p1, v4, v3, v3, v5}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v5

    new-instance v6, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$9$1;

    invoke-direct {v6, p0, v2}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$9$1;-><init>(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$9;I)V

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2b

    .line 454
    :cond_3f
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->show()V

    return-void
.end method

.method private showUnInstallDialog()V
    .registers 5

    .line 458
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$9;->this$0:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;

    invoke-virtual {v0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$9;->this$0:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;

    invoke-virtual {v2}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "rm -rvf %s/framework/&&exit"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/termux/app/TermuxActivity;->start(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 8

    .line 412
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$9;->this$0:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;

    invoke-virtual {v0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->getCurrentList()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 414
    :goto_8
    invoke-virtual {v0}, Landroid/widget/ListView;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_3a

    .line 415
    invoke-virtual {v0, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 416
    const v4, 0x1020016

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-eqz v3, :cond_37

    .line 417
    invoke-virtual {p1}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_37

    .line 418
    invoke-direct {p0, v3}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$9;->show(Landroid/widget/TextView;)V

    return v1

    :cond_37
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_3a
    return v1
.end method
