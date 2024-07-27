.class Lcom/sun/tools/javac/jvm/ClassReader$16;
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

    .line 1176
    iput-object p1, p0, Lcom/sun/tools/javac/jvm/ClassReader$16;->this$0:Lcom/sun/tools/javac/jvm/ClassReader;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sun/tools/javac/jvm/ClassReader$AttributeReader;-><init>(Lcom/sun/tools/javac/jvm/ClassReader;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/jvm/ClassFile$Version;Ljava/util/Set;)V

    return-void
.end method


# virtual methods
.method read(Lcom/sun/tools/javac/code/Symbol;I)V
    .registers 4

    .line 1178
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassReader$16;->this$0:Lcom/sun/tools/javac/jvm/ClassReader;

    invoke-virtual {v0, p1}, Lcom/sun/tools/javac/jvm/ClassReader;->attachParameterAnnotations(Lcom/sun/tools/javac/code/Symbol;)V

    .line 1179
    return-void
.end method
