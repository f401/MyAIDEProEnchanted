.class final Landroidj/support/v4/app/FragmentTransitionCompat21$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidj/support/v4/app/FragmentTransitionCompat21;->setNameOverridesUnoptimized(Landroid/view/View;Ljava/util/ArrayList;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final val$nameOverrides:Ljava/util/Map;

.field final val$sharedElementsIn:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;Ljava/util/Map;)V
    .registers 3

    iput-object p1, p0, Landroidj/support/v4/app/FragmentTransitionCompat21$4;->val$sharedElementsIn:Ljava/util/ArrayList;

    iput-object p2, p0, Landroidj/support/v4/app/FragmentTransitionCompat21$4;->val$nameOverrides:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    iget-object v0, p0, Landroidj/support/v4/app/FragmentTransitionCompat21$4;->val$sharedElementsIn:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_8
    if-ge v1, v2, :cond_25

    iget-object v0, p0, Landroidj/support/v4/app/FragmentTransitionCompat21$4;->val$sharedElementsIn:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_21

    iget-object v4, p0, Landroidj/support/v4/app/FragmentTransitionCompat21$4;->val$nameOverrides:Ljava/util/Map;

    invoke-static {v4, v3}, Landroidj/support/v4/app/FragmentTransitionCompat21;->access$000(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setTransitionName(Ljava/lang/String;)V

    :cond_21
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8

    :cond_25
    return-void
.end method
