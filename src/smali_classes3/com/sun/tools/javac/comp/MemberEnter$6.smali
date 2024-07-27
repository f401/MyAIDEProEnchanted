.class Lcom/sun/tools/javac/comp/MemberEnter$6;
.super Ljava/lang/Object;
.source "MemberEnter.java"

# interfaces
.implements Lcom/sun/tools/javac/comp/Annotate$Annotator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/tools/javac/comp/MemberEnter;->annotateDefaultValueLater(Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Symbol$MethodSymbol;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/sun/tools/javac/comp/MemberEnter;

.field final val$defaultValue:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

.field final val$localEnv:Lcom/sun/tools/javac/comp/Env;

.field final val$m:Lcom/sun/tools/javac/code/Symbol$MethodSymbol;


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/comp/MemberEnter;Lcom/sun/tools/javac/code/Symbol$MethodSymbol;Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/comp/Env;)V
    .registers 5

    .line 813
    iput-object p1, p0, Lcom/sun/tools/javac/comp/MemberEnter$6;->this$0:Lcom/sun/tools/javac/comp/MemberEnter;

    iput-object p2, p0, Lcom/sun/tools/javac/comp/MemberEnter$6;->val$m:Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    iput-object p3, p0, Lcom/sun/tools/javac/comp/MemberEnter$6;->val$defaultValue:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iput-object p4, p0, Lcom/sun/tools/javac/comp/MemberEnter$6;->val$localEnv:Lcom/sun/tools/javac/comp/Env;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public enterAnnotation()V
    .registers 6

    .line 819
    iget-object v0, p0, Lcom/sun/tools/javac/comp/MemberEnter$6;->this$0:Lcom/sun/tools/javac/comp/MemberEnter;

    invoke-static {v0}, Lcom/sun/tools/javac/comp/MemberEnter;->access$200(Lcom/sun/tools/javac/comp/MemberEnter;)Lcom/sun/tools/javac/util/Log;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/tools/javac/comp/MemberEnter$6;->val$localEnv:Lcom/sun/tools/javac/comp/Env;

    iget-object v1, v1, Lcom/sun/tools/javac/comp/Env;->toplevel:Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object v1, v1, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->sourcefile:Ljavax/tools/JavaFileObject;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/Log;->useSource(Ljavax/tools/JavaFileObject;)Ljavax/tools/JavaFileObject;

    move-result-object v1

    .line 821
    :try_start_0
    iget-object v0, p0, Lcom/sun/tools/javac/comp/MemberEnter$6;->this$0:Lcom/sun/tools/javac/comp/MemberEnter;

    iget-object v2, p0, Lcom/sun/tools/javac/comp/MemberEnter$6;->val$defaultValue:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    iget-object v3, p0, Lcom/sun/tools/javac/comp/MemberEnter$6;->val$localEnv:Lcom/sun/tools/javac/comp/Env;

    iget-object v4, p0, Lcom/sun/tools/javac/comp/MemberEnter$6;->val$m:Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    invoke-static {v0, v2, v3, v4}, Lcom/sun/tools/javac/comp/MemberEnter;->access$400(Lcom/sun/tools/javac/comp/MemberEnter;Lcom/sun/tools/javac/tree/JCTree$JCExpression;Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Symbol$MethodSymbol;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 823
    iget-object v0, p0, Lcom/sun/tools/javac/comp/MemberEnter$6;->this$0:Lcom/sun/tools/javac/comp/MemberEnter;

    invoke-static {v0}, Lcom/sun/tools/javac/comp/MemberEnter;->access$200(Lcom/sun/tools/javac/comp/MemberEnter;)Lcom/sun/tools/javac/util/Log;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/Log;->useSource(Ljavax/tools/JavaFileObject;)Ljavax/tools/JavaFileObject;

    .line 824
    return-void

    .line 823
    :catchall_0
    move-exception v0

    iget-object v2, p0, Lcom/sun/tools/javac/comp/MemberEnter$6;->this$0:Lcom/sun/tools/javac/comp/MemberEnter;

    invoke-static {v2}, Lcom/sun/tools/javac/comp/MemberEnter;->access$200(Lcom/sun/tools/javac/comp/MemberEnter;)Lcom/sun/tools/javac/util/Log;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sun/tools/javac/util/Log;->useSource(Ljavax/tools/JavaFileObject;)Ljavax/tools/JavaFileObject;

    .line 824
    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 815
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "annotate "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/MemberEnter$6;->val$m:Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/MemberEnter$6;->val$m:Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " default "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/MemberEnter$6;->val$defaultValue:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
