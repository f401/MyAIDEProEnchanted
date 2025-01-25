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
    .registers 2

    .line 756
    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$21;->this$0:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private show(Landroid/widget/TextView;)V
    .registers 9

    .line 774
    nop

    .line 776
    new-instance v0, Landroid/widget/PopupMenu;

    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 777
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_10
    const/4 v3, 0x4

    const/4 v4, 0x1

    if-ge v2, v3, :cond_49

    .line 780
    new-array v3, v3, [Ljava/lang/CharSequence;

    const-string v5, "谷歌翻译CN"

    aput-object v5, v3, v1

    const-string v5, "Yandex翻译"

    aput-object v5, v3, v4

    const/4 v5, 0x2

    const-string v6, "有道翻译"

    aput-object v6, v3, v5

    const/4 v5, 0x3

    const-string v6, "必应翻译"

    aput-object v6, v3, v5

    aget-object v3, v3, v2

    invoke-interface {p1, v4, v1, v1, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v3

    new-instance v5, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$21$1;

    invoke-direct {v5, p0, v2}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$21$1;-><init>(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$21;I)V

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v3

    .line 792
    invoke-static {}, Lcom/s1243808733/util/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "ytfyssx"

    invoke-interface {v5, v6, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v2, :cond_46

    .line 793
    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    :cond_46
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 796
    :cond_49
    invoke-interface {p1, v4, v4, v4}, Landroid/view/Menu;->setGroupCheckable(IZZ)V

    .line 798
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 8

    .line 760
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$21;->this$0:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;

    invoke-virtual {v0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->getCurrentList()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 762
    :goto_8
    invoke-virtual {v0}, Landroid/widget/ListView;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_3a

    .line 763
    invoke-virtual {v0, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 764
    const v4, 0x1020016

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-eqz v3, :cond_37

    .line 765
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

    .line 766
    invoke-direct {p0, v3}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$21;->show(Landroid/widget/TextView;)V

    return v1

    :cond_37
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_3a
    return v1
.end method
