.class public Lcom/s1243808733/aide/highlight/HighlightActivity;
.super Lcom/s1243808733/app/base/BaseActivity;
.source "HighlightActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/app/ActionBar$TabListener;


# instance fields
.field private adapter:Lcom/s1243808733/aide/highlight/HighlightAdapter;

.field private enableLight:Z

.field private from_main:Z

.field private isDataChangeed:Z

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/s1243808733/aide/highlight/Item;",
            ">;"
        }
    .end annotation
.end field

.field private mListView:Landroid/widget/ListView;


# direct methods
.method static bridge synthetic -$$Nest$fgetadapter(Lcom/s1243808733/aide/highlight/HighlightActivity;)Lcom/s1243808733/aide/highlight/HighlightAdapter;
    .registers 1

    iget-object p0, p0, Lcom/s1243808733/aide/highlight/HighlightActivity;->adapter:Lcom/s1243808733/aide/highlight/HighlightAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlist(Lcom/s1243808733/aide/highlight/HighlightActivity;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/s1243808733/aide/highlight/HighlightActivity;->list:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputisDataChangeed(Lcom/s1243808733/aide/highlight/HighlightActivity;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/s1243808733/aide/highlight/HighlightActivity;->isDataChangeed:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 35
    invoke-direct {p0}, Lcom/s1243808733/app/base/BaseActivity;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/s1243808733/aide/highlight/HighlightActivity;->list:Ljava/util/List;

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/s1243808733/aide/highlight/HighlightActivity;->isDataChangeed:Z

    return-void
.end method

.method private initActionBar()V
    .registers 6

    .line 91
    invoke-virtual {p0}, Lcom/s1243808733/aide/highlight/HighlightActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 92
    invoke-virtual {p0}, Lcom/s1243808733/aide/highlight/HighlightActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 93
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 95
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 97
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/s1243808733/aide/highlight/HighlightActivity;->enableLight:Z

    .line 98
    const-string v3, "default"

    invoke-static {}, Lcom/s1243808733/aide/application/AppTheme;->getThemeCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4a

    .line 99
    invoke-virtual {v0}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v3

    .line 100
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v4

    if-eqz v4, :cond_35

    const-string v4, "亮主题高亮配置"

    goto :goto_37

    :cond_35
    const-string v4, "Light"

    :goto_37
    invoke-virtual {v3, v4}, Landroid/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;

    move-result-object v3

    .line 101
    const-string v4, "p1"

    invoke-virtual {v3, v4}, Landroid/app/ActionBar$Tab;->setTag(Ljava/lang/Object;)Landroid/app/ActionBar$Tab;

    move-result-object v3

    .line 102
    invoke-virtual {v3, p0}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    move-result-object v3

    .line 99
    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 103
    iput-boolean v1, p0, Lcom/s1243808733/aide/highlight/HighlightActivity;->enableLight:Z

    .line 106
    :cond_4a
    invoke-virtual {v0}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v3

    .line 107
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v4

    if-eqz v4, :cond_57

    const-string v4, "暗主题高亮配置"

    goto :goto_59

    :cond_57
    const-string v4, "Dark"

    :goto_59
    invoke-virtual {v3, v4}, Landroid/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;

    move-result-object v3

    .line 108
    const-string v4, "p2"

    invoke-virtual {v3, v4}, Landroid/app/ActionBar$Tab;->setTag(Ljava/lang/Object;)Landroid/app/ActionBar$Tab;

    move-result-object v3

    .line 109
    invoke-virtual {v3, p0}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    move-result-object v3

    .line 106
    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 111
    iget-boolean v3, p0, Lcom/s1243808733/aide/highlight/HighlightActivity;->enableLight:Z

    if-eqz v3, :cond_82

    .line 112
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->getTabAt(I)Landroid/app/ActionBar$Tab;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActionBar$Tab;->select()V

    .line 113
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->isLightTheme()Z

    move-result v2

    if-nez v2, :cond_82

    .line 114
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->getTabAt(I)Landroid/app/ActionBar$Tab;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar$Tab;->select()V

    .line 118
    :cond_82
    invoke-virtual {p0}, Lcom/s1243808733/aide/highlight/HighlightActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/aide/application/AppTheme;->customTabView(Landroid/app/ActionBar;)V

    return-void
.end method

.method private toggleList(Z)V
    .registers 10

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/s1243808733/aide/highlight/HighlightActivity;->list:Ljava/util/List;

    .line 76
    invoke-static {}, Lcom/s1243808733/aide/highlight/HighlightUtils;->getHighlightColor()Lcom/s1243808733/aide/highlight/color/Colors;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/aide/highlight/color/Colors;->values()[Lcom/s1243808733/aide/highlight/color/Color;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_11
    if-ge v2, v1, :cond_2d

    aget-object v3, v0, v2

    .line 77
    iget-object v4, p0, Lcom/s1243808733/aide/highlight/HighlightActivity;->list:Ljava/util/List;

    iget-object v5, v3, Lcom/s1243808733/aide/highlight/color/Color;->label:Ljava/lang/String;

    iget-object v6, v3, Lcom/s1243808733/aide/highlight/color/Color;->name:Ljava/lang/String;

    if-eqz p1, :cond_20

    iget-object v3, v3, Lcom/s1243808733/aide/highlight/color/Color;->lightColor:Ljava/lang/String;

    goto :goto_22

    :cond_20
    iget-object v3, v3, Lcom/s1243808733/aide/highlight/color/Color;->darkColor:Ljava/lang/String;

    :goto_22
    new-instance v7, Lcom/s1243808733/aide/highlight/Item;

    invoke-direct {v7, v5, v6, v3}, Lcom/s1243808733/aide/highlight/Item;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 79
    :cond_2d
    iget-object v0, p0, Lcom/s1243808733/aide/highlight/HighlightActivity;->adapter:Lcom/s1243808733/aide/highlight/HighlightAdapter;

    if-nez v0, :cond_45

    .line 80
    new-instance v0, Lcom/s1243808733/aide/highlight/HighlightAdapter;

    iget-object v1, p0, Lcom/s1243808733/aide/highlight/HighlightActivity;->list:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/s1243808733/aide/highlight/HighlightAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/s1243808733/aide/highlight/HighlightActivity;->adapter:Lcom/s1243808733/aide/highlight/HighlightAdapter;

    .line 81
    invoke-virtual {v0, p1}, Lcom/s1243808733/aide/highlight/HighlightAdapter;->setIsLight(Z)V

    .line 82
    iget-object p1, p0, Lcom/s1243808733/aide/highlight/HighlightActivity;->mListView:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/s1243808733/aide/highlight/HighlightActivity;->adapter:Lcom/s1243808733/aide/highlight/HighlightAdapter;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_54

    .line 84
    :cond_45
    invoke-virtual {v0, p1}, Lcom/s1243808733/aide/highlight/HighlightAdapter;->setIsLight(Z)V

    .line 85
    iget-object p1, p0, Lcom/s1243808733/aide/highlight/HighlightActivity;->adapter:Lcom/s1243808733/aide/highlight/HighlightAdapter;

    iget-object v0, p0, Lcom/s1243808733/aide/highlight/HighlightActivity;->list:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/s1243808733/aide/highlight/HighlightAdapter;->setList(Ljava/util/List;)V

    .line 86
    iget-object p1, p0, Lcom/s1243808733/aide/highlight/HighlightActivity;->adapter:Lcom/s1243808733/aide/highlight/HighlightAdapter;

    invoke-virtual {p1}, Lcom/s1243808733/aide/highlight/HighlightAdapter;->notifyDataSetChanged()V

    :goto_54
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .registers 3

    .line 335
    invoke-virtual {p0}, Lcom/s1243808733/aide/highlight/HighlightActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->getTabCount()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_2c

    .line 336
    invoke-virtual {p0}, Lcom/s1243808733/aide/highlight/HighlightActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->getSelectedTab()Landroid/app/ActionBar$Tab;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar$Tab;->getTag()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "p2"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 337
    invoke-virtual {p0}, Lcom/s1243808733/aide/highlight/HighlightActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->getTabAt(I)Landroid/app/ActionBar$Tab;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar$Tab;->select()V

    return-void

    .line 342
    :cond_2c
    invoke-super {p0}, Lcom/s1243808733/app/base/BaseActivity;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 52
    invoke-super {p0, p1}, Lcom/s1243808733/app/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    invoke-virtual {p0}, Lcom/s1243808733/aide/highlight/HighlightActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "from_main"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/s1243808733/aide/highlight/HighlightActivity;->from_main:Z

    .line 55
    new-instance p1, Lcom/s1243808733/widget/CustomListView;

    invoke-direct {p1, p0}, Lcom/s1243808733/widget/CustomListView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/s1243808733/aide/highlight/HighlightActivity;->mListView:Landroid/widget/ListView;

    .line 56
    invoke-virtual {p0, p1}, Lcom/s1243808733/aide/highlight/HighlightActivity;->setContentView(Landroid/view/View;)V

    .line 57
    iget-object p1, p0, Lcom/s1243808733/aide/highlight/HighlightActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 58
    invoke-direct {p0}, Lcom/s1243808733/aide/highlight/HighlightActivity;->initActionBar()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4

    .line 155
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "还原"

    goto :goto_b

    :cond_9
    const-string v0, "Restore"

    :goto_b
    invoke-interface {p1, v0}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/s1243808733/aide/highlight/HighlightActivity$2;

    invoke-direct {v1, p0}, Lcom/s1243808733/aide/highlight/HighlightActivity$2;-><init>(Lcom/s1243808733/aide/highlight/HighlightActivity;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 175
    iget-boolean v0, p0, Lcom/s1243808733/aide/highlight/HighlightActivity;->enableLight:Z

    if-eqz v0, :cond_32

    .line 176
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_24

    const-string v0, "还原亮/暗"

    goto :goto_26

    :cond_24
    const-string v0, "Reset light/dark"

    :goto_26
    invoke-interface {p1, v0}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/s1243808733/aide/highlight/HighlightActivity$3;

    invoke-direct {v1, p0}, Lcom/s1243808733/aide/highlight/HighlightActivity$3;-><init>(Lcom/s1243808733/aide/highlight/HighlightActivity;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 201
    :cond_32
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_3b

    const-string v0, "复制配置"

    goto :goto_3d

    :cond_3b
    const-string v0, "Copy configuration"

    :goto_3d
    invoke-interface {p1, v0}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/s1243808733/aide/highlight/HighlightActivity$4;

    invoke-direct {v1, p0}, Lcom/s1243808733/aide/highlight/HighlightActivity$4;-><init>(Lcom/s1243808733/aide/highlight/HighlightActivity;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 227
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_52

    const-string v0, "导入配置"

    goto :goto_54

    :cond_52
    const-string v0, "Import configuration"

    :goto_54
    invoke-interface {p1, v0}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/s1243808733/aide/highlight/HighlightActivity$5;

    invoke-direct {v1, p0}, Lcom/s1243808733/aide/highlight/HighlightActivity$5;-><init>(Lcom/s1243808733/aide/highlight/HighlightActivity;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 318
    invoke-super {p0, p1}, Lcom/s1243808733/app/base/BaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method protected onDestroy()V
    .registers 2

    .line 350
    invoke-super {p0}, Lcom/s1243808733/app/base/BaseActivity;->onDestroy()V

    .line 351
    iget-boolean v0, p0, Lcom/s1243808733/aide/highlight/HighlightActivity;->isDataChangeed:Z

    if-eqz v0, :cond_15

    .line 352
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->getAIDEEditorPager()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/AIDEEditorPager;->Zo()V

    .line 353
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->getMainActivity()Lcom/s1243808733/aide/AideMainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/aide/AideMainActivity;->setEditorBackground()V

    :cond_15
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 123
    iget-object p1, p0, Lcom/s1243808733/aide/highlight/HighlightActivity;->adapter:Lcom/s1243808733/aide/highlight/HighlightAdapter;

    invoke-virtual {p1, p3}, Lcom/s1243808733/aide/highlight/HighlightAdapter;->getItem(I)Lcom/s1243808733/aide/highlight/Item;

    move-result-object p1

    .line 125
    new-instance p2, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;

    iget-object p3, p0, Lcom/s1243808733/aide/highlight/HighlightActivity;->adapter:Lcom/s1243808733/aide/highlight/HighlightAdapter;

    invoke-virtual {p3}, Lcom/s1243808733/aide/highlight/HighlightAdapter;->isLight()Z

    move-result p3

    invoke-virtual {p1, p3}, Lcom/s1243808733/aide/highlight/Item;->getColor(Z)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/blankj/utilcode/util/ColorUtils;->string2Int(Ljava/lang/String;)I

    move-result p3

    invoke-direct {p2, p0, p3}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;-><init>(Landroid/content/Context;I)V

    .line 126
    invoke-virtual {p1}, Lcom/s1243808733/aide/highlight/Item;->getTitle()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 127
    new-instance p3, Lcom/s1243808733/aide/highlight/HighlightActivity$1;

    invoke-direct {p3, p0, p1}, Lcom/s1243808733/aide/highlight/HighlightActivity$1;-><init>(Lcom/s1243808733/aide/highlight/HighlightActivity;Lcom/s1243808733/aide/highlight/Item;)V

    invoke-virtual {p2, p3}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->setOnColorChangedListener(Lnet/margaritov/preference/colorpicker/ColorPickerDialog$OnColorChangedListener;)V

    .line 147
    invoke-virtual {p2}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->show()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4

    .line 323
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_a

    goto :goto_d

    .line 325
    :cond_a
    invoke-virtual {p0}, Lcom/s1243808733/aide/highlight/HighlightActivity;->finish()V

    .line 330
    :goto_d
    invoke-super {p0, p1}, Lcom/s1243808733/app/base/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onTabReselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .registers 3

    return-void
.end method

.method public onTabSelected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .registers 3

    .line 63
    const-string p2, "p1"

    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getTag()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/s1243808733/aide/highlight/HighlightActivity;->toggleList(Z)V

    return-void
.end method

.method public onTabUnselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .registers 3

    return-void
.end method
