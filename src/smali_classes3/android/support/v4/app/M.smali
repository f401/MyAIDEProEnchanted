.class final Landroid/support/v4/app/M;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/app/Q;->j6(Landroid/view/View;Ljava/util/ArrayList;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final DW:Ljava/util/Map;

.field final j6:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;Ljava/util/Map;)V
    .registers 3

    iput-object p1, p0, Landroid/support/v4/app/M;->j6:Ljava/util/ArrayList;

    iput-object p2, p0, Landroid/support/v4/app/M;->DW:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    iget-object v0, p0, Landroid/support/v4/app/M;->j6:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_23

    iget-object v2, p0, Landroid/support/v4/app/M;->j6:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_20

    iget-object v4, p0, Landroid/support/v4/app/M;->DW:Ljava/util/Map;

    invoke-static {v4, v3}, Landroid/support/v4/app/Q;->j6(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setTransitionName(Ljava/lang/String;)V

    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_23
    return-void
.end method
