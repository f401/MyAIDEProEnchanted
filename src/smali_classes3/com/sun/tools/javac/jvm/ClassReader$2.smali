.class Lcom/sun/tools/javac/jvm/ClassReader$2;
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

    .line 1014
    iput-object p1, p0, Lcom/sun/tools/javac/jvm/ClassReader$2;->this$0:Lcom/sun/tools/javac/jvm/ClassReader;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sun/tools/javac/jvm/ClassReader$AttributeReader;-><init>(Lcom/sun/tools/javac/jvm/ClassReader;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/jvm/ClassFile$Version;Ljava/util/Set;)V

    return-void
.end method


# virtual methods
.method read(Lcom/sun/tools/javac/code/Symbol;I)V
    .registers 5

    .line 1016
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassReader$2;->this$0:Lcom/sun/tools/javac/jvm/ClassReader;

    iget-boolean v0, v0, Lcom/sun/tools/javac/jvm/ClassReader;->readAllOfClassFile:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassReader$2;->this$0:Lcom/sun/tools/javac/jvm/ClassReader;

    iget-boolean v0, v0, Lcom/sun/tools/javac/jvm/ClassReader;->saveParameterNames:Z

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, p1

    .line 1017
    check-cast v0, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;

    iget-object v1, p0, Lcom/sun/tools/javac/jvm/ClassReader$2;->this$0:Lcom/sun/tools/javac/jvm/ClassReader;

    invoke-virtual {v1, p1}, Lcom/sun/tools/javac/jvm/ClassReader;->readCode(Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/jvm/Code;

    move-result-object v1

    iput-object v1, v0, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->code:Lcom/sun/tools/javac/jvm/Code;

    .line 1020
    :goto_0
    return-void

    .line 1019
    :cond_1
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassReader$2;->this$0:Lcom/sun/tools/javac/jvm/ClassReader;

    iget v1, v0, Lcom/sun/tools/javac/jvm/ClassReader;->bp:I

    add-int/2addr v1, p2

    iput v1, v0, Lcom/sun/tools/javac/jvm/ClassReader;->bp:I

    goto :goto_0
.end method
