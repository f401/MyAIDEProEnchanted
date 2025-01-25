.class Lcom/s1243808733/util/Utils$1$1;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/util/Utils$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/s1243808733/util/Utils$1;


# direct methods
.method constructor <init>(Lcom/s1243808733/util/Utils$1;)V
    .registers 2

    .line 813
    iput-object p1, p0, Lcom/s1243808733/util/Utils$1$1;->this$0:Lcom/s1243808733/util/Utils$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 817
    iget-object p1, p0, Lcom/s1243808733/util/Utils$1$1;->this$0:Lcom/s1243808733/util/Utils$1;

    iget-object p1, p1, Lcom/s1243808733/util/Utils$1;->val$e:Ljava/lang/Throwable;

    invoke-static {p1}, Lcom/s1243808733/util/Utils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/s1243808733/util/Utils;->copyToClipboard(Ljava/lang/CharSequence;)V

    return-void
.end method
