.class Landroid/support/v4/app/l;
.super Landroid/support/v4/app/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/app/Fragment;->er()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final j6:Landroid/support/v4/app/Fragment;


# direct methods
.method constructor <init>(Landroid/support/v4/app/Fragment;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v4/app/l;->j6:Landroid/support/v4/app/Fragment;

    invoke-direct {p0}, Landroid/support/v4/app/o;-><init>()V

    return-void
.end method


# virtual methods
.method public j6(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;
    .registers 5

    iget-object v0, p0, Landroid/support/v4/app/l;->j6:Landroid/support/v4/app/Fragment;

    iget-object v0, v0, Landroid/support/v4/app/Fragment;->Mr:Landroid/support/v4/app/q;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/app/o;->j6(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object p1

    return-object p1
.end method

.method public j6(I)Landroid/view/View;
    .registers 3

    iget-object v0, p0, Landroid/support/v4/app/l;->j6:Landroid/support/v4/app/Fragment;

    iget-object v0, v0, Landroid/support/v4/app/Fragment;->ro:Landroid/view/View;

    if-eqz v0, :cond_b

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Fragment does not have a view"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public j6()Z
    .registers 2

    iget-object v0, p0, Landroid/support/v4/app/l;->j6:Landroid/support/v4/app/Fragment;

    iget-object v0, v0, Landroid/support/v4/app/Fragment;->ro:Landroid/view/View;

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method
