.class Landroidx/fragment/app/Fragment$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/Fragment;->callStartTransitionListener(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Landroidx/fragment/app/Fragment;

.field final val$controller:Landroidx/fragment/app/SpecialEffectsController;


# direct methods
.method constructor <init>(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/SpecialEffectsController;)V
    .registers 3

    iput-object p1, p0, Landroidx/fragment/app/Fragment$3;->this$0:Landroidx/fragment/app/Fragment;

    iput-object p2, p0, Landroidx/fragment/app/Fragment$3;->val$controller:Landroidx/fragment/app/SpecialEffectsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Landroidx/fragment/app/Fragment$3;->val$controller:Landroidx/fragment/app/SpecialEffectsController;

    invoke-virtual {v0}, Landroidx/fragment/app/SpecialEffectsController;->executePendingOperations()V

    return-void
.end method
