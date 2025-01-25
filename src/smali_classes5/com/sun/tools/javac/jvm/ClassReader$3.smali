.class Lcom/sun/tools/javac/jvm/ClassReader$3;
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

    .line 1023
    iput-object p1, p0, Lcom/sun/tools/javac/jvm/ClassReader$3;->this$0:Lcom/sun/tools/javac/jvm/ClassReader;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sun/tools/javac/jvm/ClassReader$AttributeReader;-><init>(Lcom/sun/tools/javac/jvm/ClassReader;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/jvm/ClassFile$Version;Ljava/util/Set;)V

    return-void
.end method


# virtual methods
.method read(Lcom/sun/tools/javac/code/Symbol;I)V
    .registers 9

    .line 1025
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassReader$3;->this$0:Lcom/sun/tools/javac/jvm/ClassReader;

    invoke-virtual {v0}, Lcom/sun/tools/javac/jvm/ClassReader;->nextChar()C

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/jvm/ClassReader;->readPool(I)Ljava/lang/Object;

    move-result-object v0

    .line 1027
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Symbol;->flags()J

    move-result-wide v2

    const-wide/16 v4, 0x10

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1c

    .line 1028
    check-cast p1, Lcom/sun/tools/javac/code/Symbol$VarSymbol;

    invoke-virtual {p1, v0}, Lcom/sun/tools/javac/code/Symbol$VarSymbol;->setData(Ljava/lang/Object;)V

    .line 1029
    :cond_1c
    return-void
.end method
