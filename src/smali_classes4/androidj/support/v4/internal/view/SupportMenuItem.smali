.class public interface abstract Landroidj/support/v4/internal/view/SupportMenuItem;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/MenuItem;


# annotations
.annotation build Landroidj/support/annotation/RestrictTo;
    value = {
        .enum Landroidj/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidj/support/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field public static final SHOW_AS_ACTION_ALWAYS:I = 0x2

.field public static final SHOW_AS_ACTION_COLLAPSE_ACTION_VIEW:I = 0x8

.field public static final SHOW_AS_ACTION_IF_ROOM:I = 0x1

.field public static final SHOW_AS_ACTION_NEVER:I = 0x0

.field public static final SHOW_AS_ACTION_WITH_TEXT:I = 0x4


# virtual methods
.method public abstract collapseActionView()Z
.end method

.method public abstract expandActionView()Z
.end method

.method public abstract getActionView()Landroid/view/View;
.end method

.method public abstract getSupportActionProvider()Landroidj/support/v4/view/ActionProvider;
.end method

.method public abstract isActionViewExpanded()Z
.end method

.method public abstract setActionView(I)Landroid/view/MenuItem;
.end method

.method public abstract setActionView(Landroid/view/View;)Landroid/view/MenuItem;
.end method

.method public abstract setShowAsAction(I)V
.end method

.method public abstract setShowAsActionFlags(I)Landroid/view/MenuItem;
.end method

.method public abstract setSupportActionProvider(Landroidj/support/v4/view/ActionProvider;)Landroidj/support/v4/internal/view/SupportMenuItem;
.end method

.method public abstract setSupportOnActionExpandListener(Landroidj/support/v4/view/MenuItemCompat$OnActionExpandListener;)Landroidj/support/v4/internal/view/SupportMenuItem;
.end method
