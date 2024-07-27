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
            "Ljava/util/List",
            "<",
            "Lcom/s1243808733/aide/highlight/Item;",
            ">;"
        }
    .end annotation
.end field

.field private mListView:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 354
    invoke-direct {p0}, Lcom/s1243808733/app/base/BaseActivity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/s1243808733/aide/highlight/HighlightActivity;->list:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/s1243808733/aide/highlight/HighlightActivity;->isDataChangeed:Z

    return-void
.end method

.method static synthetic access$L1000001(Lcom/s1243808733/aide/highlight/HighlightActivity;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/aide/highlight/HighlightActivity;->list:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$L1000002(Lcom/s1243808733/aide/highlight/HighlightActivity;)Lcom/s1243808733/aide/highlight/HighlightAdapter;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/aide/highlight/HighlightActivity;->adapter:Lcom/s1243808733/aide/highlight/HighlightAdapter;

    return-object v0
.end method

.method static synthetic access$L1000003(Lcom/s1243808733/aide/highlight/HighlightActivity;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/s1243808733/aide/highlight/HighlightActivity;->isDataChangeed:Z

    return v0
.end method

.method static synthetic access$S1000001(Lcom/s1243808733/aide/highlight/HighlightActivity;Ljava/util/List;)V
    .registers 2

    iput-object p1, p0, Lcom/s1243808733/aide/highlight/HighlightActivity;->list:Ljava/util/List;

    return-void
.end method

.method static synthetic access$S1000002(Lcom/s1243808733/aide/highlight/HighlightActivity;Lcom/s1243808733/aide/highlight/HighlightAdapter;)V
    .registers 2

    iput-object p1, p0, Lcom/s1243808733/aide/highlight/HighlightActivity;->adapter:Lcom/s1243808733/aide/highlight/HighlightAdapter;

    return-void
.end method

.method static synthetic access$S1000003(Lcom/s1243808733/aide/highlight/HighlightActivity;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/s1243808733/aide/highlight/HighlightActivity;->isDataChangeed:Z

    return-void
.end method

.method private initActionBar()V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 91
    invoke-virtual {p0}, Lcom/s1243808733/aide/highlight/HighlightActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    .line 92
    invoke-virtual {p0}, Lcom/s1243808733/aide/highlight/HighlightActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "title"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 93
    invoke-virtual {v1, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 95
    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 97
    iput-boolean v4, p0, Lcom/s1243808733/aide/highlight/HighlightActivity;->enableLight:Z

    .line 98
    const-string v0, "default"

    invoke-static {}, Lcom/s1243808733/aide/application/AppTheme;->getThemeCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {v1}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v2

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "\u4eae\u4e3b\u9898\u9ad8\u4eae\u914d\u7f6e"

    :goto_0
    invoke-virtual {v2, v0}, Landroid/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;

    move-result-object v0

    const-string v2, "p1"

    invoke-virtual {v0, v2}, Landroid/app/ActionBar$Tab;->setTag(Ljava/lang/Object;)Landroid/app/ActionBar$Tab;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 103
    iput-boolean v3, p0, Lcom/s1243808733/aide/highlight/HighlightActivity;->enableLight:Z

    .line 106
    :cond_0
    invoke-virtual {v1}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v2

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "\u6697\u4e3b\u9898\u9ad8\u4eae\u914d\u7f6e"

    :goto_1
    invoke-virtual {v2, v0}, Landroid/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;

    move-result-object v0

    const-string v2, "p2"

    invoke-virtual {v0, v2}, Landroid/app/ActionBar$Tab;->setTag(Ljava/lang/Object;)Landroid/app/ActionBar$Tab;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 111
    iget-boolean v0, p0, Lcom/s1243808733/aide/highlight/HighlightActivity;->enableLight:Z

    if-eqz v0, :cond_1

    .line 112
    invoke-virtual {v1, v4}, Landroid/app/ActionBar;->getTabAt(I)Landroid/app/ActionBar$Tab;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar$Tab;->select()V

    .line 113
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->isLightTheme()Z

    move-result v0

    if-nez v0, :cond_1

    .line 114
    invoke-virtual {v1, v3}, Landroid/app/ActionBar;->getTabAt(I)Landroid/app/ActionBar$Tab;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar$Tab;->select()V

    .line 118
    :cond_1
    invoke-virtual {p0}, Lcom/s1243808733/aide/highlight/HighlightActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/aide/application/AppTheme;->customTabView(Landroid/app/ActionBar;)V

    return-void

    .line 99
    :cond_2
    const-string v0, "Light"

    goto :goto_0

    .line 106
    :cond_3
    const-string v0, "Dark"

    goto :goto_1
.end method

.method private toggleList(Z)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/s1243808733/aide/highlight/HighlightActivity;->list:Ljava/util/List;

    .line 76
    invoke-static {}, Lcom/s1243808733/aide/highlight/HighlightUtils;->getHighlightColor()Lcom/s1243808733/aide/highlight/color/Colors;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/aide/highlight/color/Colors;->values()[Lcom/s1243808733/aide/highlight/color/Color;

    move-result-object v2

    const/4 v0, 0x0

    .line 77
    :goto_0
    array-length v1, v2

    if-lt v0, v1, :cond_0

    .line 79
    iget-object v0, p0, Lcom/s1243808733/aide/highlight/HighlightActivity;->adapter:Lcom/s1243808733/aide/highlight/HighlightAdapter;

    if-nez v0, :cond_2

    .line 80
    new-instance v0, Lcom/s1243808733/aide/highlight/HighlightAdapter;

    iget-object v1, p0, Lcom/s1243808733/aide/highlight/HighlightActivity;->list:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/s1243808733/aide/highlight/HighlightAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/s1243808733/aide/highlight/HighlightActivity;->adapter:Lcom/s1243808733/aide/highlight/HighlightAdapter;

    .line 81
    iget-object v0, p0, Lcom/s1243808733/aide/highlight/HighlightActivity;->adapter:Lcom/s1243808733/aide/highlight/HighlightAdapter;

    invoke-virtual {v0, p1}, Lcom/s1243808733/aide/highlight/HighlightAdapter;->setIsLight(Z)V

    .line 82
    iget-object v0, p0, Lcom/s1243808733/aide/highlight/HighlightActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/s1243808733/aide/highlight/HighlightActivity;->adapter:Lcom/s1243808733/aide/highlight/HighlightAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 86
    :goto_1
    return-void

    .line 76
    :cond_0
    aget-object v1, v2, v0

    .line 77
    iget-object v3, p0, Lcom/s1243808733/aide/highlight/HighlightActivity;->list:Ljava/util/List;

    iget-object v4, v1, Lcom/s1243808733/aide/highlight/color/Color;->label:Ljava/lang/String;

    iget-object v5, v1, Lcom/s1243808733/aide/highlight/color/Color;->name:Ljava/lang/String;

    if-eqz p1, :cond_1

    iget-object v1, v1, Lcom/s1243808733/aide/highlight/color/Color;->lightColor:Ljava/lang/String;

    :goto_2
    new-instance v6, Lcom/s1243808733/aide/highlight/Item;

    invoke-direct {v6, v4, v5, v1}, Lcom/s1243808733/aide/highlight/Item;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, v1, Lcom/s1243808733/aide/highlight/color/Color;->darkColor:Ljava/lang/String;

    goto :goto_2

    .line 84
    :cond_2
    iget-object v0, p0, Lcom/s1243808733/aide/highlight/HighlightActivity;->adapter:Lcom/s1243808733/aide/highlight/HighlightAdapter;

    invoke-virtual {v0, p1}, Lcom/s1243808733/aide/highlight/HighlightAdapter;->setIsLight(Z)V

    .line 85
    iget-object v0, p0, Lcom/s1243808733/aide/highlight/HighlightActivity;->adapter:Lcom/s1243808733/aide/highlight/HighlightAdapter;

    iget-object v1, p0, Lcom/s1243808733/aide/highlight/HighlightActivity;->list:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/s1243808733/aide/highlight/HighlightAdapter;->setList(Ljava/util/List;)V

    .line 86
    iget-object v0, p0, Lcom/s1243808733/aide/highlight/HighlightActivity;->adapter:Lcom/s1243808733/aide/highlight/HighlightAdapter;

    invoke-virtual {v0}, Lcom/s1243808733/aide/highlight/HighlightAdapter;->notifyDataSetChanged()V

    goto :goto_1
.end method


# virtual methods
.method public onBackPressed()V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 334
    invoke-virtual {p0}, Lcom/s1243808733/aide/highlight/HighlightActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->getTabCount()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 335
    invoke-virtual {p0}, Lcom/s1243808733/aide/highlight/HighlightActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->getSelectedTab()Landroid/app/ActionBar$Tab;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar$Tab;->getTag()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "p2"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 336
    invoke-virtual {p0}, Lcom/s1243808733/aide/highlight/HighlightActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->getTabAt(I)Landroid/app/ActionBar$Tab;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar$Tab;->select()V

    .line 341
    :goto_0
    return-void

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 52
    invoke-super {p0, p1}, Lcom/s1243808733/app/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    invoke-virtual {p0}, Lcom/s1243808733/aide/highlight/HighlightActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "from_main"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/s1243808733/aide/highlight/HighlightActivity;->from_main:Z

    .line 55
    new-instance v0, Lcom/s1243808733/widget/CustomListView;

    invoke-direct {v0, p0}, Lcom/s1243808733/widget/CustomListView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/s1243808733/aide/highlight/HighlightActivity;->mListView:Landroid/widget/ListView;

    .line 56
    iget-object v0, p0, Lcom/s1243808733/aide/highlight/HighlightActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0, v0}, Lcom/s1243808733/aide/highlight/HighlightActivity;->setContentView(Landroid/view/View;)V

    .line 57
    iget-object v0, p0, Lcom/s1243808733/aide/highlight/HighlightActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 58
    invoke-direct {p0}, Lcom/s1243808733/aide/highlight/HighlightActivity;->initActionBar()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 154
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "\u8fd8\u539f"

    :goto_0
    invoke-interface {p1, v0}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/s1243808733/aide/highlight/HighlightActivity$100000002;

    invoke-direct {v1, p0}, Lcom/s1243808733/aide/highlight/HighlightActivity$100000002;-><init>(Lcom/s1243808733/aide/highlight/HighlightActivity;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 174
    iget-boolean v0, p0, Lcom/s1243808733/aide/highlight/HighlightActivity;->enableLight:Z

    if-eqz v0, :cond_0

    .line 175
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "\u8fd8\u539f\u4eae/\u6697"

    :goto_1
    invoke-interface {p1, v0}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/s1243808733/aide/highlight/HighlightActivity$100000003;

    invoke-direct {v1, p0}, Lcom/s1243808733/aide/highlight/HighlightActivity$100000003;-><init>(Lcom/s1243808733/aide/highlight/HighlightActivity;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 200
    :cond_0
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "\u590d\u5236\u914d\u7f6e"

    :goto_2
    invoke-interface {p1, v0}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/s1243808733/aide/highlight/HighlightActivity$100000004;

    invoke-direct {v1, p0}, Lcom/s1243808733/aide/highlight/HighlightActivity$100000004;-><init>(Lcom/s1243808733/aide/highlight/HighlightActivity;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 226
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "\u5bfc\u5165\u914d\u7f6e"

    :goto_3
    invoke-interface {p1, v0}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/s1243808733/aide/highlight/HighlightActivity$100000007;

    invoke-direct {v1, p0}, Lcom/s1243808733/aide/highlight/HighlightActivity$100000007;-><init>(Lcom/s1243808733/aide/highlight/HighlightActivity;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 317
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    .line 154
    :cond_1
    const-string v0, "Restore"

    goto :goto_0

    .line 175
    :cond_2
    const-string v0, "Reset light/dark"

    goto :goto_1

    .line 200
    :cond_3
    const-string v0, "Copy configuration"

    goto :goto_2

    .line 226
    :cond_4
    const-string v0, "Import configuration"

    goto :goto_3
.end method

.method protected onDestroy()V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 349
    invoke-super {p0}, Lcom/s1243808733/app/base/BaseActivity;->onDestroy()V

    .line 350
    iget-boolean v0, p0, Lcom/s1243808733/aide/highlight/HighlightActivity;->isDataChangeed:Z

    if-eqz v0, :cond_0

    .line 351
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->getAIDEEditorPager()Lcom/aide/ui/AIDEEditorPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aide/ui/AIDEEditorPager;->Zo()V

    .line 352
    invoke-static {}, Lcom/s1243808733/aide/util/AIDEUtils;->getMainActivity()Lcom/s1243808733/aide/AideMainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/aide/AideMainActivity;->setEditorBackground()V

    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 123
    iget-object v0, p0, Lcom/s1243808733/aide/highlight/HighlightActivity;->adapter:Lcom/s1243808733/aide/highlight/HighlightAdapter;

    invoke-virtual {v0, p3}, Lcom/s1243808733/aide/highlight/HighlightAdapter;->getItem(I)Lcom/s1243808733/aide/highlight/Item;

    move-result-object v0

    .line 125
    new-instance v1, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;

    iget-object v2, p0, Lcom/s1243808733/aide/highlight/HighlightActivity;->adapter:Lcom/s1243808733/aide/highlight/HighlightAdapter;

    invoke-virtual {v2}, Lcom/s1243808733/aide/highlight/HighlightAdapter;->isLight()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/s1243808733/aide/highlight/Item;->getColor(Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/blankj/utilcode/util/ColorUtils;->string2Int(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v1, p0, v2}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;-><init>(Landroid/content/Context;I)V

    .line 126
    invoke-virtual {v0}, Lcom/s1243808733/aide/highlight/Item;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 127
    new-instance v2, Lcom/s1243808733/aide/highlight/HighlightActivity$100000000;

    invoke-direct {v2, p0, v0}, Lcom/s1243808733/aide/highlight/HighlightActivity$100000000;-><init>(Lcom/s1243808733/aide/highlight/HighlightActivity;Lcom/s1243808733/aide/highlight/Item;)V

    invoke-virtual {v1, v2}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->setOnColorChangedListener(Lnet/margaritov/preference/colorpicker/ColorPickerDialog$OnColorChangedListener;)V

    .line 136
    const/4 v2, -0x3

    invoke-virtual {p0}, Lcom/s1243808733/aide/highlight/HighlightActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d06a5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/s1243808733/aide/highlight/HighlightActivity$100000001;

    invoke-direct {v4, p0, v0}, Lcom/s1243808733/aide/highlight/HighlightActivity$100000001;-><init>(Lcom/s1243808733/aide/highlight/HighlightActivity;Lcom/s1243808733/aide/highlight/Item;)V

    invoke-virtual {v1, v2, v3, v4}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 146
    invoke-virtual {v1}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->show()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 322
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 329
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 324
    :pswitch_0
    invoke-virtual {p0}, Lcom/s1243808733/aide/highlight/HighlightActivity;->finish()V

    goto :goto_0

    .line 322
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onTabReselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ActionBar$Tab;",
            "Landroid/app/FragmentTransaction;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    return-void
.end method

.method public onTabSelected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ActionBar$Tab;",
            "Landroid/app/FragmentTransaction;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 63
    const-string v0, "p1"

    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/s1243808733/aide/highlight/HighlightActivity;->toggleList(Z)V

    return-void
.end method

.method public onTabUnselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ActionBar$Tab;",
            "Landroid/app/FragmentTransaction;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    return-void
.end method
