.class Landroidx/core/widget/TextViewCompat$OreoCallback;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/widget/TextViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OreoCallback"
.end annotation


# static fields
.field private static final MENU_ITEM_ORDER_PROCESS_TEXT_INTENT_ACTIONS_START:I = 0x64


# instance fields
.field private final mCallback:Landroid/view/ActionMode$Callback;

.field private mCanUseMenuBuilderReferences:Z

.field private mInitializedMenuBuilderReferences:Z

.field private mMenuBuilderClass:Ljava/lang/Class;

.field private mMenuBuilderRemoveItemAtMethod:Ljava/lang/reflect/Method;

.field private final mTextView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/view/ActionMode$Callback;Landroid/widget/TextView;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/widget/TextViewCompat$OreoCallback;->mCallback:Landroid/view/ActionMode$Callback;

    iput-object p2, p0, Landroidx/core/widget/TextViewCompat$OreoCallback;->mTextView:Landroid/widget/TextView;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/core/widget/TextViewCompat$OreoCallback;->mInitializedMenuBuilderReferences:Z

    return-void
.end method

.method private createProcessTextIntent()Landroid/content/Intent;
    .registers 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.PROCESS_TEXT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private createProcessTextIntentForResolveInfo(Landroid/content/pm/ResolveInfo;Landroid/widget/TextView;)Landroid/content/Intent;
    .registers 6

    invoke-direct {p0}, Landroidx/core/widget/TextViewCompat$OreoCallback;->createProcessTextIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.PROCESS_TEXT_READONLY"

    invoke-direct {p0, p2}, Landroidx/core/widget/TextViewCompat$OreoCallback;->isEditable(Landroid/widget/TextView;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private getSupportedActivities(Landroid/content/Context;Landroid/content/pm/PackageManager;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/pm/PackageManager;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    instance-of v0, p1, Landroid/app/Activity;

    if-nez v0, :cond_b

    move-object v0, v1

    :goto_a
    return-object v0

    :cond_b
    invoke-direct {p0}, Landroidx/core/widget/TextViewCompat$OreoCallback;->createProcessTextIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_18
    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    invoke-direct {p0, v0, p1}, Landroidx/core/widget/TextViewCompat$OreoCallback;->isSupportedActivity(Landroid/content/pm/ResolveInfo;Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_18

    :cond_2e
    move-object v0, v1

    goto :goto_a
.end method

.method private isEditable(Landroid/widget/TextView;)Z
    .registers 3

    instance-of v0, p1, Landroid/text/Editable;

    if-eqz v0, :cond_12

    invoke-virtual {p1}, Landroid/widget/TextView;->onCheckIsTextEditor()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p1}, Landroid/widget/TextView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private isSupportedActivity(Landroid/content/pm/ResolveInfo;Landroid/content/Context;)Z
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    :cond_10
    :goto_10
    return v0

    :cond_11
    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-boolean v2, v2, Landroid/content/pm/ActivityInfo;->exported:Z

    if-nez v2, :cond_19

    move v0, v1

    goto :goto_10

    :cond_19
    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    if-eqz v2, :cond_10

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    invoke-virtual {p2, v2}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_10

    move v0, v1

    goto :goto_10
.end method

.method private recomputeProcessTextMenuItems(Landroid/view/Menu;)V
    .registers 12

    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Landroidx/core/widget/TextViewCompat$OreoCallback;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-boolean v0, p0, Landroidx/core/widget/TextViewCompat$OreoCallback;->mInitializedMenuBuilderReferences:Z

    if-nez v0, :cond_2e

    iput-boolean v8, p0, Landroidx/core/widget/TextViewCompat$OreoCallback;->mInitializedMenuBuilderReferences:Z

    :try_start_13
    const-string v0, "com.android.internal.view.menu.MenuBuilder"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/widget/TextViewCompat$OreoCallback;->mMenuBuilderClass:Ljava/lang/Class;

    const-string v1, "removeItemAt"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v0, v1, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/widget/TextViewCompat$OreoCallback;->mMenuBuilderRemoveItemAtMethod:Ljava/lang/reflect/Method;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/core/widget/TextViewCompat$OreoCallback;->mCanUseMenuBuilderReferences:Z
    :try_end_2e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_13 .. :try_end_2e} :catch_6f
    .catch Ljava/lang/NoSuchMethodException; {:try_start_13 .. :try_end_2e} :catch_bd

    :cond_2e
    :goto_2e
    :try_start_2e
    iget-boolean v0, p0, Landroidx/core/widget/TextViewCompat$OreoCallback;->mCanUseMenuBuilderReferences:Z

    if-eqz v0, :cond_77

    iget-object v0, p0, Landroidx/core/widget/TextViewCompat$OreoCallback;->mMenuBuilderClass:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_77

    iget-object v0, p0, Landroidx/core/widget/TextViewCompat$OreoCallback;->mMenuBuilderRemoveItemAtMethod:Ljava/lang/reflect/Method;

    move-object v1, v0

    :goto_3d
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_43
    if-ltz v0, :cond_8b

    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v6

    if-eqz v6, :cond_6c

    const-string v6, "android.intent.action.PROCESS_TEXT"

    invoke-interface {v5}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6c

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v1, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6c
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2e .. :try_end_6c} :catch_b9
    .catch Ljava/lang/IllegalAccessException; {:try_start_2e .. :try_end_6c} :catch_b7
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2e .. :try_end_6c} :catch_bb

    :cond_6c
    add-int/lit8 v0, v0, -0x1

    goto :goto_43

    :catch_6f
    move-exception v0

    :goto_70
    iput-object v9, p0, Landroidx/core/widget/TextViewCompat$OreoCallback;->mMenuBuilderClass:Ljava/lang/Class;

    iput-object v9, p0, Landroidx/core/widget/TextViewCompat$OreoCallback;->mMenuBuilderRemoveItemAtMethod:Ljava/lang/reflect/Method;

    iput-boolean v2, p0, Landroidx/core/widget/TextViewCompat$OreoCallback;->mCanUseMenuBuilderReferences:Z

    goto :goto_2e

    :cond_77
    :try_start_77
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "removeItemAt"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v0, v1, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_88
    .catch Ljava/lang/NoSuchMethodException; {:try_start_77 .. :try_end_88} :catch_b9
    .catch Ljava/lang/IllegalAccessException; {:try_start_77 .. :try_end_88} :catch_b7
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_77 .. :try_end_88} :catch_bb

    move-result-object v0

    move-object v1, v0

    goto :goto_3d

    :cond_8b
    invoke-direct {p0, v3, v4}, Landroidx/core/widget/TextViewCompat$OreoCallback;->getSupportedActivities(Landroid/content/Context;Landroid/content/pm/PackageManager;)Ljava/util/List;

    move-result-object v3

    move v1, v2

    :goto_90
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_b8

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    add-int/lit8 v5, v1, 0x64

    invoke-virtual {v0, v4}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {p1, v2, v2, v5, v6}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v5

    iget-object v6, p0, Landroidx/core/widget/TextViewCompat$OreoCallback;->mTextView:Landroid/widget/TextView;

    invoke-direct {p0, v0, v6}, Landroidx/core/widget/TextViewCompat$OreoCallback;->createProcessTextIntentForResolveInfo(Landroid/content/pm/ResolveInfo;Landroid/widget/TextView;)Landroid/content/Intent;

    move-result-object v0

    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v8}, Landroid/view/MenuItem;->setShowAsAction(I)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_90

    :catch_b7
    move-exception v0

    :cond_b8
    :goto_b8
    return-void

    :catch_b9
    move-exception v0

    goto :goto_b8

    :catch_bb
    move-exception v0

    goto :goto_b8

    :catch_bd
    move-exception v0

    goto :goto_70
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .registers 4

    iget-object v0, p0, Landroidx/core/widget/TextViewCompat$OreoCallback;->mCallback:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 4

    iget-object v0, p0, Landroidx/core/widget/TextViewCompat$OreoCallback;->mCallback:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .registers 3

    iget-object v0, p0, Landroidx/core/widget/TextViewCompat$OreoCallback;->mCallback:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p1}, Landroid/view/ActionMode$Callback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 4

    invoke-direct {p0, p2}, Landroidx/core/widget/TextViewCompat$OreoCallback;->recomputeProcessTextMenuItems(Landroid/view/Menu;)V

    iget-object v0, p0, Landroidx/core/widget/TextViewCompat$OreoCallback;->mCallback:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method
