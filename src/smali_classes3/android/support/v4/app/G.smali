.class final Landroid/support/v4/app/G;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/app/I;->DW(Landroid/view/ViewGroup;Landroid/view/View;Labcd/k;Landroid/support/v4/app/I$a;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final DW:Landroid/support/v4/app/Fragment;

.field final FH:Z

.field final Hw:Labcd/k;

.field final Zo:Landroid/graphics/Rect;

.field final j6:Landroid/support/v4/app/Fragment;

.field final v5:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;ZLabcd/k;Landroid/view/View;Landroid/graphics/Rect;)V
    .registers 7

    iput-object p1, p0, Landroid/support/v4/app/G;->j6:Landroid/support/v4/app/Fragment;

    iput-object p2, p0, Landroid/support/v4/app/G;->DW:Landroid/support/v4/app/Fragment;

    iput-boolean p3, p0, Landroid/support/v4/app/G;->FH:Z

    iput-object p4, p0, Landroid/support/v4/app/G;->Hw:Labcd/k;

    iput-object p5, p0, Landroid/support/v4/app/G;->v5:Landroid/view/View;

    iput-object p6, p0, Landroid/support/v4/app/G;->Zo:Landroid/graphics/Rect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    iget-object v0, p0, Landroid/support/v4/app/G;->j6:Landroid/support/v4/app/Fragment;

    iget-object v1, p0, Landroid/support/v4/app/G;->DW:Landroid/support/v4/app/Fragment;

    iget-boolean v2, p0, Landroid/support/v4/app/G;->FH:Z

    iget-object v3, p0, Landroid/support/v4/app/G;->Hw:Labcd/k;

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/support/v4/app/I;->j6(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;ZLabcd/k;Z)V

    iget-object v0, p0, Landroid/support/v4/app/G;->v5:Landroid/view/View;

    if-eqz v0, :cond_15

    iget-object v1, p0, Landroid/support/v4/app/G;->Zo:Landroid/graphics/Rect;

    invoke-static {v0, v1}, Landroid/support/v4/app/Q;->j6(Landroid/view/View;Landroid/graphics/Rect;)V

    :cond_15
    return-void
.end method
