.class public Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;
.super Ljava/lang/Object;
.source "PermissionDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$Listener;
    }
.end annotation


# static fields
.field private static sPermissionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
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
            "Ljava/util/List",
            "<",
            "Lcom/s1243808733/aide/application/activity/permission/Permission;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetadapter(Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;)Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;
    .locals 1

    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;->adapter:Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$fgetselectedList(Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;->selectedList:Ljava/util/List;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$mupdateDialogTitle(Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;->updateDialogTitle()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;->sPermissionList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private loadPermissions()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/s1243808733/aide/application/activity/permission/Permission;",
            ">;"
        }
    .end annotation

    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 272
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 274
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-le v0, v1, :cond_1

    .line 275
    const-class v0, Landroid/Manifest$permission;

    .line 279
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v4

    if-nez v4, :cond_2

    const/4 v0, -0x1

    .line 281
    :goto_1
    const-string v1, "declaredFields Count"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v2

    invoke-static {v1, v5}, Lcom/blankj/utilcode/util/LogUtils;->iTag(Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v2

    :goto_2
    if-eqz v4, :cond_3

    .line 282
    array-length v0, v4

    if-ge v1, v0, :cond_3

    .line 284
    aget-object v0, v4, v1

    .line 285
    const/4 v5, 0x1

    :try_start_0
    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 286
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 287
    instance-of v5, v0, Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 288
    new-instance v5, Lcom/s1243808733/aide/application/activity/permission/Permission;

    iget-object v6, p0, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;->activity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    check-cast v0, Ljava/lang/String;

    invoke-direct {v5, v6, v0}, Lcom/s1243808733/aide/application/activity/permission/Permission;-><init>(Landroid/content/pm/PackageManager;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 291
    :cond_0
    :goto_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 277
    :cond_1
    const-class v0, Lcom/s1243808733/aide/application/activity/permission/Manifest33$permission;

    goto :goto_0

    .line 281
    :cond_2
    array-length v0, v4

    goto :goto_1

    .line 288
    :catchall_0
    move-exception v0

    .line 291
    const-string v5, ""

    new-array v6, v7, [Ljava/lang/Object;

    aput-object v0, v6, v2

    invoke-static {v5, v6}, Lcom/blankj/utilcode/util/LogUtils;->eTag(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 295
    :cond_3
    sget-object v0, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;->sPermissionList:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 297
    const-string v0, "permissionList Count"

    new-array v1, v7, [Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->iTag(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v3
.end method

.method private updateDialogTitle()V
    .locals 5

    .line 45
    iget-object v1, p0, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;->dialog:Landroid/app/AlertDialog;

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u6dfb\u52a0\u6743\u9650 \uff08\u5df2\u9009%d\u9879\uff09"

    :goto_0
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;->adapter:Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;

    invoke-virtual {v4}, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;->getSelected()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    const-string v0, "Add permission (%d selected items)"

    goto :goto_0
.end method


# virtual methods
.method public show(Landroid/app/Activity;Ljava/util/List;Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$Listener;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Lcom/s1243808733/aide/application/activity/permission/Permission;",
            ">;",
            "Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$Listener;",
            ")V"
        }
    .end annotation

    const/4 v10, 0x0

    const/4 v9, -0x2

    const/4 v8, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 49
    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;->activity:Landroid/app/Activity;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;->selectedList:Ljava/util/List;

    move v1, v2

    .line 51
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 52
    iget-object v4, p0, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;->selectedList:Ljava/util/List;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/aide/application/activity/permission/Permission;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 56
    :cond_0
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 59
    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 60
    new-instance v4, Landroid/widget/EditText;

    invoke-direct {v4, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;->searchView:Landroid/widget/EditText;

    .line 61
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "\u641c\u7d22\u6743\u9650..."

    :goto_1
    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 63
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 64
    const/high16 v4, 0x41800000    # 16.0f

    invoke-static {v4}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v4

    const/high16 v5, 0x41800000    # 16.0f

    invoke-static {v5}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v5

    invoke-virtual {v0, v4, v2, v5, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 65
    iget-object v4, p0, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;->searchView:Landroid/widget/EditText;

    invoke-virtual {v0, v4, v3, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 66
    invoke-virtual {v1, v0, v3, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 68
    new-instance v0, Lcom/s1243808733/aide/application/activity/permission/ManifestView;

    invoke-direct {v0, p1}, Lcom/s1243808733/aide/application/activity/permission/ManifestView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;->mManifestView:Lcom/s1243808733/aide/application/activity/permission/ManifestView;

    .line 69
    invoke-virtual {v0, v8}, Lcom/s1243808733/aide/application/activity/permission/ManifestView;->setFastScrollEnabled(Z)V

    .line 72
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 73
    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 74
    iget-object v4, p0, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;->mManifestView:Lcom/s1243808733/aide/application/activity/permission/ManifestView;

    invoke-virtual {v0, v4, v3, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 76
    new-instance v4, Landroid/view/View;

    invoke-direct {v4, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 77
    new-instance v5, Landroid/view/View;

    invoke-direct {v5, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 80
    new-array v6, v8, [I

    const v7, 0x101032c

    aput v7, v6, v2

    invoke-virtual {p1, v6}, Landroid/app/Activity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 81
    invoke-virtual {v6, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 82
    invoke-virtual {v6, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 83
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 87
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v7}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v7

    invoke-direct {v6, v3, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 89
    invoke-virtual {v0, v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 92
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v7}, Lcom/s1243808733/util/Utils;->dp2px(F)I

    move-result v7

    invoke-direct {v6, v3, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 94
    invoke-virtual {v0, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 96
    const/16 v6, 0x8

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 97
    const/16 v4, 0x8

    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    .line 129
    invoke-virtual {v1, v0, v3, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 135
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v3, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 136
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 139
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 140
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "\u6dfb\u52a0\u6743\u9650"

    :goto_2
    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 141
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 142
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "\u6dfb\u52a0"

    :goto_3
    new-instance v4, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$1;

    invoke-direct {v4, p0, p3}, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$1;-><init>(Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$Listener;)V

    invoke-virtual {v1, v0, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 149
    const/high16 v1, 0x1040000

    invoke-virtual {v0, v1, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 150
    const-string v0, "\u53cd\u9009"

    const-string v4, "Reverse selection"

    invoke-static {v0, v4}, Lcom/s1243808733/util/Utils;->zhOrEn(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0, v10}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 151
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;->dialog:Landroid/app/AlertDialog;

    .line 152
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 153
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 155
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;->dialog:Landroid/app/AlertDialog;

    const/4 v1, -0x3

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$2;

    invoke-direct {v1, p0}, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$2;-><init>(Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    sget-object v0, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;->sPermissionList:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 175
    :cond_1
    invoke-direct {p0}, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;->loadPermissions()Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;->sPermissionList:Ljava/util/List;

    .line 179
    :cond_2
    new-instance v0, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;

    sget-object v1, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;->sPermissionList:Ljava/util/List;

    invoke-direct {v0, p1, v1}, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;->adapter:Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;

    .line 180
    iget-object v1, p0, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;->searchView:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;->bind(Landroid/widget/EditText;)V

    .line 181
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;->adapter:Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;

    new-instance v1, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$3;

    invoke-direct {v1, p0}, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$3;-><init>(Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;)V

    invoke-virtual {v0, v1}, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;->setListener(Lcom/s1243808733/aide/application/activity/permission/ManifestAdapter$Listener;)V

    .line 193
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;->adapter:Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;

    invoke-virtual {v0, v8}, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;->setSelectMode(Z)V

    .line 194
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;->mManifestView:Lcom/s1243808733/aide/application/activity/permission/ManifestView;

    iget-object v1, p0, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;->adapter:Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;

    invoke-virtual {v0, v1}, Lcom/s1243808733/aide/application/activity/permission/ManifestView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 196
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;->mManifestView:Lcom/s1243808733/aide/application/activity/permission/ManifestView;

    new-instance v1, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$4;

    invoke-direct {v1, p0}, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$4;-><init>(Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;)V

    invoke-virtual {v0, v1}, Lcom/s1243808733/aide/application/activity/permission/ManifestView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 217
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;->mManifestView:Lcom/s1243808733/aide/application/activity/permission/ManifestView;

    new-instance v1, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$5;

    invoke-direct {v1, p0, p1}, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog$5;-><init>(Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Lcom/s1243808733/aide/application/activity/permission/ManifestView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    move v0, v3

    move v4, v2

    .line 252
    :goto_4
    sget-object v1, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;->sPermissionList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v4, v1, :cond_8

    move v3, v2

    move v1, v0

    .line 253
    :goto_5
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_7

    .line 254
    sget-object v0, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;->sPermissionList:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/aide/application/activity/permission/Permission;

    invoke-virtual {v0}, Lcom/s1243808733/aide/application/activity/permission/Permission;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/aide/application/activity/permission/Permission;

    invoke-virtual {v0}, Lcom/s1243808733/aide/application/activity/permission/Permission;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 255
    iget-object v5, p0, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;->adapter:Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;

    sget-object v0, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;->sPermissionList:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/s1243808733/aide/application/activity/permission/Permission;

    invoke-virtual {v5, v0, v8}, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;->setSelected(Lcom/s1243808733/aide/application/activity/permission/Permission;Z)V

    if-gez v1, :cond_3

    move v1, v4

    :cond_3
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_5

    .line 61
    :cond_4
    const-string v0, "Search permission..."

    goto/16 :goto_1

    .line 140
    :cond_5
    const-string v0, "Add permission"

    goto/16 :goto_2

    .line 142
    :cond_6
    const-string v0, "Add"

    goto/16 :goto_3

    .line 255
    :cond_7
    add-int/lit8 v3, v4, 0x1

    move v0, v1

    move v4, v3

    goto :goto_4

    .line 262
    :cond_8
    iget-object v1, p0, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;->adapter:Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;

    invoke-virtual {v1}, Lcom/s1243808733/aide/application/activity/permission/SearchAdapter;->notifyDataSetChanged()V

    if-lez v0, :cond_9

    .line 264
    iget-object v1, p0, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;->mManifestView:Lcom/s1243808733/aide/application/activity/permission/ManifestView;

    invoke-virtual {v1, v0}, Lcom/s1243808733/aide/application/activity/permission/ManifestView;->setSelection(I)V

    .line 268
    :cond_9
    invoke-direct {p0}, Lcom/s1243808733/aide/application/activity/permission/PermissionDialog;->updateDialogTitle()V

    return-void
.end method
