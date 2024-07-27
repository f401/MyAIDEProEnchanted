.class Lcom/termux/app/TermuxHelpActivity$100000003$100000002;
.super Ljava/lang/Object;
.source "TermuxHelpActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final this$0:Lcom/termux/app/TermuxHelpActivity$100000003;


# direct methods
.method constructor <init>(Lcom/termux/app/TermuxHelpActivity$100000003;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/app/TermuxHelpActivity$100000003$100000002;->this$0:Lcom/termux/app/TermuxHelpActivity$100000003;

    return-void
.end method

.method static access$0(Lcom/termux/app/TermuxHelpActivity$100000003$100000002;)Lcom/termux/app/TermuxHelpActivity$100000003;
    .registers 2

    iget-object v0, p0, Lcom/termux/app/TermuxHelpActivity$100000003$100000002;->this$0:Lcom/termux/app/TermuxHelpActivity$100000003;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/DialogInterface;",
            "I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    return-void
.end method
