.class Lcom/sun/tools/javac/jvm/ClassReader$18;
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

    .line 1191
    iput-object p1, p0, Lcom/sun/tools/javac/jvm/ClassReader$18;->this$0:Lcom/sun/tools/javac/jvm/ClassReader;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sun/tools/javac/jvm/ClassReader$AttributeReader;-><init>(Lcom/sun/tools/javac/jvm/ClassReader;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/jvm/ClassFile$Version;Ljava/util/Set;)V

    return-void
.end method


# virtual methods
.method read(Lcom/sun/tools/javac/code/Symbol;I)V
    .registers 7

    .line 1193
    iget-wide v0, p1, Lcom/sun/tools/javac/code/Symbol;->flags_field:J

    const-wide v2, 0x80000000L

    or-long/2addr v0, v2

    iput-wide v0, p1, Lcom/sun/tools/javac/code/Symbol;->flags_field:J

    .line 1194
    iget-object v0, p0, Lcom/sun/tools/javac/jvm/ClassReader$18;->this$0:Lcom/sun/tools/javac/jvm/ClassReader;

    iget-boolean v0, v0, Lcom/sun/tools/javac/jvm/ClassReader;->allowGenerics:Z

    if-nez v0, :cond_17

    .line 1195
    iget-wide v0, p1, Lcom/sun/tools/javac/code/Symbol;->flags_field:J

    const-wide/16 v2, -0x1001

    and-long/2addr v0, v2

    iput-wide v0, p1, Lcom/sun/tools/javac/code/Symbol;->flags_field:J

    .line 1196
    :cond_17
    return-void
.end method
