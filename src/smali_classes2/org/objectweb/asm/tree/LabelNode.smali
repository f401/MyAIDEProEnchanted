.class public Lorg/objectweb/asm/tree/LabelNode;
.super Lorg/objectweb/asm/tree/AbstractInsnNode;


# instance fields
.field private label:Lorg/objectweb/asm/Label;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lorg/objectweb/asm/tree/AbstractInsnNode;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Lorg/objectweb/asm/Label;)V
    .registers 3

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lorg/objectweb/asm/tree/AbstractInsnNode;-><init>(I)V

    iput-object p1, p0, Lorg/objectweb/asm/tree/LabelNode;->label:Lorg/objectweb/asm/Label;

    return-void
.end method


# virtual methods
.method public accept(Lorg/objectweb/asm/MethodVisitor;)V
    .registers 3

    invoke-virtual {p0}, Lorg/objectweb/asm/tree/LabelNode;->getLabel()Lorg/objectweb/asm/Label;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/objectweb/asm/MethodVisitor;->visitLabel(Lorg/objectweb/asm/Label;)V

    return-void
.end method

.method public clone(Ljava/util/Map;)Lorg/objectweb/asm/tree/AbstractInsnNode;
    .registers 3

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/objectweb/asm/tree/AbstractInsnNode;

    return-object v0
.end method

.method public getLabel()Lorg/objectweb/asm/Label;
    .registers 2

    iget-object v0, p0, Lorg/objectweb/asm/tree/LabelNode;->label:Lorg/objectweb/asm/Label;

    if-nez v0, :cond_0

    new-instance v0, Lorg/objectweb/asm/Label;

    invoke-direct {v0}, Lorg/objectweb/asm/Label;-><init>()V

    iput-object v0, p0, Lorg/objectweb/asm/tree/LabelNode;->label:Lorg/objectweb/asm/Label;

    :cond_0
    iget-object v0, p0, Lorg/objectweb/asm/tree/LabelNode;->label:Lorg/objectweb/asm/Label;

    return-object v0
.end method

.method public getType()I
    .registers 2

    const/16 v0, 0x8

    return v0
.end method

.method public resetLabel()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/objectweb/asm/tree/LabelNode;->label:Lorg/objectweb/asm/Label;

    return-void
.end method
