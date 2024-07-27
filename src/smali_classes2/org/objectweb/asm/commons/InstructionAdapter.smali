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

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
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
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private doVisitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 7

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :pswitch_0
    invoke-virtual {p0, p2, p3, p4, p5}, Lorg/objectweb/asm/commons/InstructionAdapter;->invokespecial(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void

    :pswitch_1
    invoke-virtual {p0, p2, p3, p4, p5}, Lorg/objectweb/asm/commons/InstructionAdapter;->invokevirtual(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0, p2, p3, p4, p5}, Lorg/objectweb/asm/commons/InstructionAdapter;->invokestatic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0, p2, p3, p4}, Lorg/objectweb/asm/commons/InstructionAdapter;->invokeinterface(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xb6
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public aconst(Ljava/lang/Object;)V
    .registers 4

    if-nez p1, :cond_0

    iget-object v0, p0, Lorg/objectweb/asm/commons/InstructionAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/MethodVisitor;->visitInsn(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/objectweb/asm/commons/InstructionAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    invoke-virtual {v0, p1}, Lorg/objectweb/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    goto :goto_0
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

    if-eq p1, p2, :cond_0

    sget-object v0, Lorg/objectweb/asm/Type;->DOUBLE_TYPE:Lorg/objectweb/asm/Type;

    if-ne p1, v0, :cond_3

    sget-object v0, Lorg/objectweb/asm/Type;->FLOAT_TYPE:Lorg/objectweb/asm/Type;

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lorg/objectweb/asm/commons/InstructionAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    const/16 v1, 0x90

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/MethodVisitor;->visitInsn(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lorg/objectweb/asm/Type;->LONG_TYPE:Lorg/objectweb/asm/Type;

    if-ne p2, v0, :cond_2

    iget-object v0, p0, Lorg/objectweb/asm/commons/InstructionAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    const/16 v1, 0x8f

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/MethodVisitor;->visitInsn(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/objectweb/asm/commons/InstructionAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    const/16 v1, 0x8e

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/MethodVisitor;->visitInsn(I)V

    sget-object v0, Lorg/objectweb/asm/Type;->INT_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0, p2}, Lorg/objectweb/asm/commons/InstructionAdapter;->cast(Lorg/objectweb/asm/Type;Lorg/objectweb/asm/Type;)V

    goto :goto_0

    :cond_3
    sget-object v0, Lorg/objectweb/asm/Type;->FLOAT_TYPE:Lorg/objectweb/asm/Type;

    if-ne p1, v0, :cond_6

    sget-object v0, Lorg/objectweb/asm/Type;->DOUBLE_TYPE:Lorg/objectweb/asm/Type;

    if-ne p2, v0, :cond_4

    iget-object v0, p0, Lorg/objectweb/asm/commons/InstructionAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    const/16 v1, 0x8d

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/MethodVisitor;->visitInsn(I)V

    goto :goto_0

    :cond_4
    sget-object v0, Lorg/objectweb/asm/Type;->LONG_TYPE:Lorg/objectweb/asm/Type;

    if-ne p2, v0, :cond_5

    iget-object v0, p0, Lorg/objectweb/asm/commons/InstructionAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    const/16 v1, 0x8c

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/MethodVisitor;->visitInsn(I)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lorg/objectweb/asm/commons/InstructionAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    const/16 v1, 0x8b

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/MethodVisitor;->visitInsn(I)V

    sget-object v0, Lorg/objectweb/asm/Type;->INT_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0, p2}, Lorg/objectweb/asm/commons/InstructionAdapter;->cast(Lorg/objectweb/asm/Type;Lorg/objectweb/asm/Type;)V

    goto :goto_0

    :cond_6
    sget-object v0, Lorg/objectweb/asm/Type;->LONG_TYPE:Lorg/objectweb/asm/Type;

    if-ne p1, v0, :cond_9

    sget-object v0, Lorg/objectweb/asm/Type;->DOUBLE_TYPE:Lorg/objectweb/asm/Type;

    if-ne p2, v0, :cond_7

    iget-object v0, p0, Lorg/objectweb/asm/commons/InstructionAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    const/16 v1, 0x8a

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/MethodVisitor;->visitInsn(I)V

    goto :goto_0

    :cond_7
    sget-object v0, Lorg/objectweb/asm/Type;->FLOAT_TYPE:Lorg/objectweb/asm/Type;

    if-ne p2, v0, :cond_8

    iget-object v0, p0, Lorg/objectweb/asm/commons/InstructionAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    const/16 v1, 0x89

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/MethodVisitor;->visitInsn(I)V

    goto :goto_0

    :cond_8
    iget-object v0, p0, Lorg/objectweb/asm/commons/InstructionAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    const/16 v1, 0x88

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/MethodVisitor;->visitInsn(I)V

    sget-object v0, Lorg/objectweb/asm/Type;->INT_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0, p2}, Lorg/objectweb/asm/commons/InstructionAdapter;->cast(Lorg/objectweb/asm/Type;Lorg/objectweb/asm/Type;)V

    goto :goto_0

    :cond_9
    sget-object v0, Lorg/objectweb/asm/Type;->BYTE_TYPE:Lorg/objectweb/asm/Type;

    if-ne p2, v0, :cond_a

    iget-object v0, p0, Lorg/objectweb/asm/commons/InstructionAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    const/16 v1, 0x91

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/MethodVisitor;->visitInsn(I)V

    goto :goto_0

    :cond_a
    sget-object v0, Lorg/objectweb/asm/Type;->CHAR_TYPE:Lorg/objectweb/asm/Type;

    if-ne p2, v0, :cond_b

    iget-object v0, p0, Lorg/objectweb/asm/commons/InstructionAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    const/16 v1, 0x92

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/MethodVisitor;->visitInsn(I)V

    goto/16 :goto_0

    :cond_b
    sget-object v0, Lorg/objectweb/asm/Type;->DOUBLE_TYPE:Lorg/objectweb/asm/Type;

    if-ne p2, v0, :cond_c

    iget-object v0, p0, Lorg/objectweb/asm/commons/InstructionAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    const/16 v1, 0x87

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/MethodVisitor;->visitInsn(I)V

    goto/16 :goto_0

    :cond_c
    sget-object v0, Lorg/objectweb/asm/Type;->FLOAT_TYPE:Lorg/objectweb/asm/Type;

    if-ne p2, v0, :cond_d

    iget-object v0, p0, Lorg/objectweb/asm/commons/InstructionAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    const/16 v1, 0x86

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/MethodVisitor;->visitInsn(I)V

    goto/16 :goto_0

    :cond_d
    sget-object v0, Lorg/objectweb/asm/Type;->LONG_TYPE:Lorg/objectweb/asm/Type;

    if-ne p2, v0, :cond_e

    iget-object v0, p0, Lorg/objectweb/asm/commons/InstructionAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    const/16 v1, 0x85

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/MethodVisitor;->visitInsn(I)V

    goto/16 :goto_0

    :cond_e
    sget-object v0, Lorg/objectweb/asm/Type;->SHORT_TYPE:Lorg/objectweb/asm/Type;

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lorg/objectweb/asm/commons/InstructionAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    const/16 v1, 0x93

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/MethodVisitor;->visitInsn(I)V

    goto/16 :goto_0
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

    if-ne p1, v0, :cond_0

    const/16 v0, 0x96

    :goto_0
    invoke-virtual {v1, v0}, Lorg/objectweb/asm/MethodVisitor;->visitInsn(I)V

    return-void

    :cond_0
    const/16 v0, 0x98

    goto :goto_0
.end method

.method public cmpl(Lorg/objectweb/asm/Type;)V
    .registers 4

    iget-object v1, p0, Lorg/objectweb/asm/commons/InstructionAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    sget-object v0, Lorg/objectweb/asm/Type;->FLOAT_TYPE:Lorg/objectweb/asm/Type;

    if-ne p1, v0, :cond_0

    const/16 v0, 0x95

    :goto_0
    invoke-virtual {v1, v0}, Lorg/objectweb/asm/MethodVisitor;->visitInsn(I)V

    return-void

    :cond_0
    const/16 v0, 0x97

    goto :goto_0
.end method

.method public dconst(D)V
    .registers 8

    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/objectweb/asm/commons/InstructionAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    double-to-int v1, p1

    add-int/lit8 v1, v1, 0xe

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/MethodVisitor;->visitInsn(I)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/objectweb/asm/commons/InstructionAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    new-instance v1, Ljava/lang/Double;

    invoke-direct {v1, p1, p2}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    goto :goto_0
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

    if-eqz v1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eq v0, v1, :cond_0

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/objectweb/asm/commons/InstructionAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    float-to-int v1, p1

    add-int/lit8 v1, v1, 0xb

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/MethodVisitor;->visitInsn(I)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/objectweb/asm/commons/InstructionAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    new-instance v1, Ljava/lang/Float;

    invoke-direct {v1, p1}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    goto :goto_0
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

    if-lt p1, v0, :cond_0

    const/4 v0, 0x5

    if-gt p1, v0, :cond_0

    iget-object v0, p0, Lorg/objectweb/asm/commons/InstructionAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    add-int/lit8 v1, p1, 0x3

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/MethodVisitor;->visitInsn(I)V

    :goto_0
    return-void

    :cond_0
    const/16 v0, -0x80

    if-lt p1, v0, :cond_1

    const/16 v0, 0x7f

    if-gt p1, v0, :cond_1

    iget-object v0, p0, Lorg/objectweb/asm/commons/InstructionAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    const/16 v1, 0x10

    invoke-virtual {v0, v1, p1}, Lorg/objectweb/asm/MethodVisitor;->visitIntInsn(II)V

    goto :goto_0

    :cond_1
    const/16 v0, -0x8000

    if-lt p1, v0, :cond_2

    const/16 v0, 0x7fff

    if-gt p1, v0, :cond_2

    iget-object v0, p0, Lorg/objectweb/asm/commons/InstructionAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    const/16 v1, 0x11

    invoke-virtual {v0, v1, p1}, Lorg/objectweb/asm/MethodVisitor;->visitIntInsn(II)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/objectweb/asm/commons/InstructionAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    goto :goto_0
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

    if-lt v0, v1, :cond_0

    invoke-virtual {p0, p1, p2, p3, v5}, Lorg/objectweb/asm/commons/InstructionAdapter;->invokespecial(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/objectweb/asm/commons/InstructionAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    const/16 v1, 0xb7

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lorg/objectweb/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public invokespecial(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 11

    iget v0, p0, Lorg/objectweb/asm/commons/InstructionAdapter;->api:I

    const/high16 v1, 0x50000

    if-ge v0, v1, :cond_1

    if-eqz p4, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "INVOKESPECIAL on interfaces require ASM 5"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/objectweb/asm/commons/InstructionAdapter;->invokespecial(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/objectweb/asm/commons/InstructionAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    const/16 v1, 0xb7

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/objectweb/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public invokestatic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    const/4 v5, 0x0

    iget v0, p0, Lorg/objectweb/asm/commons/InstructionAdapter;->api:I

    const/high16 v1, 0x50000

    if-lt v0, v1, :cond_0

    invoke-virtual {p0, p1, p2, p3, v5}, Lorg/objectweb/asm/commons/InstructionAdapter;->invokestatic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/objectweb/asm/commons/InstructionAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    const/16 v1, 0xb8

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lorg/objectweb/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public invokestatic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 11

    iget v0, p0, Lorg/objectweb/asm/commons/InstructionAdapter;->api:I

    const/high16 v1, 0x50000

    if-ge v0, v1, :cond_1

    if-eqz p4, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "INVOKESTATIC on interfaces require ASM 5"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/objectweb/asm/commons/InstructionAdapter;->invokestatic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/objectweb/asm/commons/InstructionAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    const/16 v1, 0xb8

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/objectweb/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public invokevirtual(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    iget v0, p0, Lorg/objectweb/asm/commons/InstructionAdapter;->api:I

    const/high16 v1, 0x50000

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->invokevirtual(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/objectweb/asm/commons/InstructionAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    const/16 v1, 0xb6

    invoke-virtual {v0, v1, p1, p2, p3}, Lorg/objectweb/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public invokevirtual(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 11

    iget v0, p0, Lorg/objectweb/asm/commons/InstructionAdapter;->api:I

    const/high16 v1, 0x50000

    if-ge v0, v1, :cond_1

    if-eqz p4, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "INVOKEVIRTUAL on interfaces require ASM 5"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/objectweb/asm/commons/InstructionAdapter;->invokevirtual(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/objectweb/asm/commons/InstructionAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    const/16 v1, 0xb6

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/objectweb/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
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

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/objectweb/asm/commons/InstructionAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    long-to-int v1, p1

    add-int/lit8 v1, v1, 0x9

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/MethodVisitor;->visitInsn(I)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/objectweb/asm/commons/InstructionAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    new-instance v1, Ljava/lang/Long;

    invoke-direct {v1, p1, p2}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    goto :goto_0
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

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lorg/objectweb/asm/commons/InstructionAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    const/16 v1, 0xbd

    invoke-virtual {p1}, Lorg/objectweb/asm/Type;->getInternalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/objectweb/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    :goto_0
    return-void

    :pswitch_0
    const/4 v0, 0x4

    :goto_1
    iget-object v1, p0, Lorg/objectweb/asm/commons/InstructionAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    const/16 v2, 0xbc

    invoke-virtual {v1, v2, v0}, Lorg/objectweb/asm/MethodVisitor;->visitIntInsn(II)V

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x5

    goto :goto_1

    :pswitch_2
    const/16 v0, 0x8

    goto :goto_1

    :pswitch_3
    const/16 v0, 0x9

    goto :goto_1

    :pswitch_4
    const/16 v0, 0xa

    goto :goto_1

    :pswitch_5
    const/4 v0, 0x6

    goto :goto_1

    :pswitch_6
    const/16 v0, 0xb

    goto :goto_1

    :pswitch_7
    const/4 v0, 0x7

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
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

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :pswitch_0
    invoke-virtual {p0, p2, p3, p4}, Lorg/objectweb/asm/commons/InstructionAdapter;->getstatic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_1
    invoke-virtual {p0, p2, p3, p4}, Lorg/objectweb/asm/commons/InstructionAdapter;->putstatic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0, p2, p3, p4}, Lorg/objectweb/asm/commons/InstructionAdapter;->getfield(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0, p2, p3, p4}, Lorg/objectweb/asm/commons/InstructionAdapter;->putfield(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xb2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public visitIincInsn(II)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lorg/objectweb/asm/commons/InstructionAdapter;->iinc(II)V

    return-void
.end method

.method public visitInsn(I)V
    .registers 4

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :pswitch_1
    invoke-virtual {p0}, Lorg/objectweb/asm/commons/InstructionAdapter;->nop()V

    :goto_0
    return-void

    :pswitch_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->aconst(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_3
    add-int/lit8 v0, p1, -0x3

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->iconst(I)V

    goto :goto_0

    :pswitch_4
    add-int/lit8 v0, p1, -0x9

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lorg/objectweb/asm/commons/InstructionAdapter;->lconst(J)V

    goto :goto_0

    :pswitch_5
    add-int/lit8 v0, p1, -0xb

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->fconst(F)V

    goto :goto_0

    :pswitch_6
    add-int/lit8 v0, p1, -0xe

    int-to-double v0, v0

    invoke-virtual {p0, v0, v1}, Lorg/objectweb/asm/commons/InstructionAdapter;->dconst(D)V

    goto :goto_0

    :pswitch_7
    sget-object v0, Lorg/objectweb/asm/Type;->INT_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->aload(Lorg/objectweb/asm/Type;)V

    goto :goto_0

    :pswitch_8
    sget-object v0, Lorg/objectweb/asm/Type;->LONG_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->aload(Lorg/objectweb/asm/Type;)V

    goto :goto_0

    :pswitch_9
    sget-object v0, Lorg/objectweb/asm/Type;->FLOAT_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->aload(Lorg/objectweb/asm/Type;)V

    goto :goto_0

    :pswitch_a
    sget-object v0, Lorg/objectweb/asm/Type;->DOUBLE_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->aload(Lorg/objectweb/asm/Type;)V

    goto :goto_0

    :pswitch_b
    sget-object v0, Lorg/objectweb/asm/commons/InstructionAdapter;->OBJECT_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->aload(Lorg/objectweb/asm/Type;)V

    goto :goto_0

    :pswitch_c
    sget-object v0, Lorg/objectweb/asm/Type;->BYTE_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->aload(Lorg/objectweb/asm/Type;)V

    goto :goto_0

    :pswitch_d
    sget-object v0, Lorg/objectweb/asm/Type;->CHAR_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->aload(Lorg/objectweb/asm/Type;)V

    goto :goto_0

    :pswitch_e
    sget-object v0, Lorg/objectweb/asm/Type;->SHORT_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->aload(Lorg/objectweb/asm/Type;)V

    goto :goto_0

    :pswitch_f
    sget-object v0, Lorg/objectweb/asm/Type;->INT_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->astore(Lorg/objectweb/asm/Type;)V

    goto :goto_0

    :pswitch_10
    sget-object v0, Lorg/objectweb/asm/Type;->LONG_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->astore(Lorg/objectweb/asm/Type;)V

    goto :goto_0

    :pswitch_11
    sget-object v0, Lorg/objectweb/asm/Type;->FLOAT_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->astore(Lorg/objectweb/asm/Type;)V

    goto :goto_0

    :pswitch_12
    sget-object v0, Lorg/objectweb/asm/Type;->DOUBLE_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->astore(Lorg/objectweb/asm/Type;)V

    goto :goto_0

    :pswitch_13
    sget-object v0, Lorg/objectweb/asm/commons/InstructionAdapter;->OBJECT_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->astore(Lorg/objectweb/asm/Type;)V

    goto :goto_0

    :pswitch_14
    sget-object v0, Lorg/objectweb/asm/Type;->BYTE_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->astore(Lorg/objectweb/asm/Type;)V

    goto :goto_0

    :pswitch_15
    sget-object v0, Lorg/objectweb/asm/Type;->CHAR_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->astore(Lorg/objectweb/asm/Type;)V

    goto :goto_0

    :pswitch_16
    sget-object v0, Lorg/objectweb/asm/Type;->SHORT_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->astore(Lorg/objectweb/asm/Type;)V

    goto :goto_0

    :pswitch_17
    invoke-virtual {p0}, Lorg/objectweb/asm/commons/InstructionAdapter;->pop()V

    goto/16 :goto_0

    :pswitch_18
    invoke-virtual {p0}, Lorg/objectweb/asm/commons/InstructionAdapter;->pop2()V

    goto/16 :goto_0

    :pswitch_19
    invoke-virtual {p0}, Lorg/objectweb/asm/commons/InstructionAdapter;->dup()V

    goto/16 :goto_0

    :pswitch_1a
    invoke-virtual {p0}, Lorg/objectweb/asm/commons/InstructionAdapter;->dupX1()V

    goto/16 :goto_0

    :pswitch_1b
    invoke-virtual {p0}, Lorg/objectweb/asm/commons/InstructionAdapter;->dupX2()V

    goto/16 :goto_0

    :pswitch_1c
    invoke-virtual {p0}, Lorg/objectweb/asm/commons/InstructionAdapter;->dup2()V

    goto/16 :goto_0

    :pswitch_1d
    invoke-virtual {p0}, Lorg/objectweb/asm/commons/InstructionAdapter;->dup2X1()V

    goto/16 :goto_0

    :pswitch_1e
    invoke-virtual {p0}, Lorg/objectweb/asm/commons/InstructionAdapter;->dup2X2()V

    goto/16 :goto_0

    :pswitch_1f
    invoke-virtual {p0}, Lorg/objectweb/asm/commons/InstructionAdapter;->swap()V

    goto/16 :goto_0

    :pswitch_20
    sget-object v0, Lorg/objectweb/asm/Type;->INT_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->add(Lorg/objectweb/asm/Type;)V

    goto/16 :goto_0

    :pswitch_21
    sget-object v0, Lorg/objectweb/asm/Type;->LONG_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->add(Lorg/objectweb/asm/Type;)V

    goto/16 :goto_0

    :pswitch_22
    sget-object v0, Lorg/objectweb/asm/Type;->FLOAT_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->add(Lorg/objectweb/asm/Type;)V

    goto/16 :goto_0

    :pswitch_23
    sget-object v0, Lorg/objectweb/asm/Type;->DOUBLE_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->add(Lorg/objectweb/asm/Type;)V

    goto/16 :goto_0

    :pswitch_24
    sget-object v0, Lorg/objectweb/asm/Type;->INT_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->sub(Lorg/objectweb/asm/Type;)V

    goto/16 :goto_0

    :pswitch_25
    sget-object v0, Lorg/objectweb/asm/Type;->LONG_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->sub(Lorg/objectweb/asm/Type;)V

    goto/16 :goto_0

    :pswitch_26
    sget-object v0, Lorg/objectweb/asm/Type;->FLOAT_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->sub(Lorg/objectweb/asm/Type;)V

    goto/16 :goto_0

    :pswitch_27
    sget-object v0, Lorg/objectweb/asm/Type;->DOUBLE_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->sub(Lorg/objectweb/asm/Type;)V

    goto/16 :goto_0

    :pswitch_28
    sget-object v0, Lorg/objectweb/asm/Type;->INT_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->mul(Lorg/objectweb/asm/Type;)V

    goto/16 :goto_0

    :pswitch_29
    sget-object v0, Lorg/objectweb/asm/Type;->LONG_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->mul(Lorg/objectweb/asm/Type;)V

    goto/16 :goto_0

    :pswitch_2a
    sget-object v0, Lorg/objectweb/asm/Type;->FLOAT_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->mul(Lorg/objectweb/asm/Type;)V

    goto/16 :goto_0

    :pswitch_2b
    sget-object v0, Lorg/objectweb/asm/Type;->DOUBLE_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->mul(Lorg/objectweb/asm/Type;)V

    goto/16 :goto_0

    :pswitch_2c
    sget-object v0, Lorg/objectweb/asm/Type;->INT_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->div(Lorg/objectweb/asm/Type;)V

    goto/16 :goto_0

    :pswitch_2d
    sget-object v0, Lorg/objectweb/asm/Type;->LONG_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->div(Lorg/objectweb/asm/Type;)V

    goto/16 :goto_0

    :pswitch_2e
    sget-object v0, Lorg/objectweb/asm/Type;->FLOAT_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->div(Lorg/objectweb/asm/Type;)V

    goto/16 :goto_0

    :pswitch_2f
    sget-object v0, Lorg/objectweb/asm/Type;->DOUBLE_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->div(Lorg/objectweb/asm/Type;)V

    goto/16 :goto_0

    :pswitch_30
    sget-object v0, Lorg/objectweb/asm/Type;->INT_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->rem(Lorg/objectweb/asm/Type;)V

    goto/16 :goto_0

    :pswitch_31
    sget-object v0, Lorg/objectweb/asm/Type;->LONG_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->rem(Lorg/objectweb/asm/Type;)V

    goto/16 :goto_0

    :pswitch_32
    sget-object v0, Lorg/objectweb/asm/Type;->FLOAT_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->rem(Lorg/objectweb/asm/Type;)V

    goto/16 :goto_0

    :pswitch_33
    sget-object v0, Lorg/objectweb/asm/Type;->DOUBLE_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->rem(Lorg/objectweb/asm/Type;)V

    goto/16 :goto_0

    :pswitch_34
    sget-object v0, Lorg/objectweb/asm/Type;->INT_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->neg(Lorg/objectweb/asm/Type;)V

    goto/16 :goto_0

    :pswitch_35
    sget-object v0, Lorg/objectweb/asm/Type;->LONG_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->neg(Lorg/objectweb/asm/Type;)V

    goto/16 :goto_0

    :pswitch_36
    sget-object v0, Lorg/objectweb/asm/Type;->FLOAT_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->neg(Lorg/objectweb/asm/Type;)V

    goto/16 :goto_0

    :pswitch_37
    sget-object v0, Lorg/objectweb/asm/Type;->DOUBLE_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->neg(Lorg/objectweb/asm/Type;)V

    goto/16 :goto_0

    :pswitch_38
    sget-object v0, Lorg/objectweb/asm/Type;->INT_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->shl(Lorg/objectweb/asm/Type;)V

    goto/16 :goto_0

    :pswitch_39
    sget-object v0, Lorg/objectweb/asm/Type;->LONG_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->shl(Lorg/objectweb/asm/Type;)V

    goto/16 :goto_0

    :pswitch_3a
    sget-object v0, Lorg/objectweb/asm/Type;->INT_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->shr(Lorg/objectweb/asm/Type;)V

    goto/16 :goto_0

    :pswitch_3b
    sget-object v0, Lorg/objectweb/asm/Type;->LONG_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->shr(Lorg/objectweb/asm/Type;)V

    goto/16 :goto_0

    :pswitch_3c
    sget-object v0, Lorg/objectweb/asm/Type;->INT_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->ushr(Lorg/objectweb/asm/Type;)V

    goto/16 :goto_0

    :pswitch_3d
    sget-object v0, Lorg/objectweb/asm/Type;->LONG_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->ushr(Lorg/objectweb/asm/Type;)V

    goto/16 :goto_0

    :pswitch_3e
    sget-object v0, Lorg/objectweb/asm/Type;->INT_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->and(Lorg/objectweb/asm/Type;)V

    goto/16 :goto_0

    :pswitch_3f
    sget-object v0, Lorg/objectweb/asm/Type;->LONG_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->and(Lorg/objectweb/asm/Type;)V

    goto/16 :goto_0

    :pswitch_40
    sget-object v0, Lorg/objectweb/asm/Type;->INT_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->or(Lorg/objectweb/asm/Type;)V

    goto/16 :goto_0

    :pswitch_41
    sget-object v0, Lorg/objectweb/asm/Type;->LONG_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->or(Lorg/objectweb/asm/Type;)V

    goto/16 :goto_0

    :pswitch_42
    sget-object v0, Lorg/objectweb/asm/Type;->INT_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->xor(Lorg/objectweb/asm/Type;)V

    goto/16 :goto_0

    :pswitch_43
    sget-object v0, Lorg/objectweb/asm/Type;->LONG_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->xor(Lorg/objectweb/asm/Type;)V

    goto/16 :goto_0

    :pswitch_44
    sget-object v0, Lorg/objectweb/asm/Type;->INT_TYPE:Lorg/objectweb/asm/Type;

    sget-object v1, Lorg/objectweb/asm/Type;->LONG_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0, v1}, Lorg/objectweb/asm/commons/InstructionAdapter;->cast(Lorg/objectweb/asm/Type;Lorg/objectweb/asm/Type;)V

    goto/16 :goto_0

    :pswitch_45
    sget-object v0, Lorg/objectweb/asm/Type;->INT_TYPE:Lorg/objectweb/asm/Type;

    sget-object v1, Lorg/objectweb/asm/Type;->FLOAT_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0, v1}, Lorg/objectweb/asm/commons/InstructionAdapter;->cast(Lorg/objectweb/asm/Type;Lorg/objectweb/asm/Type;)V

    goto/16 :goto_0

    :pswitch_46
    sget-object v0, Lorg/objectweb/asm/Type;->INT_TYPE:Lorg/objectweb/asm/Type;

    sget-object v1, Lorg/objectweb/asm/Type;->DOUBLE_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0, v1}, Lorg/objectweb/asm/commons/InstructionAdapter;->cast(Lorg/objectweb/asm/Type;Lorg/objectweb/asm/Type;)V

    goto/16 :goto_0

    :pswitch_47
    sget-object v0, Lorg/objectweb/asm/Type;->LONG_TYPE:Lorg/objectweb/asm/Type;

    sget-object v1, Lorg/objectweb/asm/Type;->INT_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0, v1}, Lorg/objectweb/asm/commons/InstructionAdapter;->cast(Lorg/objectweb/asm/Type;Lorg/objectweb/asm/Type;)V

    goto/16 :goto_0

    :pswitch_48
    sget-object v0, Lorg/objectweb/asm/Type;->LONG_TYPE:Lorg/objectweb/asm/Type;

    sget-object v1, Lorg/objectweb/asm/Type;->FLOAT_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0, v1}, Lorg/objectweb/asm/commons/InstructionAdapter;->cast(Lorg/objectweb/asm/Type;Lorg/objectweb/asm/Type;)V

    goto/16 :goto_0

    :pswitch_49
    sget-object v0, Lorg/objectweb/asm/Type;->LONG_TYPE:Lorg/objectweb/asm/Type;

    sget-object v1, Lorg/objectweb/asm/Type;->DOUBLE_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0, v1}, Lorg/objectweb/asm/commons/InstructionAdapter;->cast(Lorg/objectweb/asm/Type;Lorg/objectweb/asm/Type;)V

    goto/16 :goto_0

    :pswitch_4a
    sget-object v0, Lorg/objectweb/asm/Type;->FLOAT_TYPE:Lorg/objectweb/asm/Type;

    sget-object v1, Lorg/objectweb/asm/Type;->INT_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0, v1}, Lorg/objectweb/asm/commons/InstructionAdapter;->cast(Lorg/objectweb/asm/Type;Lorg/objectweb/asm/Type;)V

    goto/16 :goto_0

    :pswitch_4b
    sget-object v0, Lorg/objectweb/asm/Type;->FLOAT_TYPE:Lorg/objectweb/asm/Type;

    sget-object v1, Lorg/objectweb/asm/Type;->LONG_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0, v1}, Lorg/objectweb/asm/commons/InstructionAdapter;->cast(Lorg/objectweb/asm/Type;Lorg/objectweb/asm/Type;)V

    goto/16 :goto_0

    :pswitch_4c
    sget-object v0, Lorg/objectweb/asm/Type;->FLOAT_TYPE:Lorg/objectweb/asm/Type;

    sget-object v1, Lorg/objectweb/asm/Type;->DOUBLE_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0, v1}, Lorg/objectweb/asm/commons/InstructionAdapter;->cast(Lorg/objectweb/asm/Type;Lorg/objectweb/asm/Type;)V

    goto/16 :goto_0

    :pswitch_4d
    sget-object v0, Lorg/objectweb/asm/Type;->DOUBLE_TYPE:Lorg/objectweb/asm/Type;

    sget-object v1, Lorg/objectweb/asm/Type;->INT_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0, v1}, Lorg/objectweb/asm/commons/InstructionAdapter;->cast(Lorg/objectweb/asm/Type;Lorg/objectweb/asm/Type;)V

    goto/16 :goto_0

    :pswitch_4e
    sget-object v0, Lorg/objectweb/asm/Type;->DOUBLE_TYPE:Lorg/objectweb/asm/Type;

    sget-object v1, Lorg/objectweb/asm/Type;->LONG_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0, v1}, Lorg/objectweb/asm/commons/InstructionAdapter;->cast(Lorg/objectweb/asm/Type;Lorg/objectweb/asm/Type;)V

    goto/16 :goto_0

    :pswitch_4f
    sget-object v0, Lorg/objectweb/asm/Type;->DOUBLE_TYPE:Lorg/objectweb/asm/Type;

    sget-object v1, Lorg/objectweb/asm/Type;->FLOAT_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0, v1}, Lorg/objectweb/asm/commons/InstructionAdapter;->cast(Lorg/objectweb/asm/Type;Lorg/objectweb/asm/Type;)V

    goto/16 :goto_0

    :pswitch_50
    sget-object v0, Lorg/objectweb/asm/Type;->INT_TYPE:Lorg/objectweb/asm/Type;

    sget-object v1, Lorg/objectweb/asm/Type;->BYTE_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0, v1}, Lorg/objectweb/asm/commons/InstructionAdapter;->cast(Lorg/objectweb/asm/Type;Lorg/objectweb/asm/Type;)V

    goto/16 :goto_0

    :pswitch_51
    sget-object v0, Lorg/objectweb/asm/Type;->INT_TYPE:Lorg/objectweb/asm/Type;

    sget-object v1, Lorg/objectweb/asm/Type;->CHAR_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0, v1}, Lorg/objectweb/asm/commons/InstructionAdapter;->cast(Lorg/objectweb/asm/Type;Lorg/objectweb/asm/Type;)V

    goto/16 :goto_0

    :pswitch_52
    sget-object v0, Lorg/objectweb/asm/Type;->INT_TYPE:Lorg/objectweb/asm/Type;

    sget-object v1, Lorg/objectweb/asm/Type;->SHORT_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0, v1}, Lorg/objectweb/asm/commons/InstructionAdapter;->cast(Lorg/objectweb/asm/Type;Lorg/objectweb/asm/Type;)V

    goto/16 :goto_0

    :pswitch_53
    invoke-virtual {p0}, Lorg/objectweb/asm/commons/InstructionAdapter;->lcmp()V

    goto/16 :goto_0

    :pswitch_54
    sget-object v0, Lorg/objectweb/asm/Type;->FLOAT_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->cmpl(Lorg/objectweb/asm/Type;)V

    goto/16 :goto_0

    :pswitch_55
    sget-object v0, Lorg/objectweb/asm/Type;->FLOAT_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->cmpg(Lorg/objectweb/asm/Type;)V

    goto/16 :goto_0

    :pswitch_56
    sget-object v0, Lorg/objectweb/asm/Type;->DOUBLE_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->cmpl(Lorg/objectweb/asm/Type;)V

    goto/16 :goto_0

    :pswitch_57
    sget-object v0, Lorg/objectweb/asm/Type;->DOUBLE_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->cmpg(Lorg/objectweb/asm/Type;)V

    goto/16 :goto_0

    :pswitch_58
    sget-object v0, Lorg/objectweb/asm/Type;->INT_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->areturn(Lorg/objectweb/asm/Type;)V

    goto/16 :goto_0

    :pswitch_59
    sget-object v0, Lorg/objectweb/asm/Type;->LONG_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->areturn(Lorg/objectweb/asm/Type;)V

    goto/16 :goto_0

    :pswitch_5a
    sget-object v0, Lorg/objectweb/asm/Type;->FLOAT_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->areturn(Lorg/objectweb/asm/Type;)V

    goto/16 :goto_0

    :pswitch_5b
    sget-object v0, Lorg/objectweb/asm/Type;->DOUBLE_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->areturn(Lorg/objectweb/asm/Type;)V

    goto/16 :goto_0

    :pswitch_5c
    sget-object v0, Lorg/objectweb/asm/commons/InstructionAdapter;->OBJECT_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->areturn(Lorg/objectweb/asm/Type;)V

    goto/16 :goto_0

    :pswitch_5d
    sget-object v0, Lorg/objectweb/asm/Type;->VOID_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->areturn(Lorg/objectweb/asm/Type;)V

    goto/16 :goto_0

    :pswitch_5e
    invoke-virtual {p0}, Lorg/objectweb/asm/commons/InstructionAdapter;->arraylength()V

    goto/16 :goto_0

    :pswitch_5f
    invoke-virtual {p0}, Lorg/objectweb/asm/commons/InstructionAdapter;->athrow()V

    goto/16 :goto_0

    :pswitch_60
    invoke-virtual {p0}, Lorg/objectweb/asm/commons/InstructionAdapter;->monitorenter()V

    goto/16 :goto_0

    :pswitch_61
    invoke-virtual {p0}, Lorg/objectweb/asm/commons/InstructionAdapter;->monitorexit()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_31
        :pswitch_32
        :pswitch_33
        :pswitch_34
        :pswitch_35
        :pswitch_36
        :pswitch_37
        :pswitch_38
        :pswitch_39
        :pswitch_3a
        :pswitch_3b
        :pswitch_3c
        :pswitch_3d
        :pswitch_3e
        :pswitch_3f
        :pswitch_40
        :pswitch_41
        :pswitch_42
        :pswitch_43
        :pswitch_0
        :pswitch_44
        :pswitch_45
        :pswitch_46
        :pswitch_47
        :pswitch_48
        :pswitch_49
        :pswitch_4a
        :pswitch_4b
        :pswitch_4c
        :pswitch_4d
        :pswitch_4e
        :pswitch_4f
        :pswitch_50
        :pswitch_51
        :pswitch_52
        :pswitch_53
        :pswitch_54
        :pswitch_55
        :pswitch_56
        :pswitch_57
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_58
        :pswitch_59
        :pswitch_5a
        :pswitch_5b
        :pswitch_5c
        :pswitch_5d
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5e
        :pswitch_5f
        :pswitch_0
        :pswitch_0
        :pswitch_60
        :pswitch_61
    .end packed-switch
