.class public Lorg/objectweb/asm/tree/MultiANewArrayInsnNode;
.super Lorg/objectweb/asm/tree/AbstractInsnNode;


# instance fields
.field public desc:Ljava/lang/String;

.field public dims:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 4

    const/16 v0, 0xc5

    invoke-direct {p0, v0}, Lorg/objectweb/asm/tree/AbstractInsnNode;-><init>(I)V

    iput-object p1, p0, Lorg/objectweb/asm/tree/MultiANewArrayInsnNode;->desc:Ljava/lang/String;

    iput p2, p0, Lorg/objectweb/asm/tree/MultiANewArrayInsnNode;->dims:I

    return-void
.end method


# virtual methods
.method public accept(Lorg/objectweb/asm/MethodVisitor;)V
    .registers 4

    iget-object v0, p0, Lorg/objectweb/asm/tree/MultiANewArrayInsnNode;->desc:Ljava/lang/String;

    iget v1, p0, Lorg/objectweb/asm/tree/MultiANewArrayInsnNode;->dims:I

    invoke-virtual {p1, v0, v1}, Lorg/objectweb/asm/MethodVisitor;->visitMultiANewArrayInsn(Ljava/lang/String;I)V

    invoke-virtual {p0, p1}, Lorg/objectweb/asm/tree/MultiANewArrayInsnNode;->acceptAnnotations(Lorg/objectweb/asm/MethodVisitor;)V

    return-void
.end method

.method public clone(Ljava/util/Map;)Lorg/objectweb/asm/tree/AbstractInsnNode;
    .registers 5

    new-instance v0, Lorg/objectweb/asm/tree/MultiANewArrayInsnNode;

    iget-object v1, p0, Lorg/objectweb/asm/tree/MultiANewArrayInsnNode;->desc:Ljava/lang/String;

    iget v2, p0, Lorg/objectweb/asm/tree/MultiANewArrayInsnNode;->dims:I

    invoke-direct {v0, v1, v2}, Lorg/objectweb/asm/tree/MultiANewArrayInsnNode;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, p0}, Lorg/objectweb/asm/tree/MultiANewArrayInsnNode;->cloneAnnotations(Lorg/objectweb/asm/tree/AbstractInsnNode;)Lorg/objectweb/asm/tree/AbstractInsnNode;

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .registers 2

    const/16 v0, 0xd

    return v0
.end method
