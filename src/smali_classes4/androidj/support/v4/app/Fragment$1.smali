.class Landroidj/support/v4/app/Fragment$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidj/support/v4/app/Fragment;->startPostponedEnterTransition()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Landroidj/support/v4/app/Fragment;


# direct methods
.method constructor <init>(Landroidj/support/v4/app/Fragment;)V
    .registers 2

    iput-object p1, p0, Landroidj/support/v4/app/Fragment$1;->this$0:Landroidj/support/v4/app/Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/app/Fragment$1;->this$0:Landroidj/support/v4/app/Fragment;

    invoke-static {v0}, Landroidj/support/v4/app/Fragment;->access$800(Landroidj/support/v4/app/Fragment;)V

    return-void
.end method
