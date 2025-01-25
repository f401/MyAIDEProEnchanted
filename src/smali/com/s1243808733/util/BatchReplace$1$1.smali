.class Lcom/s1243808733/util/BatchReplace$1$1;
.super Ljava/lang/Object;
.source "BatchReplace.java"

# interfaces
.implements Lcom/s1243808733/util/BatchReplace$Listener;


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

.field final val$sb:Ljava/lang/StringBuffer;


# direct methods
.method constructor <init>(Lcom/s1243808733/util/BatchReplace$1;Ljava/lang/StringBuffer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 116
    iput-object p1, p0, Lcom/s1243808733/util/BatchReplace$1$1;->this$0:Lcom/s1243808733/util/BatchReplace$1;

    iput-object p2, p0, Lcom/s1243808733/util/BatchReplace$1$1;->val$sb:Ljava/lang/StringBuffer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReplace(Ljava/io/File;)Z
    .registers 5

    .line 120
    iget-object v0, p0, Lcom/s1243808733/util/BatchReplace$1$1;->val$sb:Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\nFile:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 p1, 0x1

    return p1
.end method
