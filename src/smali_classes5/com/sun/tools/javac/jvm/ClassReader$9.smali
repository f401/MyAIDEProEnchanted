.class Lcom/sun/tools/javac/jvm/ClassReader$9;
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

    .line 1100
    iput-object p1, p0, Lcom/sun/tools/javac/jvm/ClassReader$9;->this$0:Lcom/sun/tools/javac/jvm/ClassReader;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sun/tools/javac/jvm/ClassReader$AttributeReader;-><init>(Lcom/sun/tools/javac/jvm/ClassReader;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/jvm/ClassFile$Version;Ljava/util/Set;)V

    return-void
.end method


# virtual methods
.method read(Lcom/sun/tools/javac/code/Symbol;I)V
    .registers 7

    .line 1103
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassReader$9;->this$0:Lcom/sun/tools/javac/jvm/ClassReader;

    iget-boolean v0, v0, Lcom/sun/tools/javac/jvm/ClassReader;->allowGenerics:Z

    if-nez v0, :cond_14

    iget-wide v0, p1, Lcom/sun/tools/javac/code/Symbol;->flags_field:J

    const-wide v2, 0x80000000L

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1b

    .line 1104
    :cond_14
    iget-wide v0, p1, Lcom/sun/tools/javac/code/Symbol;->flags_field:J

    const-wide/16 v2, 0x1000

    or-long/2addr v0, v2

    iput-wide v0, p1, Lcom/sun/tools/javac/code/Symbol;->flags_field:J

    .line 1105
    :cond_1b
    return-void
.end method
