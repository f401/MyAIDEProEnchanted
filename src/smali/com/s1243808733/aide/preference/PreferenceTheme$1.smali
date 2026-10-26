.class Lcom/s1243808733/aide/preference/PreferenceTheme$1;
.super Ljava/lang/Object;
.source "PreferenceTheme.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/aide/preference/PreferenceTheme;->bind(Landroid/widget/ListView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/s1243808733/aide/preference/PreferenceTheme;

.field final val$lv:Landroid/widget/ListView;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/preference/PreferenceTheme;Landroid/widget/ListView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 51
    iput-object p1, p0, Lcom/s1243808733/aide/preference/PreferenceTheme$1;->this$0:Lcom/s1243808733/aide/preference/PreferenceTheme;

    iput-object p2, p0, Lcom/s1243808733/aide/preference/PreferenceTheme$1;->val$lv:Landroid/widget/ListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private show(Landroid/view/View;)V
    .locals 9

    const/4 v3, 0x0

    const/4 v8, 0x1

    .line 68
    new-instance v4, Landroid/widget/PopupMenu;

    iget-object v0, p0, Lcom/s1243808733/aide/preference/PreferenceTheme$1;->this$0:Lcom/s1243808733/aide/preference/PreferenceTheme;

    invoke-virtual {v0}, Lcom/s1243808733/aide/preference/PreferenceTheme;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v4, v0, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 69
    invoke-virtual {v4}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v5

    .line 70
    invoke-static {}, Lcom/s1243808733/aide/application/AppTheme;->getThemeCode()Ljava/lang/String;

    move-result-object v6

    .line 72
    sget-object v0, Lcom/s1243808733/aide/application/AppTheme;->THEME:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    move v2, v3

    .line 73
    :goto_0
    array-length v1, v0

    if-ge v2, v1, :cond_1

    .line 75
    sget-object v1, Lcom/s1243808733/aide/application/AppTheme;->THEME:Ljava/util/Map;

    aget-object v7, v0, v2

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v5, v8, v2, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    new-instance v7, Lcom/s1243808733/aide/preference/PreferenceTheme$1$1;

    invoke-direct {v7, p0, v0, v2}, Lcom/s1243808733/aide/preference/PreferenceTheme$1$1;-><init>(Lcom/s1243808733/aide/preference/PreferenceTheme$1;[Ljava/lang/String;I)V

    .line 76
    invoke-interface {v1, v7}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v1

    .line 120
    aget-object v7, v0, v2

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 121
    invoke-interface {v1, v8}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    :cond_0
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 125
    :cond_1
    invoke-interface {v5, v8, v8, v8}, Landroid/view/Menu;->setGroupCheckable(IZZ)V

    .line 127
    invoke-virtual {v4}, Landroid/widget/PopupMenu;->show()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 5

    const/4 v2, 0x0

    move v1, v2

    .line 55
    :goto_0
    iget-object v0, p0, Lcom/s1243808733/aide/preference/PreferenceTheme$1;->val$lv:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/s1243808733/aide/preference/PreferenceTheme$1;->val$lv:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 57
    const v3, 0x1020016

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 58
    iget-object v3, p0, Lcom/s1243808733/aide/preference/PreferenceTheme$1;->this$0:Lcom/s1243808733/aide/preference/PreferenceTheme;

    invoke-virtual {v3}, Lcom/s1243808733/aide/preference/PreferenceTheme;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 59
    invoke-direct {p0, v0}, Lcom/s1243808733/aide/preference/PreferenceTheme$1;->show(Landroid/view/View;)V

    const/4 v2, 0x1

    :cond_0
    return v2

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method
