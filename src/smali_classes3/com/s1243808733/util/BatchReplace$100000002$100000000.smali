.class Lcom/s1243808733/util/BatchReplace$100000002$100000000;
.super Ljava/lang/Object;
.source "BatchReplace.java"

# interfaces
.implements Lcom/s1243808733/util/BatchReplace$Listener;


# instance fields
.field private final this$0:Lcom/s1243808733/util/BatchReplace$100000002;

.field private final val$sb:Ljava/lang/StringBuffer;


# direct methods
.method constructor <init>(Lcom/s1243808733/util/BatchReplace$100000002;Ljava/lang/StringBuffer;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/util/BatchReplace$100000002$100000000;->this$0:Lcom/s1243808733/util/BatchReplace$100000002;

    iput-object p2, p0, Lcom/s1243808733/util/BatchReplace$100000002$100000000;->val$sb:Ljava/lang/StringBuffer;

    return-void
.end method

.method static access$0(Lcom/s1243808733/util/BatchReplace$100000002$100000000;)Lcom/s1243808733/util/BatchReplace$100000002;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/util/BatchReplace$100000002$100000000;->this$0:Lcom/s1243808733/util/BatchReplace$100000002;

    return-object v0
.end method


# virtual methods
.method public onReplace(Ljava/io/File;)Z
    .registers 5
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 120
    iget-object v0, p0, Lcom/s1243808733/util/BatchReplace$100000002$100000000;->val$sb:Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "\nFile:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 121
    const/4 v0, 0x1

    return v0
.end method
