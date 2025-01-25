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
            "Ljava/util/List<",
            "Lcom/s1243808733/aide/dependencies/Dependencie;",
            ">;"
        }
    .end annotation
.end field

.field static list_appcompat:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
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
.method static bridge synthetic -$$Nest$fgetadapter(Lcom/s1243808733/aide/dependencies/DependencieDialog;)Lcom/s1243808733/aide/dependencies/DependencieAdapter;
    .registers 1

    iget-object p0, p0, Lcom/s1243808733/aide/dependencies/DependencieDialog;->adapter:Lcom/s1243808733/aide/dependencies/DependencieAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdialogView(Lcom/s1243808733/aide/dependencies/DependencieDialog;)Lcom/s1243808733/aide/dependencies/DependencieDialog$DialogView;
    .registers 1

    iget-object p0, p0, Lcom/s1243808733/aide/dependencies/DependencieDialog;->dialogView:Lcom/s1243808733/aide/dependencies/DependencieDialog$DialogView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmdialog(Lcom/s1243808733/aide/dependencies/DependencieDialog;)Landroid/app/AlertDialog;
    .registers 1

    iget-object p0, p0, Lcom/s1243808733/aide/dependencies/DependencieDialog;->mdialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 6

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/s1243808733/aide/dependencies/DependencieDialog;->list_appcompat:Ljava/util/List;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/s1243808733/aide/dependencies/DependencieDialog;->list_androidx:Ljava/util/List;

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 49
    :goto_10
    sget-object v2, Lcom/s1243808733/aide/dependencies/ArtifactMapping;->DATAS:[[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_39

    .line 50
    sget-object v2, Lcom/s1243808733/aide/dependencies/DependencieDialog;->list_appcompat:Ljava/util/List;

    new-instance v3, Lcom/s1243808733/aide/dependencies/Dependencie;

    sget-object v4, Lcom/s1243808733/aide/dependencies/ArtifactMapping;->DATAS:[[Ljava/lang/String;

    aget-object v4, v4, v1

    aget-object v4, v4, v0

    invoke-direct {v3, v4}, Lcom/s1243808733/aide/dependencies/Dependencie;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    sget-object v2, Lcom/s1243808733/aide/dependencies/DependencieDialog;->list_androidx:Ljava/util/List;

    new-instance v3, Lcom/s1243808733/aide/dependencies/Dependencie;

    sget-object v4, Lcom/s1243808733/aide/dependencies/ArtifactMapping;->DATAS:[[Ljava/lang/String;

    aget-object v4, v4, v1

    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-direct {v3, v4, v5}, Lcom/s1243808733/aide/dependencies/Dependencie;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_39
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .registers 3

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x2

    iput v0, p0, Lcom/s1243808733/aide/dependencies/DependencieDialog;->currentShow:I

    .line 56
    iput-object p1, p0, Lcom/s1243808733/aide/dependencies/DependencieDialog;->activity:Landroid/app/Activity;

    return-void
.end method

.method public static showDialog(Landroid/app/Activity;)V
    .registers 2

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
            "Ljava/util/List<",
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
            "Ljava/util/List<",
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
            "Ljava/util/List<",
            "Lcom/s1243808733/aide/dependencies/Dependencie;",
            ">;"
        }
    .end annotation

    .line 317
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 318
    :goto_6
    array-length v2, p1

    if-ge v1, v2, :cond_16

    .line 319
    new-instance v2, Lcom/s1243808733/aide/dependencies/Dependencie;

    aget-object v3, p1, v1

    invoke-direct {v2, v3}, Lcom/s1243808733/aide/dependencies/Dependencie;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_16
    return-object v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

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

    .line 66
    iget-object p1, p0, Lcom/s1243808733/aide/dependencies/DependencieDialog;->adapter:Lcom/s1243808733/aide/dependencies/DependencieAdapter;

    invoke-virtual {p1, p3}, Lcom/s1243808733/aide/dependencies/DependencieAdapter;->getItem(I)Lcom/s1243808733/aide/dependencies/Dependencie;

    move-result-object p1

    .line 67
    check-cast p2, Lcom/s1243808733/aide/dependencies/ItemView;

    .line 68
    iget-object p3, p0, Lcom/s1243808733/aide/dependencies/DependencieDialog;->adapter:Lcom/s1243808733/aide/dependencies/DependencieAdapter;

    invoke-virtual {p3, p1}, Lcom/s1243808733/aide/dependencies/DependencieAdapter;->isSelection(Lcom/s1243808733/aide/dependencies/Dependencie;)Z

    move-result p3

    xor-int/lit8 p3, p3, 0x1

    .line 69
    invoke-virtual {p2, p3}, Lcom/s1243808733/aide/dependencies/ItemView;->setChecked(Z)V

    .line 70
    iget-object p2, p0, Lcom/s1243808733/aide/dependencies/DependencieDialog;->adapter:Lcom/s1243808733/aide/dependencies/DependencieAdapter;

    invoke-virtual {p2, p1, p3}, Lcom/s1243808733/aide/dependencies/DependencieAdapter;->setSelected(Lcom/s1243808733/aide/dependencies/Dependencie;Z)V

    return-void
.end method

.method public onSelection(Lcom/s1243808733/aide/dependencies/Dependencie;Z)V
    .registers 3

    .line 83
    invoke-virtual {p0}, Lcom/s1243808733/aide/dependencies/DependencieDialog;->updateDialogTitle()V

    return-void
.end method

.method show()V
    .registers 4

    .line 91
    new-instance v0, Lcom/s1243808733/aide/dependencies/DependencieDialog$DialogView;

    iget-object v1, p0, Lcom/s1243808733/aide/dependencies/DependencieDialog;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/s1243808733/aide/dependencies/DependencieDialog$DialogView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/s1243808733/aide/dependencies/DependencieDialog;->dialogView:Lcom/s1243808733/aide/dependencies/DependencieDialog$DialogView;

    .line 92
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/s1243808733/aide/dependencies/DependencieDialog;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 93
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v1

    if-eqz v1, :cond_19

    const-string v1, "添加依赖"

    goto :goto_1b

    :cond_19
    const-string v1, "Add Dependency"

    :goto_1b
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/s1243808733/aide/dependencies/DependencieDialog;->dialogView:Lcom/s1243808733/aide/dependencies/DependencieDialog$DialogView;

    .line 94
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 95
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v1

    if-eqz v1, :cond_2e

    const-string v1, "添加"

    goto :goto_30

    :cond_2e
    const-string v1, "Add"

    :goto_30
    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 96
    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 97
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v1

    if-eqz v1, :cond_44

    const-string v1, "更多"

    goto :goto_46

    :cond_44
    const-string v1, "More"

    :goto_46
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 98
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/aide/dependencies/DependencieDialog;->mdialog:Landroid/app/AlertDialog;

    .line 99
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 101
    iget-object v0, p0, Lcom/s1243808733/aide/dependencies/DependencieDialog;->mdialog:Landroid/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lcom/s1243808733/aide/dependencies/DependencieDialog$1;

    invoke-direct {v1, p0}, Lcom/s1243808733/aide/dependencies/DependencieDialog$1;-><init>(Lcom/s1243808733/aide/dependencies/DependencieDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    iget-object v0, p0, Lcom/s1243808733/aide/dependencies/DependencieDialog;->mdialog:Landroid/app/AlertDialog;

    const/4 v1, -0x3

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lcom/s1243808733/aide/dependencies/DependencieDialog$2;

    invoke-direct {v1, p0}, Lcom/s1243808733/aide/dependencies/DependencieDialog$2;-><init>(Lcom/s1243808733/aide/dependencies/DependencieDialog;)V

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

    new-instance v1, Lcom/s1243808733/aide/dependencies/DependencieDialog$3;

    invoke-direct {v1, p0}, Lcom/s1243808733/aide/dependencies/DependencieDialog$3;-><init>(Lcom/s1243808733/aide/dependencies/DependencieDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 302
    iget-object v0, p0, Lcom/s1243808733/aide/dependencies/DependencieDialog;->activity:Landroid/app/Activity;

    iget v1, p0, Lcom/s1243808733/aide/dependencies/DependencieDialog;->currentShow:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_94

    invoke-virtual {p0}, Lcom/s1243808733/aide/dependencies/DependencieDialog;->getAndroidXList()Ljava/util/List;

    move-result-object v1

    goto :goto_98

    :cond_94
    invoke-virtual {p0}, Lcom/s1243808733/aide/dependencies/DependencieDialog;->getAppCompatList()Ljava/util/List;

    move-result-object v1

    :goto_98
    new-instance v2, Lcom/s1243808733/aide/dependencies/DependencieAdapter;

    invoke-direct {v2, v0, v1}, Lcom/s1243808733/aide/dependencies/DependencieAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v2, p0, Lcom/s1243808733/aide/dependencies/DependencieDialog;->adapter:Lcom/s1243808733/aide/dependencies/DependencieAdapter;

    .line 303
    invoke-virtual {v2, p0}, Lcom/s1243808733/aide/dependencies/DependencieAdapter;->setOnSelectionListener(Lcom/s1243808733/aide/dependencies/DependencieAdapter$OnSelectionListener;)V

    .line 304
    iget-object v0, p0, Lcom/s1243808733/aide/dependencies/DependencieDialog;->dialogView:Lcom/s1243808733/aide/dependencies/DependencieDialog$DialogView;

    iget-object v1, p0, Lcom/s1243808733/aide/dependencies/DependencieDialog;->adapter:Lcom/s1243808733/aide/dependencies/DependencieAdapter;

    invoke-virtual {v0, v1}, Lcom/s1243808733/aide/dependencies/DependencieDialog$DialogView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 305
    invoke-virtual {p0}, Lcom/s1243808733/aide/dependencies/DependencieDialog;->updateDialogTitle()V

    return-void
.end method

.method updateDialogTitle()V
    .registers 6

    .line 87
    iget-object v0, p0, Lcom/s1243808733/aide/dependencies/DependencieDialog;->mdialog:Landroid/app/AlertDialog;

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v1, "添加依赖（已选%d项)"

    goto :goto_d

    :cond_b
    const-string v1, "Add Dependency (%d items selected)"

    :goto_d
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/s1243808733/aide/dependencies/DependencieDialog;->adapter:Lcom/s1243808733/aide/dependencies/DependencieAdapter;

    iget-object v3, v3, Lcom/s1243808733/aide/dependencies/DependencieAdapter;->selectedMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method
