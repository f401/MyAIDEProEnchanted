.class Lcom/termux/app/TermuxActivity$5$1;
.super Ljava/lang/Object;
.source "TermuxActivity.java"

# interfaces
.implements Lcom/termux/app/DialogUtils$TextSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/app/TermuxActivity$5;->onLongClick(Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$1:Lcom/termux/app/TermuxActivity$5;


# direct methods
.method constructor <init>(Lcom/termux/app/TermuxActivity$5;)V
    .registers 2

    .line 379
    iput-object p1, p0, Lcom/termux/app/TermuxActivity$5$1;->this$1:Lcom/termux/app/TermuxActivity$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTextSet(Ljava/lang/String;)V
    .registers 4

    .line 382
    iget-object v0, p0, Lcom/termux/app/TermuxActivity$5$1;->this$1:Lcom/termux/app/TermuxActivity$5;

    iget-object v0, v0, Lcom/termux/app/TermuxActivity$5;->this$0:Lcom/termux/app/TermuxActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/termux/app/TermuxActivity;->addNewSession(ZLjava/lang/String;)V

    return-void
.end method
