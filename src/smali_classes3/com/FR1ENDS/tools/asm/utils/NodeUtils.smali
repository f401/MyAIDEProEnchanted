.class public Lcom/FR1ENDS/tools/asm/utils/NodeUtils;
.super Ljava/lang/Object;
.source "NodeUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generateIntPush(I)Lorg/objectweb/asm/tree/AbstractInsnNode;
    .registers 3

    .line 22
    new-instance v0, Lorg/objectweb/asm/tree/LdcInsnNode;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p0}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {v0, v1}, Lorg/objectweb/asm/tree/LdcInsnNode;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static getMethod(Lorg/objectweb/asm/tree/ClassNode;Ljava/lang/String;)Lorg/objectweb/asm/tree/MethodNode;
    .registers 5

    .line 16
    iget-object v0, p0, Lorg/objectweb/asm/tree/ClassNode;->methods:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 18
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 19
    const/4 v0, 0x0

    check-cast v0, Lorg/objectweb/asm/tree/MethodNode;

    :goto_0
    return-object v0

    .line 16
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/objectweb/asm/tree/MethodNode;

    .line 17
    iget-object v2, v0, Lorg/objectweb/asm/tree/MethodNode;->name:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0
.end method

.method public static nullValueForType(Lorg/objectweb/asm/Type;)Lorg/objectweb/asm/tree/AbstractInsnNode;
    .registers 3

    .line 25
    invoke-virtual {p0}, Lorg/objectweb/asm/Type;->getSort()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 42
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 31
    :pswitch_0
    new-instance v0, Lorg/objectweb/asm/tree/InsnNode;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/objectweb/asm/tree/InsnNode;-><init>(I)V

    .line 40
    :goto_0
    return-object v0

    .line 33
    :pswitch_1
    new-instance v0, Lorg/objectweb/asm/tree/InsnNode;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Lorg/objectweb/asm/tree/InsnNode;-><init>(I)V

    goto :goto_0

    .line 35
    :pswitch_2
    new-instance v0, Lorg/objectweb/asm/tree/InsnNode;

    const/16 v1, 0xe

    invoke-direct {v0, v1}, Lorg/objectweb/asm/tree/InsnNode;-><init>(I)V

    goto :goto_0

    .line 37
    :pswitch_3
    new-instance v0, Lorg/objectweb/asm/tree/InsnNode;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lorg/objectweb/asm/tree/InsnNode;-><init>(I)V

    goto :goto_0

    .line 40
    :pswitch_4
    new-instance v0, Lorg/objectweb/asm/tree/InsnNode;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/objectweb/asm/tree/InsnNode;-><init>(I)V

    goto :goto_0

    .line 25
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method
