.class Landroidj/support/v4/print/PrintHelper$PrintHelperImpl$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroidj/support/v4/print/PrintHelperKitkat$OnPrintFinishCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidj/support/v4/print/PrintHelper$PrintHelperImpl;->printBitmap(Ljava/lang/String;Landroid/net/Uri;Landroidj/support/v4/print/PrintHelper$OnPrintFinishCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Landroidj/support/v4/print/PrintHelper$PrintHelperImpl;

.field final val$callback:Landroidj/support/v4/print/PrintHelper$OnPrintFinishCallback;


# direct methods
.method constructor <init>(Landroidj/support/v4/print/PrintHelper$PrintHelperImpl;Landroidj/support/v4/print/PrintHelper$OnPrintFinishCallback;)V
    .registers 3

    iput-object p1, p0, Landroidj/support/v4/print/PrintHelper$PrintHelperImpl$2;->this$0:Landroidj/support/v4/print/PrintHelper$PrintHelperImpl;

    iput-object p2, p0, Landroidj/support/v4/print/PrintHelper$PrintHelperImpl$2;->val$callback:Landroidj/support/v4/print/PrintHelper$OnPrintFinishCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/print/PrintHelper$PrintHelperImpl$2;->val$callback:Landroidj/support/v4/print/PrintHelper$OnPrintFinishCallback;

    invoke-interface {v0}, Landroidj/support/v4/print/PrintHelper$OnPrintFinishCallback;->onFinish()V

    return-void
.end method
