.class Lcom/termux/app/TermuxActivity$8$4;
.super Ljava/lang/Object;
.source "TermuxActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/app/TermuxActivity$8;->onTextChanged(Lcom/termux/terminal/TerminalSession;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$1:Lcom/termux/app/TermuxActivity$8;


# direct methods
.method constructor <init>(Lcom/termux/app/TermuxActivity$8;)V
    .registers 2

    .line 569
    iput-object p1, p0, Lcom/termux/app/TermuxActivity$8$4;->this$1:Lcom/termux/app/TermuxActivity$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 2

    return-void
.end method
