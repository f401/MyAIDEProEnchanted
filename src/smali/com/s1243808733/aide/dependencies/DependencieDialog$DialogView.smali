.class Lcom/s1243808733/aide/dependencies/DependencieDialog$DialogView;
.super Landroid/widget/LinearLayout;
.source "DependencieDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s1243808733/aide/dependencies/DependencieDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DialogView"
.end annotation


# instance fields
.field ctx:Landroid/content/Context;

.field private listView:Lcom/s1243808733/widget/CustomListView;

.field private searchView:Landroid/widget/EditText;


# direct methods
.method static bridge synthetic -$$Nest$fgetsearchView(Lcom/s1243808733/aide/dependencies/DependencieDialog$DialogView;)Landroid/widget/EditText;
    .registers 1

    iget-object p0, p0, Lcom/s1243808733/aide/dependencies/DependencieDialog$DialogView;->searchView:Landroid/widget/EditText;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 332
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 333
    iput-object p1, p0, Lcom/s1243808733/aide/dependencies/DependencieDialog$DialogView;->ctx:Landroid/content/Context;

    .line 334
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/s1243808733/aide/dependencies/DependencieDialog$DialogView;->setOrientation(I)V

    .line 336
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/s1243808733/aide/dependencies/DependencieDialog$DialogView;->searchView:Landroid/widget/EditText;

    .line 337
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v2

    if-eqz v2, :cond_19

    const-string v2, "搜索依赖.."

    goto :goto_1b

    :cond_19
    const-string v2, "Search dependence.."

    :goto_1b
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 338
    iget-object v1, p0, Lcom/s1243808733/aide/dependencies/DependencieDialog$DialogView;->searchView:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 339
    new-instance v1, Lcom/s1243808733/widget/CustomListView;

    invoke-direct {v1, p1}, Lcom/s1243808733/widget/CustomListView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/s1243808733/aide/dependencies/DependencieDialog$DialogView;->listView:Lcom/s1243808733/widget/CustomListView;

    .line 340
    invoke-virtual {v1, v0}, Lcom/s1243808733/widget/CustomListView;->setFastScrollEnabled(Z)V

    .line 343
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 344
    const/high16 p1, 0x41800000  # 16.0f

    invoke-static {p1}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v1

    invoke-static {p1}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result p1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 345
    iget-object p1, p0, Lcom/s1243808733/aide/dependencies/DependencieDialog$DialogView;->searchView:Landroid/widget/EditText;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-virtual {v0, p1, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 346
    invoke-virtual {p0, v0, v1, v2}, Lcom/s1243808733/aide/dependencies/DependencieDialog$DialogView;->addView(Landroid/view/View;II)V

    .line 348
    iget-object p1, p0, Lcom/s1243808733/aide/dependencies/DependencieDialog$DialogView;->listView:Lcom/s1243808733/widget/CustomListView;

    invoke-virtual {p0, p1, v1, v2}, Lcom/s1243808733/aide/dependencies/DependencieDialog$DialogView;->addView(Landroid/view/View;II)V

    return-void
.end method


# virtual methods
.method public getListView()Landroid/widget/ListView;
    .registers 2

    .line 361
    iget-object v0, p0, Lcom/s1243808733/aide/dependencies/DependencieDialog$DialogView;->listView:Lcom/s1243808733/widget/CustomListView;

    return-object v0
.end method

.method public getSearchView()Landroid/widget/EditText;
    .registers 2

    .line 357
    iget-object v0, p0, Lcom/s1243808733/aide/dependencies/DependencieDialog$DialogView;->searchView:Landroid/widget/EditText;

    return-object v0
.end method

.method setAdapter(Landroid/widget/ListAdapter;)V
    .registers 3

    .line 353
    iget-object v0, p0, Lcom/s1243808733/aide/dependencies/DependencieDialog$DialogView;->listView:Lcom/s1243808733/widget/CustomListView;

    invoke-virtual {v0, p1}, Lcom/s1243808733/widget/CustomListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method
