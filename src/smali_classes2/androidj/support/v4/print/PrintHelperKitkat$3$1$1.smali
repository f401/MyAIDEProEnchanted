.class Landroidj/support/v4/print/PrintHelperKitkat$3$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/CancellationSignal$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidj/support/v4/print/PrintHelperKitkat$3$1;->onPreExecute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$2:Landroidj/support/v4/print/PrintHelperKitkat$3$1;


# direct methods
.method constructor <init>(Landroidj/support/v4/print/PrintHelperKitkat$3$1;)V
    .registers 2

    iput-object p1, p0, Landroidj/support/v4/print/PrintHelperKitkat$3$1$1;->this$2:Landroidj/support/v4/print/PrintHelperKitkat$3$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .registers 3

    iget-object v0, p0, Landroidj/support/v4/print/PrintHelperKitkat$3$1$1;->this$2:Landroidj/support/v4/print/PrintHelperKitkat$3$1;

    iget-object v0, v0, Landroidj/support/v4/print/PrintHelperKitkat$3$1;->this$1:Landroidj/support/v4/print/PrintHelperKitkat$3;

    invoke-static {v0}, Landroidj/support/v4/print/PrintHelperKitkat$3;->access$300(Landroidj/support/v4/print/PrintHelperKitkat$3;)V

    iget-object v0, p0, Landroidj/support/v4/print/PrintHelperKitkat$3$1$1;->this$2:Landroidj/support/v4/print/PrintHelperKitkat$3$1;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidj/support/v4/print/PrintHelperKitkat$3$1;->cancel(Z)Z

    return-void
.end method
