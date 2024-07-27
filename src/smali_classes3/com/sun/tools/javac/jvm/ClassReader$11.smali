.class Lcom/sun/tools/javac/jvm/ClassReader$11;
.super Lcom/sun/tools/javac/jvm/ClassReader$AttributeReader;
.source "ClassReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/tools/javac/jvm/ClassReader;->initAttributeReaders()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/sun/tools/javac/jvm/ClassReader;


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/jvm/ClassReader;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/jvm/ClassFile$Version;Ljava/util/Set;)V
    .registers 5

    .line 1118
    iput-object p1, p0, Lcom/sun/tools/javac/jvm/ClassReader$11;->this$0:Lcom/sun/tools/javac/jvm/ClassReader;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sun/tools/javac/jvm/ClassReader$AttributeReader;-><init>(Lcom/sun/tools/javac/jvm/ClassReader;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/jvm/ClassFile$Version;Ljava/util/Set;)V

    return-void
.end method


# virtual methods
.method accepts(Lcom/sun/tools/javac/jvm/ClassReader$AttributeKind;)Z
    .registers 3

    .line 1121
    invoke-super {p0, p1}, Lcom/sun/tools/javac/jvm/ClassReader$AttributeReader;->accepts(Lcom/sun/tools/javac/jvm/ClassReader$AttributeKind;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassReader$11;->this$0:Lcom/sun/tools/javac/jvm/ClassReader;

    iget-boolean v0, v0, Lcom/sun/tools/javac/jvm/ClassReader;->allowGenerics:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method read(Lcom/sun/tools/javac/code/Symbol;I)V
    .registers 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1125
    iget v0, p1, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_3

    .line 1126
    check-cast p1, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    .line 1127
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassReader$11;->this$0:Lcom/sun/tools/javac/jvm/ClassReader;

    invoke-static {v0, v1}, Lcom/sun/tools/javac/jvm/ClassReader;->access$102(Lcom/sun/tools/javac/jvm/ClassReader;Z)Z

    .line 1129
    :try_start_0
    iget-object v0, p1, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->type:Lcom/sun/tools/javac/code/Type;

    check-cast v0, Lcom/sun/tools/javac/code/Type$ClassType;

    .line 1130
    iget-object v3, p0, Lcom/sun/tools/javac/jvm/ClassReader$11;->this$0:Lcom/sun/tools/javac/jvm/ClassReader;

    iget-object v3, v3, Lcom/sun/tools/javac/jvm/ClassReader;->currentOwner:Lcom/sun/tools/javac/code/Symbol;

    if-ne p1, v3, :cond_0

    :goto_0
    invoke-static {v1}, Lcom/sun/tools/javac/util/Assert;->check(Z)V

    .line 1131
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/ClassReader$11;->this$0:Lcom/sun/tools/javac/jvm/ClassReader;

    iget-object v3, p0, Lcom/sun/tools/javac/jvm/ClassReader$11;->this$0:Lcom/sun/tools/javac/jvm/ClassReader;

    invoke-virtual {v3}, Lcom/sun/tools/javac/jvm/ClassReader;->nextChar()C

    move-result v3

    invoke-virtual {v1, v3}, Lcom/sun/tools/javac/jvm/ClassReader;->readTypeParams(I)Lcom/sun/tools/javac/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/sun/tools/javac/code/Type$ClassType;->typarams_field:Lcom/sun/tools/javac/util/List;

    .line 1132
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/ClassReader$11;->this$0:Lcom/sun/tools/javac/jvm/ClassReader;

    invoke-virtual {v1}, Lcom/sun/tools/javac/jvm/ClassReader;->sigToType()Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    iput-object v1, v0, Lcom/sun/tools/javac/code/Type$ClassType;->supertype_field:Lcom/sun/tools/javac/code/Type;

    .line 1133
    new-instance v1, Lcom/sun/tools/javac/util/ListBuffer;

    invoke-direct {v1}, Lcom/sun/tools/javac/util/ListBuffer;-><init>()V

    .line 1134
    :goto_1
    iget-object v3, p0, Lcom/sun/tools/javac/jvm/ClassReader$11;->this$0:Lcom/sun/tools/javac/jvm/ClassReader;

    iget v3, v3, Lcom/sun/tools/javac/jvm/ClassReader;->sigp:I

    iget-object v4, p0, Lcom/sun/tools/javac/jvm/ClassReader$11;->this$0:Lcom/sun/tools/javac/jvm/ClassReader;

    iget v4, v4, Lcom/sun/tools/javac/jvm/ClassReader;->siglimit:I

    if-eq v3, v4, :cond_1

    iget-object v3, p0, Lcom/sun/tools/javac/jvm/ClassReader$11;->this$0:Lcom/sun/tools/javac/jvm/ClassReader;

    invoke-virtual {v3}, Lcom/sun/tools/javac/jvm/ClassReader;->sigToType()Lcom/sun/tools/javac/code/Type;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1137
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/sun/tools/javac/jvm/ClassReader$11;->this$0:Lcom/sun/tools/javac/jvm/ClassReader;

    invoke-static {v1, v2}, Lcom/sun/tools/javac/jvm/ClassReader;->access$102(Lcom/sun/tools/javac/jvm/ClassReader;Z)Z

    .line 1138
    throw v0

    :cond_0
    move v1, v2

    .line 1130
    goto :goto_0

    .line 1135
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Lcom/sun/tools/javac/util/ListBuffer;->toList()Lcom/sun/tools/javac/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/sun/tools/javac/code/Type$ClassType;->interfaces_field:Lcom/sun/tools/javac/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1137
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassReader$11;->this$0:Lcom/sun/tools/javac/jvm/ClassReader;

    invoke-static {v0, v2}, Lcom/sun/tools/javac/jvm/ClassReader;->access$102(Lcom/sun/tools/javac/jvm/ClassReader;Z)Z

    .line 1147
    :cond_2
    :goto_2
    return-void

    .line 1140
    :cond_3
    iget-object v0, p1, Lcom/sun/tools/javac/code/Symbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->getThrownTypes()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    .line 1141
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/ClassReader$11;->this$0:Lcom/sun/tools/javac/jvm/ClassReader;

    invoke-virtual {v1}, Lcom/sun/tools/javac/jvm/ClassReader;->nextChar()C

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sun/tools/javac/jvm/ClassReader;->readType(I)Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    iput-object v1, p1, Lcom/sun/tools/javac/code/Symbol;->type:Lcom/sun/tools/javac/code/Type;

    .line 1143
    iget v1, p1, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/16 v2, 0x10

    if-ne v1, v2, :cond_2

    iget-object v1, p1, Lcom/sun/tools/javac/code/Symbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Type;->getThrownTypes()Lcom/sun/tools/javac/util/List;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/tools/javac/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1144
    iget-object v1, p1, Lcom/sun/tools/javac/code/Symbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Type;->asMethodType()Lcom/sun/tools/javac/code/Type$MethodType;

    move-result-object v1

    iput-object v0, v1, Lcom/sun/tools/javac/code/Type$MethodType;->thrown:Lcom/sun/tools/javac/util/List;

    goto :goto_2
.end method
