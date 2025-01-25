.class public Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;
.super Ljava/lang/Object;
.source "PermissionDialog.java"


# static fields
.field private static sPermissionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/s1243808733/aide/application/activity/permission/Permission;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private activity:Landroid/app/Activity;

.field private adapter:Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;

.field private dialog:Landroid/app/AlertDialog;

.field private mManifestView:Lcom/s1243808733/aide/application/activity/permission/ManifestView;

.field private searchView:Landroid/widget/EditText;

.field private selectedList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/s1243808733/aide/application/activity/permission/Permission;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetadapter(Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;)Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;
    .registers 1

    iget-object p0, p0, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;->adapter:Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetselectedList(Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;->selectedList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mupdateDialogTitle(Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;)V
    .registers 1

    invoke-direct {p0}, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;->updateDialogTitle()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;->sPermissionList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private loadPermissions()Ljava/util/ArrayList;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/s1243808733/aide/application/activity/permission/Permission;",
            ">;"
        }
    .end annotation

    .line 272
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 274
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    if-le v1, v2, :cond_e

    .line 275
    const-class v1, Landroid/Manifest$permission;

    goto :goto_10

    .line 277
    :cond_e
    const-class v1, Lcom/s1243808733/aide/application/activity/permission/Manifest33$permission;

    .line 279
    :goto_10
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    if-nez v1, :cond_18

    const/4 v2, -0x1

    goto :goto_19

    .line 281
    :cond_18
    array-length v2, v1

    :goto_19
    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const-string v2, "declaredFields Count"

    invoke-static {v2, v4}, Lcom/blankj/utilcode/util/LogUtils;->iTag(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x0

    :goto_29
    if-eqz v1, :cond_5c

    .line 282
    array-length v4, v1

    if-ge v2, v4, :cond_5c

    .line 284
    aget-object v4, v1, v2

    .line 285
    :try_start_30
    invoke-virtual {v4, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 286
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_59

    .line 287
    instance-of v6, v4, Ljava/lang/String;

    if-eqz v6, :cond_59

    .line 288
    new-instance v6, Lcom/s1243808733/aide/application/activity/permission/Permission;

    iget-object v7, p0, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;->activity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    check-cast v4, Ljava/lang/String;

    invoke-direct {v6, v7, v4}, Lcom/s1243808733/aide/application/activity/permission/Permission;-><init>(Landroid/content/pm/PackageManager;Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4e
    .catchall {:try_start_30 .. :try_end_4e} :catchall_4f

    goto :goto_59

    :catchall_4f
    move-exception v4

    .line 291
    new-array v6, v3, [Ljava/lang/Object;

    aput-object v4, v6, v5

    const-string v4, ""

    invoke-static {v4, v6}, Lcom/blankj/utilcode/util/LogUtils;->eTag(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_59
    :goto_59
    add-int/lit8 v2, v2, 0x1

    goto :goto_29

    .line 295
    :cond_5c
    sget-object v1, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;->sPermissionList:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 297
    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    const-string v2, "permissionList Count"

    invoke-static {v2, v1}, Lcom/blankj/utilcode/util/LogUtils;->iTag(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method private updateDialogTitle()V
    .registers 6

    .line 45
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;->dialog:Landroid/app/AlertDialog;

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v1, "添加权限 （已选%d项）"

    goto :goto_d

    :cond_b
    const-string v1, "Add permission (%d selected items)"

    :goto_d
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;->adapter:Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;

    invoke-virtual {v3}, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;->getSelected()Ljava/util/Map;

    move-result-object v3

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


# virtual methods
.method public show(Landroid/app/Activity;Ljava/util/List;Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$Listener;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Lcom/s1243808733/aide/application/activity/permission/Permission;",
            ">;",
            "Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$Listener;",
            ")V"
        }
    .end annotation

    .line 49
    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;->activity:Landroid/app/Activity;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;->selectedList:Ljava/util/List;

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 51
    :goto_b
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1f

    .line 52
    iget-object v2, p0, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;->selectedList:Ljava/util/List;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/s1243808733/aide/application/activity/permission/Permission;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 56
    :cond_1f
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 59
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 60
    new-instance v3, Landroid/widget/EditText;

    invoke-direct {v3, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;->searchView:Landroid/widget/EditText;

    .line 61
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v4

    if-eqz v4, :cond_38

    const-string v4, "搜索权限..."

    goto :goto_3a

    :cond_38
    const-string v4, "Search permission..."

    :goto_3a
    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 63
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 64
    const/high16 v4, 0x41800000  # 16.0f

    invoke-static {v4}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v5

    invoke-static {v4}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v4

    invoke-virtual {v3, v5, v0, v4, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 65
    iget-object v4, p0, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;->searchView:Landroid/widget/EditText;

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-virtual {v3, v4, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 66
    invoke-virtual {v1, v3, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 68
    new-instance v3, Lcom/s1243808733/aide/application/activity/permission/ManifestView;

    invoke-direct {v3, p1}, Lcom/s1243808733/aide/application/activity/permission/ManifestView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;->mManifestView:Lcom/s1243808733/aide/application/activity/permission/ManifestView;

    .line 69
    invoke-virtual {v3, v2}, Lcom/s1243808733/aide/application/activity/permission/ManifestView;->setFastScrollEnabled(Z)V

    .line 72
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 73
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 74
    iget-object v4, p0, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;->mManifestView:Lcom/s1243808733/aide/application/activity/permission/ManifestView;

    invoke-virtual {v3, v4, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 76
    new-instance v4, Landroid/view/View;

    invoke-direct {v4, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 77
    new-instance v7, Landroid/view/View;

    invoke-direct {v7, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 80
    const v8, 0x101032c

    filled-new-array {v8}, [I

    move-result-object v8

    invoke-virtual {p1, v8}, Landroid/app/Activity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 81
    invoke-virtual {v8, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 82
    invoke-virtual {v8, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 83
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 87
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v9, 0x3f800000  # 1.0f

    invoke-static {v9}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v10

    invoke-direct {v8, v5, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 89
    invoke-virtual {v3, v4, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 92
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {v9}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v9

    invoke-direct {v8, v5, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 94
    invoke-virtual {v3, v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 96
    const/16 v8, 0x8

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 97
    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 129
    invoke-virtual {v1, v3, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 135
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v5, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 136
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 139
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 140
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v4

    if-eqz v4, :cond_d1

    const-string v4, "添加权限"

    goto :goto_d3

    :cond_d1
    const-string v4, "Add permission"

    :goto_d3
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 141
    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 142
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v3

    if-eqz v3, :cond_e4

    const-string v3, "添加"

    goto :goto_e6

    :cond_e4
    const-string v3, "Add"

    :goto_e6
    new-instance v4, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$1;

    invoke-direct {v4, p0, p3}, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$1;-><init>(Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$Listener;)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p3

    .line 149
    const/high16 v1, 0x1040000

    const/4 v3, 0x0

    invoke-virtual {p3, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p3

    .line 150
    const-string v1, "反选"

    const-string v4, "Reverse selection"

    invoke-static {v1, v4}, Lcom/s1243808733/util/Utils;->zhOrEn(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p3, v1, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p3

    .line 151
    invoke-virtual {p3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p3

    iput-object p3, p0, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;->dialog:Landroid/app/AlertDialog;

    .line 152
    invoke-virtual {p3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p3

    const/4 v1, 0x3

    invoke-virtual {p3, v1}, Landroid/view/Window;->addFlags(I)V

    .line 153
    iget-object p3, p0, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {p3}, Landroid/app/AlertDialog;->show()V

    .line 155
    iget-object p3, p0, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;->dialog:Landroid/app/AlertDialog;

    const/4 v1, -0x3

    invoke-virtual {p3, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p3

    new-instance v1, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$2;

    invoke-direct {v1, p0}, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$2;-><init>(Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;)V

    invoke-virtual {p3, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    sget-object p3, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;->sPermissionList:Ljava/util/List;

    if-eqz p3, :cond_130

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_136

    .line 175
    :cond_130
    invoke-direct {p0}, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;->loadPermissions()Ljava/util/ArrayList;

    move-result-object p3

    sput-object p3, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;->sPermissionList:Ljava/util/List;

    .line 179
    :cond_136
    new-instance p3, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;

    sget-object v1, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;->sPermissionList:Ljava/util/List;

    invoke-direct {p3, p1, v1}, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object p3, p0, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;->adapter:Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;

    .line 180
    iget-object v1, p0, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;->searchView:Landroid/widget/EditText;

    invoke-virtual {p3, v1}, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;->bind(Landroid/widget/EditText;)V

    .line 181
    iget-object p3, p0, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;->adapter:Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;

    new-instance v1, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$3;

    invoke-direct {v1, p0}, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$3;-><init>(Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;)V

    invoke-virtual {p3, v1}, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;->setListener(Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter$Listener;)V

    .line 193
    iget-object p3, p0, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;->adapter:Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;

    invoke-virtual {p3, v2}, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;->setSelectMode(Z)V

    .line 194
    iget-object p3, p0, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;->mManifestView:Lcom/s1243808733/aide/application/activity/permission/ManifestView;

    iget-object v1, p0, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;->adapter:Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;

    invoke-virtual {p3, v1}, Lcom/s1243808733/aide/application/activity/permission/ManifestView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 196
    iget-object p3, p0, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;->mManifestView:Lcom/s1243808733/aide/application/activity/permission/ManifestView;

    new-instance v1, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$4;

    invoke-direct {v1, p0}, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$4;-><init>(Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;)V

    invoke-virtual {p3, v1}, Lcom/s1243808733/aide/application/activity/permission/ManifestView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 217
    iget-object p3, p0, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;->mManifestView:Lcom/s1243808733/aide/application/activity/permission/ManifestView;

    new-instance v1, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$5;

    invoke-direct {v1, p0, p1}, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$5;-><init>(Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;Landroid/app/Activity;)V

    invoke-virtual {p3, v1}, Lcom/s1243808733/aide/application/activity/permission/ManifestView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    const/4 p1, 0x0

    .line 252
    :goto_16f
    sget-object p3, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;->sPermissionList:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-ge p1, p3, :cond_1b0

    const/4 p3, 0x0

    .line 253
    :goto_178
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p3, v1, :cond_1ad

    .line 254
    sget-object v1, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;->sPermissionList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/s1243808733/aide/application/activity/permission/Permission;

    invoke-virtual {v1}, Lcom/s1243808733/aide/application/activity/permission/Permission;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/s1243808733/aide/application/activity/permission/Permission;

    invoke-virtual {v3}, Lcom/s1243808733/aide/application/activity/permission/Permission;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1aa

    .line 255
    iget-object v1, p0, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;->adapter:Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;

    sget-object v3, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;->sPermissionList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/s1243808733/aide/application/activity/permission/Permission;

    invoke-virtual {v1, v3, v2}, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;->setSelected(Lcom/s1243808733/aide/application/activity/permission/Permission;Z)V

    if-gez v5, :cond_1aa

    move v5, p1

    :cond_1aa
    add-int/lit8 p3, p3, 0x1

    goto :goto_178

    :cond_1ad
    add-int/lit8 p1, p1, 0x1

    goto :goto_16f

    .line 262
    :cond_1b0
    iget-object p1, p0, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;->adapter:Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;

    invoke-virtual {p1}, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;->notifyDataSetChanged()V

    if-lez v5, :cond_1bc

    .line 264
    iget-object p1, p0, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;->mManifestView:Lcom/s1243808733/aide/application/activity/permission/ManifestView;

    invoke-virtual {p1, v5}, Lcom/s1243808733/aide/application/activity/permission/ManifestView;->setSelection(I)V

    .line 268
    :cond_1bc
    invoke-direct {p0}, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;->updateDialogTitle()V

    return-void
.end method
