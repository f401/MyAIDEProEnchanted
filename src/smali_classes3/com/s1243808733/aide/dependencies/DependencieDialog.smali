.class public Lcom/s1243808733/aide/dependencies/DependencieDialog;
.super Ljava/lang/Object;
.source "DependencieDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/s1243808733/aide/dependencies/DependencieAdapter$OnSelectionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/s1243808733/aide/dependencies/DependencieDialog$DialogView;
    }
.end annotation


# static fields
.field static final FLAG_SHOW_ANDROIDX:I = 0x2

.field static final FLAG_SHOW_APPCOMPAT:I = 0x1

.field static list_androidx:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/s1243808733/aide/dependencies/Dependencie;",
            ">;"
        }
    .end annotation
.end field

.field static list_appcompat:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/s1243808733/aide/dependencies/Dependencie;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final activity:Landroid/app/Activity;

.field private adapter:Lcom/s1243808733/aide/dependencies/DependencieAdapter;

.field currentShow:I

.field private dialogView:Lcom/s1243808733/aide/dependencies/DependencieDialog$DialogView;

.field private mdialog:Landroid/app/AlertDialog;


# direct methods
.method static final constructor <clinit>()V
    .registers 6

    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/s1243808733/aide/dependencies/DependencieDialog;->list_appcompat:Ljava/util/List;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/s1243808733/aide/dependencies/DependencieDialog;->list_androidx:Ljava/util/List;

    move v0, v1

    .line 49
    :goto_0
    sget-object v2, Lcom/s1243808733/aide/dependencies/ArtifactMapping;->DATAS:[[Ljava/lang/String;

    array-length v2, v2

    if-lt v0, v2, :cond_0

    return-void

    .line 50
    :cond_0
    sget-object v2, Lcom/s1243808733/aide/dependencies/DependencieDialog;->list_appcompat:Ljava/util/List;

    new-instance v3, Lcom/s1243808733/aide/dependencies/Dependencie;

    sget-object v4, Lcom/s1243808733/aide/dependencies/ArtifactMapping;->DATAS:[[Ljava/lang/String;

    aget-object v4, v4, v0

    aget-object v4, v4, v1

    invoke-direct {v3, v4}, Lcom/s1243808733/aide/dependencies/Dependencie;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    sget-object v2, Lcom/s1243808733/aide/dependencies/DependencieDialog;->list_androidx:Ljava/util/List;

    new-instance v3, Lcom/s1243808733/aide/dependencies/Dependencie;

    sget-object v4, Lcom/s1243808733/aide/dependencies/ArtifactMapping;->DATAS:[[Ljava/lang/String;

    aget-object v4, v4, v0

    aget-object v4, v4, v5

    invoke-direct {v3, v4, v5}, Lcom/s1243808733/aide/dependencies/Dependencie;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .registers 3

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/s1243808733/aide/dependencies/DependencieDialog;->currentShow:I

    .line 56
    iput-object p1, p0, Lcom/s1243808733/aide/dependencies/DependencieDialog;->activity:Landroid/app/Activity;

    return-void
.end method

.method static synthetic access$L1000000(Lcom/s1243808733/aide/dependencies/DependencieDialog;)Lcom/s1243808733/aide/dependencies/DependencieDialog$DialogView;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/aide/dependencies/DependencieDialog;->dialogView:Lcom/s1243808733/aide/dependencies/DependencieDialog$DialogView;

    return-object v0
.end method

.method static synthetic access$L1000001(Lcom/s1243808733/aide/dependencies/DependencieDialog;)Lcom/s1243808733/aide/dependencies/DependencieAdapter;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/aide/dependencies/DependencieDialog;->adapter:Lcom/s1243808733/aide/dependencies/DependencieAdapter;

    return-object v0
.end method

.method static synthetic access$L1000002(Lcom/s1243808733/aide/dependencies/DependencieDialog;)Landroid/app/AlertDialog;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/aide/dependencies/DependencieDialog;->mdialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$S1000000(Lcom/s1243808733/aide/dependencies/DependencieDialog;Lcom/s1243808733/aide/dependencies/DependencieDialog$DialogView;)V
    .registers 2

    iput-object p1, p0, Lcom/s1243808733/aide/dependencies/DependencieDialog;->dialogView:Lcom/s1243808733/aide/dependencies/DependencieDialog$DialogView;

    return-void
.end method

.method static synthetic access$S1000001(Lcom/s1243808733/aide/dependencies/DependencieDialog;Lcom/s1243808733/aide/dependencies/DependencieAdapter;)V
    .registers 2

    iput-object p1, p0, Lcom/s1243808733/aide/dependencies/DependencieDialog;->adapter:Lcom/s1243808733/aide/dependencies/DependencieAdapter;

    return-void
.end method

.method static synthetic access$S1000002(Lcom/s1243808733/aide/dependencies/DependencieDialog;Landroid/app/AlertDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/s1243808733/aide/dependencies/DependencieDialog;->mdialog:Landroid/app/AlertDialog;

    return-void
.end method

.method public static showDialog(Landroid/app/Activity;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")V"
        }
    .end annotation

    .line 60
    new-instance v0, Lcom/s1243808733/aide/dependencies/DependencieDialog;

    invoke-direct {v0, p0}, Lcom/s1243808733/aide/dependencies/DependencieDialog;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0}, Lcom/s1243808733/aide/dependencies/DependencieDialog;->show()V

    return-void
.end method


# virtual methods
.method getAndroidXList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/s1243808733/aide/dependencies/Dependencie;",
            ">;"
        }
    .end annotation

    .line 313
    sget-object v0, Lcom/s1243808733/aide/dependencies/DependencieDialog;->list_androidx:Ljava/util/List;

    return-object v0
.end method

.method getAppCompatList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/s1243808733/aide/dependencies/Dependencie;",
            ">;"
        }
    .end annotation

    .line 309
    sget-object v0, Lcom/s1243808733/aide/dependencies/DependencieDialog;->list_appcompat:Ljava/util/List;

    return-object v0
.end method

.method getList([Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/s1243808733/aide/dependencies/Dependencie;",
            ">;"
        }
    .end annotation

    .line 317
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 318
    const/4 v0, 0x0

    :goto_0
    array-length v2, p1

    if-lt v0, v2, :cond_0

    .line 321
    return-object v1

    .line 319
    :cond_0
    new-instance v2, Lcom/s1243808733/aide/dependencies/Dependencie;

    aget-object v3, p1, v0

    invoke-direct {v2, v3}, Lcom/s1243808733/aide/dependencies/Dependencie;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 318
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/DialogInterface;",
            "I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 76
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9
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

    .line 66
    iget-object v0, p0, Lcom/s1243808733/aide/dependencies/DependencieDialog;->adapter:Lcom/s1243808733/aide/dependencies/DependencieAdapter;

    invoke-virtual {v0, p3}, Lcom/s1243808733/aide/dependencies/DependencieAdapter;->getItem(I)Lcom/s1243808733/aide/dependencies/Dependencie;

    move-result-object v1

    .line 67
    check-cast p2, Lcom/s1243808733/aide/dependencies/ItemView;

    .line 68
    iget-object v0, p0, Lcom/s1243808733/aide/dependencies/DependencieDialog;->adapter:Lcom/s1243808733/aide/dependencies/DependencieAdapter;

    invoke-virtual {v0, v1}, Lcom/s1243808733/aide/dependencies/DependencieAdapter;->isSelection(Lcom/s1243808733/aide/dependencies/Dependencie;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 69
    :goto_0
    invoke-virtual {p2, v0}, Lcom/s1243808733/aide/dependencies/ItemView;->setChecked(Z)V

    .line 70
    iget-object v2, p0, Lcom/s1243808733/aide/dependencies/DependencieDialog;->adapter:Lcom/s1243808733/aide/dependencies/DependencieAdapter;

    invoke-virtual {v2, v1, v0}, Lcom/s1243808733/aide/dependencies/DependencieAdapter;->setSelected(Lcom/s1243808733/aide/dependencies/Dependencie;Z)V

    return-void

    .line 68
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onSelection(Lcom/s1243808733/aide/dependencies/Dependencie;Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/aide/dependencies/Dependencie;",
            "Z)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 83
    invoke-virtual {p0}, Lcom/s1243808733/aide/dependencies/DependencieDialog;->updateDialogTitle()V

    return-void
.end method

.method show()V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const/4 v1, 0x0

    .line 91
    new-instance v0, Lcom/s1243808733/aide/dependencies/DependencieDialog$DialogView;

    iget-object v2, p0, Lcom/s1243808733/aide/dependencies/DependencieDialog;->activity:Landroid/app/Activity;

    invoke-direct {v0, v2}, Lcom/s1243808733/aide/dependencies/DependencieDialog$DialogView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/s1243808733/aide/dependencies/DependencieDialog;->dialogView:Lcom/s1243808733/aide/dependencies/DependencieDialog$DialogView;

    .line 92
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/s1243808733/aide/dependencies/DependencieDialog;->activity:Landroid/app/Activity;

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "\u6dfb\u52a0\u4f9d\u8d56"

    :goto_0
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/s1243808733/aide/dependencies/DependencieDialog;->dialogView:Lcom/s1243808733/aide/dependencies/DependencieDialog$DialogView;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "\u6dfb\u52a0"

    :goto_1
    invoke-virtual {v2, v0, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x1040000

    move-object v0, v1

    check-cast v0, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v2, v3, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "\u66f4\u591a"

    :goto_2
    check-cast v1, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v2, v0, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/aide/dependencies/DependencieDialog;->mdialog:Landroid/app/AlertDialog;

    .line 99
    iget-object v0, p0, Lcom/s1243808733/aide/dependencies/DependencieDialog;->mdialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 101
    iget-object v0, p0, Lcom/s1243808733/aide/dependencies/DependencieDialog;->mdialog:Landroid/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lcom/s1243808733/aide/dependencies/DependencieDialog$100000002;

    invoke-direct {v1, p0}, Lcom/s1243808733/aide/dependencies/DependencieDialog$100000002;-><init>(Lcom/s1243808733/aide/dependencies/DependencieDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    iget-object v0, p0, Lcom/s1243808733/aide/dependencies/DependencieDialog;->mdialog:Landroid/app/AlertDialog;

    const/4 v1, -0x3

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lcom/s1243808733/aide/dependencies/DependencieDialog$100000005;

    invoke-direct {v1, p0}, Lcom/s1243808733/aide/dependencies/DependencieDialog$100000005;-><init>(Lcom/s1243808733/aide/dependencies/DependencieDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 283
    iget-object v0, p0, Lcom/s1243808733/aide/dependencies/DependencieDialog;->dialogView:Lcom/s1243808733/aide/dependencies/DependencieDialog$DialogView;

    invoke-virtual {v0}, Lcom/s1243808733/aide/dependencies/DependencieDialog$DialogView;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 284
    iget-object v0, p0, Lcom/s1243808733/aide/dependencies/DependencieDialog;->dialogView:Lcom/s1243808733/aide/dependencies/DependencieDialog$DialogView;

    invoke-virtual {v0}, Lcom/s1243808733/aide/dependencies/DependencieDialog$DialogView;->getSearchView()Landroid/widget/EditText;

    move-result-object v0

    new-instance v1, Lcom/s1243808733/aide/dependencies/DependencieDialog$100000006;

    invoke-direct {v1, p0}, Lcom/s1243808733/aide/dependencies/DependencieDialog$100000006;-><init>(Lcom/s1243808733/aide/dependencies/DependencieDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 302
    iget-object v1, p0, Lcom/s1243808733/aide/dependencies/DependencieDialog;->activity:Landroid/app/Activity;

    iget v0, p0, Lcom/s1243808733/aide/dependencies/DependencieDialog;->currentShow:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    invoke-virtual {p0}, Lcom/s1243808733/aide/dependencies/DependencieDialog;->getAndroidXList()Ljava/util/List;

    move-result-object v0

    :goto_3
    new-instance v2, Lcom/s1243808733/aide/dependencies/DependencieAdapter;

    invoke-direct {v2, v1, v0}, Lcom/s1243808733/aide/dependencies/DependencieAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v2, p0, Lcom/s1243808733/aide/dependencies/DependencieDialog;->adapter:Lcom/s1243808733/aide/dependencies/DependencieAdapter;

    .line 303
    iget-object v0, p0, Lcom/s1243808733/aide/dependencies/DependencieDialog;->adapter:Lcom/s1243808733/aide/dependencies/DependencieAdapter;

    invoke-virtual {v0, p0}, Lcom/s1243808733/aide/dependencies/DependencieAdapter;->setOnSelectionListener(Lcom/s1243808733/aide/dependencies/DependencieAdapter$OnSelectionListener;)V

    .line 304
    iget-object v0, p0, Lcom/s1243808733/aide/dependencies/DependencieDialog;->dialogView:Lcom/s1243808733/aide/dependencies/DependencieDialog$DialogView;

    iget-object v1, p0, Lcom/s1243808733/aide/dependencies/DependencieDialog;->adapter:Lcom/s1243808733/aide/dependencies/DependencieAdapter;

    invoke-virtual {v0, v1}, Lcom/s1243808733/aide/dependencies/DependencieDialog$DialogView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 305
    invoke-virtual {p0}, Lcom/s1243808733/aide/dependencies/DependencieDialog;->updateDialogTitle()V

    return-void

    .line 92
    :cond_0
    const-string v0, "Add Dependency"

    goto/16 :goto_0

    :cond_1
    const-string v0, "Add"

    goto/16 :goto_1

    :cond_2
    const-string v0, "More"

    goto :goto_2

    .line 302
    :cond_3
    invoke-virtual {p0}, Lcom/s1243808733/aide/dependencies/DependencieDialog;->getAppCompatList()Ljava/util/List;

    move-result-object v0

    goto :goto_3
.end method

.method updateDialogTitle()V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 87
    iget-object v1, p0, Lcom/s1243808733/aide/dependencies/DependencieDialog;->mdialog:Landroid/app/AlertDialog;

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "\u6dfb\u52a0\u4f9d\u8d56\uff08\u5df2\u9009%d\u9879)"

    :goto_0
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/Integer;

    iget-object v5, p0, Lcom/s1243808733/aide/dependencies/DependencieDialog;->adapter:Lcom/s1243808733/aide/dependencies/DependencieAdapter;

    iget-object v5, v5, Lcom/s1243808733/aide/dependencies/DependencieAdapter;->selectedMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    const-string v0, "Add Dependency (%d items selected)"

    goto :goto_0
.end method
