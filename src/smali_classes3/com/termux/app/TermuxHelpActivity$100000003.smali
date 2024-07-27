.class Lcom/termux/app/TermuxHelpActivity$100000003;
.super Ljava/lang/Object;
.source "TermuxHelpActivity.java"

# interfaces
.implements Landroid/webkit/DownloadListener;


# instance fields
.field private final this$0:Lcom/termux/app/TermuxHelpActivity;


# direct methods
.method constructor <init>(Lcom/termux/app/TermuxHelpActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/app/TermuxHelpActivity$100000003;->this$0:Lcom/termux/app/TermuxHelpActivity;

    return-void
.end method

.method static access$0(Lcom/termux/app/TermuxHelpActivity$100000003;)Lcom/termux/app/TermuxHelpActivity;
    .registers 2

    iget-object v0, p0, Lcom/termux/app/TermuxHelpActivity$100000003;->this$0:Lcom/termux/app/TermuxHelpActivity;

    return-object v0
.end method


# virtual methods
.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 79
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/termux/app/TermuxHelpActivity$100000003;->this$0:Lcom/termux/app/TermuxHelpActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u4fe1\u606f\u63d0\u793a"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x7f110000

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u4e0b\u8f7d\u5c06\u8df3\u8f6c\u6d4f\u89c8\u5668\uff0c\u662f\u5426\u9009\u62e9\uff1f"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string/jumbo v1, "\u662f"

    new-instance v2, Lcom/termux/app/TermuxHelpActivity$100000003$100000001;

    invoke-direct {v2, p0, p1}, Lcom/termux/app/TermuxHelpActivity$100000003$100000001;-><init>(Lcom/termux/app/TermuxHelpActivity$100000003;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u5426"

    new-instance v2, Lcom/termux/app/TermuxHelpActivity$100000003$100000002;

    invoke-direct {v2, p0}, Lcom/termux/app/TermuxHelpActivity$100000003$100000002;-><init>(Lcom/termux/app/TermuxHelpActivity$100000003;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method
