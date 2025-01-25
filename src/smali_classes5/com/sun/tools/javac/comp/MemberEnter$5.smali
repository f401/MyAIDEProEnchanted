.class Lcom/sun/tools/javac/comp/MemberEnter$5;
.super Ljava/lang/Object;
.source "MemberEnter.java"

# interfaces
.implements Lcom/sun/tools/javac/comp/Annotate$Annotator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/tools/javac/comp/MemberEnter;->annotateLater(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Symbol;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/sun/tools/javac/comp/MemberEnter;

.field final val$annotations:Lcom/sun/tools/javac/util/List;

.field final val$localEnv:Lcom/sun/tools/javac/comp/Env;

.field final val$s:Lcom/sun/tools/javac/code/Symbol;


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/comp/MemberEnter;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/comp/Env;)V
    .registers 5

    .line 733
    iput-object p1, p0, Lcom/sun/tools/javac/comp/MemberEnter$5;->this$0:Lcom/sun/tools/javac/comp/MemberEnter;

    iput-object p2, p0, Lcom/sun/tools/javac/comp/MemberEnter$5;->val$annotations:Lcom/sun/tools/javac/util/List;

    iput-object p3, p0, Lcom/sun/tools/javac/comp/MemberEnter$5;->val$s:Lcom/sun/tools/javac/code/Symbol;

    iput-object p4, p0, Lcom/sun/tools/javac/comp/MemberEnter$5;->val$localEnv:Lcom/sun/tools/javac/comp/Env;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public enterAnnotation()V
    .registers 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 738
    iget-object v2, p0, Lcom/sun/tools/javac/comp/MemberEnter$5;->val$s:Lcom/sun/tools/javac/code/Symbol;

    iget v2, v2, Lcom/sun/tools/javac/code/Symbol;->kind:I

    if-eq v2, v1, :cond_e

    iget-object v2, p0, Lcom/sun/tools/javac/comp/MemberEnter$5;->val$s:Lcom/sun/tools/javac/code/Symbol;

    iget-object v2, v2, Lcom/sun/tools/javac/code/Symbol;->attributes_field:Lcom/sun/tools/javac/util/List;

    if-nez v2, :cond_f

    :cond_e
    move v0, v1

    :cond_f
    invoke-static {v0}, Lcom/sun/tools/javac/util/Assert;->check(Z)V

    .line 739
    iget-object v0, p0, Lcom/sun/tools/javac/comp/MemberEnter$5;->this$0:Lcom/sun/tools/javac/comp/MemberEnter;

    invoke-static {v0}, Lcom/sun/tools/javac/comp/MemberEnter;->access$200(Lcom/sun/tools/javac/comp/MemberEnter;)Lcom/sun/tools/javac/util/Log;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/tools/javac/comp/MemberEnter$5;->val$localEnv:Lcom/sun/tools/javac/comp/Env;

    iget-object v1, v1, Lcom/sun/tools/javac/comp/Env;->toplevel:Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object v1, v1, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->sourcefile:Ljavax/tools/JavaFileObject;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/Log;->useSource(Ljavax/tools/JavaFileObject;)Ljavax/tools/JavaFileObject;

    move-result-object v1

    .line 741
    :try_start_22
    iget-object v0, p0, Lcom/sun/tools/javac/comp/MemberEnter$5;->val$s:Lcom/sun/tools/javac/code/Symbol;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symbol;->attributes_field:Lcom/sun/tools/javac/util/List;

    if-eqz v0, :cond_5e

    iget-object v0, p0, Lcom/sun/tools/javac/comp/MemberEnter$5;->val$s:Lcom/sun/tools/javac/code/Symbol;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symbol;->attributes_field:Lcom/sun/tools/javac/util/List;

    .line 742
    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_5e

    iget-object v0, p0, Lcom/sun/tools/javac/comp/MemberEnter$5;->val$annotations:Lcom/sun/tools/javac/util/List;

    .line 743
    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 744
    iget-object v0, p0, Lcom/sun/tools/javac/comp/MemberEnter$5;->this$0:Lcom/sun/tools/javac/comp/MemberEnter;

    invoke-static {v0}, Lcom/sun/tools/javac/comp/MemberEnter;->access$200(Lcom/sun/tools/javac/comp/MemberEnter;)Lcom/sun/tools/javac/util/Log;

    move-result-object v2

    iget-object v0, p0, Lcom/sun/tools/javac/comp/MemberEnter$5;->val$annotations:Lcom/sun/tools/javac/util/List;

    iget-object v0, v0, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCAnnotation;

    iget v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCAnnotation;->pos:I

    iget-object v3, p0, Lcom/sun/tools/javac/comp/MemberEnter$5;->val$s:Lcom/sun/tools/javac/code/Symbol;

    .line 746
    invoke-static {v3}, Lcom/sun/tools/javac/code/Kinds;->kindName(Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/code/Kinds$KindName;

    move-result-object v3

    iget-object v4, p0, Lcom/sun/tools/javac/comp/MemberEnter$5;->val$s:Lcom/sun/tools/javac/code/Symbol;

    .line 744
    const-string v5, "already.annotated"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    const/4 v3, 0x1

    aput-object v4, v6, v3

    invoke-virtual {v2, v0, v5, v6}, Lcom/sun/tools/javac/util/Log;->error(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 747
    :cond_5e
    iget-object v0, p0, Lcom/sun/tools/javac/comp/MemberEnter$5;->this$0:Lcom/sun/tools/javac/comp/MemberEnter;

    iget-object v2, p0, Lcom/sun/tools/javac/comp/MemberEnter$5;->val$annotations:Lcom/sun/tools/javac/util/List;

    iget-object v3, p0, Lcom/sun/tools/javac/comp/MemberEnter$5;->val$localEnv:Lcom/sun/tools/javac/comp/Env;

    iget-object v4, p0, Lcom/sun/tools/javac/comp/MemberEnter$5;->val$s:Lcom/sun/tools/javac/code/Symbol;

    invoke-static {v0, v2, v3, v4}, Lcom/sun/tools/javac/comp/MemberEnter;->access$300(Lcom/sun/tools/javac/comp/MemberEnter;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Symbol;)V
    :try_end_69
    .catchall {:try_start_22 .. :try_end_69} :catchall_73

    .line 749
    iget-object v0, p0, Lcom/sun/tools/javac/comp/MemberEnter$5;->this$0:Lcom/sun/tools/javac/comp/MemberEnter;

    invoke-static {v0}, Lcom/sun/tools/javac/comp/MemberEnter;->access$200(Lcom/sun/tools/javac/comp/MemberEnter;)Lcom/sun/tools/javac/util/Log;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/Log;->useSource(Ljavax/tools/JavaFileObject;)Ljavax/tools/JavaFileObject;

    .line 750
    return-void

    .line 749
    :catchall_73
    move-exception v0

    iget-object v2, p0, Lcom/sun/tools/javac/comp/MemberEnter$5;->this$0:Lcom/sun/tools/javac/comp/MemberEnter;

    invoke-static {v2}, Lcom/sun/tools/javac/comp/MemberEnter;->access$200(Lcom/sun/tools/javac/comp/MemberEnter;)Lcom/sun/tools/javac/util/Log;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sun/tools/javac/util/Log;->useSource(Ljavax/tools/JavaFileObject;)Ljavax/tools/JavaFileObject;

    .line 750
    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 735
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "annotate "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/MemberEnter$5;->val$annotations:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " onto "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/MemberEnter$5;->val$s:Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/MemberEnter$5;->val$s:Lcom/sun/tools/javac/code/Symbol;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
