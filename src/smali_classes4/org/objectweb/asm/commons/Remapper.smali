.class public abstract Lorg/objectweb/asm/commons/Remapper;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private mapType(Lorg/objectweb/asm/Type;)Lorg/objectweb/asm/Type;
    .registers 6

    invoke-virtual {p1}, Lorg/objectweb/asm/Type;->getSort()I

    move-result v0

    packed-switch v0, :pswitch_data_52

    :cond_7
    :goto_7
    return-object p1

    :pswitch_8  #0x9
    invoke-virtual {p1}, Lorg/objectweb/asm/Type;->getElementType()Lorg/objectweb/asm/Type;

    move-result-object v0

    invoke-virtual {v0}, Lorg/objectweb/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/Remapper;->mapDesc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_15
    invoke-virtual {p1}, Lorg/objectweb/asm/Type;->getDimensions()I

    move-result v2

    if-ge v1, v2, :cond_31

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v3, 0x5b

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    :cond_31
    invoke-static {v0}, Lorg/objectweb/asm/Type;->getType(Ljava/lang/String;)Lorg/objectweb/asm/Type;

    move-result-object p1

    goto :goto_7

    :pswitch_36  #0xa
    invoke-virtual {p1}, Lorg/objectweb/asm/Type;->getInternalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/Remapper;->map(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-static {v0}, Lorg/objectweb/asm/Type;->getObjectType(Ljava/lang/String;)Lorg/objectweb/asm/Type;

    move-result-object p1

    goto :goto_7

    :pswitch_45  #0xb
    invoke-virtual {p1}, Lorg/objectweb/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/Remapper;->mapMethodDesc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/objectweb/asm/Type;->getMethodType(Ljava/lang/String;)Lorg/objectweb/asm/Type;

    move-result-object p1

    goto :goto_7

    :pswitch_data_52
    .packed-switch 0x9
        :pswitch_8  #00000009
        :pswitch_36  #0000000a
        :pswitch_45  #0000000b
    .end packed-switch
.end method


# virtual methods
.method protected createRemappingSignatureAdapter(Lorg/objectweb/asm/signature/SignatureVisitor;)Lorg/objectweb/asm/signature/SignatureVisitor;
    .registers 3

    new-instance v0, Lorg/objectweb/asm/commons/RemappingSignatureAdapter;

    invoke-direct {v0, p1, p0}, Lorg/objectweb/asm/commons/RemappingSignatureAdapter;-><init>(Lorg/objectweb/asm/signature/SignatureVisitor;Lorg/objectweb/asm/commons/Remapper;)V

    return-object v0
.end method

.method public map(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    return-object p1
.end method

.method public mapDesc(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    invoke-static {p1}, Lorg/objectweb/asm/Type;->getType(Ljava/lang/String;)Lorg/objectweb/asm/Type;

    move-result-object v2

    invoke-virtual {v2}, Lorg/objectweb/asm/Type;->getSort()I

    move-result v0

    packed-switch v0, :pswitch_data_5c

    :cond_b
    :goto_b
    return-object p1

    :pswitch_c  #0x9
    invoke-virtual {v2}, Lorg/objectweb/asm/Type;->getElementType()Lorg/objectweb/asm/Type;

    move-result-object v0

    invoke-virtual {v0}, Lorg/objectweb/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/Remapper;->mapDesc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    :goto_19
    invoke-virtual {v2}, Lorg/objectweb/asm/Type;->getDimensions()I

    move-result v3

    if-ge v0, v3, :cond_35

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v4, 0x5b

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    :cond_35
    move-object p1, v1

    goto :goto_b

    :pswitch_37  #0xa
    invoke-virtual {v2}, Lorg/objectweb/asm/Type;->getInternalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/Remapper;->map(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v2, 0x4c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x3b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_b

    nop

    :pswitch_data_5c
    .packed-switch 0x9
        :pswitch_c  #00000009
        :pswitch_37  #0000000a
    .end packed-switch
.end method

.method public mapFieldName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    return-object p2
.end method

.method public mapInvokeDynamicMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    return-object p1
.end method

.method public mapMethodDesc(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const-string v0, "()V"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    :goto_8
    return-object p1

    :cond_9
    invoke-static {p1}, Lorg/objectweb/asm/Type;->getArgumentTypes(Ljava/lang/String;)[Lorg/objectweb/asm/Type;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v0, "("

    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_15
    array-length v3, v1

    if-ge v0, v3, :cond_28

    aget-object v3, v1, v0

    invoke-virtual {v3}, Lorg/objectweb/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/objectweb/asm/commons/Remapper;->mapDesc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    :cond_28
    invoke-static {p1}, Lorg/objectweb/asm/Type;->getReturnType(Ljava/lang/String;)Lorg/objectweb/asm/Type;

    move-result-object v0

    sget-object v1, Lorg/objectweb/asm/Type;->VOID_TYPE:Lorg/objectweb/asm/Type;

    if-ne v0, v1, :cond_3a

    const-string v0, ")V"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_8

    :cond_3a
    const/16 v1, 0x29

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v0}, Lorg/objectweb/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/Remapper;->mapDesc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_8
.end method

.method public mapMethodName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    return-object p2
.end method

.method public mapSignature(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 6

    if-nez p1, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    new-instance v0, Lorg/objectweb/asm/signature/SignatureReader;

    invoke-direct {v0, p1}, Lorg/objectweb/asm/signature/SignatureReader;-><init>(Ljava/lang/String;)V

    new-instance v1, Lorg/objectweb/asm/signature/SignatureWriter;

    invoke-direct {v1}, Lorg/objectweb/asm/signature/SignatureWriter;-><init>()V

    invoke-virtual {p0, v1}, Lorg/objectweb/asm/commons/Remapper;->createRemappingSignatureAdapter(Lorg/objectweb/asm/signature/SignatureVisitor;)Lorg/objectweb/asm/signature/SignatureVisitor;

    move-result-object v2

    if-eqz p2, :cond_1c

    invoke-virtual {v0, v2}, Lorg/objectweb/asm/signature/SignatureReader;->acceptType(Lorg/objectweb/asm/signature/SignatureVisitor;)V

    :goto_17
    invoke-virtual {v1}, Lorg/objectweb/asm/signature/SignatureWriter;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_1c
    invoke-virtual {v0, v2}, Lorg/objectweb/asm/signature/SignatureReader;->accept(Lorg/objectweb/asm/signature/SignatureVisitor;)V

    goto :goto_17
.end method

.method public mapType(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    if-nez p1, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    invoke-static {p1}, Lorg/objectweb/asm/Type;->getObjectType(Ljava/lang/String;)Lorg/objectweb/asm/Type;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/Remapper;->mapType(Lorg/objectweb/asm/Type;)Lorg/objectweb/asm/Type;

    move-result-object v0

    invoke-virtual {v0}, Lorg/objectweb/asm/Type;->getInternalName()Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method public mapTypes([Ljava/lang/String;)[Ljava/lang/String;
    .registers 8

    const/4 v4, 0x0

    const/4 v0, 0x0

    move-object v2, v0

    move v3, v4

    move v5, v4

    :goto_5
    array-length v0, p1

    if-ge v5, v0, :cond_27

    aget-object v0, p1, v5

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/Remapper;->map(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1b

    if-nez v2, :cond_1b

    array-length v2, p1

    new-array v2, v2, [Ljava/lang/String;

    if-lez v5, :cond_1a

    invoke-static {p1, v4, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1a
    const/4 v3, 0x1

    :cond_1b
    if-eqz v3, :cond_21

    if-nez v1, :cond_25

    :goto_1f
    aput-object v0, v2, v5

    :cond_21
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_5

    :cond_25
    move-object v0, v1

    goto :goto_1f

    :cond_27
    if-eqz v3, :cond_2a

    move-object p1, v2

    :cond_2a
    return-object p1
.end method

.method public mapValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    instance-of v0, p1, Lorg/objectweb/asm/Type;

    if-eqz v0, :cond_b

    check-cast p1, Lorg/objectweb/asm/Type;

    invoke-direct {p0, p1}, Lorg/objectweb/asm/commons/Remapper;->mapType(Lorg/objectweb/asm/Type;)Lorg/objectweb/asm/Type;

    move-result-object p1

    :cond_a
    :goto_a
    return-object p1

    :cond_b
    instance-of v0, p1, Lorg/objectweb/asm/Handle;

    if-eqz v0, :cond_a

    check-cast p1, Lorg/objectweb/asm/Handle;

    new-instance v0, Lorg/objectweb/asm/Handle;

    invoke-virtual {p1}, Lorg/objectweb/asm/Handle;->getTag()I

    move-result v1

    invoke-virtual {p1}, Lorg/objectweb/asm/Handle;->getOwner()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/objectweb/asm/commons/Remapper;->mapType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/objectweb/asm/Handle;->getOwner()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lorg/objectweb/asm/Handle;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lorg/objectweb/asm/Handle;->getDesc()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v3, v4, v5}, Lorg/objectweb/asm/commons/Remapper;->mapMethodName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lorg/objectweb/asm/Handle;->getDesc()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/objectweb/asm/commons/Remapper;->mapMethodDesc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/objectweb/asm/Handle;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object p1, v0

    goto :goto_a
.end method
