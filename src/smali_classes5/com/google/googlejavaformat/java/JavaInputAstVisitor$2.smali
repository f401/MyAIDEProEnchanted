.class Lcom/google/googlejavaformat/java/JavaInputAstVisitor$2;
.super Lcom/sun/tools/javac/tree/TreeScanner;
.source "JavaInputAstVisitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->isStringConcat(Lcom/sun/source/tree/ExpressionTree;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/google/googlejavaformat/java/JavaInputAstVisitor;

.field final val$formatString:[Z

.field final val$stringLiteral:[Z


# direct methods
.method constructor <init>(Lcom/google/googlejavaformat/java/JavaInputAstVisitor;[Z[Z)V
    .registers 4

    .line 2805
    iput-object p1, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$2;->this$0:Lcom/google/googlejavaformat/java/JavaInputAstVisitor;

    iput-object p2, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$2;->val$stringLiteral:[Z

    iput-object p3, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$2;->val$formatString:[Z

    invoke-direct {p0}, Lcom/sun/tools/javac/tree/TreeScanner;-><init>()V

    return-void
.end method


# virtual methods
.method public scan(Lcom/sun/tools/javac/tree/JCTree;)V
    .registers 5

    const/4 v2, 0x0

    .line 2808
    if-nez p1, :cond_4

    .line 2827
    :cond_3
    :goto_3
    return-void

    .line 2811
    :cond_4
    sget-object v0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$3;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/16 v1, 0xb

    if-eq v0, v1, :cond_1c

    const/16 v1, 0xc

    if-eq v0, v1, :cond_46

    .line 2818
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$2;->val$stringLiteral:[Z

    aput-boolean v2, v0, v2

    .line 2813
    :cond_1c
    :goto_1c
    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v0

    sget-object v1, Lcom/sun/source/tree/Tree$Kind;->STRING_LITERAL:Lcom/sun/source/tree/Tree$Kind;

    if-ne v0, v1, :cond_3

    .line 2822
    check-cast p1, Lcom/sun/source/tree/LiteralTree;

    invoke-interface {p1}, Lcom/sun/source/tree/LiteralTree;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 2823
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/google/googlejavaformat/java/JavaInputAstVisitor;->access$000()Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2824
    iget-object v0, p0, Lcom/google/googlejavaformat/java/JavaInputAstVisitor$2;->val$formatString:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    goto :goto_3

    .line 2815
    :cond_46
    invoke-super {p0, p1}, Lcom/sun/tools/javac/tree/TreeScanner;->scan(Lcom/sun/tools/javac/tree/JCTree;)V

    goto :goto_1c
.end method
