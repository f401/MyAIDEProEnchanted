.class Lcom/termux/app/TermuxInstaller$100000006$100000004$100000003;
.super Ljava/lang/Object;
.source "TermuxInstaller.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final this$0:Lcom/termux/app/TermuxInstaller$100000006$100000004;

.field private final val$activity:Landroid/app/Activity;

.field private final val$whenDone:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/termux/app/TermuxInstaller$100000006$100000004;Landroid/app/Activity;Ljava/lang/Runnable;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/app/TermuxInstaller$100000006$100000004$100000003;->this$0:Lcom/termux/app/TermuxInstaller$100000006$100000004;

    iput-object p2, p0, Lcom/termux/app/TermuxInstaller$100000006$100000004$100000003;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/termux/app/TermuxInstaller$100000006$100000004$100000003;->val$whenDone:Ljava/lang/Runnable;

    return-void
.end method

.method static access$0(Lcom/termux/app/TermuxInstaller$100000006$100000004$100000003;)Lcom/termux/app/TermuxInstaller$100000006$100000004;
    .registers 2

    iget-object v0, p0, Lcom/termux/app/TermuxInstaller$100000006$100000004$100000003;->this$0:Lcom/termux/app/TermuxInstaller$100000006$100000004;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/DialogInterface;",
            "I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 162
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 163
    iget-object v0, p0, Lcom/termux/app/TermuxInstaller$100000006$100000004$100000003;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/termux/app/TermuxInstaller$100000006$100000004$100000003;->val$whenDone:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lcom/termux/app/TermuxInstaller;->setupIfNeeded(Landroid/app/Activity;Ljava/lang/Runnable;)V

    return-void
.end method
