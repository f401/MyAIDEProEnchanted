.class Lcom/termux/app/TermuxActivity$100000016$100000013;
.super Ljava/lang/Object;
.source "TermuxActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field private final this$0:Lcom/termux/app/TermuxActivity$100000016;


# direct methods
.method constructor <init>(Lcom/termux/app/TermuxActivity$100000016;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/app/TermuxActivity$100000016$100000013;->this$0:Lcom/termux/app/TermuxActivity$100000016;

    return-void
.end method

.method static access$0(Lcom/termux/app/TermuxActivity$100000016$100000013;)Lcom/termux/app/TermuxActivity$100000016;
    .registers 2

    iget-object v0, p0, Lcom/termux/app/TermuxActivity$100000016$100000013;->this$0:Lcom/termux/app/TermuxActivity$100000016;

    return-object v0
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/DialogInterface;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    return-void
.end method
