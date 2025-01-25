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
    .registers 3
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
    .registers 10

    .line 68
    new-instance v0, Landroid/widget/PopupMenu;

    iget-object v1, p0, Lcom/s1243808733/aide/preference/PreferenceTheme$1;->this$0:Lcom/s1243808733/aide/preference/PreferenceTheme;

    invoke-virtual {v1}, Lcom/s1243808733/aide/preference/PreferenceTheme;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 69
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object p1

    .line 70
    invoke-static {}, Lcom/s1243808733/aide/application/AppTheme;->getThemeCode()Ljava/lang/String;

    move-result-object v1

    .line 72
    sget-object v2, Lcom/s1243808733/aide/application/AppTheme;->THEME:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    const/4 v4, 0x0

    .line 73
    :goto_23
    array-length v5, v2

    const/4 v6, 0x1

    if-ge v4, v5, :cond_4c

    .line 75
    sget-object v5, Lcom/s1243808733/aide/application/AppTheme;->THEME:Ljava/util/Map;

    aget-object v7, v2, v4

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-interface {p1, v6, v4, v3, v5}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v5

    new-instance v7, Lcom/s1243808733/aide/preference/PreferenceTheme$1$1;

    invoke-direct {v7, p0, v2, v4}, Lcom/s1243808733/aide/preference/PreferenceTheme$1$1;-><init>(Lcom/s1243808733/aide/preference/PreferenceTheme$1;[Ljava/lang/String;I)V

    .line 76
    invoke-interface {v5, v7}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v5

    .line 120
    aget-object v7, v2, v4

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_49

    .line 121
    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    :cond_49
    add-int/lit8 v4, v4, 0x1

    goto :goto_23

    .line 125
    :cond_4c
    invoke-interface {p1, v6, v6, v6}, Landroid/view/Menu;->setGroupCheckable(IZZ)V

    .line 127
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 6

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 55
    :goto_2
    iget-object v1, p0, Lcom/s1243808733/aide/preference/PreferenceTheme$1;->val$lv:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_3b

    .line 56
    iget-object v1, p0, Lcom/s1243808733/aide/preference/PreferenceTheme$1;->val$lv:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 57
    const v2, 0x1020016

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_38

    .line 58
    iget-object v2, p0, Lcom/s1243808733/aide/preference/PreferenceTheme$1;->this$0:Lcom/s1243808733/aide/preference/PreferenceTheme;

    invoke-virtual {v2}, Lcom/s1243808733/aide/preference/PreferenceTheme;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 59
    invoke-direct {p0, v1}, Lcom/s1243808733/aide/preference/PreferenceTheme$1;->show(Landroid/view/View;)V

    const/4 p1, 0x1

    return p1

    :cond_38
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3b
    return p1
.end method
