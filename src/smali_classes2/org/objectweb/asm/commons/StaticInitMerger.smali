.class public Lorg/objectweb/asm/commons/StaticInitMerger;
.super Lorg/objectweb/asm/ClassVisitor;


# instance fields
.field private clinit:Lorg/objectweb/asm/MethodVisitor;

.field private counter:I

.field private name:Ljava/lang/String;

.field private final prefix:Ljava/lang/String;


# direct methods
.method protected constructor <init>(ILjava/lang/String;Lorg/objectweb/asm/ClassVisitor;)V
    .registers 4

    invoke-direct {p0, p1, p3}, Lorg/objectweb/asm/ClassVisitor;-><init>(ILorg/objectweb/asm/ClassVisitor;)V

    iput-object p2, p0, Lorg/objectweb/asm/commons/StaticInitMerger;->prefix:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/objectweb/asm/ClassVisitor;)V
    .registers 4

    const/high16 v0, 0x50000

    invoke-direct {p0, v0, p1, p2}, Lorg/objectweb/asm/commons/StaticInitMerger;-><init>(ILjava/lang/String;Lorg/objectweb/asm/ClassVisitor;)V

    return-void
.end method


# virtual methods
.method public visit(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 14

    iget-object v0, p0, Lorg/objectweb/asm/commons/StaticInitMerger;->cv:Lorg/objectweb/asm/ClassVisitor;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lorg/objectweb/asm/ClassVisitor;->visit(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    iput-object p3, p0, Lorg/objectweb/asm/commons/StaticInitMerger;->name:Ljava/lang/String;

    return-void
.end method

.method public visitEnd()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/objectweb/asm/commons/StaticInitMerger;->clinit:Lorg/objectweb/asm/MethodVisitor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/objectweb/asm/commons/StaticInitMerger;->clinit:Lorg/objectweb/asm/MethodVisitor;

    const/16 v1, 0xb1

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/MethodVisitor;->visitInsn(I)V

    iget-object v0, p0, Lorg/objectweb/asm/commons/StaticInitMerger;->clinit:Lorg/objectweb/asm/MethodVisitor;

    invoke-virtual {v0, v2, v2}, Lorg/objectweb/asm/MethodVisitor;->visitMaxs(II)V

    :cond_0
    iget-object v0, p0, Lorg/objectweb/asm/commons/StaticInitMerger;->cv:Lorg/objectweb/asm/ClassVisitor;

    invoke-virtual {v0}, Lorg/objectweb/asm/ClassVisitor;->visitEnd()V

    return-void
.end method

.method public visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/objectweb/asm/MethodVisitor;
    .registers 15

    const/4 v7, 0x0

    const/16 v1, 0xa

    const-string v0, "<clinit>"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Lorg/objectweb/asm/commons/StaticInitMerger;->prefix:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v2, p0, Lorg/objectweb/asm/commons/StaticInitMerger;->counter:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/objectweb/asm/commons/StaticInitMerger;->counter:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lorg/objectweb/asm/commons/StaticInitMerger;->cv:Lorg/objectweb/asm/ClassVisitor;

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/objectweb/asm/ClassVisitor;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/objectweb/asm/MethodVisitor;

    move-result-object v0

    iget-object v3, p0, Lorg/objectweb/asm/commons/StaticInitMerger;->clinit:Lorg/objectweb/asm/MethodVisitor;

    if-nez v3, :cond_0

    iget-object v3, p0, Lorg/objectweb/asm/commons/StaticInitMerger;->cv:Lorg/objectweb/asm/ClassVisitor;

    move v4, v1

    move-object v5, p2

    move-object v6, p3

    move-object v8, v7

    invoke-virtual/range {v3 .. v8}, Lorg/objectweb/asm/ClassVisitor;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/objectweb/asm/MethodVisitor;

    move-result-object v1

    iput-object v1, p0, Lorg/objectweb/asm/commons/StaticInitMerger;->clinit:Lorg/objectweb/asm/MethodVisitor;

    :cond_0
    iget-object v3, p0, Lorg/objectweb/asm/commons/StaticInitMerger;->clinit:Lorg/objectweb/asm/MethodVisitor;

    const/16 v4, 0xb8

    iget-object v5, p0, Lorg/objectweb/asm/commons/StaticInitMerger;->name:Ljava/lang/String;

    const/4 v8, 0x0

    move-object v6, v2

    move-object v7, p3

    invoke-virtual/range {v3 .. v8}, Lorg/objectweb/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/objectweb/asm/commons/StaticInitMerger;->cv:Lorg/objectweb/asm/ClassVisitor;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/objectweb/asm/ClassVisitor;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/objectweb/asm/MethodVisitor;

    move-result-object v0

    goto :goto_0
.end method
