.class Lcom/termux/app/TermuxActivity$7;
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
    .locals 0

    .line 412
    iput-object p1, p0, Lcom/termux/app/TermuxActivity$7;->this$0:Lcom/termux/app/TermuxActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    .line 415
    iget-object v0, p0, Lcom/termux/app/TermuxActivity$7;->this$0:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->toggleShowExtraKeys()V

    const/4 v0, 0x1

    return v0
.end method
