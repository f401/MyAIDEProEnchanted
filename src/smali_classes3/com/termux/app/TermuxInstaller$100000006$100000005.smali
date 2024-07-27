.class Lcom/termux/app/TermuxInstaller$100000006$100000005;
.super Ljava/lang/Object;
.source "TermuxInstaller.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final this$0:Lcom/termux/app/TermuxInstaller$100000006;

.field private final val$progress:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/termux/app/TermuxInstaller$100000006;Landroid/app/ProgressDialog;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/app/TermuxInstaller$100000006$100000005;->this$0:Lcom/termux/app/TermuxInstaller$100000006;

    iput-object p2, p0, Lcom/termux/app/TermuxInstaller$100000006$100000005;->val$progress:Landroid/app/ProgressDialog;

    return-void
.end method

.method static access$0(Lcom/termux/app/TermuxInstaller$100000006$100000005;)Lcom/termux/app/TermuxInstaller$100000006;
    .registers 2

    iget-object v0, p0, Lcom/termux/app/TermuxInstaller$100000006$100000005;->this$0:Lcom/termux/app/TermuxInstaller$100000006;

    return-object v0
.end method


# virtual methods
.method public run()V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 176
    :try_start_0
    iget-object v0, p0, Lcom/termux/app/TermuxInstaller$100000006$100000005;->val$progress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
