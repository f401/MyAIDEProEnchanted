.class public abstract Landroidj/support/v4/view/ActionProvider;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidj/support/v4/view/ActionProvider$SubUiVisibilityListener;,
        Landroidj/support/v4/view/ActionProvider$VisibilityListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ActionProvider(support)"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mSubUiVisibilityListener:Landroidj/support/v4/view/ActionProvider$SubUiVisibilityListener;

.field private mVisibilityListener:Landroidj/support/v4/view/ActionProvider$VisibilityListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidj/support/v4/view/ActionProvider;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/view/ActionProvider;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public hasSubMenu()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isVisible()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public abstract onCreateActionView()Landroid/view/View;
.end method

.method public onCreateActionView(Landroid/view/MenuItem;)Landroid/view/View;
    .registers 3

    invoke-virtual {p0}, Landroidj/support/v4/view/ActionProvider;->onCreateActionView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onPerformDefaultAction()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public onPrepareSubMenu(Landroid/view/SubMenu;)V
    .registers 2

    return-void
.end method

.method public overridesItemVisibility()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public refreshVisibility()V
    .registers 3

    iget-object v0, p0, Landroidj/support/v4/view/ActionProvider;->mVisibilityListener:Landroidj/support/v4/view/ActionProvider$VisibilityListener;

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Landroidj/support/v4/view/ActionProvider;->overridesItemVisibility()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroidj/support/v4/view/ActionProvider;->mVisibilityListener:Landroidj/support/v4/view/ActionProvider$VisibilityListener;

    invoke-virtual {p0}, Landroidj/support/v4/view/ActionProvider;->isVisible()Z

    move-result v1

    invoke-interface {v0, v1}, Landroidj/support/v4/view/ActionProvider$VisibilityListener;->onActionProviderVisibilityChanged(Z)V

    :cond_13
    return-void
.end method

.method public reset()V
    .registers 2
    .annotation build Landroidj/support/annotation/RestrictTo;
        value = {
            .enum Landroidj/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidj/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, Landroidj/support/v4/view/ActionProvider;->mVisibilityListener:Landroidj/support/v4/view/ActionProvider$VisibilityListener;

    iput-object v0, p0, Landroidj/support/v4/view/ActionProvider;->mSubUiVisibilityListener:Landroidj/support/v4/view/ActionProvider$SubUiVisibilityListener;

    return-void
.end method

.method public setSubUiVisibilityListener(Landroidj/support/v4/view/ActionProvider$SubUiVisibilityListener;)V
    .registers 2
    .annotation build Landroidj/support/annotation/RestrictTo;
        value = {
            .enum Landroidj/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidj/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    iput-object p1, p0, Landroidj/support/v4/view/ActionProvider;->mSubUiVisibilityListener:Landroidj/support/v4/view/ActionProvider$SubUiVisibilityListener;

    return-void
.end method

.method public setVisibilityListener(Landroidj/support/v4/view/ActionProvider$VisibilityListener;)V
    .registers 5

    iget-object v0, p0, Landroidj/support/v4/view/ActionProvider;->mVisibilityListener:Landroidj/support/v4/view/ActionProvider$VisibilityListener;

    if-eqz v0, :cond_2c

    if-eqz p1, :cond_2c

    const-string v0, "ActionProvider(support)"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVisibilityListener: Setting a new ActionProvider.VisibilityListener when one is already set. Are you reusing this "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " instance while it is still in use somewhere else?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2c
    iput-object p1, p0, Landroidj/support/v4/view/ActionProvider;->mVisibilityListener:Landroidj/support/v4/view/ActionProvider$VisibilityListener;

    return-void
.end method

.method public subUiVisibilityChanged(Z)V
    .registers 3
    .annotation build Landroidj/support/annotation/RestrictTo;
        value = {
            .enum Landroidj/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidj/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    iget-object v0, p0, Landroidj/support/v4/view/ActionProvider;->mSubUiVisibilityListener:Landroidj/support/v4/view/ActionProvider$SubUiVisibilityListener;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroidj/support/v4/view/ActionProvider;->mSubUiVisibilityListener:Landroidj/support/v4/view/ActionProvider$SubUiVisibilityListener;

    invoke-interface {v0, p1}, Landroidj/support/v4/view/ActionProvider$SubUiVisibilityListener;->onSubUiVisibilityChanged(Z)V

    :cond_9
    return-void
.end method