.end method

.method public visitIntInsn(II)V
    .registers 4

    sparse-switch p1, :sswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :sswitch_0
    invoke-virtual {p0, p2}, Lorg/objectweb/asm/commons/InstructionAdapter;->iconst(I)V

    :goto_0
    return-void

    :sswitch_1
    invoke-virtual {p0, p2}, Lorg/objectweb/asm/commons/InstructionAdapter;->iconst(I)V

    goto :goto_0

    :sswitch_2
    packed-switch p2, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :pswitch_0
    sget-object v0, Lorg/objectweb/asm/Type;->BOOLEAN_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->newarray(Lorg/objectweb/asm/Type;)V

    goto :goto_0

    :pswitch_1
    sget-object v0, Lorg/objectweb/asm/Type;->CHAR_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->newarray(Lorg/objectweb/asm/Type;)V

    goto :goto_0

    :pswitch_2
    sget-object v0, Lorg/objectweb/asm/Type;->BYTE_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->newarray(Lorg/objectweb/asm/Type;)V

    goto :goto_0

    :pswitch_3
    sget-object v0, Lorg/objectweb/asm/Type;->SHORT_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->newarray(Lorg/objectweb/asm/Type;)V

    goto :goto_0

    :pswitch_4
    sget-object v0, Lorg/objectweb/asm/Type;->INT_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->newarray(Lorg/objectweb/asm/Type;)V

    goto :goto_0

    :pswitch_5
    sget-object v0, Lorg/objectweb/asm/Type;->FLOAT_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->newarray(Lorg/objectweb/asm/Type;)V

    goto :goto_0

    :pswitch_6
    sget-object v0, Lorg/objectweb/asm/Type;->LONG_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->newarray(Lorg/objectweb/asm/Type;)V

    goto :goto_0

    :pswitch_7
    sget-object v0, Lorg/objectweb/asm/Type;->DOUBLE_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->newarray(Lorg/objectweb/asm/Type;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x11 -> :sswitch_1
        0xbc -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_5
        :pswitch_7
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
    .end packed-switch
.end method

.method public varargs visitInvokeDynamicInsn(Ljava/lang/String;Ljava/lang/String;Lorg/objectweb/asm/Handle;[Ljava/lang/Object;)V
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/objectweb/asm/commons/InstructionAdapter;->invokedynamic(Ljava/lang/String;Ljava/lang/String;Lorg/objectweb/asm/Handle;[Ljava/lang/Object;)V

    return-void
.end method

.method public visitJumpInsn(ILorg/objectweb/asm/Label;)V
    .registers 4

    sparse-switch p1, :sswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :sswitch_0
    invoke-virtual {p0, p2}, Lorg/objectweb/asm/commons/InstructionAdapter;->ifeq(Lorg/objectweb/asm/Label;)V

    :goto_0
    return-void

    :sswitch_1
    invoke-virtual {p0, p2}, Lorg/objectweb/asm/commons/InstructionAdapter;->ifne(Lorg/objectweb/asm/Label;)V

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0, p2}, Lorg/objectweb/asm/commons/InstructionAdapter;->iflt(Lorg/objectweb/asm/Label;)V

    goto :goto_0

    :sswitch_3
    invoke-virtual {p0, p2}, Lorg/objectweb/asm/commons/InstructionAdapter;->ifge(Lorg/objectweb/asm/Label;)V

    goto :goto_0

    :sswitch_4
    invoke-virtual {p0, p2}, Lorg/objectweb/asm/commons/InstructionAdapter;->ifgt(Lorg/objectweb/asm/Label;)V

    goto :goto_0

    :sswitch_5
    invoke-virtual {p0, p2}, Lorg/objectweb/asm/commons/InstructionAdapter;->ifle(Lorg/objectweb/asm/Label;)V

    goto :goto_0

    :sswitch_6
    invoke-virtual {p0, p2}, Lorg/objectweb/asm/commons/InstructionAdapter;->ificmpeq(Lorg/objectweb/asm/Label;)V

    goto :goto_0

    :sswitch_7
    invoke-virtual {p0, p2}, Lorg/objectweb/asm/commons/InstructionAdapter;->ificmpne(Lorg/objectweb/asm/Label;)V

    goto :goto_0

    :sswitch_8
    invoke-virtual {p0, p2}, Lorg/objectweb/asm/commons/InstructionAdapter;->ificmplt(Lorg/objectweb/asm/Label;)V

    goto :goto_0

    :sswitch_9
    invoke-virtual {p0, p2}, Lorg/objectweb/asm/commons/InstructionAdapter;->ificmpge(Lorg/objectweb/asm/Label;)V

    goto :goto_0

    :sswitch_a
    invoke-virtual {p0, p2}, Lorg/objectweb/asm/commons/InstructionAdapter;->ificmpgt(Lorg/objectweb/asm/Label;)V

    goto :goto_0

    :sswitch_b
    invoke-virtual {p0, p2}, Lorg/objectweb/asm/commons/InstructionAdapter;->ificmple(Lorg/objectweb/asm/Label;)V

    goto :goto_0

    :sswitch_c
    invoke-virtual {p0, p2}, Lorg/objectweb/asm/commons/InstructionAdapter;->ifacmpeq(Lorg/objectweb/asm/Label;)V

    goto :goto_0

    :sswitch_d
    invoke-virtual {p0, p2}, Lorg/objectweb/asm/commons/InstructionAdapter;->ifacmpne(Lorg/objectweb/asm/Label;)V

    goto :goto_0

    :sswitch_e
    invoke-virtual {p0, p2}, Lorg/objectweb/asm/commons/InstructionAdapter;->goTo(Lorg/objectweb/asm/Label;)V

    goto :goto_0

    :sswitch_f
    invoke-virtual {p0, p2}, Lorg/objectweb/asm/commons/InstructionAdapter;->jsr(Lorg/objectweb/asm/Label;)V

    goto :goto_0

    :sswitch_10
    invoke-virtual {p0, p2}, Lorg/objectweb/asm/commons/InstructionAdapter;->ifnull(Lorg/objectweb/asm/Label;)V

    goto :goto_0

    :sswitch_11
    invoke-virtual {p0, p2}, Lorg/objectweb/asm/commons/InstructionAdapter;->ifnonnull(Lorg/objectweb/asm/Label;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x99 -> :sswitch_0
        0x9a -> :sswitch_1
        0x9b -> :sswitch_2
        0x9c -> :sswitch_3
        0x9d -> :sswitch_4
        0x9e -> :sswitch_5
        0x9f -> :sswitch_6
        0xa0 -> :sswitch_7
        0xa1 -> :sswitch_8
        0xa2 -> :sswitch_9
        0xa3 -> :sswitch_a
        0xa4 -> :sswitch_b
        0xa5 -> :sswitch_c
        0xa6 -> :sswitch_d
        0xa7 -> :sswitch_e
        0xa8 -> :sswitch_f
        0xc6 -> :sswitch_10
        0xc7 -> :sswitch_11
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

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->iconst(I)V

    :goto_0
    return-void

    :cond_0
    instance-of v0, p1, Ljava/lang/Byte;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/lang/Byte;

    invoke-virtual {p1}, Ljava/lang/Byte;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->iconst(I)V

    goto :goto_0

    :cond_1
    instance-of v0, p1, Ljava/lang/Character;

    if-eqz v0, :cond_2

    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result v0

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->iconst(I)V

    goto :goto_0

    :cond_2
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_3

    check-cast p1, Ljava/lang/Short;

    invoke-virtual {p1}, Ljava/lang/Short;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->iconst(I)V

    goto :goto_0

    :cond_3
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_5

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->iconst(I)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    :cond_5
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_6

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->fconst(F)V

    goto :goto_0

    :cond_6
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_7

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/objectweb/asm/commons/InstructionAdapter;->lconst(J)V

    goto :goto_0

    :cond_7
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_8

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/objectweb/asm/commons/InstructionAdapter;->dconst(D)V

    goto :goto_0

    :cond_8
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_9

    invoke-virtual {p0, p1}, Lorg/objectweb/asm/commons/InstructionAdapter;->aconst(Ljava/lang/Object;)V

    goto :goto_0

    :cond_9
    instance-of v0, p1, Lorg/objectweb/asm/Type;

    if-eqz v0, :cond_a

    check-cast p1, Lorg/objectweb/asm/Type;

    invoke-virtual {p0, p1}, Lorg/objectweb/asm/commons/InstructionAdapter;->tconst(Lorg/objectweb/asm/Type;)V

    goto :goto_0

    :cond_a
    instance-of v0, p1, Lorg/objectweb/asm/Handle;

    if-eqz v0, :cond_b

    check-cast p1, Lorg/objectweb/asm/Handle;

    invoke-virtual {p0, p1}, Lorg/objectweb/asm/commons/InstructionAdapter;->hconst(Lorg/objectweb/asm/Handle;)V

    goto/16 :goto_0

    :cond_b
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

    if-lt v0, v1, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Lorg/objectweb/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const/16 v0, 0xb9

    if-ne p1, v0, :cond_1

    const/4 v5, 0x1

    :goto_1
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/objectweb/asm/commons/InstructionAdapter;->doVisitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 8

    iget v0, p0, Lorg/objectweb/asm/commons/InstructionAdapter;->api:I

    const/high16 v1, 0x50000

    if-ge v0, v1, :cond_0

    invoke-super/range {p0 .. p5}, Lorg/objectweb/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void

    :cond_0
    invoke-direct/range {p0 .. p5}, Lorg/objectweb/asm/commons/InstructionAdapter;->doVisitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
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

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :pswitch_1
    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->anew(Lorg/objectweb/asm/Type;)V

    :goto_0
    return-void

    :pswitch_2
    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->newarray(Lorg/objectweb/asm/Type;)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->checkcast(Lorg/objectweb/asm/Type;)V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->instanceOf(Lorg/objectweb/asm/Type;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xbb
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public visitVarInsn(II)V
    .registers 4

    sparse-switch p1, :sswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :sswitch_0
    sget-object v0, Lorg/objectweb/asm/Type;->INT_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, p2, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->load(ILorg/objectweb/asm/Type;)V

    :goto_0
    return-void

    :sswitch_1
    sget-object v0, Lorg/objectweb/asm/Type;->LONG_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, p2, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->load(ILorg/objectweb/asm/Type;)V

    goto :goto_0

    :sswitch_2
    sget-object v0, Lorg/objectweb/asm/Type;->FLOAT_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, p2, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->load(ILorg/objectweb/asm/Type;)V

    goto :goto_0

    :sswitch_3
    sget-object v0, Lorg/objectweb/asm/Type;->DOUBLE_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, p2, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->load(ILorg/objectweb/asm/Type;)V

    goto :goto_0

    :sswitch_4
    sget-object v0, Lorg/objectweb/asm/commons/InstructionAdapter;->OBJECT_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, p2, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->load(ILorg/objectweb/asm/Type;)V

    goto :goto_0

    :sswitch_5
    sget-object v0, Lorg/objectweb/asm/Type;->INT_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, p2, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->store(ILorg/objectweb/asm/Type;)V

    goto :goto_0

    :sswitch_6
    sget-object v0, Lorg/objectweb/asm/Type;->LONG_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, p2, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->store(ILorg/objectweb/asm/Type;)V

    goto :goto_0

    :sswitch_7
    sget-object v0, Lorg/objectweb/asm/Type;->FLOAT_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, p2, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->store(ILorg/objectweb/asm/Type;)V

    goto :goto_0

    :sswitch_8
    sget-object v0, Lorg/objectweb/asm/Type;->DOUBLE_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, p2, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->store(ILorg/objectweb/asm/Type;)V

    goto :goto_0

    :sswitch_9
    sget-object v0, Lorg/objectweb/asm/commons/InstructionAdapter;->OBJECT_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, p2, v0}, Lorg/objectweb/asm/commons/InstructionAdapter;->store(ILorg/objectweb/asm/Type;)V

    goto :goto_0

    :sswitch_a
    invoke-virtual {p0, p2}, Lorg/objectweb/asm/commons/InstructionAdapter;->ret(I)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x17 -> :sswitch_2
        0x18 -> :sswitch_3
        0x19 -> :sswitch_4
        0x36 -> :sswitch_5
        0x37 -> :sswitch_6
        0x38 -> :sswitch_7
        0x39 -> :sswitch_8
        0x3a -> :sswitch_9
        0xa9 -> :sswitch_a
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
