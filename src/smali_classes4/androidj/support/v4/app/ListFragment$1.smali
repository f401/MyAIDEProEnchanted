.class Landroidj/support/v4/app/ListFragment$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/app/ListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Landroidj/support/v4/app/ListFragment;


# direct methods
.method constructor <init>(Landroidj/support/v4/app/ListFragment;)V
    .registers 2

    iput-object p1, p0, Landroidj/support/v4/app/ListFragment$1;->this$0:Landroidj/support/v4/app/ListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Landroidj/support/v4/app/ListFragment$1;->this$0:Landroidj/support/v4/app/ListFragment;

    iget-object v0, v0, Landroidj/support/v4/app/ListFragment;->mList:Landroid/widget/ListView;

    iget-object v1, p0, Landroidj/support/v4/app/ListFragment$1;->this$0:Landroidj/support/v4/app/ListFragment;

    iget-object v1, v1, Landroidj/support/v4/app/ListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->focusableViewAvailable(Landroid/view/View;)V

    return-void
.end method
