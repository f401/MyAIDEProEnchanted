.class Lcom/sun/tools/javac/jvm/ClassReader$5;
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

    .line 1038
    iput-object p1, p0, Lcom/sun/tools/javac/jvm/ClassReader$5;->this$0:Lcom/sun/tools/javac/jvm/ClassReader;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sun/tools/javac/jvm/ClassReader$AttributeReader;-><init>(Lcom/sun/tools/javac/jvm/ClassReader;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/jvm/ClassFile$Version;Ljava/util/Set;)V

    return-void
.end method


# virtual methods
.method read(Lcom/sun/tools/javac/code/Symbol;I)V
    .registers 8

    .line 1040
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassReader$5;->this$0:Lcom/sun/tools/javac/jvm/ClassReader;

    invoke-virtual {v0}, Lcom/sun/tools/javac/jvm/ClassReader;->nextChar()C

    move-result v2

    .line 1041
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    .line 1042
    const/4 v1, 0x0

    :goto_b
    if-ge v1, v2, :cond_20

    .line 1043
    iget-object v3, p0, Lcom/sun/tools/javac/jvm/ClassReader$5;->this$0:Lcom/sun/tools/javac/jvm/ClassReader;

    invoke-virtual {v3}, Lcom/sun/tools/javac/jvm/ClassReader;->nextChar()C

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sun/tools/javac/jvm/ClassReader;->readClassSymbol(I)Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v3

    iget-object v3, v3, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0, v3}, Lcom/sun/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    .line 1042
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 1044
    :cond_20
    iget-object v1, p1, Lcom/sun/tools/javac/code/Symbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Type;->getThrownTypes()Lcom/sun/tools/javac/util/List;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/tools/javac/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_38

    .line 1045
    iget-object v1, p1, Lcom/sun/tools/javac/code/Symbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Type;->asMethodType()Lcom/sun/tools/javac/code/Type$MethodType;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->reverse()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    iput-object v0, v1, Lcom/sun/tools/javac/code/Type$MethodType;->thrown:Lcom/sun/tools/javac/util/List;

    .line 1046
    :cond_38
    return-void
.end method
