.class Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000029;
.super Ljava/lang/Object;
.source "AdvancedSettingsFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private final this$0:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000029;->this$0:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;

    return-void
.end method

.method static access$0(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000029;)Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000029;->this$0:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;

    return-object v0
.end method

.method private show(Landroid/widget/TextView;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/TextView;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v8, 0x1

    .line 833
    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/CharSequence;

    const-string/jumbo v0, "\u8c37\u6b4c\u7ffb\u8bd1CN"

    aput-object v0, v2, v1

    const-string v0, "Yandex\u7ffb\u8bd1"

    aput-object v0, v2, v8

    const/4 v0, 0x2

    const-string/jumbo v3, "\u6709\u9053\u7ffb\u8bd1"

    aput-object v3, v2, v0

    const/4 v0, 0x3

    const-string v3, "\u5fc5\u5e94\u7ffb\u8bd1"

    aput-object v3, v2, v0

    .line 835
    new-instance v3, Landroid/widget/PopupMenu;

    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v3, v0, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 836
    invoke-virtual {v3}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v4

    move v0, v1

    .line 837
    :goto_0
    array-length v5, v2

    if-lt v0, v5, :cond_0

    .line 855
    invoke-interface {v4, v8, v8, v8}, Landroid/view/Menu;->setGroupCheckable(IZZ)V

    .line 857
    invoke-virtual {v3}, Landroid/widget/PopupMenu;->show()V

    return-void

    .line 839
    :cond_0
    aget-object v5, v2, v0

    invoke-interface {v4, v8, v1, v1, v5}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v5

    new-instance v6, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000029$100000028;

    invoke-direct {v6, p0, v0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000029$100000028;-><init>(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000029;I)V

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v5

    .line 851
    invoke-static {}, Lcom/s1243808733/util/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v7, "ytfyssx"

    invoke-interface {v6, v7, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v0, :cond_1

    .line 852
    invoke-interface {v5, v8}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 837
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 8
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v2, 0x0

    .line 819
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000029;->this$0:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;

    invoke-virtual {v0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment;->getCurrentList()Landroid/widget/ListView;

    move-result-object v3

    move v1, v2

    .line 821
    :goto_0
    invoke-virtual {v3}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    if-lt v1, v0, :cond_0

    .line 829
    :goto_1
    return v2

    .line 822
    :cond_0
    invoke-virtual {v3, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 823
    const v4, 0x1020016

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 824
    if-eqz v0, :cond_1

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

    .line 825
    invoke-direct {p0, v0}, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000029;->show(Landroid/widget/TextView;)V

    goto :goto_1

    .line 821
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method
