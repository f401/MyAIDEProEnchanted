.class Lcom/s1243808733/util/ClassUtils$1$1;
.super Ljava/lang/Object;
.source "ClassUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/util/ClassUtils$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/s1243808733/util/ClassUtils$1;

.field final val$sb:Ljava/lang/StringBuffer;


# direct methods
.method constructor <init>(Lcom/s1243808733/util/ClassUtils$1;Ljava/lang/StringBuffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 53
    iput-object p1, p0, Lcom/s1243808733/util/ClassUtils$1$1;->this$0:Lcom/s1243808733/util/ClassUtils$1;

    iput-object p2, p0, Lcom/s1243808733/util/ClassUtils$1$1;->val$sb:Ljava/lang/StringBuffer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/s1243808733/util/ClassUtils$1$1;->val$sb:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/util/Utils;->copyToClipboard(Ljava/lang/CharSequence;)V

    return-void
.end method
