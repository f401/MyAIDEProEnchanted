.class Lcom/termux/app/TermuxActivity$5;
.super Ljava/lang/Object;
.source "TermuxActivity.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/app/TermuxActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/termux/app/TermuxActivity;


# direct methods
.method constructor <init>(Lcom/termux/app/TermuxActivity;)V
    .registers 2

    .line 371
    iput-object p1, p0, Lcom/termux/app/TermuxActivity$5;->this$0:Lcom/termux/app/TermuxActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .registers 12

    .line 374
    iget-object v0, p0, Lcom/termux/app/TermuxActivity$5;->this$0:Lcom/termux/app/TermuxActivity;

    .line 376
    const-string p1, "session_new_named_title"

    invoke-static {p1}, Lcom/blankj/utilcode/util/ResourceUtils;->getStringIdByName(Ljava/lang/String;)I

    move-result v1

    .line 378
    const-string p1, "session_new_named_positive_button"

    invoke-static {p1}, Lcom/blankj/utilcode/util/ResourceUtils;->getStringIdByName(Ljava/lang/String;)I

    move-result v3

    new-instance v4, Lcom/termux/app/TermuxActivity$5$1;

    invoke-direct {v4, p0}, Lcom/termux/app/TermuxActivity$5$1;-><init>(Lcom/termux/app/TermuxActivity$5;)V

    .line 385
    const-string p1, "new_session_failsafe"

    invoke-static {p1}, Lcom/blankj/utilcode/util/ResourceUtils;->getStringIdByName(Ljava/lang/String;)I

    move-result v5

    new-instance v6, Lcom/termux/app/TermuxActivity$5$2;

    invoke-direct {v6, p0}, Lcom/termux/app/TermuxActivity$5$2;-><init>(Lcom/termux/app/TermuxActivity$5;)V

    .line 374
    const/4 v2, 0x0

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v0 .. v9}, Lcom/termux/app/DialogUtils;->textInput(Landroid/app/Activity;ILjava/lang/String;ILcom/termux/app/DialogUtils$TextSetListener;ILcom/termux/app/DialogUtils$TextSetListener;ILcom/termux/app/DialogUtils$TextSetListener;Landroid/content/DialogInterface$OnDismissListener;)V

    const/4 p1, 0x1

    return p1
.end method
