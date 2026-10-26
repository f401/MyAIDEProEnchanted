.class Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$21;
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
.method constructor <init>(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;)V
    .locals 0

    .line 756
    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$21;->this$0:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private show(Landroid/widget/TextView;)V
    .locals 9

    const/4 v8, 0x4

    const/4 v1, 0x0

    const/4 v7, 0x1

    .line 774
    new-instance v2, Landroid/widget/PopupMenu;

    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v2, v0, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 777
    invoke-virtual {v2}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v3

    move v0, v1

    :goto_0
    if-ge v0, v8, :cond_1

    .line 780
    new-array v4, v8, [Ljava/lang/CharSequence;

    const-string v5, "\u8c37\u6b4c\u7ffb\u8bd1CN"

    aput-object v5, v4, v1

    const-string v5, "Yandex\u7ffb\u8bd1"

    aput-object v5, v4, v7

    const/4 v5, 0x2

    const-string v6, "\u6709\u9053\u7ffb\u8bd1"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "\u5fc5\u5e94\u7ffb\u8bd1"

    aput-object v6, v4, v5

    aget-object v4, v4, v0

    invoke-interface {v3, v7, v1, v1, v4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v4

    new-instance v5, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$21$1;

    invoke-direct {v5, p0, v0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$21$1;-><init>(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$21;I)V

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v4

    .line 792
    invoke-static {}, Lcom/s1243808733/util/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "ytfyssx"

    invoke-interface {v5, v6, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v0, :cond_0

    .line 793
    invoke-interface {v4, v7}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 796
    :cond_1
    invoke-interface {v3, v7, v7, v7}, Landroid/view/Menu;->setGroupCheckable(IZZ)V

    .line 798
    invoke-virtual {v2}, Landroid/widget/PopupMenu;->show()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 6

    const/4 v2, 0x0

    .line 760
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$21;->this$0:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;

    invoke-virtual {v0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->getCurrentList()Landroid/widget/ListView;

    move-result-object v3

    move v1, v2

    .line 762
    :goto_0
    invoke-virtual {v3}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 763
    invoke-virtual {v3, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 764
    const v4, 0x1020016

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 765
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

    .line 766
    invoke-direct {p0, v0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$21;->show(Landroid/widget/TextView;)V

    :cond_0
    return v2

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method
