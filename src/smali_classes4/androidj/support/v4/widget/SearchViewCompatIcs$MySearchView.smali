.class public Landroidj/support/v4/widget/SearchViewCompatIcs$MySearchView;
.super Landroid/widget/SearchView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/widget/SearchViewCompatIcs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MySearchView"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/SearchView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onActionViewCollapsed()V
    .registers 3

    const-string v0, ""

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroidj/support/v4/widget/SearchViewCompatIcs$MySearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    invoke-super {p0}, Landroid/widget/SearchView;->onActionViewCollapsed()V

    return-void
.end method
