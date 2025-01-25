.class Lcom/s1243808733/util/BatchReplace$1$2;
.super Ljava/lang/Object;
.source "BatchReplace.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/util/BatchReplace$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/s1243808733/util/BatchReplace$1;

.field final val$msg:Ljava/lang/StringBuffer;


# direct methods
.method constructor <init>(Lcom/s1243808733/util/BatchReplace$1;Ljava/lang/StringBuffer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 132
    iput-object p1, p0, Lcom/s1243808733/util/BatchReplace$1$2;->this$0:Lcom/s1243808733/util/BatchReplace$1;

    iput-object p2, p0, Lcom/s1243808733/util/BatchReplace$1$2;->val$msg:Ljava/lang/StringBuffer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 136
    iget-object p1, p0, Lcom/s1243808733/util/BatchReplace$1$2;->val$msg:Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/s1243808733/util/Utils;->copyToClipboard(Ljava/lang/CharSequence;)V

    return-void
.end method
