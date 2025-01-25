.class Lcom/sun/tools/javac/jvm/ClassReader$10;
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

    .line 1110
    iput-object p1, p0, Lcom/sun/tools/javac/jvm/ClassReader$10;->this$0:Lcom/sun/tools/javac/jvm/ClassReader;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sun/tools/javac/jvm/ClassReader$AttributeReader;-><init>(Lcom/sun/tools/javac/jvm/ClassReader;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/jvm/ClassFile$Version;Ljava/util/Set;)V

    return-void
.end method


# virtual methods
.method read(Lcom/sun/tools/javac/code/Symbol;I)V
    .registers 5

    .line 1112
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassReader$10;->this$0:Lcom/sun/tools/javac/jvm/ClassReader;

    iget v0, v0, Lcom/sun/tools/javac/jvm/ClassReader;->bp:I

    .line 1113
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/ClassReader$10;->this$0:Lcom/sun/tools/javac/jvm/ClassReader;

    invoke-virtual {v1, p1}, Lcom/sun/tools/javac/jvm/ClassReader;->readEnclosingMethodAttr(Lcom/sun/tools/javac/code/Symbol;)V

    .line 1114
    iget-object v1, p0, Lcom/sun/tools/javac/jvm/ClassReader$10;->this$0:Lcom/sun/tools/javac/jvm/ClassReader;

    add-int/2addr v0, p2

    iput v0, v1, Lcom/sun/tools/javac/jvm/ClassReader;->bp:I

    .line 1115
    return-void
.end method
