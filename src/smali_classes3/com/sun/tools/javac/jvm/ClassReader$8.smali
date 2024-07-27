.class Lcom/sun/tools/javac/jvm/ClassReader$8;
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

    .line 1092
    iput-object p1, p0, Lcom/sun/tools/javac/jvm/ClassReader$8;->this$0:Lcom/sun/tools/javac/jvm/ClassReader;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sun/tools/javac/jvm/ClassReader$AttributeReader;-><init>(Lcom/sun/tools/javac/jvm/ClassReader;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/jvm/ClassFile$Version;Ljava/util/Set;)V

    return-void
.end method


# virtual methods
.method read(Lcom/sun/tools/javac/code/Symbol;I)V
    .registers 6

    .line 1094
    check-cast p1, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    .line 1095
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassReader$8;->this$0:Lcom/sun/tools/javac/jvm/ClassReader;

    invoke-virtual {v0}, Lcom/sun/tools/javac/jvm/ClassReader;->nextChar()C

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/ClassReader;->readName(I)Lcom/sun/tools/javac/util/Name;

    move-result-object v0

    .line 1096
    new-instance v1, Lcom/sun/tools/javac/jvm/ClassReader$SourceFileObject;

    iget-object v2, p1, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->flatname:Lcom/sun/tools/javac/util/Name;

    invoke-direct {v1, v0, v2}, Lcom/sun/tools/javac/jvm/ClassReader$SourceFileObject;-><init>(Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/util/Name;)V

    iput-object v1, p1, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->sourcefile:Ljavax/tools/JavaFileObject;

    .line 1097
    return-void
.end method
