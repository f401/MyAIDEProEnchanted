.class Lcom/termux/app/TermuxActivity$4;
.super Ljava/lang/Object;
.source "TermuxActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .locals 0

    .line 364
    iput-object p1, p0, Lcom/termux/app/TermuxActivity$4;->this$0:Lcom/termux/app/TermuxActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 367
    iget-object v0, p0, Lcom/termux/app/TermuxActivity$4;->this$0:Lcom/termux/app/TermuxActivity;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/termux/app/TermuxActivity;->addNewSession(ZLjava/lang/String;)V

    return-void
.end method
