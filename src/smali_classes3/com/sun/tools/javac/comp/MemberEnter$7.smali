.class Lcom/sun/tools/javac/comp/MemberEnter$7;
.super Lcom/sun/tools/javac/code/Type$ErrorType;
.source "MemberEnter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/tools/javac/comp/MemberEnter;->modelMissingTypes(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/tree/JCTree$JCExpression;Z)Lcom/sun/tools/javac/code/Type;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private modelType:Lcom/sun/tools/javac/code/Type;

.field final this$0:Lcom/sun/tools/javac/comp/MemberEnter;

.field final val$interfaceExpected:Z

.field final val$tree:Lcom/sun/tools/javac/tree/JCTree$JCExpression;


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/comp/MemberEnter;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;ZLcom/sun/tools/javac/tree/JCTree$JCExpression;)V
    .registers 6

    .line 1083
    iput-object p1, p0, Lcom/sun/tools/javac/comp/MemberEnter$7;->this$0:Lcom/sun/tools/javac/comp/MemberEnter;

    iput-boolean p4, p0, Lcom/sun/tools/javac/comp/MemberEnter$7;->val$interfaceExpected:Z

    iput-object p5, p0, Lcom/sun/tools/javac/comp/MemberEnter$7;->val$tree:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-direct {p0, p2, p3}, Lcom/sun/tools/javac/code/Type$ErrorType;-><init>(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)V

    return-void
.end method


# virtual methods
.method public getModelType()Lcom/sun/tools/javac/code/Type;
    .registers 5

    .line 1088
    iget-object v0, p0, Lcom/sun/tools/javac/comp/MemberEnter$7;->modelType:Lcom/sun/tools/javac/code/Type;

    if-nez v0, :cond_0

    .line 1089
    new-instance v0, Lcom/sun/tools/javac/comp/MemberEnter$Synthesizer;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/MemberEnter$7;->this$0:Lcom/sun/tools/javac/comp/MemberEnter;

    invoke-virtual {p0}, Lcom/sun/tools/javac/comp/MemberEnter$7;->getOriginalType()Lcom/sun/tools/javac/code/Type;

    move-result-object v2

    iget-boolean v3, p0, Lcom/sun/tools/javac/comp/MemberEnter$7;->val$interfaceExpected:Z

    invoke-direct {v0, v1, v2, v3}, Lcom/sun/tools/javac/comp/MemberEnter$Synthesizer;-><init>(Lcom/sun/tools/javac/comp/MemberEnter;Lcom/sun/tools/javac/code/Type;Z)V

    iget-object v1, p0, Lcom/sun/tools/javac/comp/MemberEnter$7;->val$tree:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/comp/MemberEnter$Synthesizer;->visit(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/MemberEnter$7;->modelType:Lcom/sun/tools/javac/code/Type;

    .line 1090
    :cond_0
    iget-object v0, p0, Lcom/sun/tools/javac/comp/MemberEnter$7;->modelType:Lcom/sun/tools/javac/code/Type;

    return-object v0
.end method
