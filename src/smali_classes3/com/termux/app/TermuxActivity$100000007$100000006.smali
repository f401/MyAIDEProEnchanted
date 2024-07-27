.class Lcom/termux/app/TermuxActivity$100000007$100000006;
.super Ljava/lang/Object;
.source "TermuxActivity.java"

# interfaces
.implements Lcom/termux/app/DialogUtils$TextSetListener;


# instance fields
.field private final this$0:Lcom/termux/app/TermuxActivity$100000007;


# direct methods
.method constructor <init>(Lcom/termux/app/TermuxActivity$100000007;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/app/TermuxActivity$100000007$100000006;->this$0:Lcom/termux/app/TermuxActivity$100000007;

    return-void
.end method

.method static access$0(Lcom/termux/app/TermuxActivity$100000007$100000006;)Lcom/termux/app/TermuxActivity$100000007;
    .registers 2

    iget-object v0, p0, Lcom/termux/app/TermuxActivity$100000007$100000006;->this$0:Lcom/termux/app/TermuxActivity$100000007;

    return-object v0
.end method


# virtual methods
.method public onTextSet(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 389
    iget-object v0, p0, Lcom/termux/app/TermuxActivity$100000007$100000006;->this$0:Lcom/termux/app/TermuxActivity$100000007;

    invoke-static {v0}, Lcom/termux/app/TermuxActivity$100000007;->access$0(Lcom/termux/app/TermuxActivity$100000007;)Lcom/termux/app/TermuxActivity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/termux/app/TermuxActivity;->addNewSession(ZLjava/lang/String;)V

    return-void
.end method
