.class public abstract Landroidj/support/v4/app/FragmentContainer;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onFindViewById(I)Landroid/view/View;
    .param p1  # I
        .annotation build Landroidj/support/annotation/IdRes;
        .end annotation
    .end param
    .annotation build Landroidj/support/annotation/Nullable;
    .end annotation
.end method

.method public abstract onHasView()Z
.end method
