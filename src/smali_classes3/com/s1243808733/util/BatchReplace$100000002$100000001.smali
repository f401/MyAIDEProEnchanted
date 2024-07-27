.class Lcom/s1243808733/util/BatchReplace$100000002$100000001;
.super Ljava/lang/Object;
.source "BatchReplace.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final this$0:Lcom/s1243808733/util/BatchReplace$100000002;

.field private final val$msg:Ljava/lang/StringBuffer;


# direct methods
.method constructor <init>(Lcom/s1243808733/util/BatchReplace$100000002;Ljava/lang/StringBuffer;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/util/BatchReplace$100000002$100000001;->this$0:Lcom/s1243808733/util/BatchReplace$100000002;

    iput-object p2, p0, Lcom/s1243808733/util/BatchReplace$100000002$100000001;->val$msg:Ljava/lang/StringBuffer;

    return-void
.end method

.method static access$0(Lcom/s1243808733/util/BatchReplace$100000002$100000001;)Lcom/s1243808733/util/BatchReplace$100000002;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/util/BatchReplace$100000002$100000001;->this$0:Lcom/s1243808733/util/BatchReplace$100000002;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/DialogInterface;",
            "I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 136
    iget-object v0, p0, Lcom/s1243808733/util/BatchReplace$100000002$100000001;->val$msg:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/s1243808733/util/Utils;->copyToClipboard(Ljava/lang/CharSequence;)V

    return-void
.end method
