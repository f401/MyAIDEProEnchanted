.class Lcom/termux/app/TermuxInstaller$100000006$100000001;
.super Ljava/lang/Object;
.source "TermuxInstaller.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final this$0:Lcom/termux/app/TermuxInstaller$100000006;

.field private final val$whenDone:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/termux/app/TermuxInstaller$100000006;Ljava/lang/Runnable;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/app/TermuxInstaller$100000006$100000001;->this$0:Lcom/termux/app/TermuxInstaller$100000006;

    iput-object p2, p0, Lcom/termux/app/TermuxInstaller$100000006$100000001;->val$whenDone:Ljava/lang/Runnable;

    return-void
.end method

.method static access$0(Lcom/termux/app/TermuxInstaller$100000006$100000001;)Lcom/termux/app/TermuxInstaller$100000006;
    .registers 2

    iget-object v0, p0, Lcom/termux/app/TermuxInstaller$100000006$100000001;->this$0:Lcom/termux/app/TermuxInstaller$100000006;

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

    .line 143
    iget-object v0, p0, Lcom/termux/app/TermuxInstaller$100000006$100000001;->val$whenDone:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
