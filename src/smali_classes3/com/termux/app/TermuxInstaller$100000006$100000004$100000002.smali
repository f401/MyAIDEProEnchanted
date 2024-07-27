.class Lcom/termux/app/TermuxInstaller$100000006$100000004$100000002;
.super Ljava/lang/Object;
.source "TermuxInstaller.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final this$0:Lcom/termux/app/TermuxInstaller$100000006$100000004;

.field private final val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/termux/app/TermuxInstaller$100000006$100000004;Landroid/app/Activity;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/app/TermuxInstaller$100000006$100000004$100000002;->this$0:Lcom/termux/app/TermuxInstaller$100000006$100000004;

    iput-object p2, p0, Lcom/termux/app/TermuxInstaller$100000006$100000004$100000002;->val$activity:Landroid/app/Activity;

    return-void
.end method

.method static access$0(Lcom/termux/app/TermuxInstaller$100000006$100000004$100000002;)Lcom/termux/app/TermuxInstaller$100000006$100000004;
    .registers 2

    iget-object v0, p0, Lcom/termux/app/TermuxInstaller$100000006$100000004$100000002;->this$0:Lcom/termux/app/TermuxInstaller$100000006$100000004;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/DialogInterface;",
            "I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 156
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 157
    iget-object v0, p0, Lcom/termux/app/TermuxInstaller$100000006$100000004$100000002;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
