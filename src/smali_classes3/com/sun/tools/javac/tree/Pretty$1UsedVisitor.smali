.class Lcom/sun/tools/javac/tree/Pretty$1UsedVisitor;
.super Lcom/sun/tools/javac/tree/TreeScanner;
.source "Pretty.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/tree/Pretty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UsedVisitor"
.end annotation


# instance fields
.field result:Z

.field final this$0:Lcom/sun/tools/javac/tree/Pretty;

.field final val$t:Lcom/sun/tools/javac/code/Symbol;


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/tree/Pretty;Lcom/sun/tools/javac/code/Symbol;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 359
    iput-object p1, p0, Lcom/sun/tools/javac/tree/Pretty$1UsedVisitor;->this$0:Lcom/sun/tools/javac/tree/Pretty;

    iput-object p2, p0, Lcom/sun/tools/javac/tree/Pretty$1UsedVisitor;->val$t:Lcom/sun/tools/javac/code/Symbol;

    invoke-direct {p0}, Lcom/sun/tools/javac/tree/TreeScanner;-><init>()V

    .line 363
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/tools/javac/tree/Pretty$1UsedVisitor;->result:Z

    return-void
.end method


# virtual methods
.method public scan(Lcom/sun/tools/javac/tree/JCTree;)V
    .registers 3

    .line 361
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/sun/tools/javac/tree/Pretty$1UsedVisitor;->result:Z

    if-nez v0, :cond_0

    invoke-virtual {p1, p0}, Lcom/sun/tools/javac/tree/JCTree;->accept(Lcom/sun/tools/javac/tree/JCTree$Visitor;)V

    .line 362
    :cond_0
    return-void
.end method

.method public visitIdent(Lcom/sun/tools/javac/tree/JCTree$JCIdent;)V
    .registers 4

    .line 365
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCIdent;->sym:Lcom/sun/tools/javac/code/Symbol;

    iget-object v1, p0, Lcom/sun/tools/javac/tree/Pretty$1UsedVisitor;->val$t:Lcom/sun/tools/javac/code/Symbol;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/tools/javac/tree/Pretty$1UsedVisitor;->result:Z

    .line 366
    :cond_0
    return-void
.end method
