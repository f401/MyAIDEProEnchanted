.class Lcom/sun/tools/javac/main/JavaCompiler$1ScanNested;
.super Lcom/sun/tools/javac/tree/TreeScanner;
.source "JavaCompiler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/main/JavaCompiler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ScanNested"
.end annotation


# instance fields
.field dependencies:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;>;"
        }
    .end annotation
.end field

.field final this$0:Lcom/sun/tools/javac/main/JavaCompiler;

.field final val$env:Lcom/sun/tools/javac/comp/Env;


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/main/JavaCompiler;Lcom/sun/tools/javac/comp/Env;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1445
    iput-object p1, p0, Lcom/sun/tools/javac/main/JavaCompiler$1ScanNested;->this$0:Lcom/sun/tools/javac/main/JavaCompiler;

    iput-object p2, p0, Lcom/sun/tools/javac/main/JavaCompiler$1ScanNested;->val$env:Lcom/sun/tools/javac/comp/Env;

    invoke-direct {p0}, Lcom/sun/tools/javac/tree/TreeScanner;-><init>()V

    .line 1446
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/sun/tools/javac/main/JavaCompiler$1ScanNested;->dependencies:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public visitClassDef(Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;)V
    .registers 5

    .line 1450
    iget-object v0, p0, Lcom/sun/tools/javac/main/JavaCompiler$1ScanNested;->this$0:Lcom/sun/tools/javac/main/JavaCompiler;

    iget-object v0, v0, Lcom/sun/tools/javac/main/JavaCompiler;->types:Lcom/sun/tools/javac/code/Types;

    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->sym:Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/code/Types;->supertype(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    .line 1451
    iget v1, v0, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    .line 1452
    iget-object v0, v0, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->outermostClass()Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v0

    .line 1453
    iget-object v1, p0, Lcom/sun/tools/javac/main/JavaCompiler$1ScanNested;->this$0:Lcom/sun/tools/javac/main/JavaCompiler;

    iget-object v1, v1, Lcom/sun/tools/javac/main/JavaCompiler;->enter:Lcom/sun/tools/javac/comp/Enter;

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/comp/Enter;->getEnv(Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)Lcom/sun/tools/javac/comp/Env;

    move-result-object v0

    .line 1454
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sun/tools/javac/main/JavaCompiler$1ScanNested;->val$env:Lcom/sun/tools/javac/comp/Env;

    if-eq v1, v0, :cond_0

    .line 1455
    iget-object v1, p0, Lcom/sun/tools/javac/main/JavaCompiler$1ScanNested;->dependencies:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1456
    iget-object v0, v0, Lcom/sun/tools/javac/comp/Env;->tree:Lcom/sun/tools/javac/tree/JCTree;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/main/JavaCompiler$1ScanNested;->scan(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 1459
    :cond_0
    invoke-super {p0, p1}, Lcom/sun/tools/javac/tree/TreeScanner;->visitClassDef(Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;)V

    .line 1460
    return-void
.end method
