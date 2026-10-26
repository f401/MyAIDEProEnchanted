.class Lcom/termux/app/TermuxInstaller$2$3;
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
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/termux/app/TermuxInstaller$2$3;->this$0:Lcom/termux/app/TermuxInstaller$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 176
    :try_start_0
    iget-object v0, p0, Lcom/termux/app/TermuxInstaller$2$3;->this$0:Lcom/termux/app/TermuxInstaller$2;

    iget-object v0, v0, Lcom/termux/app/TermuxInstaller$2;->val$progress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
