.class public Lorg/objectweb/asm/commons/InstructionAdapter;
.super Lorg/objectweb/asm/MethodVisitor;


# static fields
.field public static final OBJECT_TYPE:Lorg/objectweb/asm/Type;

.field static class$org$objectweb$asm$commons$InstructionAdapter:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lorg/objectweb/asm/commons/InstructionAdapter;->_clinit_()V

    const-string v0, "Ljava/lang/Object;"

    invoke-static {v0}, Lorg/objectweb/asm/Type;->getType(Ljava/lang/String;)Lorg/objectweb/asm/Type;

    move-result-object v0

    sput-object v0, Lorg/objectweb/asm/commons/InstructionAdapter;->OBJECT_TYPE:Lorg/objectweb/asm/Type;

    return-void
.end method

.method protected constructor <init>(ILorg/objectweb/asm/MethodVisitor;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lorg/objectweb/asm/MethodVisitor;-><init>(ILorg/objectweb/asm/MethodVisitor;)V

    return-void
.end method

.method public constructor <init>(Lorg/objectweb/asm/MethodVisitor;)V
    .registers 4

    const/high16 v0, 0x50000

    invoke-direct {p0, v0, p1}, Lorg/objectweb/asm/commons/InstructionAdapter;-><init>(ILorg/objectweb/asm/MethodVisitor;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Lorg/objectweb/asm/commons/InstructionAdapter;->class$org$objectweb$asm$commons$InstructionAdapter:Ljava/lang/Class;

    if-eq v0, v1, :cond_13

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_13
    return-void
.end method

.method private static _clinit_()V
    .registers 1

    const-string v0, "org.objectweb.asm.commons.InstructionAdapter"

    invoke-static {v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/objectweb/asm/commons/InstructionAdapter;->class$org$objectweb$asm$commons$InstructionAdapter:Ljava/lang/Class;

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
    .registers 7

    packed-switch p1, :pswitch_data_1a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :pswitch_9  #0xb7
    invoke-virtual {p0, p2, p3, p4, p5}, Lorg/objectweb/asm/commons/InstructionAdapter;->invokespecial(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_c
    return-void

    :pswitch_d  #0xb6
    invoke-virtual {p0, p2, p3, p4, p5}, Lorg/objectweb/asm/commons/InstructionAdapter;->invokevirtual(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_c

    :pswitch_11  #0xb8
    invoke-virtual {p0, p2, p3, p4, p5}, Lorg/objectweb/asm/commons/InstructionAdapter;->invokestatic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_c

    :pswitch_15  #0xb9
    invoke-virtual {p0, p2, p3, p4}, Lorg/objectweb/asm/commons/InstructionAdapter;->invokeinterface(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    nop

    :pswitch_data_1a
    .packed-switch 0xb6
        :pswitch_d  #000000b6
        :pswitch_9  #000000b7
        :pswitch_11  #000000b8
        :pswitch_15  #000000b9
    .end packed-switch
.end method


# virtual methods
.method public aconst(Ljava/lang/Object;)V
    .registers 4

    if-nez p1, :cond_9

    iget-object v0, p0, Lorg/objectweb/asm/commons/InstructionAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/MethodVisitor;->visitInsn(I)V

    :goto_8
    return-void

    :cond_9
    iget-object v0, p0, Lorg/objectweb/asm/commons/InstructionAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    invoke-virtual {v0, p1}, Lorg/objectweb/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    goto :goto_8
.end method

.method public add(Lorg/objectweb/asm/Type;)V
    .registers 4

    iget-object v0, p0, Lorg/objectweb/asm/commons/InstructionAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    const/16 v1, 0x60

    invoke-virtual {p1, v1}, Lorg/objectweb/asm/Type;->getOpcode(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/MethodVisitor;->visitInsn(I)V

    return-void
.end method

.method public aload(Lorg/objectweb/asm/Type;)V
    .registers 4

    iget-object v0, p0, Lorg/objectweb/asm/commons/InstructionAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    const/16 v1, 0x2e

    invoke-virtual {p1, v1}, Lorg/objectweb/asm/Type;->getOpcode(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/MethodVisitor;->visitInsn(I)V

    return-void
.end method

.method public and(Lorg/objectweb/asm/Type;)V
    .registers 4

    iget-object v0, p0, Lorg/objectweb/asm/commons/InstructionAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    const/16 v1, 0x7e

    invoke-virtual {p1, v1}, Lorg/objectweb/asm/Type;->getOpcode(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/MethodVisitor;->visitInsn(I)V

    return-void
.end method

.method public anew(Lorg/objectweb/asm/Type;)V
    .registers 5

    iget-object v0, p0, Lorg/objectweb/asm/commons/InstructionAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    const/16 v1, 0xbb

    invoke-virtual {p1}, Lorg/objectweb/asm/Type;->getInternalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/objectweb/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    return-void
.end method

.method public areturn(Lorg/objectweb/asm/Type;)V
    .registers 4

    iget-object v0, p0, Lorg/objectweb/asm/commons/InstructionAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    const/16 v1, 0xac

    invoke-virtual {p1, v1}, Lorg/objectweb/asm/Type;->getOpcode(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/MethodVisitor;->visitInsn(I)V

    return-void
.end method

.method public arraylength()V
    .registers 3

    iget-object v0, p0, Lorg/objectweb/asm/commons/InstructionAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    const/16 v1, 0xbe

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/MethodVisitor;->visitInsn(I)V

    return-void
.end method

.method public astore(Lorg/objectweb/asm/Type;)V
    .registers 4

    iget-object v0, p0, Lorg/objectweb/asm/commons/InstructionAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    const/16 v1, 0x4f

    invoke-virtual {p1, v1}, Lorg/objectweb/asm/Type;->getOpcode(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/MethodVisitor;->visitInsn(I)V

    return-void
.end method

.method public athrow()V
    .registers 3

    iget-object v0, p0, Lorg/objectweb/asm/commons/InstructionAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    const/16 v1, 0xbf

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/MethodVisitor;->visitInsn(I)V

    return-void
.end method

.method public cast(Lorg/objectweb/asm/Type;Lorg/objectweb/asm/Type;)V
    .registers 5

    if-eq p1, p2, :cond_11

    sget-object v0, Lorg/objectweb/asm/Type;->DOUBLE_TYPE:Lorg/objectweb/asm/Type;

    if-ne p1, v0, :cond_2b

    sget-object v0, Lorg/objectweb/asm/Type;->FLOAT_TYPE:Lorg/objectweb/asm/Type;

    if-ne p2, v0, :cond_12

    iget-object v0, p0, Lorg/objectweb/asm/commons/InstructionAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    const/16 v1, 0x90

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/MethodVisitor;->visitInsn(I)V

    :cond_11
    :goto_11
    return-void

    :cond_12
    sget-object v0, Lorg/objectweb/asm/Type;->LONG_TYPE:Lorg/objectweb/asm/Type;

    if-ne p2, v0, :cond_1e

    iget-object v0, p0, Lorg/objectweb/asm/commons/InstructionAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    const/16 v1, 0x8f

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/MethodVisitor;->visitInsn(I)V

    goto :goto_11

    :cond_1e
    iget-object v0, p0, Lorg/objectweb/asm/commons/InstructionAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    const/16 v1, 0x8e

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/MethodVisitor;->visitInsn(I)V

    sget-object v0, Lorg/objectweb/asm/Type;->INT_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0, p2}, Lorg/objectweb/asm/commons/InstructionAdapter;->cast(Lorg/objectweb/asm/Type;Lorg/objectweb/asm/Type;)V

    goto :goto_11

    :cond_2b
    sget-object v0, Lorg/objectweb/asm/Type;->FLOAT_TYPE:Lorg/objectweb/asm/Type;

    if-ne p1, v0, :cond_54

    sget-object v0, Lorg/objectweb/asm/Type;->DOUBLE_TYPE:Lorg/objectweb/asm/Type;

    if-ne p2, v0, :cond_3b

    iget-object v0, p0, Lorg/objectweb/asm/commons/InstructionAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    const/16 v1, 0x8d

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/MethodVisitor;->visitInsn(I)V

    goto :goto_11

    :cond_3b
    sget-object v0, Lorg/objectweb/asm/Type;->LONG_TYPE:Lorg/objectweb/asm/Type;

    if-ne p2, v0, :cond_47

    iget-object v0, p0, Lorg/objectweb/asm/commons/InstructionAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    const/16 v1, 0x8c

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/MethodVisitor;->visitInsn(I)V

    goto :goto_11

    :cond_47
    iget-object v0, p0, Lorg/objectweb/asm/commons/InstructionAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    const/16 v1, 0x8b

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/MethodVisitor;->visitInsn(I)V

    sget-object v0, Lorg/objectweb/asm/Type;->INT_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0, p2}, Lorg/objectweb/asm/commons/InstructionAdapter;->cast(Lorg/objectweb/asm/Type;Lorg/objectweb/asm/Type;)V

    goto :goto_11

    :cond_54
    sget-object v0, Lorg/objectweb/asm/Type;->LONG_TYPE:Lorg/objectweb/asm/Type;

    if-ne p1, v0, :cond_7d

    sget-object v0, Lorg/objectweb/asm/Type;->DOUBLE_TYPE:Lorg/objectweb/asm/Type;

    if-ne p2, v0, :cond_64

    iget-object v0, p0, Lorg/objectweb/asm/commons/InstructionAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    const/16 v1, 0x8a

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/MethodVisitor;->visitInsn(I)V

    goto :goto_11

    :cond_64
    sget-object v0, Lorg/objectweb/asm/Type;->FLOAT_TYPE:Lorg/objectweb/asm/Type;

    if-ne p2, v0, :cond_70

    iget-object v0, p0, Lorg/objectweb/asm/commons/InstructionAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    const/16 v1, 0x89

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/MethodVisitor;->visitInsn(I)V

    goto :goto_11

    :cond_70
    iget-object v0, p0, Lorg/objectweb/asm/commons/InstructionAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    const/16 v1, 0x88

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/MethodVisitor;->visitInsn(I)V

    sget-object v0, Lorg/objectweb/asm/Type;->INT_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0, p2}, Lorg/objectweb/asm/commons/InstructionAdapter;->cast(Lorg/objectweb/asm/Type;Lorg/objectweb/asm/Type;)V

    goto :goto_11

    :cond_7d
    sget-object v0, Lorg/objectweb/asm/Type;->BYTE_TYPE:Lorg/objectweb/asm/Type;

    if-ne p2, v0, :cond_89

    iget-object v0, p0, Lorg/objectweb/asm/commons/InstructionAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    const/16 v1, 0x91

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/MethodVisitor;->visitInsn(I)V

    goto :goto_11

    :cond_89
    sget-object v0, Lorg/objectweb/asm/Type;->CHAR_TYPE:Lorg/objectweb/asm/Type;

    if-ne p2, v0, :cond_96

    iget-object v0, p0, Lorg/objectweb/asm/commons/InstructionAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    const/16 v1, 0x92

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/MethodVisitor;->visitInsn(I)V

    goto/16 :goto_11

    :cond_96
    sget-object v0, Lorg/objectweb/asm/Type;->DOUBLE_TYPE:Lorg/objectweb/asm/Type;

    if-ne p2, v0, :cond_a3

    iget-object v0, p0, Lorg/objectweb/asm/commons/InstructionAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    const/16 v1, 0x87

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/MethodVisitor;->visitInsn(I)V

    goto/16 :goto_11

    :cond_a3
    sget-object v0, Lorg/objectweb/asm/Type;->FLOAT_TYPE:Lorg/objectweb/asm/Type;

    if-ne p2, v0, :cond_b0

    iget-object v0, p0, Lorg/objectweb/asm/commons/InstructionAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    const/16 v1, 0x86

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/MethodVisitor;->visitInsn(I)V

    goto/16 :goto_11

    :cond_b0
    sget-object v0, Lorg/objectweb/asm/Type;->LONG_TYPE:Lorg/objectweb/asm/Type;

    if-ne p2, v0, :cond_bd

    iget-object v0, p0, Lorg/objectweb/asm/commons/InstructionAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    const/16 v1, 0x85

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/MethodVisitor;->visitInsn(I)V

    goto/16 :goto_11

    :cond_bd
    sget-object v0, Lorg/objectweb/asm/Type;->SHORT_TYPE:Lorg/objectweb/asm/Type;

    if-ne p2, v0, :cond_11

    iget-object v0, p0, Lorg/objectweb/asm/commons/InstructionAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    const/16 v1, 0x93

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/MethodVisitor;->visitInsn(I)V

    goto/16 :goto_11
.end method

.method public checkcast(Lorg/objectweb/asm/Type;)V
    .registers 5

    iget-object v0, p0, Lorg/objectweb/asm/commons/InstructionAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    const/16 v1, 0xc0

    invoke-virtual {p1}, Lorg/objectweb/asm/Type;->getInternalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/objectweb/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    return-void
.end method

.method public cmpg(Lorg/objectweb/asm/Type;)V
    .registers 4

    iget-object v1, p0, Lorg/objectweb/asm/commons/InstructionAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    sget-object v0, Lorg/objectweb/asm/Type;->FLOAT_TYPE:Lorg/objectweb/asm/Type;

    if-ne p1, v0, :cond_c

    const/16 v0, 0x96

    :goto_8
    invoke-virtual {v1, v0}, Lorg/objectweb/asm/MethodVisitor;->visitInsn(I)V

    return-void

    :cond_c
    const/16 v0, 0x98

    goto :goto_8
.end method

.method public cmpl(Lorg/objectweb/asm/Type;)V
    .registers 4

    iget-object v1, p0, Lorg/objectweb/asm/commons/InstructionAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    sget-object v0, Lorg/objectweb/asm/Type;->FLOAT_TYPE:Lorg/objectweb/asm/Type;

    if-ne p1, v0, :cond_c

    const/16 v0, 0x95

    :goto_8
    invoke-virtual {v1, v0}, Lorg/objectweb/asm/MethodVisitor;->visitInsn(I)V

    return-void

    :cond_c
    const/16 v0, 0x97

    goto :goto_8
.end method

.method public dconst(D)V
    .registers 8

    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_10

    const-wide/high16 v2, 0x3ff0000000000000L  # 1.0

    cmp-long v0, v0, v2

    if-nez v0, :cond_19

    :cond_10
    iget-object v0, p0, Lorg/objectweb/asm/commons/InstructionAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    double-to-int v1, p1

    add-int/lit8 v1, v1, 0xe

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/MethodVisitor;->visitInsn(I)V

    :goto_18
    return-void

    :cond_19
    iget-object v0, p0, Lorg/objectweb/asm/commons/InstructionAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    new-instance v1, Ljava/lang/Double;

    invoke-direct {v1, p1, p2}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    goto :goto_18
.end method

.method public div(Lorg/objectweb/asm/Type;)V
    .registers 4

    iget-object v0, p0, Lorg/objectweb/asm/commons/InstructionAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    const/16 v1, 0x6c

    invoke-virtual {p1, v1}, Lorg/objectweb/asm/Type;->getOpcode(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/MethodVisitor;->visitInsn(I)V

    return-void
.end method

.method public dup()V
    .registers 3

    iget-object v0, p0, Lorg/objectweb/asm/commons/InstructionAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    const/16 v1, 0x59

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/MethodVisitor;->visitInsn(I)V

    return-void
.end method

.method public dup2()V
    .registers 3

    iget-object v0, p0, Lorg/objectweb/asm/commons/InstructionAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    const/16 v1, 0x5c

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/MethodVisitor;->visitInsn(I)V

    return-void
.end method

.method public dup2X1()V
    .registers 3

    iget-object v0, p0, Lorg/objectweb/asm/commons/InstructionAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/MethodVisitor;->visitInsn(I)V

    return-void
.end method

.method public dup2X2()V
    .registers 3

    iget-object v0, p0, Lorg/objectweb/asm/commons/InstructionAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    const/16 v1, 0x5e

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/MethodVisitor;->visitInsn(I)V

    return-void
.end method

.method public dupX1()V
    .registers 3

    iget-object v0, p0, Lorg/objectweb/asm/commons/InstructionAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    const/16 v1, 0x5a

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/MethodVisitor;->visitInsn(I)V

    return-void
.end method

.method public dupX2()V
    .registers 3

    iget-object v0, p0, Lorg/objectweb/asm/commons/InstructionAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/MethodVisitor;->visitInsn(I)V

    return-void
.end method

.method public fconst(F)V
    .registers 8

    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    int-to-long v2, v0

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_13

    const/high16 v1, 0x3f800000  # 1.0f

    if-eq v0, v1, :cond_13

    const/high16 v1, 0x40000000  # 2.0f

    if-ne v0, v1, :cond_1c

    :cond_13
    iget-object v0, p0, Lorg/objectweb/asm/commons/InstructionAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    float-to-int v1, p1

    add-int/lit8 v1, v1, 0xb

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/MethodVisitor;->visitInsn(I)V

    :goto_1b
    return-void

    :cond_1c
    iget-object v0, p0, Lorg/objectweb/asm/commons/InstructionAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    new-instance v1, Ljava/lang/Float;

    invoke-direct {v1, p1}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    goto :goto_1b
.end method

.method public getfield(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lorg/objectweb/asm/commons/InstructionAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    const/16 v1, 0xb4

    invoke-virtual {v0, v1, p1, p2, p3}, Lorg/objectweb/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getstatic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lorg/objectweb/asm/commons/InstructionAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    const/16 v1, 0xb2

    invoke-virtual {v0, v1, p1, p2, p3}, Lorg/objectweb/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public goTo(Lorg/objectweb/asm/Label;)V
    .registers 4

    iget-object v0, p0, Lorg/objectweb/asm/commons/InstructionAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    const/16 v1, 0xa7

    invoke-virtual {v0, v1, p1}, Lorg/objectweb/asm/MethodVisitor;->visitJumpInsn(ILorg/objectweb/asm/Label;)V

    return-void
.end method

.method public hconst(Lorg/objectweb/asm/Handle;)V
    .registers 3

    iget-object v0, p0, Lorg/objectweb/asm/commons/InstructionAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    invoke-virtual {v0, p1}, Lorg/objectweb/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    return-void
.end method

.method public iconst(I)V
    .registers 4

    const/4 v0, -0x1

    if-lt p1, v0, :cond_e

    const/4 v0, 0x5

    if-gt p1, v0, :cond_e

    iget-object v0, p0, Lorg/objectweb/asm/commons/InstructionAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    add-int/lit8 v1, p1, 0x3

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/MethodVisitor;->visitInsn(I)V

    :goto_d
    return-void

    :cond_e
    const/16 v0, -0x80

    if-lt p1, v0, :cond_1e

    const/16 v0, 0x7f

    if-gt p1, v0, :cond_1e

    iget-object v0, p0, Lorg/objectweb/asm/commons/InstructionAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    const/16 v1, 0x10

    invoke-virtual {v0, v1, p1}, Lorg/objectweb/asm/MethodVisitor;->visitIntInsn(II)V

    goto :goto_d

    :cond_1e
    const/16 v0, -0x8000

    if-lt p1, v0, :cond_2e

    const/16 v0, 0x7fff

    if-gt p1, v0, :cond_2e

    iget-object v0, p0, Lorg/objectweb/asm/commons/InstructionAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    const/16 v1, 0x11

    invoke-virtual {v0, v1, p1}, Lorg/objectweb/asm/MethodVisitor;->visitIntInsn(II)V

    goto :goto_d

    :cond_2e
    iget-object v0, p0, Lorg/objectweb/asm/commons/InstructionAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    goto :goto_d
.end method

.method public ifacmpeq(Lorg/objectweb/asm/Label;)V
    .registers 4

    iget-object v0, p0, Lorg/objectweb/asm/commons/InstructionAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    const/16 v1, 0xa5

    invoke-virtual {v0, v1, p1}, Lorg/objectweb/asm/MethodVisitor;->visitJumpInsn(ILorg/objectweb/asm/Label;)V

    return-void
.end method

.method public ifacmpne(Lorg/objectweb/asm/Label;)V
    .registers 4

    iget-object v0, p0, Lorg/objectweb/asm/commons/InstructionAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    const/16 v1, 0xa6

    invoke-virtual {v0, v1, p1}, Lorg/objectweb/asm/MethodVisitor;->visitJumpInsn(ILorg/objectweb/asm/Label;)V

    return-void
.end method

.method public ifeq(Lorg/objectweb/asm/Label;)V
    .registers 4

    iget-object v0, p0, Lorg/objectweb/asm/commons/InstructionAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    const/16 v1, 0x99

    invoke-virtual {v0, v1, p1}, Lorg/objectweb/asm/MethodVisitor;->visitJumpInsn(ILorg/objectweb/asm/Label;)V

    return-void
.end method

.method public ifge(Lorg/objectweb/asm/Label;)V
    .registers 4

    iget-object v0, p0, Lorg/objectweb/asm/commons/InstructionAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    const/16 v1, 0x9c

    invoke-virtual {v0, v1, p1}, Lorg/objectweb/asm/MethodVisitor;->visitJumpInsn(ILorg/objectweb/asm/Label;)V

    return-void
.end method

.method public ifgt(Lorg/objectweb/asm/Label;)V
    .registers 4

    iget-object v0, p0, Lorg/objectweb/asm/commons/InstructionAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    const/16 v1, 0x9d

    invoke-virtual {v0, v1, p1}, Lorg/objectweb/asm/MethodVisitor;->visitJumpInsn(ILorg/objectweb/asm/Label;)V

    return-void
.end method

.method public ificmpeq(Lorg/objectweb/asm/Label;)V
    .registers 4

    iget-object v0, p0, Lorg/objectweb/asm/commons/InstructionAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    const/16 v1, 0x9f

    invoke-virtual {v0, v1, p1}, Lorg/objectweb/asm/MethodVisitor;->visitJumpInsn(ILorg/objectweb/asm/Label;)V

    return-void
.end method

.method public ificmpge(Lorg/objectweb/asm/Label;)V
    .registers 4

    iget-object v0, p0, Lorg/objectweb/asm/commons/InstructionAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    const/16 v1, 0xa2

    invoke-virtual {v0, v1, p1}, Lorg/objectweb/asm/MethodVisitor;->visitJumpInsn(ILorg/objectweb/asm/Label;)V

    return-void
.end method

.method public ificmpgt(Lorg/objectweb/asm/Label;)V
    .registers 4

    iget-object v0, p0, Lorg/objectweb/asm/commons/InstructionAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    const/16 v1, 0xa3

    invoke-virtual {v0, v1, p1}, Lorg/objectweb/asm/MethodVisitor;->visitJumpInsn(ILorg/objectweb/asm/Label;)V

    return-void
.end method

.method public ificmple(Lorg/objectweb/asm/Label;)V
    .registers 4

    iget-object v0, p0, Lorg/objectweb/asm/commons/InstructionAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    const/16 v1, 0xa4

    invoke-virtual {v0, v1, p1}, Lorg/objectweb/asm/MethodVisitor;->visitJumpInsn(ILorg/objectweb/asm/Label;)V

    return-void
.end method

.method public ificmplt(Lorg/objectweb/asm/Label;)V
    .registers 4

    iget-object v0, p0, Lorg/objectweb/asm/commons/InstructionAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    const/16 v1, 0xa1

    invoke-virtual {v0, v1, p1}, Lorg/objectweb/asm/MethodVisitor;->visitJumpInsn(ILorg/objectweb/asm/Label;)V

    return-void
.end method

.method public ificmpne(Lorg/objectweb/asm/Label;)V
    .registers 4

    iget-object v0, p0, Lorg/objectweb/asm/commons/InstructionAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    const/16 v1, 0xa0

    invoke-virtual {v0, v1, p1}, Lorg/objectweb/asm/MethodVisitor;->visitJumpInsn(ILorg/objectweb/asm/Label;)V

    return-void
.end method

.method public ifle(Lorg/objectweb/asm/Label;)V
    .registers 4

    iget-object v0, p0, Lorg/objectweb/asm/commons/InstructionAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    const/16 v1, 0x9e

    invoke-virtual {v0, v1, p1}, Lorg/objectweb/asm/MethodVisitor;->visitJumpInsn(ILorg/objectweb/asm/Label;)V

    return-void
.end method

.method public iflt(Lorg/objectweb/asm/Label;)V
    .registers 4

    iget-object v0, p0, Lorg/objectweb/asm/commons/InstructionAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    const/16 v1, 0x9b

    invoke-virtual {v0, v1, p1}, Lorg/objectweb/asm/MethodVisitor;->visitJumpInsn(ILorg/objectweb/asm/Label;)V

    return-void
.end method

.method public ifne(Lorg/objectweb/asm/Label;)V
    .registers 4

    iget-object v0, p0, Lorg/objectweb/asm/commons/InstructionAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    const/16 v1, 0x9a

    invoke-virtual {v0, v1, p1}, Lorg/objectweb/asm/MethodVisitor;->visitJumpInsn(ILorg/objectweb/asm/Label;)V

    return-void
.end method

.method public ifnonnull(Lorg/objectweb/asm/Label;)V
    .registers 4

    iget-object v0, p0, Lorg/objectweb/asm/commons/InstructionAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    const/16 v1, 0xc7

    invoke-virtual {v0, v1, p1}, Lorg/objectweb/asm/MethodVisitor;->visitJumpInsn(ILorg/objectweb/asm/Label;)V

    return-void
.end method

.method public ifnull(Lorg/objectweb/asm/Label;)V
    .registers 4

    iget-object v0, p0, Lorg/objectweb/asm/commons/InstructionAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    const/16 v1, 0xc6

    invoke-virtual {v0, v1, p1}, Lorg/objectweb/asm/MethodVisitor;->visitJumpInsn(ILorg/objectweb/asm/Label;)V

    return-void
.end method

.method public iinc(II)V
    .registers 4

    iget-object v0, p0, Lorg/objectweb/asm/commons/InstructionAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2}, Lorg/objectweb/asm/MethodVisitor;->visitIincInsn(II)V

    return-void
.end method

.method public instanceOf(Lorg/objectweb/asm/Type;)V
    .registers 5

    iget-object v0, p0, Lorg/objectweb/asm/commons/InstructionAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    const/16 v1, 0xc1

    invoke-virtual {p1}, Lorg/objectweb/asm/Type;->getInternalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/objectweb/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    return-void
.end method

.method public invokedynamic(Ljava/lang/String;Ljava/lang/String;Lorg/objectweb/asm/Handle;[Ljava/lang/Object;)V
    .registers 6

    iget-object v0, p0, Lorg/objectweb/asm/commons/InstructionAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/objectweb/asm/MethodVisitor;->visitInvokeDynamicInsn(Ljava/lang/String;Ljava/lang/String;Lorg/objectweb/asm/Handle;[Ljava/lang/Object;)V

    return-void
.end method

.method public invokeinterface(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    iget-object v0, p0, Lorg/objectweb/asm/commons/InstructionAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    const/16 v1, 0xb9

    const/4 v5, 0x1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lorg/objectweb/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public invokespecial(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    const/4 v5, 0x0

    iget v0, p0, Lorg/objectweb/asm/commons/InstructionAdapter;->api:I

    const/high16 v1, 0x50000

    if-lt v0, v1, :cond_b

    invoke-virtual {p0, p1, p2, p3, v5}, Lorg/objectweb/asm/commons/InstructionAdapter;->invokespecial(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_a
    return-void

    :cond_b
    iget-object v0, p0, Lorg/objectweb/asm/commons/InstructionAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    const/16 v1, 0xb7

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lorg/objectweb/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_a
.end method

.method public invokespecial(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 11

    iget v0, p0, Lorg/objectweb/asm/commons/InstructionAdapter;->api:I

    const/high16 v1, 0x50000

    if-ge v0, v1, :cond_14

    if-eqz p4, :cond_10

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "INVOKESPECIAL on interfaces require ASM 5"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    invoke-virtual {p0, p1, p2, p3}, Lorg/objectweb/asm/commons/InstructionAdapter;->invokespecial(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_13
    return-void

    :cond_14
    iget-object v0, p0, Lorg/objectweb/asm/commons/InstructionAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    const/16 v1, 0xb7

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/objectweb/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_13
.end method

.method public invokestatic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    const/4 v5, 0x0

    iget v0, p0, Lorg/objectweb/asm/commons/InstructionAdapter;->api:I

    const/high16 v1, 0x50000

    if-lt v0, v1, :cond_b

    invoke-virtual {p0, p1, p2, p3, v5}, Lorg/objectweb/asm/commons/InstructionAdapter;->invokestatic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_a
    return-void

    :cond_b
    iget-object v0, p0, Lorg/objectweb/asm/commons/InstructionAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    const/16 v1, 0xb8

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lorg/objectweb/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_a
.end method

.method public invokestatic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 11

    iget v0, p0, Lorg/objectweb/asm/commons/InstructionAdapter;->api:I

    const/high16 v1, 0x50000

    if-ge v0, v1, :cond_14

    if-eqz p4, :cond_10

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "INVOKESTATIC on interfaces require ASM 5"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    invoke-virtual {p0, p1, p2, p3}, Lorg/objectweb/asm/commons/InstructionAdapter;->invokestatic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_13
    return-void

    :cond_14
    iget-object v0, p0, Lorg/objectweb/asm/commons/InstructionAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    const/16 v1, 0xb8

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/objectweb/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_13
.end method

.method public invokevirtual(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    iget v0, p0, Lorg/objectweb/asm/commons/InstructionAdapter;->api:I

    const/high16 v1, 0x50000

    if-lt v0, v1, :cond_b

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->invokevirtual(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_a
    return-void

    :cond_b
    iget-object v0, p0, Lorg/objectweb/asm/commons/InstructionAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    const/16 v1, 0xb6

    invoke-virtual {v0, v1, p1, p2, p3}, Lorg/objectweb/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a
.end method

.method public invokevirtual(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 11

    iget v0, p0, Lorg/objectweb/asm/commons/InstructionAdapter;->api:I

    const/high16 v1, 0x50000

    if-ge v0, v1, :cond_14

    if-eqz p4, :cond_10

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "INVOKEVIRTUAL on interfaces require ASM 5"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    invoke-virtual {p0, p1, p2, p3}, Lorg/objectweb/asm/commons/InstructionAdapter;->invokevirtual(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_13
    return-void

    :cond_14
    iget-object v0, p0, Lorg/objectweb/asm/commons/InstructionAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    const/16 v1, 0xb6

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/objectweb/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_13
.end method

.method public jsr(Lorg/objectweb/asm/Label;)V
    .registers 4

    iget-object v0, p0, Lorg/objectweb/asm/commons/InstructionAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    const/16 v1, 0xa8

    invoke-virtual {v0, v1, p1}, Lorg/objectweb/asm/MethodVisitor;->visitJumpInsn(ILorg/objectweb/asm/Label;)V

    return-void
.end method

.method public lcmp()V
    .registers 3

    iget-object v0, p0, Lorg/objectweb/asm/commons/InstructionAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    const/16 v1, 0x94

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/MethodVisitor;->visitInsn(I)V

    return-void
.end method

.method public lconst(J)V
    .registers 6

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_c

    const-wide/16 v0, 0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_15

    :cond_c
    iget-object v0, p0, Lorg/objectweb/asm/commons/InstructionAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    long-to-int v1, p1

    add-int/lit8 v1, v1, 0x9

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/MethodVisitor;->visitInsn(I)V

    :goto_14
    return-void

    :cond_15
    iget-object v0, p0, Lorg/objectweb/asm/commons/InstructionAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    new-instance v1, Ljava/lang/Long;

    invoke-direct {v1, p1, p2}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    goto :goto_14
.end method

.method public load(ILorg/objectweb/asm/Type;)V
    .registers 5

    iget-object v0, p0, Lorg/objectweb/asm/commons/InstructionAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    const/16 v1, 0x15

    invoke-virtual {p2, v1}, Lorg/objectweb/asm/Type;->getOpcode(I)I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lorg/objectweb/asm/MethodVisitor;->visitVarInsn(II)V

    return-void
.end method

.method public lookupswitch(Lorg/objectweb/asm/Label;[I[Lorg/objectweb/asm/Label;)V
    .registers 5

    iget-object v0, p0, Lorg/objectweb/asm/commons/InstructionAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2, p3}, Lorg/objectweb/asm/MethodVisitor;->visitLookupSwitchInsn(Lorg/objectweb/asm/Label;[I[Lorg/objectweb/asm/Label;)V

    return-void
.end method

.method public mark(Lorg/objectweb/asm/Label;)V
    .registers 3

    iget-object v0, p0, Lorg/objectweb/asm/commons/InstructionAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    invoke-virtual {v0, p1}, Lorg/objectweb/asm/MethodVisitor;->visitLabel(Lorg/objectweb/asm/Label;)V

    return-void
.end method

.method public monitorenter()V
    .registers 3

    iget-object v0, p0, Lorg/objectweb/asm/commons/InstructionAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    const/16 v1, 0xc2

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/MethodVisitor;->visitInsn(I)V

    return-void
.end method

.method public monitorexit()V
    .registers 3

    iget-object v0, p0, Lorg/objectweb/asm/commons/InstructionAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    const/16 v1, 0xc3

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/MethodVisitor;->visitInsn(I)V

    return-void
.end method

.method public mul(Lorg/objectweb/asm/Type;)V
    .registers 4

    iget-object v0, p0, Lorg/objectweb/asm/commons/InstructionAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    const/16 v1, 0x68

    invoke-virtual {p1, v1}, Lorg/objectweb/asm/Type;->getOpcode(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/MethodVisitor;->visitInsn(I)V

    return-void
.end method

.method public multianewarray(Ljava/lang/String;I)V
    .registers 4

    iget-object v0, p0, Lorg/objectweb/asm/commons/InstructionAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2}, Lorg/objectweb/asm/MethodVisitor;->visitMultiANewArrayInsn(Ljava/lang/String;I)V

    return-void
.end method

.method public neg(Lorg/objectweb/asm/Type;)V
    .registers 4

    iget-object v0, p0, Lorg/objectweb/asm/commons/InstructionAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    const/16 v1, 0x74

    invoke-virtual {p1, v1}, Lorg/objectweb/asm/Type;->getOpcode(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/MethodVisitor;->visitInsn(I)V

    return-void
.end method

.method public newarray(Lorg/objectweb/asm/Type;)V
    .registers 5

    invoke-virtual {p1}, Lorg/objectweb/asm/Type;->getSort()I

    move-result v0

    packed-switch v0, :pswitch_data_2e

    iget-object v0, p0, Lorg/objectweb/asm/commons/InstructionAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    const/16 v1, 0xbd

    invoke-virtual {p1}, Lorg/objectweb/asm/Type;->getInternalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/objectweb/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    :goto_12
    return-void

    :pswitch_13  #0x1
    const/4 v0, 0x4

    :goto_14
    iget-object v1, p0, Lorg/objectweb/asm/commons/InstructionAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    const/16 v2, 0xbc

    invoke-virtual {v1, v2, v0}, Lorg/objectweb/asm/MethodVisitor;->visitIntInsn(II)V

    goto :goto_12

    :pswitch_1c  #0x2
    const/4 v0, 0x5

    goto :goto_14

    :pswitch_1e  #0x3
    const/16 v0, 0x8

    goto :goto_14

    :pswitch_21  #0x4
    const/16 v0, 0x9

    goto :goto_14

    :pswitch_24  #0x5
    const/16 v0, 0xa

    goto :goto_14

    :pswitch_27  #0x6
    const/4 v0, 0x6

    goto :goto_14

    :pswitch_29  #0x7
    const/16 v0, 0xb

    goto :goto_14

    :pswitch_2c  #0x8
    const/4 v0, 0x7

    goto :goto_14

    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_13  #00000001
        :pswitch_1c  #00000002
        :pswitch_1e  #00000003
        :pswitch_21  #00000004
        :pswitch_24  #00000005
        :pswitch_27  #00000006
        :pswitch_29  #00000007
        :pswitch_2c  #00000008
    .end packed-switch
.end method

.method public nop()V
    .registers 3

    iget-object v0, p0, Lorg/objectweb/asm/commons/InstructionAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/MethodVisitor;->visitInsn(I)V

    return-void
.end method

.method public or(Lorg/objectweb/asm/Type;)V
    .registers 4

    iget-object v0, p0, Lorg/objectweb/asm/commons/InstructionAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    const/16 v1, 0x80

    invoke-virtual {p1, v1}, Lorg/objectweb/asm/Type;->getOpcode(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/MethodVisitor;->visitInsn(I)V

    return-void
.end method

.method public pop()V
    .registers 3

    iget-object v0, p0, Lorg/objectweb/asm/commons/InstructionAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    const/16 v1, 0x57

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/MethodVisitor;->visitInsn(I)V

    return-void
.end method

.method public pop2()V
    .registers 3

    iget-object v0, p0, Lorg/objectweb/asm/commons/InstructionAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    const/16 v1, 0x58

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/MethodVisitor;->visitInsn(I)V

    return-void
.end method

.method public putfield(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lorg/objectweb/asm/commons/InstructionAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    const/16 v1, 0xb5

    invoke-virtual {v0, v1, p1, p2, p3}, Lorg/objectweb/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public putstatic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lorg/objectweb/asm/commons/InstructionAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    const/16 v1, 0xb3

    invoke-virtual {v0, v1, p1, p2, p3}, Lorg/objectweb/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public rem(Lorg/objectweb/asm/Type;)V
    .registers 4

    iget-object v0, p0, Lorg/objectweb/asm/commons/InstructionAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    const/16 v1, 0x70

    invoke-virtual {p1, v1}, Lorg/objectweb/asm/Type;->getOpcode(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/MethodVisitor;->visitInsn(I)V

    return-void
.end method

.method public ret(I)V
    .registers 4

    iget-object v0, p0, Lorg/objectweb/asm/commons/InstructionAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    const/16 v1, 0xa9

    invoke-virtual {v0, v1, p1}, Lorg/objectweb/asm/MethodVisitor;->visitVarInsn(II)V

    return-void
.end method

.method public shl(Lorg/objectweb/asm/Type;)V
    .registers 4

    iget-object v0, p0, Lorg/objectweb/asm/commons/InstructionAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    const/16 v1, 0x78

    invoke-virtual {p1, v1}, Lorg/objectweb/asm/Type;->getOpcode(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/MethodVisitor;->visitInsn(I)V

    return-void
.end method

.method public shr(Lorg/objectweb/asm/Type;)V
    .registers 4

    iget-object v0, p0, Lorg/objectweb/asm/commons/InstructionAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    const/16 v1, 0x7a

    invoke-virtual {p1, v1}, Lorg/objectweb/asm/Type;->getOpcode(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/MethodVisitor;->visitInsn(I)V

    return-void
.end method

.method public store(ILorg/objectweb/asm/Type;)V
    .registers 5

    iget-object v0, p0, Lorg/objectweb/asm/commons/InstructionAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    const/16 v1, 0x36

    invoke-virtual {p2, v1}, Lorg/objectweb/asm/Type;->getOpcode(I)I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lorg/objectweb/asm/MethodVisitor;->visitVarInsn(II)V

    return-void
.end method

.method public sub(Lorg/objectweb/asm/Type;)V
    .registers 4

    iget-object v0, p0, Lorg/objectweb/asm/commons/InstructionAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    const/16 v1, 0x64

    invoke-virtual {p1, v1}, Lorg/objectweb/asm/Type;->getOpcode(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/MethodVisitor;->visitInsn(I)V

    return-void
.end method

.method public swap()V
    .registers 3

    iget-object v0, p0, Lorg/objectweb/asm/commons/InstructionAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    const/16 v1, 0x5f

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/MethodVisitor;->visitInsn(I)V

    return-void
.end method

.method public varargs tableswitch(IILorg/objectweb/asm/Label;[Lorg/objectweb/asm/Label;)V
    .registers 6

    iget-object v0, p0, Lorg/objectweb/asm/commons/InstructionAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/objectweb/asm/MethodVisitor;->visitTableSwitchInsn(IILorg/objectweb/asm/Label;[Lorg/objectweb/asm/Label;)V

    return-void
.end method

.method public tconst(Lorg/objectweb/asm/Type;)V
    .registers 3

    iget-object v0, p0, Lorg/objectweb/asm/commons/InstructionAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    invoke-virtual {v0, p1}, Lorg/objectweb/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    return-void
.end method

.method public ushr(Lorg/objectweb/asm/Type;)V
    .registers 4

    iget-object v0, p0, Lorg/objectweb/asm/commons/InstructionAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    const/16 v1, 0x7c

    invoke-virtual {p1, v1}, Lorg/objectweb/asm/Type;->getOpcode(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/MethodVisitor;->visitInsn(I)V

    return-void
.end method

.method public visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    packed-switch p1, :pswitch_data_1a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :pswitch_9  #0xb2
    invoke-virtual {p0, p2, p3, p4}, Lorg/objectweb/asm/commons/InstructionAdapter;->getstatic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_c
    return-void

    :pswitch_d  #0xb3
    invoke-virtual {p0, p2, p3, p4}, Lorg/objectweb/asm/commons/InstructionAdapter;->putstatic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    :pswitch_11  #0xb4
    invoke-virtual {p0, p2, p3, p4}, Lorg/objectweb/asm/commons/InstructionAdapter;->getfield(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    :pswitch_15  #0xb5
    invoke-virtual {p0, p2, p3, p4}, Lorg/objectweb/asm/commons/InstructionAdapter;->putfield(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    nop

    :pswitch_data_1a
    .packed-switch 0xb2
        :pswitch_9  #000000b2
        :pswitch_d  #000000b3
        :pswitch_11  #000000b4
        :pswitch_15  #000000b5
    .end packed-switch
.end method

.method public visitIincInsn(II)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lorg/objectweb/asm/commons/InstructionAdapter;->iinc(II)V

    return-void
.end method

.method public visitInsn(I)V
    .registers 4

    packed-switch p1, :pswitch_data_29c

    :pswitch_3  #0x10, 0x11, 0x12, 0x13, 0x14, 0x15, 0x16, 0x17, 0x18, 0x19, 0x1a, 0x1b, 0x1c, 0x1d, 0x1e, 0x1f, 0x20, 0x21, 0x22, 0x23, 0x24, 0x25, 0x26, 0x27, 0x28, 0x29, 0x2a, 0x2b, 0x2c, 0x2d, 0x36, 0x37, 0x38, 0x39, 0x3a, 0x3b, 0x3c, 0x3d, 0x3e, 0x3f, 0x40, 0x41, 0x42, 0x43, 0x44, 0x45, 0x46, 0x47, 0x48, 0x49, 0x4a, 0x4b, 0x4c, 0x4d, 0x4e, 0x84, 0x99, 0x9a, 0x9b, 0x9c, 0x9d, 0x9e, 0x9f, 0xa0, 0xa1, 0xa2, 0xa3, 0xa4, 0xa5, 0xa6, 0xa7, 0xa8, 0xa9, 0xaa, 0xab, 0xb2, 0xb3, 0xb4, 0xb5, 0xb6, 0xb7, 0xb8, 0xb9, 0xba, 0xbb, 0xbc, 0xbd, 0xc0, 0xc1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :pswitch_9  #0x0
    invoke-virtual {p0}, Lorg/objectweb/asm/commons/InstructionAdapter;->nop()V

    :goto_c
    return-void

    :pswitch_d  #0x1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->aconst(Ljava/lang/Object;)V

    goto :goto_c

    :pswitch_12  #0x2, 0x3, 0x4, 0x5, 0x6, 0x7, 0x8
    add-int/lit8 v0, p1, -0x3

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->iconst(I)V

    goto :goto_c

    :pswitch_18  #0x9, 0xa
    add-int/lit8 v0, p1, -0x9

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lorg/objectweb/asm/commons/InstructionAdapter;->lconst(J)V

    goto :goto_c

    :pswitch_1f  #0xb, 0xc, 0xd
    add-int/lit8 v0, p1, -0xb

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->fconst(F)V

    goto :goto_c

    :pswitch_26  #0xe, 0xf
    add-int/lit8 v0, p1, -0xe

    int-to-double v0, v0

    invoke-virtual {p0, v0, v1}, Lorg/objectweb/asm/commons/InstructionAdapter;->dconst(D)V

    goto :goto_c

    :pswitch_2d  #0x2e
    sget-object v0, Lorg/objectweb/asm/Type;->INT_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->aload(Lorg/objectweb/asm/Type;)V

    goto :goto_c

    :pswitch_33  #0x2f
    sget-object v0, Lorg/objectweb/asm/Type;->LONG_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->aload(Lorg/objectweb/asm/Type;)V

    goto :goto_c

    :pswitch_39  #0x30
    sget-object v0, Lorg/objectweb/asm/Type;->FLOAT_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->aload(Lorg/objectweb/asm/Type;)V

    goto :goto_c

    :pswitch_3f  #0x31
    sget-object v0, Lorg/objectweb/asm/Type;->DOUBLE_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->aload(Lorg/objectweb/asm/Type;)V

    goto :goto_c

    :pswitch_45  #0x32
    sget-object v0, Lorg/objectweb/asm/commons/InstructionAdapter;->OBJECT_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->aload(Lorg/objectweb/asm/Type;)V

    goto :goto_c

    :pswitch_4b  #0x33
    sget-object v0, Lorg/objectweb/asm/Type;->BYTE_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->aload(Lorg/objectweb/asm/Type;)V

    goto :goto_c

    :pswitch_51  #0x34
    sget-object v0, Lorg/objectweb/asm/Type;->CHAR_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->aload(Lorg/objectweb/asm/Type;)V

    goto :goto_c

    :pswitch_57  #0x35
    sget-object v0, Lorg/objectweb/asm/Type;->SHORT_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->aload(Lorg/objectweb/asm/Type;)V

    goto :goto_c

    :pswitch_5d  #0x4f
    sget-object v0, Lorg/objectweb/asm/Type;->INT_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->astore(Lorg/objectweb/asm/Type;)V

    goto :goto_c

    :pswitch_63  #0x50
    sget-object v0, Lorg/objectweb/asm/Type;->LONG_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->astore(Lorg/objectweb/asm/Type;)V

    goto :goto_c

    :pswitch_69  #0x51
    sget-object v0, Lorg/objectweb/asm/Type;->FLOAT_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->astore(Lorg/objectweb/asm/Type;)V

    goto :goto_c

    :pswitch_6f  #0x52
    sget-object v0, Lorg/objectweb/asm/Type;->DOUBLE_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->astore(Lorg/objectweb/asm/Type;)V

    goto :goto_c

    :pswitch_75  #0x53
    sget-object v0, Lorg/objectweb/asm/commons/InstructionAdapter;->OBJECT_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->astore(Lorg/objectweb/asm/Type;)V

    goto :goto_c

    :pswitch_7b  #0x54
    sget-object v0, Lorg/objectweb/asm/Type;->BYTE_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->astore(Lorg/objectweb/asm/Type;)V

    goto :goto_c

    :pswitch_81  #0x55
    sget-object v0, Lorg/objectweb/asm/Type;->CHAR_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->astore(Lorg/objectweb/asm/Type;)V

    goto :goto_c

    :pswitch_87  #0x56
    sget-object v0, Lorg/objectweb/asm/Type;->SHORT_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->astore(Lorg/objectweb/asm/Type;)V

    goto :goto_c

    :pswitch_8d  #0x57
    invoke-virtual {p0}, Lorg/objectweb/asm/commons/InstructionAdapter;->pop()V

    goto/16 :goto_c

    :pswitch_92  #0x58
    invoke-virtual {p0}, Lorg/objectweb/asm/commons/InstructionAdapter;->pop2()V

    goto/16 :goto_c

    :pswitch_97  #0x59
    invoke-virtual {p0}, Lorg/objectweb/asm/commons/InstructionAdapter;->dup()V

    goto/16 :goto_c

    :pswitch_9c  #0x5a
    invoke-virtual {p0}, Lorg/objectweb/asm/commons/InstructionAdapter;->dupX1()V

    goto/16 :goto_c

    :pswitch_a1  #0x5b
    invoke-virtual {p0}, Lorg/objectweb/asm/commons/InstructionAdapter;->dupX2()V

    goto/16 :goto_c

    :pswitch_a6  #0x5c
    invoke-virtual {p0}, Lorg/objectweb/asm/commons/InstructionAdapter;->dup2()V

    goto/16 :goto_c

    :pswitch_ab  #0x5d
    invoke-virtual {p0}, Lorg/objectweb/asm/commons/InstructionAdapter;->dup2X1()V

    goto/16 :goto_c

    :pswitch_b0  #0x5e
    invoke-virtual {p0}, Lorg/objectweb/asm/commons/InstructionAdapter;->dup2X2()V

    goto/16 :goto_c

    :pswitch_b5  #0x5f
    invoke-virtual {p0}, Lorg/objectweb/asm/commons/InstructionAdapter;->swap()V

    goto/16 :goto_c

    :pswitch_ba  #0x60
    sget-object v0, Lorg/objectweb/asm/Type;->INT_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->add(Lorg/objectweb/asm/Type;)V

    goto/16 :goto_c

    :pswitch_c1  #0x61
    sget-object v0, Lorg/objectweb/asm/Type;->LONG_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->add(Lorg/objectweb/asm/Type;)V

    goto/16 :goto_c

    :pswitch_c8  #0x62
    sget-object v0, Lorg/objectweb/asm/Type;->FLOAT_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->add(Lorg/objectweb/asm/Type;)V

    goto/16 :goto_c

    :pswitch_cf  #0x63
    sget-object v0, Lorg/objectweb/asm/Type;->DOUBLE_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->add(Lorg/objectweb/asm/Type;)V

    goto/16 :goto_c

    :pswitch_d6  #0x64
    sget-object v0, Lorg/objectweb/asm/Type;->INT_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->sub(Lorg/objectweb/asm/Type;)V

    goto/16 :goto_c

    :pswitch_dd  #0x65
    sget-object v0, Lorg/objectweb/asm/Type;->LONG_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->sub(Lorg/objectweb/asm/Type;)V

    goto/16 :goto_c

    :pswitch_e4  #0x66
    sget-object v0, Lorg/objectweb/asm/Type;->FLOAT_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->sub(Lorg/objectweb/asm/Type;)V

    goto/16 :goto_c

    :pswitch_eb  #0x67
    sget-object v0, Lorg/objectweb/asm/Type;->DOUBLE_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->sub(Lorg/objectweb/asm/Type;)V

    goto/16 :goto_c

    :pswitch_f2  #0x68
    sget-object v0, Lorg/objectweb/asm/Type;->INT_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->mul(Lorg/objectweb/asm/Type;)V

    goto/16 :goto_c

    :pswitch_f9  #0x69
    sget-object v0, Lorg/objectweb/asm/Type;->LONG_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->mul(Lorg/objectweb/asm/Type;)V

    goto/16 :goto_c

    :pswitch_100  #0x6a
    sget-object v0, Lorg/objectweb/asm/Type;->FLOAT_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->mul(Lorg/objectweb/asm/Type;)V

    goto/16 :goto_c

    :pswitch_107  #0x6b
    sget-object v0, Lorg/objectweb/asm/Type;->DOUBLE_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->mul(Lorg/objectweb/asm/Type;)V

    goto/16 :goto_c

    :pswitch_10e  #0x6c
    sget-object v0, Lorg/objectweb/asm/Type;->INT_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->div(Lorg/objectweb/asm/Type;)V

    goto/16 :goto_c

    :pswitch_115  #0x6d
    sget-object v0, Lorg/objectweb/asm/Type;->LONG_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->div(Lorg/objectweb/asm/Type;)V

    goto/16 :goto_c

    :pswitch_11c  #0x6e
    sget-object v0, Lorg/objectweb/asm/Type;->FLOAT_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->div(Lorg/objectweb/asm/Type;)V

    goto/16 :goto_c

    :pswitch_123  #0x6f
    sget-object v0, Lorg/objectweb/asm/Type;->DOUBLE_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->div(Lorg/objectweb/asm/Type;)V

    goto/16 :goto_c

    :pswitch_12a  #0x70
    sget-object v0, Lorg/objectweb/asm/Type;->INT_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->rem(Lorg/objectweb/asm/Type;)V

    goto/16 :goto_c

    :pswitch_131  #0x71
    sget-object v0, Lorg/objectweb/asm/Type;->LONG_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->rem(Lorg/objectweb/asm/Type;)V

    goto/16 :goto_c

    :pswitch_138  #0x72
    sget-object v0, Lorg/objectweb/asm/Type;->FLOAT_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->rem(Lorg/objectweb/asm/Type;)V

    goto/16 :goto_c

    :pswitch_13f  #0x73
    sget-object v0, Lorg/objectweb/asm/Type;->DOUBLE_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->rem(Lorg/objectweb/asm/Type;)V

    goto/16 :goto_c

    :pswitch_146  #0x74
    sget-object v0, Lorg/objectweb/asm/Type;->INT_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->neg(Lorg/objectweb/asm/Type;)V

    goto/16 :goto_c

    :pswitch_14d  #0x75
    sget-object v0, Lorg/objectweb/asm/Type;->LONG_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->neg(Lorg/objectweb/asm/Type;)V

    goto/16 :goto_c

    :pswitch_154  #0x76
    sget-object v0, Lorg/objectweb/asm/Type;->FLOAT_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->neg(Lorg/objectweb/asm/Type;)V

    goto/16 :goto_c

    :pswitch_15b  #0x77
    sget-object v0, Lorg/objectweb/asm/Type;->DOUBLE_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->neg(Lorg/objectweb/asm/Type;)V

    goto/16 :goto_c

    :pswitch_162  #0x78
    sget-object v0, Lorg/objectweb/asm/Type;->INT_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->shl(Lorg/objectweb/asm/Type;)V

    goto/16 :goto_c

    :pswitch_169  #0x79
    sget-object v0, Lorg/objectweb/asm/Type;->LONG_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->shl(Lorg/objectweb/asm/Type;)V

    goto/16 :goto_c

    :pswitch_170  #0x7a
    sget-object v0, Lorg/objectweb/asm/Type;->INT_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->shr(Lorg/objectweb/asm/Type;)V

    goto/16 :goto_c

    :pswitch_177  #0x7b
    sget-object v0, Lorg/objectweb/asm/Type;->LONG_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->shr(Lorg/objectweb/asm/Type;)V

    goto/16 :goto_c

    :pswitch_17e  #0x7c
    sget-object v0, Lorg/objectweb/asm/Type;->INT_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->ushr(Lorg/objectweb/asm/Type;)V

    goto/16 :goto_c

    :pswitch_185  #0x7d
    sget-object v0, Lorg/objectweb/asm/Type;->LONG_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->ushr(Lorg/objectweb/asm/Type;)V

    goto/16 :goto_c

    :pswitch_18c  #0x7e
    sget-object v0, Lorg/objectweb/asm/Type;->INT_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->and(Lorg/objectweb/asm/Type;)V

    goto/16 :goto_c

    :pswitch_193  #0x7f
    sget-object v0, Lorg/objectweb/asm/Type;->LONG_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->and(Lorg/objectweb/asm/Type;)V

    goto/16 :goto_c

    :pswitch_19a  #0x80
    sget-object v0, Lorg/objectweb/asm/Type;->INT_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->or(Lorg/objectweb/asm/Type;)V

    goto/16 :goto_c

    :pswitch_1a1  #0x81
    sget-object v0, Lorg/objectweb/asm/Type;->LONG_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->or(Lorg/objectweb/asm/Type;)V

    goto/16 :goto_c

    :pswitch_1a8  #0x82
    sget-object v0, Lorg/objectweb/asm/Type;->INT_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->xor(Lorg/objectweb/asm/Type;)V

    goto/16 :goto_c

    :pswitch_1af  #0x83
    sget-object v0, Lorg/objectweb/asm/Type;->LONG_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->xor(Lorg/objectweb/asm/Type;)V

    goto/16 :goto_c

    :pswitch_1b6  #0x85
    sget-object v0, Lorg/objectweb/asm/Type;->INT_TYPE:Lorg/objectweb/asm/Type;

    sget-object v1, Lorg/objectweb/asm/Type;->LONG_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0, v1}, Lorg/objectweb/asm/commons/InstructionAdapter;->cast(Lorg/objectweb/asm/Type;Lorg/objectweb/asm/Type;)V

    goto/16 :goto_c

    :pswitch_1bf  #0x86
    sget-object v0, Lorg/objectweb/asm/Type;->INT_TYPE:Lorg/objectweb/asm/Type;

    sget-object v1, Lorg/objectweb/asm/Type;->FLOAT_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0, v1}, Lorg/objectweb/asm/commons/InstructionAdapter;->cast(Lorg/objectweb/asm/Type;Lorg/objectweb/asm/Type;)V

    goto/16 :goto_c

    :pswitch_1c8  #0x87
    sget-object v0, Lorg/objectweb/asm/Type;->INT_TYPE:Lorg/objectweb/asm/Type;

    sget-object v1, Lorg/objectweb/asm/Type;->DOUBLE_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0, v1}, Lorg/objectweb/asm/commons/InstructionAdapter;->cast(Lorg/objectweb/asm/Type;Lorg/objectweb/asm/Type;)V

    goto/16 :goto_c

    :pswitch_1d1  #0x88
    sget-object v0, Lorg/objectweb/asm/Type;->LONG_TYPE:Lorg/objectweb/asm/Type;

    sget-object v1, Lorg/objectweb/asm/Type;->INT_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0, v1}, Lorg/objectweb/asm/commons/InstructionAdapter;->cast(Lorg/objectweb/asm/Type;Lorg/objectweb/asm/Type;)V

    goto/16 :goto_c

    :pswitch_1da  #0x89
    sget-object v0, Lorg/objectweb/asm/Type;->LONG_TYPE:Lorg/objectweb/asm/Type;

    sget-object v1, Lorg/objectweb/asm/Type;->FLOAT_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0, v1}, Lorg/objectweb/asm/commons/InstructionAdapter;->cast(Lorg/objectweb/asm/Type;Lorg/objectweb/asm/Type;)V

    goto/16 :goto_c

    :pswitch_1e3  #0x8a
    sget-object v0, Lorg/objectweb/asm/Type;->LONG_TYPE:Lorg/objectweb/asm/Type;

    sget-object v1, Lorg/objectweb/asm/Type;->DOUBLE_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0, v1}, Lorg/objectweb/asm/commons/InstructionAdapter;->cast(Lorg/objectweb/asm/Type;Lorg/objectweb/asm/Type;)V

    goto/16 :goto_c

    :pswitch_1ec  #0x8b
    sget-object v0, Lorg/objectweb/asm/Type;->FLOAT_TYPE:Lorg/objectweb/asm/Type;

    sget-object v1, Lorg/objectweb/asm/Type;->INT_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0, v1}, Lorg/objectweb/asm/commons/InstructionAdapter;->cast(Lorg/objectweb/asm/Type;Lorg/objectweb/asm/Type;)V

    goto/16 :goto_c

    :pswitch_1f5  #0x8c
    sget-object v0, Lorg/objectweb/asm/Type;->FLOAT_TYPE:Lorg/objectweb/asm/Type;

    sget-object v1, Lorg/objectweb/asm/Type;->LONG_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0, v1}, Lorg/objectweb/asm/commons/InstructionAdapter;->cast(Lorg/objectweb/asm/Type;Lorg/objectweb/asm/Type;)V

    goto/16 :goto_c

    :pswitch_1fe  #0x8d
    sget-object v0, Lorg/objectweb/asm/Type;->FLOAT_TYPE:Lorg/objectweb/asm/Type;

    sget-object v1, Lorg/objectweb/asm/Type;->DOUBLE_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0, v1}, Lorg/objectweb/asm/commons/InstructionAdapter;->cast(Lorg/objectweb/asm/Type;Lorg/objectweb/asm/Type;)V

    goto/16 :goto_c

    :pswitch_207  #0x8e
    sget-object v0, Lorg/objectweb/asm/Type;->DOUBLE_TYPE:Lorg/objectweb/asm/Type;

    sget-object v1, Lorg/objectweb/asm/Type;->INT_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0, v1}, Lorg/objectweb/asm/commons/InstructionAdapter;->cast(Lorg/objectweb/asm/Type;Lorg/objectweb/asm/Type;)V

    goto/16 :goto_c

    :pswitch_210  #0x8f
    sget-object v0, Lorg/objectweb/asm/Type;->DOUBLE_TYPE:Lorg/objectweb/asm/Type;

    sget-object v1, Lorg/objectweb/asm/Type;->LONG_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0, v1}, Lorg/objectweb/asm/commons/InstructionAdapter;->cast(Lorg/objectweb/asm/Type;Lorg/objectweb/asm/Type;)V

    goto/16 :goto_c

    :pswitch_219  #0x90
    sget-object v0, Lorg/objectweb/asm/Type;->DOUBLE_TYPE:Lorg/objectweb/asm/Type;

    sget-object v1, Lorg/objectweb/asm/Type;->FLOAT_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0, v1}, Lorg/objectweb/asm/commons/InstructionAdapter;->cast(Lorg/objectweb/asm/Type;Lorg/objectweb/asm/Type;)V

    goto/16 :goto_c

    :pswitch_222  #0x91
    sget-object v0, Lorg/objectweb/asm/Type;->INT_TYPE:Lorg/objectweb/asm/Type;

    sget-object v1, Lorg/objectweb/asm/Type;->BYTE_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0, v1}, Lorg/objectweb/asm/commons/InstructionAdapter;->cast(Lorg/objectweb/asm/Type;Lorg/objectweb/asm/Type;)V

    goto/16 :goto_c

    :pswitch_22b  #0x92
    sget-object v0, Lorg/objectweb/asm/Type;->INT_TYPE:Lorg/objectweb/asm/Type;

    sget-object v1, Lorg/objectweb/asm/Type;->CHAR_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0, v1}, Lorg/objectweb/asm/commons/InstructionAdapter;->cast(Lorg/objectweb/asm/Type;Lorg/objectweb/asm/Type;)V

    goto/16 :goto_c

    :pswitch_234  #0x93
    sget-object v0, Lorg/objectweb/asm/Type;->INT_TYPE:Lorg/objectweb/asm/Type;

    sget-object v1, Lorg/objectweb/asm/Type;->SHORT_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0, v1}, Lorg/objectweb/asm/commons/InstructionAdapter;->cast(Lorg/objectweb/asm/Type;Lorg/objectweb/asm/Type;)V

    goto/16 :goto_c

    :pswitch_23d  #0x94
    invoke-virtual {p0}, Lorg/objectweb/asm/commons/InstructionAdapter;->lcmp()V

    goto/16 :goto_c

    :pswitch_242  #0x95
    sget-object v0, Lorg/objectweb/asm/Type;->FLOAT_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->cmpl(Lorg/objectweb/asm/Type;)V

    goto/16 :goto_c

    :pswitch_249  #0x96
    sget-object v0, Lorg/objectweb/asm/Type;->FLOAT_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->cmpg(Lorg/objectweb/asm/Type;)V

    goto/16 :goto_c

    :pswitch_250  #0x97
    sget-object v0, Lorg/objectweb/asm/Type;->DOUBLE_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->cmpl(Lorg/objectweb/asm/Type;)V

    goto/16 :goto_c

    :pswitch_257  #0x98
    sget-object v0, Lorg/objectweb/asm/Type;->DOUBLE_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->cmpg(Lorg/objectweb/asm/Type;)V

    goto/16 :goto_c

    :pswitch_25e  #0xac
    sget-object v0, Lorg/objectweb/asm/Type;->INT_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->areturn(Lorg/objectweb/asm/Type;)V

    goto/16 :goto_c

    :pswitch_265  #0xad
    sget-object v0, Lorg/objectweb/asm/Type;->LONG_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->areturn(Lorg/objectweb/asm/Type;)V

    goto/16 :goto_c

    :pswitch_26c  #0xae
    sget-object v0, Lorg/objectweb/asm/Type;->FLOAT_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->areturn(Lorg/objectweb/asm/Type;)V

    goto/16 :goto_c

    :pswitch_273  #0xaf
    sget-object v0, Lorg/objectweb/asm/Type;->DOUBLE_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->areturn(Lorg/objectweb/asm/Type;)V

    goto/16 :goto_c

    :pswitch_27a  #0xb0
    sget-object v0, Lorg/objectweb/asm/commons/InstructionAdapter;->OBJECT_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->areturn(Lorg/objectweb/asm/Type;)V

    goto/16 :goto_c

    :pswitch_281  #0xb1
    sget-object v0, Lorg/objectweb/asm/Type;->VOID_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->areturn(Lorg/objectweb/asm/Type;)V

    goto/16 :goto_c

    :pswitch_288  #0xbe
    invoke-virtual {p0}, Lorg/objectweb/asm/commons/InstructionAdapter;->arraylength()V

    goto/16 :goto_c

    :pswitch_28d  #0xbf
    invoke-virtual {p0}, Lorg/objectweb/asm/commons/InstructionAdapter;->athrow()V

    goto/16 :goto_c

    :pswitch_292  #0xc2
    invoke-virtual {p0}, Lorg/objectweb/asm/commons/InstructionAdapter;->monitorenter()V

    goto/16 :goto_c

    :pswitch_297  #0xc3
    invoke-virtual {p0}, Lorg/objectweb/asm/commons/InstructionAdapter;->monitorexit()V

    goto/16 :goto_c

    :pswitch_data_29c
    .packed-switch 0x0
        :pswitch_9  #00000000
        :pswitch_d  #00000001
        :pswitch_12  #00000002
        :pswitch_12  #00000003
        :pswitch_12  #00000004
        :pswitch_12  #00000005
        :pswitch_12  #00000006
        :pswitch_12  #00000007
        :pswitch_12  #00000008
        :pswitch_18  #00000009
        :pswitch_18  #0000000a
        :pswitch_1f  #0000000b
        :pswitch_1f  #0000000c
        :pswitch_1f  #0000000d
        :pswitch_26  #0000000e
        :pswitch_26  #0000000f
        :pswitch_3  #00000010
        :pswitch_3  #00000011
        :pswitch_3  #00000012
        :pswitch_3  #00000013
        :pswitch_3  #00000014
        :pswitch_3  #00000015
        :pswitch_3  #00000016
        :pswitch_3  #00000017
        :pswitch_3  #00000018
        :pswitch_3  #00000019
        :pswitch_3  #0000001a
        :pswitch_3  #0000001b
        :pswitch_3  #0000001c
        :pswitch_3  #0000001d
        :pswitch_3  #0000001e
        :pswitch_3  #0000001f
        :pswitch_3  #00000020
        :pswitch_3  #00000021
        :pswitch_3  #00000022
        :pswitch_3  #00000023
        :pswitch_3  #00000024
        :pswitch_3  #00000025
        :pswitch_3  #00000026
        :pswitch_3  #00000027
        :pswitch_3  #00000028
        :pswitch_3  #00000029
        :pswitch_3  #0000002a
        :pswitch_3  #0000002b
        :pswitch_3  #0000002c
        :pswitch_3  #0000002d
        :pswitch_2d  #0000002e
        :pswitch_33  #0000002f
        :pswitch_39  #00000030
        :pswitch_3f  #00000031
        :pswitch_45  #00000032
        :pswitch_4b  #00000033
        :pswitch_51  #00000034
        :pswitch_57  #00000035
        :pswitch_3  #00000036
        :pswitch_3  #00000037
        :pswitch_3  #00000038
        :pswitch_3  #00000039
        :pswitch_3  #0000003a
        :pswitch_3  #0000003b
        :pswitch_3  #0000003c
        :pswitch_3  #0000003d
        :pswitch_3  #0000003e
        :pswitch_3  #0000003f
        :pswitch_3  #00000040
        :pswitch_3  #00000041
        :pswitch_3  #00000042
        :pswitch_3  #00000043
        :pswitch_3  #00000044
        :pswitch_3  #00000045
        :pswitch_3  #00000046
        :pswitch_3  #00000047
        :pswitch_3  #00000048
        :pswitch_3  #00000049
        :pswitch_3  #0000004a
        :pswitch_3  #0000004b
        :pswitch_3  #0000004c
        :pswitch_3  #0000004d
        :pswitch_3  #0000004e
        :pswitch_5d  #0000004f
        :pswitch_63  #00000050
        :pswitch_69  #00000051
        :pswitch_6f  #00000052
        :pswitch_75  #00000053
        :pswitch_7b  #00000054
        :pswitch_81  #00000055
        :pswitch_87  #00000056
        :pswitch_8d  #00000057
        :pswitch_92  #00000058
        :pswitch_97  #00000059
        :pswitch_9c  #0000005a
        :pswitch_a1  #0000005b
        :pswitch_a6  #0000005c
        :pswitch_ab  #0000005d
        :pswitch_b0  #0000005e
        :pswitch_b5  #0000005f
        :pswitch_ba  #00000060
        :pswitch_c1  #00000061
        :pswitch_c8  #00000062
        :pswitch_cf  #00000063
        :pswitch_d6  #00000064
        :pswitch_dd  #00000065
        :pswitch_e4  #00000066
        :pswitch_eb  #00000067
        :pswitch_f2  #00000068
        :pswitch_f9  #00000069
        :pswitch_100  #0000006a
        :pswitch_107  #0000006b
        :pswitch_10e  #0000006c
        :pswitch_115  #0000006d
        :pswitch_11c  #0000006e
        :pswitch_123  #0000006f
        :pswitch_12a  #00000070
        :pswitch_131  #00000071
        :pswitch_138  #00000072
        :pswitch_13f  #00000073
        :pswitch_146  #00000074
        :pswitch_14d  #00000075
        :pswitch_154  #00000076
        :pswitch_15b  #00000077
        :pswitch_162  #00000078
        :pswitch_169  #00000079
        :pswitch_170  #0000007a
        :pswitch_177  #0000007b
        :pswitch_17e  #0000007c
        :pswitch_185  #0000007d
        :pswitch_18c  #0000007e
        :pswitch_193  #0000007f
        :pswitch_19a  #00000080
        :pswitch_1a1  #00000081
        :pswitch_1a8  #00000082
        :pswitch_1af  #00000083
        :pswitch_3  #00000084
        :pswitch_1b6  #00000085
        :pswitch_1bf  #00000086
        :pswitch_1c8  #00000087
        :pswitch_1d1  #00000088
        :pswitch_1da  #00000089
        :pswitch_1e3  #0000008a
        :pswitch_1ec  #0000008b
        :pswitch_1f5  #0000008c
        :pswitch_1fe  #0000008d
        :pswitch_207  #0000008e
        :pswitch_210  #0000008f
        :pswitch_219  #00000090
        :pswitch_222  #00000091
        :pswitch_22b  #00000092
        :pswitch_234  #00000093
        :pswitch_23d  #00000094
        :pswitch_242  #00000095
        :pswitch_249  #00000096
        :pswitch_250  #00000097
        :pswitch_257  #00000098
        :pswitch_3  #00000099
        :pswitch_3  #0000009a
        :pswitch_3  #0000009b
        :pswitch_3  #0000009c
        :pswitch_3  #0000009d
        :pswitch_3  #0000009e
        :pswitch_3  #0000009f
        :pswitch_3  #000000a0
        :pswitch_3  #000000a1
        :pswitch_3  #000000a2
        :pswitch_3  #000000a3
        :pswitch_3  #000000a4
        :pswitch_3  #000000a5
        :pswitch_3  #000000a6
        :pswitch_3  #000000a7
        :pswitch_3  #000000a8
        :pswitch_3  #000000a9
        :pswitch_3  #000000aa
        :pswitch_3  #000000ab
        :pswitch_25e  #000000ac
        :pswitch_265  #000000ad
        :pswitch_26c  #000000ae
        :pswitch_273  #000000af
        :pswitch_27a  #000000b0
        :pswitch_281  #000000b1
        :pswitch_3  #000000b2
        :pswitch_3  #000000b3
        :pswitch_3  #000000b4
        :pswitch_3  #000000b5
        :pswitch_3  #000000b6
        :pswitch_3  #000000b7
        :pswitch_3  #000000b8
        :pswitch_3  #000000b9
        :pswitch_3  #000000ba
        :pswitch_3  #000000bb
        :pswitch_3  #000000bc
        :pswitch_3  #000000bd
        :pswitch_288  #000000be
        :pswitch_28d  #000000bf
        :pswitch_3  #000000c0
        :pswitch_3  #000000c1
        :pswitch_292  #000000c2
        :pswitch_297  #000000c3
    .end packed-switch
.end method

.method public visitIntInsn(II)V
    .registers 4

    sparse-switch p1, :sswitch_data_4a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :sswitch_9
    invoke-virtual {p0, p2}, Lorg/objectweb/asm/commons/InstructionAdapter;->iconst(I)V

    :goto_c
    return-void

    :sswitch_d
    invoke-virtual {p0, p2}, Lorg/objectweb/asm/commons/InstructionAdapter;->iconst(I)V

    goto :goto_c

    :sswitch_11
    packed-switch p2, :pswitch_data_58

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :pswitch_1a  #0x4
    sget-object v0, Lorg/objectweb/asm/Type;->BOOLEAN_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->newarray(Lorg/objectweb/asm/Type;)V

    goto :goto_c

    :pswitch_20  #0x5
    sget-object v0, Lorg/objectweb/asm/Type;->CHAR_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->newarray(Lorg/objectweb/asm/Type;)V

    goto :goto_c

    :pswitch_26  #0x8
    sget-object v0, Lorg/objectweb/asm/Type;->BYTE_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->newarray(Lorg/objectweb/asm/Type;)V

    goto :goto_c

    :pswitch_2c  #0x9
    sget-object v0, Lorg/objectweb/asm/Type;->SHORT_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->newarray(Lorg/objectweb/asm/Type;)V

    goto :goto_c

    :pswitch_32  #0xa
    sget-object v0, Lorg/objectweb/asm/Type;->INT_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->newarray(Lorg/objectweb/asm/Type;)V

    goto :goto_c

    :pswitch_38  #0x6
    sget-object v0, Lorg/objectweb/asm/Type;->FLOAT_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->newarray(Lorg/objectweb/asm/Type;)V

    goto :goto_c

    :pswitch_3e  #0xb
    sget-object v0, Lorg/objectweb/asm/Type;->LONG_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->newarray(Lorg/objectweb/asm/Type;)V

    goto :goto_c

    :pswitch_44  #0x7
    sget-object v0, Lorg/objectweb/asm/Type;->DOUBLE_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->newarray(Lorg/objectweb/asm/Type;)V

    goto :goto_c

    :sswitch_data_4a
    .sparse-switch
        0x10 -> :sswitch_9
        0x11 -> :sswitch_d
        0xbc -> :sswitch_11
    .end sparse-switch

    :pswitch_data_58
    .packed-switch 0x4
        :pswitch_1a  #00000004
        :pswitch_20  #00000005
        :pswitch_38  #00000006
        :pswitch_44  #00000007
        :pswitch_26  #00000008
        :pswitch_2c  #00000009
        :pswitch_32  #0000000a
        :pswitch_3e  #0000000b
    .end packed-switch
.end method

.method public varargs visitInvokeDynamicInsn(Ljava/lang/String;Ljava/lang/String;Lorg/objectweb/asm/Handle;[Ljava/lang/Object;)V
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/objectweb/asm/commons/InstructionAdapter;->invokedynamic(Ljava/lang/String;Ljava/lang/String;Lorg/objectweb/asm/Handle;[Ljava/lang/Object;)V

    return-void
.end method

.method public visitJumpInsn(ILorg/objectweb/asm/Label;)V
    .registers 4

    sparse-switch p1, :sswitch_data_52

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :sswitch_9
    invoke-virtual {p0, p2}, Lorg/objectweb/asm/commons/InstructionAdapter;->ifeq(Lorg/objectweb/asm/Label;)V

    :goto_c
    return-void

    :sswitch_d
    invoke-virtual {p0, p2}, Lorg/objectweb/asm/commons/InstructionAdapter;->ifne(Lorg/objectweb/asm/Label;)V

    goto :goto_c

    :sswitch_11
    invoke-virtual {p0, p2}, Lorg/objectweb/asm/commons/InstructionAdapter;->iflt(Lorg/objectweb/asm/Label;)V

    goto :goto_c

    :sswitch_15
    invoke-virtual {p0, p2}, Lorg/objectweb/asm/commons/InstructionAdapter;->ifge(Lorg/objectweb/asm/Label;)V

    goto :goto_c

    :sswitch_19
    invoke-virtual {p0, p2}, Lorg/objectweb/asm/commons/InstructionAdapter;->ifgt(Lorg/objectweb/asm/Label;)V

    goto :goto_c

    :sswitch_1d
    invoke-virtual {p0, p2}, Lorg/objectweb/asm/commons/InstructionAdapter;->ifle(Lorg/objectweb/asm/Label;)V

    goto :goto_c

    :sswitch_21
    invoke-virtual {p0, p2}, Lorg/objectweb/asm/commons/InstructionAdapter;->ificmpeq(Lorg/objectweb/asm/Label;)V

    goto :goto_c

    :sswitch_25
    invoke-virtual {p0, p2}, Lorg/objectweb/asm/commons/InstructionAdapter;->ificmpne(Lorg/objectweb/asm/Label;)V

    goto :goto_c

    :sswitch_29
    invoke-virtual {p0, p2}, Lorg/objectweb/asm/commons/InstructionAdapter;->ificmplt(Lorg/objectweb/asm/Label;)V

    goto :goto_c

    :sswitch_2d
    invoke-virtual {p0, p2}, Lorg/objectweb/asm/commons/InstructionAdapter;->ificmpge(Lorg/objectweb/asm/Label;)V

    goto :goto_c

    :sswitch_31
    invoke-virtual {p0, p2}, Lorg/objectweb/asm/commons/InstructionAdapter;->ificmpgt(Lorg/objectweb/asm/Label;)V

    goto :goto_c

    :sswitch_35
    invoke-virtual {p0, p2}, Lorg/objectweb/asm/commons/InstructionAdapter;->ificmple(Lorg/objectweb/asm/Label;)V

    goto :goto_c

    :sswitch_39
    invoke-virtual {p0, p2}, Lorg/objectweb/asm/commons/InstructionAdapter;->ifacmpeq(Lorg/objectweb/asm/Label;)V

    goto :goto_c

    :sswitch_3d
    invoke-virtual {p0, p2}, Lorg/objectweb/asm/commons/InstructionAdapter;->ifacmpne(Lorg/objectweb/asm/Label;)V

    goto :goto_c

    :sswitch_41
    invoke-virtual {p0, p2}, Lorg/objectweb/asm/commons/InstructionAdapter;->goTo(Lorg/objectweb/asm/Label;)V

    goto :goto_c

    :sswitch_45
    invoke-virtual {p0, p2}, Lorg/objectweb/asm/commons/InstructionAdapter;->jsr(Lorg/objectweb/asm/Label;)V

    goto :goto_c

    :sswitch_49
    invoke-virtual {p0, p2}, Lorg/objectweb/asm/commons/InstructionAdapter;->ifnull(Lorg/objectweb/asm/Label;)V

    goto :goto_c

    :sswitch_4d
    invoke-virtual {p0, p2}, Lorg/objectweb/asm/commons/InstructionAdapter;->ifnonnull(Lorg/objectweb/asm/Label;)V

    goto :goto_c

    nop

    :sswitch_data_52
    .sparse-switch
        0x99 -> :sswitch_9
        0x9a -> :sswitch_d
        0x9b -> :sswitch_11
        0x9c -> :sswitch_15
        0x9d -> :sswitch_19
        0x9e -> :sswitch_1d
        0x9f -> :sswitch_21
        0xa0 -> :sswitch_25
        0xa1 -> :sswitch_29
        0xa2 -> :sswitch_2d
        0xa3 -> :sswitch_31
        0xa4 -> :sswitch_35
        0xa5 -> :sswitch_39
        0xa6 -> :sswitch_3d
        0xa7 -> :sswitch_41
        0xa8 -> :sswitch_45
        0xc6 -> :sswitch_49
        0xc7 -> :sswitch_4d
    .end sparse-switch
.end method

.method public visitLabel(Lorg/objectweb/asm/Label;)V
    .registers 2

    invoke-virtual {p0, p1}, Lorg/objectweb/asm/commons/InstructionAdapter;->mark(Lorg/objectweb/asm/Label;)V

    return-void
.end method

.method public visitLdcInsn(Ljava/lang/Object;)V
    .registers 4

    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_e

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->iconst(I)V

    :goto_d
    return-void

    :cond_e
    instance-of v0, p1, Ljava/lang/Byte;

    if-eqz v0, :cond_1c

    check-cast p1, Ljava/lang/Byte;

    invoke-virtual {p1}, Ljava/lang/Byte;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->iconst(I)V

    goto :goto_d

    :cond_1c
    instance-of v0, p1, Ljava/lang/Character;

    if-eqz v0, :cond_2a

    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result v0

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->iconst(I)V

    goto :goto_d

    :cond_2a
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_38

    check-cast p1, Ljava/lang/Short;

    invoke-virtual {p1}, Ljava/lang/Short;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->iconst(I)V

    goto :goto_d

    :cond_38
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_4b

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_49

    const/4 v0, 0x1

    :goto_45
    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->iconst(I)V

    goto :goto_d

    :cond_49
    const/4 v0, 0x0

    goto :goto_45

    :cond_4b
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_59

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->fconst(F)V

    goto :goto_d

    :cond_59
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_67

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/objectweb/asm/commons/InstructionAdapter;->lconst(J)V

    goto :goto_d

    :cond_67
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_75

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/objectweb/asm/commons/InstructionAdapter;->dconst(D)V

    goto :goto_d

    :cond_75
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_7d

    invoke-virtual {p0, p1}, Lorg/objectweb/asm/commons/InstructionAdapter;->aconst(Ljava/lang/Object;)V

    goto :goto_d

    :cond_7d
    instance-of v0, p1, Lorg/objectweb/asm/Type;

    if-eqz v0, :cond_87

    check-cast p1, Lorg/objectweb/asm/Type;

    invoke-virtual {p0, p1}, Lorg/objectweb/asm/commons/InstructionAdapter;->tconst(Lorg/objectweb/asm/Type;)V

    goto :goto_d

    :cond_87
    instance-of v0, p1, Lorg/objectweb/asm/Handle;

    if-eqz v0, :cond_92

    check-cast p1, Lorg/objectweb/asm/Handle;

    invoke-virtual {p0, p1}, Lorg/objectweb/asm/commons/InstructionAdapter;->hconst(Lorg/objectweb/asm/Handle;)V

    goto/16 :goto_d

    :cond_92
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public visitLookupSwitchInsn(Lorg/objectweb/asm/Label;[I[Lorg/objectweb/asm/Label;)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lorg/objectweb/asm/commons/InstructionAdapter;->lookupswitch(Lorg/objectweb/asm/Label;[I[Lorg/objectweb/asm/Label;)V

    return-void
.end method

.method public visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    iget v0, p0, Lorg/objectweb/asm/commons/InstructionAdapter;->api:I

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

    invoke-direct/range {v0 .. v5}, Lorg/objectweb/asm/commons/InstructionAdapter;->doVisitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_9

    :cond_18
    const/4 v5, 0x0

    goto :goto_f
.end method

.method public visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 8

    iget v0, p0, Lorg/objectweb/asm/commons/InstructionAdapter;->api:I

    const/high16 v1, 0x50000

    if-ge v0, v1, :cond_a

    invoke-super/range {p0 .. p5}, Lorg/objectweb/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_9
    return-void

    :cond_a
    invoke-direct/range {p0 .. p5}, Lorg/objectweb/asm/commons/InstructionAdapter;->doVisitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_9
.end method

.method public visitMultiANewArrayInsn(Ljava/lang/String;I)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lorg/objectweb/asm/commons/InstructionAdapter;->multianewarray(Ljava/lang/String;I)V

    return-void
.end method

.method public varargs visitTableSwitchInsn(IILorg/objectweb/asm/Label;[Lorg/objectweb/asm/Label;)V
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/objectweb/asm/commons/InstructionAdapter;->tableswitch(IILorg/objectweb/asm/Label;[Lorg/objectweb/asm/Label;)V

    return-void
.end method

.method public visitTypeInsn(ILjava/lang/String;)V
    .registers 4

    invoke-static {p2}, Lorg/objectweb/asm/Type;->getObjectType(Ljava/lang/String;)Lorg/objectweb/asm/Type;

    move-result-object v0

    packed-switch p1, :pswitch_data_1e

    :pswitch_7  #0xbc, 0xbe, 0xbf
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :pswitch_d  #0xbb
    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->anew(Lorg/objectweb/asm/Type;)V

    :goto_10
    return-void

    :pswitch_11  #0xbd
    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->newarray(Lorg/objectweb/asm/Type;)V

    goto :goto_10

    :pswitch_15  #0xc0
    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->checkcast(Lorg/objectweb/asm/Type;)V

    goto :goto_10

    :pswitch_19  #0xc1
    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->instanceOf(Lorg/objectweb/asm/Type;)V

    goto :goto_10

    nop

    :pswitch_data_1e
    .packed-switch 0xbb
        :pswitch_d  #000000bb
        :pswitch_7  #000000bc
        :pswitch_11  #000000bd
        :pswitch_7  #000000be
        :pswitch_7  #000000bf
        :pswitch_15  #000000c0
        :pswitch_19  #000000c1
    .end packed-switch
.end method

.method public visitVarInsn(II)V
    .registers 4

    sparse-switch p1, :sswitch_data_4a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :sswitch_9
    sget-object v0, Lorg/objectweb/asm/Type;->INT_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, p2, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->load(ILorg/objectweb/asm/Type;)V

    :goto_e
    return-void

    :sswitch_f
    sget-object v0, Lorg/objectweb/asm/Type;->LONG_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, p2, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->load(ILorg/objectweb/asm/Type;)V

    goto :goto_e

    :sswitch_15
    sget-object v0, Lorg/objectweb/asm/Type;->FLOAT_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, p2, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->load(ILorg/objectweb/asm/Type;)V

    goto :goto_e

    :sswitch_1b
    sget-object v0, Lorg/objectweb/asm/Type;->DOUBLE_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, p2, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->load(ILorg/objectweb/asm/Type;)V

    goto :goto_e

    :sswitch_21
    sget-object v0, Lorg/objectweb/asm/commons/InstructionAdapter;->OBJECT_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, p2, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->load(ILorg/objectweb/asm/Type;)V

    goto :goto_e

    :sswitch_27
    sget-object v0, Lorg/objectweb/asm/Type;->INT_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, p2, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->store(ILorg/objectweb/asm/Type;)V

    goto :goto_e

    :sswitch_2d
    sget-object v0, Lorg/objectweb/asm/Type;->LONG_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, p2, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->store(ILorg/objectweb/asm/Type;)V

    goto :goto_e

    :sswitch_33
    sget-object v0, Lorg/objectweb/asm/Type;->FLOAT_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, p2, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->store(ILorg/objectweb/asm/Type;)V

    goto :goto_e

    :sswitch_39
    sget-object v0, Lorg/objectweb/asm/Type;->DOUBLE_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, p2, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->store(ILorg/objectweb/asm/Type;)V

    goto :goto_e

    :sswitch_3f
    sget-object v0, Lorg/objectweb/asm/commons/InstructionAdapter;->OBJECT_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, p2, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->store(ILorg/objectweb/asm/Type;)V

    goto :goto_e

    :sswitch_45
    invoke-virtual {p0, p2}, Lorg/objectweb/asm/commons/InstructionAdapter;->ret(I)V

    goto :goto_e

    nop

    :sswitch_data_4a
    .sparse-switch
        0x15 -> :sswitch_9
        0x16 -> :sswitch_f
        0x17 -> :sswitch_15
        0x18 -> :sswitch_1b
        0x19 -> :sswitch_21
        0x36 -> :sswitch_27
        0x37 -> :sswitch_2d
        0x38 -> :sswitch_33
        0x39 -> :sswitch_39
        0x3a -> :sswitch_3f
        0xa9 -> :sswitch_45
    .end sparse-switch
.end method

.method public xor(Lorg/objectweb/asm/Type;)V
    .registers 4

    iget-object v0, p0, Lorg/objectweb/asm/commons/InstructionAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    const/16 v1, 0x82

    invoke-virtual {p1, v1}, Lorg/objectweb/asm/Type;->getOpcode(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/MethodVisitor;->visitInsn(I)V

    return-void
.end method
