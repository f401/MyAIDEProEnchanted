.class Lcom/termux/app/TermuxInstaller$2$1;
.super Ljava/lang/Object;
.source "TermuxInstaller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/app/TermuxInstaller$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/termux/app/TermuxInstaller$2;


# direct methods
.method constructor <init>(Lcom/termux/app/TermuxInstaller$2;)V
    .registers 2

    .line 140
    iput-object p1, p0, Lcom/termux/app/TermuxInstaller$2$1;->this$0:Lcom/termux/app/TermuxInstaller$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 143
    iget-object v0, p0, Lcom/termux/app/TermuxInstaller$2$1;->this$0:Lcom/termux/app/TermuxInstaller$2;

    iget-object v0, v0, Lcom/termux/app/TermuxInstaller$2;->val$whenDone:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
