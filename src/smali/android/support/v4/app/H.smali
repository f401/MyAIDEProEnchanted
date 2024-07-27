.class final Landroid/support/v4/app/H;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/app/I;->j6(Landroid/view/ViewGroup;Landroid/view/View;Labcd/k;Landroid/support/v4/app/I$a;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final DW:Ljava/lang/Object;

.field final EQ:Landroid/graphics/Rect;

.field final FH:Landroid/support/v4/app/I$a;

.field final Hw:Ljava/util/ArrayList;

.field final VH:Landroid/support/v4/app/Fragment;

.field final Zo:Landroid/support/v4/app/Fragment;

.field final gn:Z

.field final j6:Labcd/k;

.field final tp:Ljava/lang/Object;

.field final u7:Ljava/util/ArrayList;

.field final v5:Landroid/view/View;


# direct methods
.method constructor <init>(Labcd/k;Ljava/lang/Object;Landroid/support/v4/app/I$a;Ljava/util/ArrayList;Landroid/view/View;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;ZLjava/util/ArrayList;Ljava/lang/Object;Landroid/graphics/Rect;)V
    .registers 12

    iput-object p1, p0, Landroid/support/v4/app/H;->j6:Labcd/k;

    iput-object p2, p0, Landroid/support/v4/app/H;->DW:Ljava/lang/Object;

    iput-object p3, p0, Landroid/support/v4/app/H;->FH:Landroid/support/v4/app/I$a;

    iput-object p4, p0, Landroid/support/v4/app/H;->Hw:Ljava/util/ArrayList;

    iput-object p5, p0, Landroid/support/v4/app/H;->v5:Landroid/view/View;

    iput-object p6, p0, Landroid/support/v4/app/H;->Zo:Landroid/support/v4/app/Fragment;

    iput-object p7, p0, Landroid/support/v4/app/H;->VH:Landroid/support/v4/app/Fragment;

    iput-boolean p8, p0, Landroid/support/v4/app/H;->gn:Z

    iput-object p9, p0, Landroid/support/v4/app/H;->u7:Ljava/util/ArrayList;

    iput-object p10, p0, Landroid/support/v4/app/H;->tp:Ljava/lang/Object;

    iput-object p11, p0, Landroid/support/v4/app/H;->EQ:Landroid/graphics/Rect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    iget-object v0, p0, Landroid/support/v4/app/H;->j6:Labcd/k;

    iget-object v1, p0, Landroid/support/v4/app/H;->DW:Ljava/lang/Object;

    iget-object v2, p0, Landroid/support/v4/app/H;->FH:Landroid/support/v4/app/I$a;

    invoke-static {v0, v1, v2}, Landroid/support/v4/app/I;->j6(Labcd/k;Ljava/lang/Object;Landroid/support/v4/app/I$a;)Labcd/k;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/support/v4/app/H;->Hw:Ljava/util/ArrayList;

    invoke-virtual {v0}, Labcd/k;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Landroid/support/v4/app/H;->Hw:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/support/v4/app/H;->v5:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, p0, Landroid/support/v4/app/H;->Zo:Landroid/support/v4/app/Fragment;

    iget-object v2, p0, Landroid/support/v4/app/H;->VH:Landroid/support/v4/app/Fragment;

    iget-boolean v3, p0, Landroid/support/v4/app/H;->gn:Z

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v0, v4}, Landroid/support/v4/app/I;->j6(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;ZLabcd/k;Z)V

    iget-object v1, p0, Landroid/support/v4/app/H;->DW:Ljava/lang/Object;

    if-eqz v1, :cond_1

    iget-object v2, p0, Landroid/support/v4/app/H;->u7:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/support/v4/app/H;->Hw:Ljava/util/ArrayList;

    invoke-static {v1, v2, v3}, Landroid/support/v4/app/Q;->DW(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    iget-object v1, p0, Landroid/support/v4/app/H;->FH:Landroid/support/v4/app/I$a;

    iget-object v2, p0, Landroid/support/v4/app/H;->tp:Ljava/lang/Object;

    iget-boolean v3, p0, Landroid/support/v4/app/H;->gn:Z

    invoke-static {v0, v1, v2, v3}, Landroid/support/v4/app/I;->j6(Labcd/k;Landroid/support/v4/app/I$a;Ljava/lang/Object;Z)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/support/v4/app/H;->EQ:Landroid/graphics/Rect;

    invoke-static {v0, v1}, Landroid/support/v4/app/Q;->j6(Landroid/view/View;Landroid/graphics/Rect;)V

    :cond_1
    return-void
.end method
