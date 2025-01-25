.class public Lorg/objectweb/asm/commons/AnalyzerAdapter;
.super Lorg/objectweb/asm/MethodVisitor;


# static fields
.field static class$org$objectweb$asm$commons$AnalyzerAdapter:Ljava/lang/Class;


# instance fields
.field private labels:Ljava/util/List;

.field public locals:Ljava/util/List;

.field private maxLocals:I

.field private maxStack:I

.field private owner:Ljava/lang/String;

.field public stack:Ljava/util/List;

.field public uninitializedTypes:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "org.objectweb.asm.commons.AnalyzerAdapter"

    invoke-static {v0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->class$org$objectweb$asm$commons$AnalyzerAdapter:Ljava/lang/Class;

    return-void
.end method

.method protected constructor <init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Lorg/objectweb/asm/MethodVisitor;)V
    .registers 11

    invoke-direct {p0, p1, p6}, Lorg/objectweb/asm/MethodVisitor;-><init>(ILorg/objectweb/asm/MethodVisitor;)V

    iput-object p2, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->owner:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->locals:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->stack:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->uninitializedTypes:Ljava/util/Map;

    and-int/lit8 v0, p3, 0x8

    if-nez v0, :cond_2d

    const-string v0, "<init>"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c

    iget-object v0, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->locals:Ljava/util/List;

    sget-object v1, Lorg/objectweb/asm/Opcodes;->UNINITIALIZED_THIS:Ljava/lang/Integer;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2d
    :goto_2d
    invoke-static {p5}, Lorg/objectweb/asm/Type;->getArgumentTypes(Ljava/lang/String;)[Lorg/objectweb/asm/Type;

    move-result-object v1

    const/4 v0, 0x0

    :goto_32
    array-length v2, v1

    if-ge v0, v2, :cond_8c

    aget-object v2, v1, v0

    invoke-virtual {v2}, Lorg/objectweb/asm/Type;->getSort()I

    move-result v2

    packed-switch v2, :pswitch_data_96

    iget-object v2, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->locals:Ljava/util/List;

    aget-object v3, v1, v0

    invoke-virtual {v3}, Lorg/objectweb/asm/Type;->getInternalName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_49
    add-int/lit8 v0, v0, 0x1

    goto :goto_32

    :cond_4c
    iget-object v0, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->locals:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2d

    :pswitch_52  #0x1, 0x2, 0x3, 0x4, 0x5
    iget-object v2, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->locals:Ljava/util/List;

    sget-object v3, Lorg/objectweb/asm/Opcodes;->INTEGER:Ljava/lang/Integer;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_49

    :pswitch_5a  #0x6
    iget-object v2, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->locals:Ljava/util/List;

    sget-object v3, Lorg/objectweb/asm/Opcodes;->FLOAT:Ljava/lang/Integer;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_49

    :pswitch_62  #0x7
    iget-object v2, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->locals:Ljava/util/List;

    sget-object v3, Lorg/objectweb/asm/Opcodes;->LONG:Ljava/lang/Integer;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->locals:Ljava/util/List;

    sget-object v3, Lorg/objectweb/asm/Opcodes;->TOP:Ljava/lang/Integer;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_49

    :pswitch_71  #0x8
    iget-object v2, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->locals:Ljava/util/List;

    sget-object v3, Lorg/objectweb/asm/Opcodes;->DOUBLE:Ljava/lang/Integer;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->locals:Ljava/util/List;

    sget-object v3, Lorg/objectweb/asm/Opcodes;->TOP:Ljava/lang/Integer;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_49

    :pswitch_80  #0x9
    iget-object v2, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->locals:Ljava/util/List;

    aget-object v3, v1, v0

    invoke-virtual {v3}, Lorg/objectweb/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_49

    :cond_8c
    iget-object v0, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->locals:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->maxLocals:I

    return-void

    nop

    :pswitch_data_96
    .packed-switch 0x1
        :pswitch_52  #00000001
        :pswitch_52  #00000002
        :pswitch_52  #00000003
        :pswitch_52  #00000004
        :pswitch_52  #00000005
        :pswitch_5a  #00000006
        :pswitch_62  #00000007
        :pswitch_71  #00000008
        :pswitch_80  #00000009
    .end packed-switch
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lorg/objectweb/asm/MethodVisitor;)V
    .registers 13

    const/high16 v1, 0x50000

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/objectweb/asm/commons/AnalyzerAdapter;-><init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Lorg/objectweb/asm/MethodVisitor;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Lorg/objectweb/asm/commons/AnalyzerAdapter;->class$org$objectweb$asm$commons$AnalyzerAdapter:Ljava/lang/Class;

    if-eq v0, v1, :cond_19

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_19
    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .registers 3

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    return-object v0

    :catch_5
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private doVisitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 14

    const/4 v7, 0x0

    const/4 v6, 0x0

    iget-object v0, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/objectweb/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_10
    iget-object v0, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->locals:Ljava/util/List;

    if-nez v0, :cond_17

    iput-object v7, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->labels:Ljava/util/List;

    :goto_16
    return-void

    :cond_17
    invoke-direct {p0, p4}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->pop(Ljava/lang/String;)V

    const/16 v0, 0xb8

    if-eq p1, v0, :cond_6c

    invoke-direct {p0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->pop()Ljava/lang/Object;

    move-result-object v2

    const/16 v0, 0xb7

    if-ne p1, v0, :cond_6c

    invoke-virtual {p3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x3c

    if-ne v0, v1, :cond_6c

    sget-object v0, Lorg/objectweb/asm/Opcodes;->UNINITIALIZED_THIS:Ljava/lang/Integer;

    if-ne v2, v0, :cond_4d

    iget-object v0, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->owner:Ljava/lang/String;

    :goto_34
    move v1, v6

    :goto_35
    iget-object v3, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->locals:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_54

    iget-object v3, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->locals:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_4a

    iget-object v3, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->locals:Ljava/util/List;

    invoke-interface {v3, v1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_4a
    add-int/lit8 v1, v1, 0x1

    goto :goto_35

    :cond_4d
    iget-object v0, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->uninitializedTypes:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_34

    :cond_54
    :goto_54
    iget-object v1, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->stack:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v6, v1, :cond_6c

    iget-object v1, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->stack:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v2, :cond_69

    iget-object v1, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->stack:Ljava/util/List;

    invoke-interface {v1, v6, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_69
    add-int/lit8 v6, v6, 0x1

    goto :goto_54

    :cond_6c
    invoke-direct {p0, p4}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->pushDesc(Ljava/lang/String;)V

    iput-object v7, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->labels:Ljava/util/List;

    goto :goto_16
.end method

.method private execute(IILjava/lang/String;)V
    .registers 10

    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x4

    const/4 v1, 0x2

    const/4 v2, 0x1

    iget-object v0, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->locals:Ljava/util/List;

    if-nez v0, :cond_c

    iput-object v4, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->labels:Ljava/util/List;

    :goto_b
    return-void

    :cond_c
    packed-switch p1, :pswitch_data_2be

    :pswitch_f  #0x12, 0x13, 0x14, 0x1a, 0x1b, 0x1c, 0x1d, 0x1e, 0x1f, 0x20, 0x21, 0x22, 0x23, 0x24, 0x25, 0x26, 0x27, 0x28, 0x29, 0x2a, 0x2b, 0x2c, 0x2d, 0x3b, 0x3c, 0x3d, 0x3e, 0x3f, 0x40, 0x41, 0x42, 0x43, 0x44, 0x45, 0x46, 0x47, 0x48, 0x49, 0x4a, 0x4b, 0x4c, 0x4d, 0x4e, 0xb6, 0xb7, 0xb8, 0xb9, 0xba, 0xc4, 0xc5
    invoke-direct {p0, p2}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->pop(I)V

    invoke-direct {p0, p3}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->pushDesc(Ljava/lang/String;)V

    :cond_15
    :goto_15
    :pswitch_15  #0x0, 0x74, 0x75, 0x76, 0x77, 0x91, 0x92, 0x93, 0xa7, 0xb1
    iput-object v4, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->labels:Ljava/util/List;

    goto :goto_b

    :pswitch_18  #0x1
    sget-object v0, Lorg/objectweb/asm/Opcodes;->NULL:Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    goto :goto_15

    :pswitch_1e  #0x2, 0x3, 0x4, 0x5, 0x6, 0x7, 0x8, 0x10, 0x11
    sget-object v0, Lorg/objectweb/asm/Opcodes;->INTEGER:Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    goto :goto_15

    :pswitch_24  #0x9, 0xa
    sget-object v0, Lorg/objectweb/asm/Opcodes;->LONG:Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    sget-object v0, Lorg/objectweb/asm/Opcodes;->TOP:Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    goto :goto_15

    :pswitch_2f  #0xb, 0xc, 0xd
    sget-object v0, Lorg/objectweb/asm/Opcodes;->FLOAT:Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    goto :goto_15

    :pswitch_35  #0xe, 0xf
    sget-object v0, Lorg/objectweb/asm/Opcodes;->DOUBLE:Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    sget-object v0, Lorg/objectweb/asm/Opcodes;->TOP:Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    goto :goto_15

    :pswitch_40  #0x15, 0x17, 0x19
    invoke-direct {p0, p2}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    goto :goto_15

    :pswitch_48  #0x16, 0x18
    invoke-direct {p0, p2}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    sget-object v0, Lorg/objectweb/asm/Opcodes;->TOP:Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    goto :goto_15

    :pswitch_55  #0x2e, 0x33, 0x34, 0x35
    invoke-direct {p0, v1}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->pop(I)V

    sget-object v0, Lorg/objectweb/asm/Opcodes;->INTEGER:Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    goto :goto_15

    :pswitch_5e  #0x2f, 0x8f
    invoke-direct {p0, v1}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->pop(I)V

    sget-object v0, Lorg/objectweb/asm/Opcodes;->LONG:Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    sget-object v0, Lorg/objectweb/asm/Opcodes;->TOP:Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    goto :goto_15

    :pswitch_6c  #0x30
    invoke-direct {p0, v1}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->pop(I)V

    sget-object v0, Lorg/objectweb/asm/Opcodes;->FLOAT:Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    goto :goto_15

    :pswitch_75  #0x31, 0x8a
    invoke-direct {p0, v1}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->pop(I)V

    sget-object v0, Lorg/objectweb/asm/Opcodes;->DOUBLE:Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    sget-object v0, Lorg/objectweb/asm/Opcodes;->TOP:Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    goto :goto_15

    :pswitch_83  #0x32
    invoke-direct {p0, v2}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->pop(I)V

    invoke-direct {p0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->pop()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_99

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->pushDesc(Ljava/lang/String;)V

    goto/16 :goto_15

    :cond_99
    const-string v0, "java/lang/Object"

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    goto/16 :goto_15

    :pswitch_a0  #0x36, 0x38, 0x3a
    invoke-direct {p0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->pop()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->set(ILjava/lang/Object;)V

    if-lez p2, :cond_15

    add-int/lit8 v0, p2, -0x1

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->get(I)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lorg/objectweb/asm/Opcodes;->LONG:Ljava/lang/Integer;

    if-eq v0, v1, :cond_b7

    sget-object v1, Lorg/objectweb/asm/Opcodes;->DOUBLE:Ljava/lang/Integer;

    if-ne v0, v1, :cond_15

    :cond_b7
    add-int/lit8 v0, p2, -0x1

    sget-object v1, Lorg/objectweb/asm/Opcodes;->TOP:Ljava/lang/Integer;

    invoke-direct {p0, v0, v1}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->set(ILjava/lang/Object;)V

    goto/16 :goto_15

    :pswitch_c0  #0x37, 0x39
    invoke-direct {p0, v2}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->pop(I)V

    invoke-direct {p0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->pop()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->set(ILjava/lang/Object;)V

    add-int/lit8 v0, p2, 0x1

    sget-object v1, Lorg/objectweb/asm/Opcodes;->TOP:Ljava/lang/Integer;

    invoke-direct {p0, v0, v1}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->set(ILjava/lang/Object;)V

    if-lez p2, :cond_15

    add-int/lit8 v0, p2, -0x1

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->get(I)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lorg/objectweb/asm/Opcodes;->LONG:Ljava/lang/Integer;

    if-eq v0, v1, :cond_e1

    sget-object v1, Lorg/objectweb/asm/Opcodes;->DOUBLE:Ljava/lang/Integer;

    if-ne v0, v1, :cond_15

    :cond_e1
    add-int/lit8 v0, p2, -0x1

    sget-object v1, Lorg/objectweb/asm/Opcodes;->TOP:Ljava/lang/Integer;

    invoke-direct {p0, v0, v1}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->set(ILjava/lang/Object;)V

    goto/16 :goto_15

    :pswitch_ea  #0x4f, 0x51, 0x53, 0x54, 0x55, 0x56
    invoke-direct {p0, v5}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->pop(I)V

    goto/16 :goto_15

    :pswitch_ef  #0x50, 0x52
    invoke-direct {p0, v3}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->pop(I)V

    goto/16 :goto_15

    :pswitch_f4  #0x57, 0x99, 0x9a, 0x9b, 0x9c, 0x9d, 0x9e, 0xaa, 0xab, 0xac, 0xae, 0xb0, 0xbf, 0xc2, 0xc3, 0xc6, 0xc7
    invoke-direct {p0, v2}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->pop(I)V

    goto/16 :goto_15

    :pswitch_f9  #0x58, 0x9f, 0xa0, 0xa1, 0xa2, 0xa3, 0xa4, 0xa5, 0xa6, 0xad, 0xaf
    invoke-direct {p0, v1}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->pop(I)V

    goto/16 :goto_15

    :pswitch_fe  #0x59
    invoke-direct {p0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->pop()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    goto/16 :goto_15

    :pswitch_10a  #0x5a
    invoke-direct {p0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->pop()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->pop()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    invoke-direct {p0, v1}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    goto/16 :goto_15

    :pswitch_11d  #0x5b
    invoke-direct {p0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->pop()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->pop()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->pop()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    invoke-direct {p0, v2}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    invoke-direct {p0, v1}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    goto/16 :goto_15

    :pswitch_137  #0x5c
    invoke-direct {p0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->pop()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->pop()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    invoke-direct {p0, v1}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    goto/16 :goto_15

    :pswitch_14d  #0x5d
    invoke-direct {p0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->pop()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->pop()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->pop()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v1}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    invoke-direct {p0, v2}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    invoke-direct {p0, v1}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    goto/16 :goto_15

    :pswitch_16a  #0x5e
    invoke-direct {p0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->pop()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->pop()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->pop()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->pop()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v1}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    invoke-direct {p0, v3}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    invoke-direct {p0, v2}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    invoke-direct {p0, v1}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    goto/16 :goto_15

    :pswitch_18e  #0x5f
    invoke-direct {p0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->pop()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->pop()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    invoke-direct {p0, v1}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    goto/16 :goto_15

    :pswitch_19e  #0x60, 0x64, 0x68, 0x6c, 0x70, 0x78, 0x7a, 0x7c, 0x7e, 0x80, 0x82, 0x88, 0x8e, 0x95, 0x96
    invoke-direct {p0, v1}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->pop(I)V

    sget-object v0, Lorg/objectweb/asm/Opcodes;->INTEGER:Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    goto/16 :goto_15

    :pswitch_1a8  #0x61, 0x65, 0x69, 0x6d, 0x71, 0x7f, 0x81, 0x83
    invoke-direct {p0, v3}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->pop(I)V

    sget-object v0, Lorg/objectweb/asm/Opcodes;->LONG:Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    sget-object v0, Lorg/objectweb/asm/Opcodes;->TOP:Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    goto/16 :goto_15

    :pswitch_1b7  #0x62, 0x66, 0x6a, 0x6e, 0x72, 0x89, 0x90
    invoke-direct {p0, v1}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->pop(I)V

    sget-object v0, Lorg/objectweb/asm/Opcodes;->FLOAT:Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    goto/16 :goto_15

    :pswitch_1c1  #0x63, 0x67, 0x6b, 0x6f, 0x73
    invoke-direct {p0, v3}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->pop(I)V

    sget-object v0, Lorg/objectweb/asm/Opcodes;->DOUBLE:Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    sget-object v0, Lorg/objectweb/asm/Opcodes;->TOP:Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    goto/16 :goto_15

    :pswitch_1d0  #0x79, 0x7b, 0x7d
    invoke-direct {p0, v5}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->pop(I)V

    sget-object v0, Lorg/objectweb/asm/Opcodes;->LONG:Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    sget-object v0, Lorg/objectweb/asm/Opcodes;->TOP:Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    goto/16 :goto_15

    :pswitch_1df  #0x84
    sget-object v0, Lorg/objectweb/asm/Opcodes;->INTEGER:Ljava/lang/Integer;

    invoke-direct {p0, p2, v0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->set(ILjava/lang/Object;)V

    goto/16 :goto_15

    :pswitch_1e6  #0x85, 0x8c
    invoke-direct {p0, v2}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->pop(I)V

    sget-object v0, Lorg/objectweb/asm/Opcodes;->LONG:Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    sget-object v0, Lorg/objectweb/asm/Opcodes;->TOP:Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    goto/16 :goto_15

    :pswitch_1f5  #0x86
    invoke-direct {p0, v2}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->pop(I)V

    sget-object v0, Lorg/objectweb/asm/Opcodes;->FLOAT:Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    goto/16 :goto_15

    :pswitch_1ff  #0x87, 0x8d
    invoke-direct {p0, v2}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->pop(I)V

    sget-object v0, Lorg/objectweb/asm/Opcodes;->DOUBLE:Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    sget-object v0, Lorg/objectweb/asm/Opcodes;->TOP:Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    goto/16 :goto_15

    :pswitch_20e  #0x8b, 0xbe, 0xc1
    invoke-direct {p0, v2}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->pop(I)V

    sget-object v0, Lorg/objectweb/asm/Opcodes;->INTEGER:Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    goto/16 :goto_15

    :pswitch_218  #0x94, 0x97, 0x98
    invoke-direct {p0, v3}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->pop(I)V

    sget-object v0, Lorg/objectweb/asm/Opcodes;->INTEGER:Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    goto/16 :goto_15

    :pswitch_222  #0xa8, 0xa9
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "JSR/RET are not supported"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_22a  #0xb2
    invoke-direct {p0, p3}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->pushDesc(Ljava/lang/String;)V

    goto/16 :goto_15

    :pswitch_22f  #0xb3
    invoke-direct {p0, p3}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->pop(Ljava/lang/String;)V

    goto/16 :goto_15

    :pswitch_234  #0xb4
    invoke-direct {p0, v2}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->pop(I)V

    invoke-direct {p0, p3}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->pushDesc(Ljava/lang/String;)V

    goto/16 :goto_15

    :pswitch_23c  #0xb5
    invoke-direct {p0, p3}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->pop(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->pop()Ljava/lang/Object;

    goto/16 :goto_15

    :pswitch_244  #0xbb
    iget-object v0, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->labels:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    goto/16 :goto_15

    :pswitch_250  #0xbc
    invoke-direct {p0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->pop()Ljava/lang/Object;

    packed-switch p2, :pswitch_data_452

    const-string v0, "[J"

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->pushDesc(Ljava/lang/String;)V

    goto/16 :goto_15

    :pswitch_25d  #0x4
    const-string v0, "[Z"

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->pushDesc(Ljava/lang/String;)V

    goto/16 :goto_15

    :pswitch_264  #0x5
    const-string v0, "[C"

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->pushDesc(Ljava/lang/String;)V

    goto/16 :goto_15

    :pswitch_26b  #0x8
    const-string v0, "[B"

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->pushDesc(Ljava/lang/String;)V

    goto/16 :goto_15

    :pswitch_272  #0x9
    const-string v0, "[S"

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->pushDesc(Ljava/lang/String;)V

    goto/16 :goto_15

    :pswitch_279  #0xa
    const-string v0, "[I"

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->pushDesc(Ljava/lang/String;)V

    goto/16 :goto_15

    :pswitch_280  #0x6
    const-string v0, "[F"

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->pushDesc(Ljava/lang/String;)V

    goto/16 :goto_15

    :pswitch_287  #0x7
    const-string v0, "[D"

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->pushDesc(Ljava/lang/String;)V

    goto/16 :goto_15

    :pswitch_28e  #0xbd
    invoke-direct {p0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->pop()Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-static {p3}, Lorg/objectweb/asm/Type;->getObjectType(Ljava/lang/String;)Lorg/objectweb/asm/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->pushDesc(Ljava/lang/String;)V

    goto/16 :goto_15

    :pswitch_2ad  #0xc0
    invoke-direct {p0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->pop()Ljava/lang/Object;

    invoke-static {p3}, Lorg/objectweb/asm/Type;->getObjectType(Ljava/lang/String;)Lorg/objectweb/asm/Type;

    move-result-object v0

    invoke-virtual {v0}, Lorg/objectweb/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->pushDesc(Ljava/lang/String;)V

    goto/16 :goto_15

    nop

    :pswitch_data_2be
    .packed-switch 0x0
        :pswitch_15  #00000000
        :pswitch_18  #00000001
        :pswitch_1e  #00000002
        :pswitch_1e  #00000003
        :pswitch_1e  #00000004
        :pswitch_1e  #00000005
        :pswitch_1e  #00000006
        :pswitch_1e  #00000007
        :pswitch_1e  #00000008
        :pswitch_24  #00000009
        :pswitch_24  #0000000a
        :pswitch_2f  #0000000b
        :pswitch_2f  #0000000c
        :pswitch_2f  #0000000d
        :pswitch_35  #0000000e
        :pswitch_35  #0000000f
        :pswitch_1e  #00000010
        :pswitch_1e  #00000011
        :pswitch_f  #00000012
        :pswitch_f  #00000013
        :pswitch_f  #00000014
        :pswitch_40  #00000015
        :pswitch_48  #00000016
        :pswitch_40  #00000017
        :pswitch_48  #00000018
        :pswitch_40  #00000019
        :pswitch_f  #0000001a
        :pswitch_f  #0000001b
        :pswitch_f  #0000001c
        :pswitch_f  #0000001d
        :pswitch_f  #0000001e
        :pswitch_f  #0000001f
        :pswitch_f  #00000020
        :pswitch_f  #00000021
        :pswitch_f  #00000022
        :pswitch_f  #00000023
        :pswitch_f  #00000024
        :pswitch_f  #00000025
        :pswitch_f  #00000026
        :pswitch_f  #00000027
        :pswitch_f  #00000028
        :pswitch_f  #00000029
        :pswitch_f  #0000002a
        :pswitch_f  #0000002b
        :pswitch_f  #0000002c
        :pswitch_f  #0000002d
        :pswitch_55  #0000002e
        :pswitch_5e  #0000002f
        :pswitch_6c  #00000030
        :pswitch_75  #00000031
        :pswitch_83  #00000032
        :pswitch_55  #00000033
        :pswitch_55  #00000034
        :pswitch_55  #00000035
        :pswitch_a0  #00000036
        :pswitch_c0  #00000037
        :pswitch_a0  #00000038
        :pswitch_c0  #00000039
        :pswitch_a0  #0000003a
        :pswitch_f  #0000003b
        :pswitch_f  #0000003c
        :pswitch_f  #0000003d
        :pswitch_f  #0000003e
        :pswitch_f  #0000003f
        :pswitch_f  #00000040
        :pswitch_f  #00000041
        :pswitch_f  #00000042
        :pswitch_f  #00000043
        :pswitch_f  #00000044
        :pswitch_f  #00000045
        :pswitch_f  #00000046
        :pswitch_f  #00000047
        :pswitch_f  #00000048
        :pswitch_f  #00000049
        :pswitch_f  #0000004a
        :pswitch_f  #0000004b
        :pswitch_f  #0000004c
        :pswitch_f  #0000004d
        :pswitch_f  #0000004e
        :pswitch_ea  #0000004f
        :pswitch_ef  #00000050
        :pswitch_ea  #00000051
        :pswitch_ef  #00000052
        :pswitch_ea  #00000053
        :pswitch_ea  #00000054
        :pswitch_ea  #00000055
        :pswitch_ea  #00000056
        :pswitch_f4  #00000057
        :pswitch_f9  #00000058
        :pswitch_fe  #00000059
        :pswitch_10a  #0000005a
        :pswitch_11d  #0000005b
        :pswitch_137  #0000005c
        :pswitch_14d  #0000005d
        :pswitch_16a  #0000005e
        :pswitch_18e  #0000005f
        :pswitch_19e  #00000060
        :pswitch_1a8  #00000061
        :pswitch_1b7  #00000062
        :pswitch_1c1  #00000063
        :pswitch_19e  #00000064
        :pswitch_1a8  #00000065
        :pswitch_1b7  #00000066
        :pswitch_1c1  #00000067
        :pswitch_19e  #00000068
        :pswitch_1a8  #00000069
        :pswitch_1b7  #0000006a
        :pswitch_1c1  #0000006b
        :pswitch_19e  #0000006c
        :pswitch_1a8  #0000006d
        :pswitch_1b7  #0000006e
        :pswitch_1c1  #0000006f
        :pswitch_19e  #00000070
        :pswitch_1a8  #00000071
        :pswitch_1b7  #00000072
        :pswitch_1c1  #00000073
        :pswitch_15  #00000074
        :pswitch_15  #00000075
        :pswitch_15  #00000076
        :pswitch_15  #00000077
        :pswitch_19e  #00000078
        :pswitch_1d0  #00000079
        :pswitch_19e  #0000007a
        :pswitch_1d0  #0000007b
        :pswitch_19e  #0000007c
        :pswitch_1d0  #0000007d
        :pswitch_19e  #0000007e
        :pswitch_1a8  #0000007f
        :pswitch_19e  #00000080
        :pswitch_1a8  #00000081
        :pswitch_19e  #00000082
        :pswitch_1a8  #00000083
        :pswitch_1df  #00000084
        :pswitch_1e6  #00000085
        :pswitch_1f5  #00000086
        :pswitch_1ff  #00000087
        :pswitch_19e  #00000088
        :pswitch_1b7  #00000089
        :pswitch_75  #0000008a
        :pswitch_20e  #0000008b
        :pswitch_1e6  #0000008c
        :pswitch_1ff  #0000008d
        :pswitch_19e  #0000008e
        :pswitch_5e  #0000008f
        :pswitch_1b7  #00000090
        :pswitch_15  #00000091
        :pswitch_15  #00000092
        :pswitch_15  #00000093
        :pswitch_218  #00000094
        :pswitch_19e  #00000095
        :pswitch_19e  #00000096
        :pswitch_218  #00000097
        :pswitch_218  #00000098
        :pswitch_f4  #00000099
        :pswitch_f4  #0000009a
        :pswitch_f4  #0000009b
        :pswitch_f4  #0000009c
        :pswitch_f4  #0000009d
        :pswitch_f4  #0000009e
        :pswitch_f9  #0000009f
        :pswitch_f9  #000000a0
        :pswitch_f9  #000000a1
        :pswitch_f9  #000000a2
        :pswitch_f9  #000000a3
        :pswitch_f9  #000000a4
        :pswitch_f9  #000000a5
        :pswitch_f9  #000000a6
        :pswitch_15  #000000a7
        :pswitch_222  #000000a8
        :pswitch_222  #000000a9
        :pswitch_f4  #000000aa
        :pswitch_f4  #000000ab
        :pswitch_f4  #000000ac
        :pswitch_f9  #000000ad
        :pswitch_f4  #000000ae
        :pswitch_f9  #000000af
        :pswitch_f4  #000000b0
        :pswitch_15  #000000b1
        :pswitch_22a  #000000b2
        :pswitch_22f  #000000b3
        :pswitch_234  #000000b4
        :pswitch_23c  #000000b5
        :pswitch_f  #000000b6
        :pswitch_f  #000000b7
        :pswitch_f  #000000b8
        :pswitch_f  #000000b9
        :pswitch_f  #000000ba
        :pswitch_244  #000000bb
        :pswitch_250  #000000bc
        :pswitch_28e  #000000bd
        :pswitch_20e  #000000be
        :pswitch_f4  #000000bf
        :pswitch_2ad  #000000c0
        :pswitch_20e  #000000c1
        :pswitch_f4  #000000c2
        :pswitch_f4  #000000c3
        :pswitch_f  #000000c4
        :pswitch_f  #000000c5
        :pswitch_f4  #000000c6
        :pswitch_f4  #000000c7
    .end packed-switch

    :pswitch_data_452
    .packed-switch 0x4
        :pswitch_25d  #00000004
        :pswitch_264  #00000005
        :pswitch_280  #00000006
        :pswitch_287  #00000007
        :pswitch_26b  #00000008
        :pswitch_272  #00000009
        :pswitch_279  #0000000a
    .end packed-switch
.end method

.method private get(I)Ljava/lang/Object;
    .registers 4

    iget v0, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->maxLocals:I

    add-int/lit8 v1, p1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->maxLocals:I

    iget-object v0, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->locals:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_19

    iget-object v0, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->locals:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    :goto_18
    return-object v0

    :cond_19
    sget-object v0, Lorg/objectweb/asm/Opcodes;->TOP:Ljava/lang/Integer;

    goto :goto_18
.end method

.method private pop()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->stack:Ljava/util/List;

    iget-object v1, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->stack:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private pop(I)V
    .registers 5

    iget-object v0, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->stack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_8
    sub-int v2, v1, p1

    if-lt v0, v2, :cond_14

    iget-object v2, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->stack:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_14
    return-void
.end method

.method private pop(Ljava/lang/String;)V
    .registers 6

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x28

    if-ne v0, v2, :cond_21

    invoke-static {p1}, Lorg/objectweb/asm/Type;->getArgumentTypes(Ljava/lang/String;)[Lorg/objectweb/asm/Type;

    move-result-object v3

    move v0, v1

    move v2, v1

    :goto_f
    array-length v1, v3

    if-ge v2, v1, :cond_1d

    aget-object v1, v3, v2

    invoke-virtual {v1}, Lorg/objectweb/asm/Type;->getSize()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_f

    :cond_1d
    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->pop(I)V

    :goto_20
    return-void

    :cond_21
    const/16 v1, 0x4a

    if-eq v0, v1, :cond_29

    const/16 v1, 0x44

    if-ne v0, v1, :cond_2e

    :cond_29
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->pop(I)V

    goto :goto_20

    :cond_2e
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->pop(I)V

    goto :goto_20
.end method

.method private push(Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->stack:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->maxStack:I

    iget-object v1, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->stack:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->maxStack:I

    return-void
.end method

.method private pushDesc(Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x28

    if-ne v1, v2, :cond_11

    const/16 v0, 0x29

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    :cond_11
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sparse-switch v1, :sswitch_data_6e

    if-nez v0, :cond_5d

    const/4 v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    :goto_28
    :sswitch_28
    return-void

    :sswitch_29
    sget-object v0, Lorg/objectweb/asm/Opcodes;->INTEGER:Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    goto :goto_28

    :sswitch_2f
    sget-object v0, Lorg/objectweb/asm/Opcodes;->FLOAT:Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    goto :goto_28

    :sswitch_35
    sget-object v0, Lorg/objectweb/asm/Opcodes;->LONG:Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    sget-object v0, Lorg/objectweb/asm/Opcodes;->TOP:Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    goto :goto_28

    :sswitch_40
    sget-object v0, Lorg/objectweb/asm/Opcodes;->DOUBLE:Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    sget-object v0, Lorg/objectweb/asm/Opcodes;->TOP:Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    goto :goto_28

    :sswitch_4b
    if-nez v0, :cond_51

    invoke-direct {p0, p1}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    goto :goto_28

    :cond_51
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    goto :goto_28

    :cond_5d
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    goto :goto_28

    nop

    :sswitch_data_6e
    .sparse-switch
        0x42 -> :sswitch_29
        0x43 -> :sswitch_29
        0x44 -> :sswitch_40
        0x46 -> :sswitch_2f
        0x49 -> :sswitch_29
        0x4a -> :sswitch_35
        0x53 -> :sswitch_29
        0x56 -> :sswitch_28
        0x5a -> :sswitch_29
        0x5b -> :sswitch_4b
    .end sparse-switch
.end method

.method private set(ILjava/lang/Object;)V
    .registers 5

    iget v0, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->maxLocals:I

    add-int/lit8 v1, p1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->maxLocals:I

    :goto_a
    iget-object v0, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->locals:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1a

    iget-object v0, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->locals:Ljava/util/List;

    sget-object v1, Lorg/objectweb/asm/Opcodes;->TOP:Ljava/lang/Integer;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_1a
    iget-object v0, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->locals:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static visitFrameTypes(I[Ljava/lang/Object;Ljava/util/List;)V
    .registers 6

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p0, :cond_18

    aget-object v1, p1, v0

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lorg/objectweb/asm/Opcodes;->LONG:Ljava/lang/Integer;

    if-eq v1, v2, :cond_10

    sget-object v2, Lorg/objectweb/asm/Opcodes;->DOUBLE:Ljava/lang/Integer;

    if-ne v1, v2, :cond_15

    :cond_10
    sget-object v1, Lorg/objectweb/asm/Opcodes;->TOP:Ljava/lang/Integer;

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_18
    return-void
.end method


# virtual methods
.method public visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/objectweb/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p4}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->execute(IILjava/lang/String;)V

    return-void
.end method

.method public visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V
    .registers 12

    const/4 v0, -0x1

    if-eq p1, v0, :cond_b

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ClassReader.accept() should be called with EXPAND_FRAMES flag"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    iget-object v0, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/objectweb/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    :cond_19
    iget-object v0, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->locals:Ljava/util/List;

    if-eqz v0, :cond_40

    iget-object v0, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->locals:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->stack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :goto_27
    iget-object v0, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->locals:Ljava/util/List;

    invoke-static {p2, p3, v0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->visitFrameTypes(I[Ljava/lang/Object;Ljava/util/List;)V

    iget-object v0, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->stack:Ljava/util/List;

    invoke-static {p4, p5, v0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->visitFrameTypes(I[Ljava/lang/Object;Ljava/util/List;)V

    iget v0, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->maxStack:I

    iget-object v1, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->stack:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->maxStack:I

    return-void

    :cond_40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->locals:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->stack:Ljava/util/List;

    goto :goto_27
.end method

.method public visitIincInsn(II)V
    .registers 5

    iget-object v0, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2}, Lorg/objectweb/asm/MethodVisitor;->visitIincInsn(II)V

    :cond_9
    const/16 v0, 0x84

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->execute(IILjava/lang/String;)V

    return-void
.end method

.method public visitInsn(I)V
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    invoke-virtual {v0, p1}, Lorg/objectweb/asm/MethodVisitor;->visitInsn(I)V

    :cond_a
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->execute(IILjava/lang/String;)V

    const/16 v0, 0xac

    if-lt p1, v0, :cond_16

    const/16 v0, 0xb1

    if-le p1, v0, :cond_1a

    :cond_16
    const/16 v0, 0xbf

    if-ne p1, v0, :cond_1e

    :cond_1a
    iput-object v1, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->locals:Ljava/util/List;

    iput-object v1, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->stack:Ljava/util/List;

    :cond_1e
    return-void
.end method

.method public visitIntInsn(II)V
    .registers 4

    iget-object v0, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2}, Lorg/objectweb/asm/MethodVisitor;->visitIntInsn(II)V

    :cond_9
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->execute(IILjava/lang/String;)V

    return-void
.end method

.method public varargs visitInvokeDynamicInsn(Ljava/lang/String;Ljava/lang/String;Lorg/objectweb/asm/Handle;[Ljava/lang/Object;)V
    .registers 7

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/objectweb/asm/MethodVisitor;->visitInvokeDynamicInsn(Ljava/lang/String;Ljava/lang/String;Lorg/objectweb/asm/Handle;[Ljava/lang/Object;)V

    :cond_a
    iget-object v0, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->locals:Ljava/util/List;

    if-nez v0, :cond_11

    iput-object v1, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->labels:Ljava/util/List;

    :goto_10
    return-void

    :cond_11
    invoke-direct {p0, p2}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->pop(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->pushDesc(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->labels:Ljava/util/List;

    goto :goto_10
.end method

.method public visitJumpInsn(ILorg/objectweb/asm/Label;)V
    .registers 5

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2}, Lorg/objectweb/asm/MethodVisitor;->visitJumpInsn(ILorg/objectweb/asm/Label;)V

    :cond_a
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->execute(IILjava/lang/String;)V

    const/16 v0, 0xa7

    if-ne p1, v0, :cond_16

    iput-object v1, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->locals:Ljava/util/List;

    iput-object v1, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->stack:Ljava/util/List;

    :cond_16
    return-void
.end method

.method public visitLabel(Lorg/objectweb/asm/Label;)V
    .registers 4

    iget-object v0, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    invoke-virtual {v0, p1}, Lorg/objectweb/asm/MethodVisitor;->visitLabel(Lorg/objectweb/asm/Label;)V

    :cond_9
    iget-object v0, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->labels:Ljava/util/List;

    if-nez v0, :cond_15

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->labels:Ljava/util/List;

    :cond_15
    iget-object v0, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->labels:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public visitLdcInsn(Ljava/lang/Object;)V
    .registers 5

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    invoke-virtual {v0, p1}, Lorg/objectweb/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    :cond_a
    iget-object v0, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->locals:Ljava/util/List;

    if-nez v0, :cond_11

    iput-object v2, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->labels:Ljava/util/List;

    :goto_10
    return-void

    :cond_11
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_1d

    sget-object v0, Lorg/objectweb/asm/Opcodes;->INTEGER:Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    :goto_1a
    iput-object v2, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->labels:Ljava/util/List;

    goto :goto_10

    :cond_1d
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_2c

    sget-object v0, Lorg/objectweb/asm/Opcodes;->LONG:Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    sget-object v0, Lorg/objectweb/asm/Opcodes;->TOP:Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    goto :goto_1a

    :cond_2c
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_36

    sget-object v0, Lorg/objectweb/asm/Opcodes;->FLOAT:Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    goto :goto_1a

    :cond_36
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_45

    sget-object v0, Lorg/objectweb/asm/Opcodes;->DOUBLE:Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    sget-object v0, Lorg/objectweb/asm/Opcodes;->TOP:Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    goto :goto_1a

    :cond_45
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_4f

    const-string v0, "java/lang/String"

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    goto :goto_1a

    :cond_4f
    instance-of v0, p1, Lorg/objectweb/asm/Type;

    if-eqz v0, :cond_77

    check-cast p1, Lorg/objectweb/asm/Type;

    invoke-virtual {p1}, Lorg/objectweb/asm/Type;->getSort()I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_61

    const/16 v1, 0x9

    if-ne v0, v1, :cond_67

    :cond_61
    const-string v0, "java/lang/Class"

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    goto :goto_1a

    :cond_67
    const/16 v1, 0xb

    if-ne v0, v1, :cond_71

    const-string v0, "java/lang/invoke/MethodType"

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    goto :goto_1a

    :cond_71
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_77
    instance-of v0, p1, Lorg/objectweb/asm/Handle;

    if-eqz v0, :cond_81

    const-string v0, "java/lang/invoke/MethodHandle"

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->push(Ljava/lang/Object;)V

    goto :goto_1a

    :cond_81
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public visitLookupSwitchInsn(Lorg/objectweb/asm/Label;[I[Lorg/objectweb/asm/Label;)V
    .registers 7

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2, p3}, Lorg/objectweb/asm/MethodVisitor;->visitLookupSwitchInsn(Lorg/objectweb/asm/Label;[I[Lorg/objectweb/asm/Label;)V

    :cond_a
    const/16 v0, 0xab

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->execute(IILjava/lang/String;)V

    iput-object v2, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->locals:Ljava/util/List;

    iput-object v2, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->stack:Ljava/util/List;

    return-void
.end method

.method public visitMaxs(II)V
    .registers 6

    iget-object v0, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    if-eqz v0, :cond_1d

    iget v0, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->maxStack:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->maxStack:I

    iget v0, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->maxLocals:I

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->maxLocals:I

    iget-object v0, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    iget v1, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->maxStack:I

    iget v2, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->maxLocals:I

    invoke-virtual {v0, v1, v2}, Lorg/objectweb/asm/MethodVisitor;->visitMaxs(II)V

    :cond_1d
    return-void
.end method

.method public visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    iget v0, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->api:I

    const/high16 v1, 0x50000

    if-lt v0, v1, :cond_a

    invoke-super {p0, p1, p2, p3, p4}, Lorg/objectweb/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_9
    return-void

    :cond_a
    const/16 v0, 0xb9

    if-ne p1, v0, :cond_18

    const/4 v5, 0x1

    :goto_f
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->doVisitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_9

    :cond_18
    const/4 v5, 0x0

    goto :goto_f
.end method

.method public visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 8

    iget v0, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->api:I

    const/high16 v1, 0x50000

    if-ge v0, v1, :cond_a

    invoke-super/range {p0 .. p5}, Lorg/objectweb/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_9
    return-void

    :cond_a
    invoke-direct/range {p0 .. p5}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->doVisitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_9
.end method

.method public visitMultiANewArrayInsn(Ljava/lang/String;I)V
    .registers 4

    iget-object v0, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2}, Lorg/objectweb/asm/MethodVisitor;->visitMultiANewArrayInsn(Ljava/lang/String;I)V

    :cond_9
    const/16 v0, 0xc5

    invoke-direct {p0, v0, p2, p1}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->execute(IILjava/lang/String;)V

    return-void
.end method

.method public varargs visitTableSwitchInsn(IILorg/objectweb/asm/Label;[Lorg/objectweb/asm/Label;)V
    .registers 8

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/objectweb/asm/MethodVisitor;->visitTableSwitchInsn(IILorg/objectweb/asm/Label;[Lorg/objectweb/asm/Label;)V

    :cond_a
    const/16 v0, 0xaa

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->execute(IILjava/lang/String;)V

    iput-object v2, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->locals:Ljava/util/List;

    iput-object v2, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->stack:Ljava/util/List;

    return-void
.end method

.method public visitTypeInsn(ILjava/lang/String;)V
    .registers 7

    const/4 v1, 0x0

    const/16 v0, 0xbb

    if-ne p1, v0, :cond_3b

    iget-object v0, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->labels:Ljava/util/List;

    if-nez v0, :cond_24

    new-instance v0, Lorg/objectweb/asm/Label;

    invoke-direct {v0}, Lorg/objectweb/asm/Label;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->labels:Ljava/util/List;

    iget-object v2, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->labels:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    if-eqz v2, :cond_24

    iget-object v2, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    invoke-virtual {v2, v0}, Lorg/objectweb/asm/MethodVisitor;->visitLabel(Lorg/objectweb/asm/Label;)V

    :cond_24
    move v0, v1

    :goto_25
    iget-object v2, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->labels:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_3b

    iget-object v2, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->uninitializedTypes:Ljava/util/Map;

    iget-object v3, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->labels:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    :cond_3b
    iget-object v0, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    if-eqz v0, :cond_44

    iget-object v0, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2}, Lorg/objectweb/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    :cond_44
    invoke-direct {p0, p1, v1, p2}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->execute(IILjava/lang/String;)V

    return-void
.end method

.method public visitVarInsn(II)V
    .registers 4

    iget-object v0, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/objectweb/asm/commons/AnalyzerAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2}, Lorg/objectweb/asm/MethodVisitor;->visitVarInsn(II)V

    :cond_9
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/objectweb/asm/commons/AnalyzerAdapter;->execute(IILjava/lang/String;)V

    return-void
.end method
