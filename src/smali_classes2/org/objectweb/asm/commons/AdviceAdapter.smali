.class public abstract Lorg/objectweb/asm/commons/AdviceAdapter;
.super Lorg/objectweb/asm/commons/GeneratorAdapter;

# interfaces
.implements Lorg/objectweb/asm/Opcodes;


# static fields
.field private static final OTHER:Ljava/lang/Object;

.field private static final THIS:Ljava/lang/Object;


# instance fields
.field private branches:Ljava/util/Map;

.field private constructor:Z

.field protected methodAccess:I

.field protected methodDesc:Ljava/lang/String;

.field private stackFrame:Ljava/util/List;

.field private superInitialized:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lorg/objectweb/asm/commons/AdviceAdapter;->_clinit_()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/objectweb/asm/commons/AdviceAdapter;->THIS:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/objectweb/asm/commons/AdviceAdapter;->OTHER:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>(ILorg/objectweb/asm/MethodVisitor;ILjava/lang/String;Ljava/lang/String;)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Lorg/objectweb/asm/commons/GeneratorAdapter;-><init>(ILorg/objectweb/asm/MethodVisitor;ILjava/lang/String;Ljava/lang/String;)V

    iput p3, p0, Lorg/objectweb/asm/commons/AdviceAdapter;->methodAccess:I

    iput-object p5, p0, Lorg/objectweb/asm/commons/AdviceAdapter;->methodDesc:Ljava/lang/String;

    const-string v0, "<init>"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/objectweb/asm/commons/AdviceAdapter;->constructor:Z

    return-void
.end method

.method static _clinit_()V
    .registers 0

    return-void
.end method

.method private addBranch(Lorg/objectweb/asm/Label;)V
    .registers 5

    iget-object v0, p0, Lorg/objectweb/asm/commons/AdviceAdapter;->branches:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/objectweb/asm/commons/AdviceAdapter;->branches:Ljava/util/Map;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/objectweb/asm/commons/AdviceAdapter;->stackFrame:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private addBranches(Lorg/objectweb/asm/Label;[Lorg/objectweb/asm/Label;)V
    .registers 5

    invoke-direct {p0, p1}, Lorg/objectweb/asm/commons/AdviceAdapter;->addBranch(Lorg/objectweb/asm/Label;)V

    const/4 v0, 0x0

    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    aget-object v1, p2, v0

    invoke-direct {p0, v1}, Lorg/objectweb/asm/commons/AdviceAdapter;->addBranch(Lorg/objectweb/asm/Label;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private doVisitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 14

    const/4 v7, 0x2

    const/4 v6, 0x0

    iget-object v0, p0, Lorg/objectweb/asm/commons/AdviceAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/objectweb/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-boolean v0, p0, Lorg/objectweb/asm/commons/AdviceAdapter;->constructor:Z

    if-eqz v0, :cond_3

    invoke-static {p4}, Lorg/objectweb/asm/Type;->getArgumentTypes(Ljava/lang/String;)[Lorg/objectweb/asm/Type;

    move-result-object v1

    move v0, v6

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    invoke-direct {p0}, Lorg/objectweb/asm/commons/AdviceAdapter;->popValue()Ljava/lang/Object;

    aget-object v2, v1, v0

    invoke-virtual {v2}, Lorg/objectweb/asm/Type;->getSize()I

    move-result v2

    if-ne v2, v7, :cond_0

    invoke-direct {p0}, Lorg/objectweb/asm/commons/AdviceAdapter;->popValue()Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    packed-switch p1, :pswitch_data_0

    :cond_2
    :goto_1
    :pswitch_0
    invoke-static {p4}, Lorg/objectweb/asm/Type;->getReturnType(Ljava/lang/String;)Lorg/objectweb/asm/Type;

    move-result-object v0

    sget-object v1, Lorg/objectweb/asm/Type;->VOID_TYPE:Lorg/objectweb/asm/Type;

    if-eq v0, v1, :cond_3

    sget-object v1, Lorg/objectweb/asm/commons/AdviceAdapter;->OTHER:Ljava/lang/Object;

    invoke-direct {p0, v1}, Lorg/objectweb/asm/commons/AdviceAdapter;->pushValue(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lorg/objectweb/asm/Type;->getSize()I

    move-result v0

    if-ne v0, v7, :cond_3

    sget-object v0, Lorg/objectweb/asm/commons/AdviceAdapter;->OTHER:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AdviceAdapter;->pushValue(Ljava/lang/Object;)V

    :cond_3
    return-void

    :pswitch_1
    invoke-direct {p0}, Lorg/objectweb/asm/commons/AdviceAdapter;->popValue()Ljava/lang/Object;

    goto :goto_1

    :pswitch_2
    invoke-direct {p0}, Lorg/objectweb/asm/commons/AdviceAdapter;->popValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lorg/objectweb/asm/commons/AdviceAdapter;->THIS:Ljava/lang/Object;

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lorg/objectweb/asm/commons/AdviceAdapter;->superInitialized:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lorg/objectweb/asm/commons/AdviceAdapter;->onMethodEnter()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/objectweb/asm/commons/AdviceAdapter;->superInitialized:Z

    iput-boolean v6, p0, Lorg/objectweb/asm/commons/AdviceAdapter;->constructor:Z

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0xb6
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private peekValue()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lorg/objectweb/asm/commons/AdviceAdapter;->stackFrame:Ljava/util/List;

    iget-object v1, p0, Lorg/objectweb/asm/commons/AdviceAdapter;->stackFrame:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private popValue()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lorg/objectweb/asm/commons/AdviceAdapter;->stackFrame:Ljava/util/List;

    iget-object v1, p0, Lorg/objectweb/asm/commons/AdviceAdapter;->stackFrame:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private pushValue(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lorg/objectweb/asm/commons/AdviceAdapter;->stackFrame:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method protected onMethodEnter()V
    .registers 1

    return-void
.end method

.method protected onMethodExit(I)V
    .registers 2

    return-void
.end method

.method public visitCode()V
    .registers 2

    iget-object v0, p0, Lorg/objectweb/asm/commons/AdviceAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    invoke-virtual {v0}, Lorg/objectweb/asm/MethodVisitor;->visitCode()V

    iget-boolean v0, p0, Lorg/objectweb/asm/commons/AdviceAdapter;->constructor:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/objectweb/asm/commons/AdviceAdapter;->stackFrame:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/objectweb/asm/commons/AdviceAdapter;->branches:Ljava/util/Map;

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/objectweb/asm/commons/AdviceAdapter;->superInitialized:Z

    invoke-virtual {p0}, Lorg/objectweb/asm/commons/AdviceAdapter;->onMethodEnter()V

    goto :goto_0
.end method

.method public visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/objectweb/asm/commons/AdviceAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    invoke-virtual {v1, p1, p2, p3, p4}, Lorg/objectweb/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p0, Lorg/objectweb/asm/commons/AdviceAdapter;->constructor:Z

    if-eqz v1, :cond_2

    invoke-virtual {p4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x4a

    if-eq v1, v2, :cond_0

    const/16 v2, 0x44

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    if-eqz v0, :cond_2

    sget-object v0, Lorg/objectweb/asm/commons/AdviceAdapter;->OTHER:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AdviceAdapter;->pushValue(Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void

    :pswitch_1
    sget-object v1, Lorg/objectweb/asm/commons/AdviceAdapter;->OTHER:Ljava/lang/Object;

    invoke-direct {p0, v1}, Lorg/objectweb/asm/commons/AdviceAdapter;->pushValue(Ljava/lang/Object;)V

    if-eqz v0, :cond_2

    sget-object v0, Lorg/objectweb/asm/commons/AdviceAdapter;->OTHER:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AdviceAdapter;->pushValue(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lorg/objectweb/asm/commons/AdviceAdapter;->popValue()Ljava/lang/Object;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lorg/objectweb/asm/commons/AdviceAdapter;->popValue()Ljava/lang/Object;

    goto :goto_0

    :pswitch_3
    invoke-direct {p0}, Lorg/objectweb/asm/commons/AdviceAdapter;->popValue()Ljava/lang/Object;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lorg/objectweb/asm/commons/AdviceAdapter;->popValue()Ljava/lang/Object;

    invoke-direct {p0}, Lorg/objectweb/asm/commons/AdviceAdapter;->popValue()Ljava/lang/Object;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0xb2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public visitInsn(I)V
    .registers 7

    iget-boolean v0, p0, Lorg/objectweb/asm/commons/AdviceAdapter;->constructor:Z

    if-eqz v0, :cond_0

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    iget-object v0, p0, Lorg/objectweb/asm/commons/AdviceAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    invoke-virtual {v0, p1}, Lorg/objectweb/asm/MethodVisitor;->visitInsn(I)V

    return-void

    :pswitch_1
    invoke-virtual {p0, p1}, Lorg/objectweb/asm/commons/AdviceAdapter;->onMethodExit(I)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lorg/objectweb/asm/commons/AdviceAdapter;->popValue()Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lorg/objectweb/asm/commons/AdviceAdapter;->onMethodExit(I)V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0}, Lorg/objectweb/asm/commons/AdviceAdapter;->popValue()Ljava/lang/Object;

    invoke-direct {p0}, Lorg/objectweb/asm/commons/AdviceAdapter;->popValue()Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lorg/objectweb/asm/commons/AdviceAdapter;->onMethodExit(I)V

    goto :goto_0

    :pswitch_4
    sget-object v0, Lorg/objectweb/asm/commons/AdviceAdapter;->OTHER:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AdviceAdapter;->pushValue(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_5
    sget-object v0, Lorg/objectweb/asm/commons/AdviceAdapter;->OTHER:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AdviceAdapter;->pushValue(Ljava/lang/Object;)V

    sget-object v0, Lorg/objectweb/asm/commons/AdviceAdapter;->OTHER:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AdviceAdapter;->pushValue(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_6
    invoke-direct {p0}, Lorg/objectweb/asm/commons/AdviceAdapter;->popValue()Ljava/lang/Object;

    goto :goto_0

    :pswitch_7
    invoke-direct {p0}, Lorg/objectweb/asm/commons/AdviceAdapter;->popValue()Ljava/lang/Object;

    invoke-direct {p0}, Lorg/objectweb/asm/commons/AdviceAdapter;->popValue()Ljava/lang/Object;

    goto :goto_0

    :pswitch_8
    invoke-direct {p0}, Lorg/objectweb/asm/commons/AdviceAdapter;->popValue()Ljava/lang/Object;

    invoke-direct {p0}, Lorg/objectweb/asm/commons/AdviceAdapter;->popValue()Ljava/lang/Object;

    invoke-direct {p0}, Lorg/objectweb/asm/commons/AdviceAdapter;->popValue()Ljava/lang/Object;

    goto :goto_0

    :pswitch_9
    invoke-direct {p0}, Lorg/objectweb/asm/commons/AdviceAdapter;->popValue()Ljava/lang/Object;

    invoke-direct {p0}, Lorg/objectweb/asm/commons/AdviceAdapter;->popValue()Ljava/lang/Object;

    invoke-direct {p0}, Lorg/objectweb/asm/commons/AdviceAdapter;->popValue()Ljava/lang/Object;

    invoke-direct {p0}, Lorg/objectweb/asm/commons/AdviceAdapter;->popValue()Ljava/lang/Object;

    goto :goto_0

    :pswitch_a
    invoke-direct {p0}, Lorg/objectweb/asm/commons/AdviceAdapter;->peekValue()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AdviceAdapter;->pushValue(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_b
    iget-object v0, p0, Lorg/objectweb/asm/commons/AdviceAdapter;->stackFrame:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lorg/objectweb/asm/commons/AdviceAdapter;->stackFrame:Ljava/util/List;

    add-int/lit8 v2, v0, -0x2

    iget-object v3, p0, Lorg/objectweb/asm/commons/AdviceAdapter;->stackFrame:Ljava/util/List;

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    :pswitch_c
    iget-object v0, p0, Lorg/objectweb/asm/commons/AdviceAdapter;->stackFrame:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lorg/objectweb/asm/commons/AdviceAdapter;->stackFrame:Ljava/util/List;

    add-int/lit8 v2, v0, -0x3

    iget-object v3, p0, Lorg/objectweb/asm/commons/AdviceAdapter;->stackFrame:Ljava/util/List;

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_d
    iget-object v0, p0, Lorg/objectweb/asm/commons/AdviceAdapter;->stackFrame:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lorg/objectweb/asm/commons/AdviceAdapter;->stackFrame:Ljava/util/List;

    add-int/lit8 v2, v0, -0x2

    iget-object v3, p0, Lorg/objectweb/asm/commons/AdviceAdapter;->stackFrame:Ljava/util/List;

    add-int/lit8 v4, v0, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v1, p0, Lorg/objectweb/asm/commons/AdviceAdapter;->stackFrame:Ljava/util/List;

    add-int/lit8 v2, v0, -0x2

    iget-object v3, p0, Lorg/objectweb/asm/commons/AdviceAdapter;->stackFrame:Ljava/util/List;

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_e
    iget-object v0, p0, Lorg/objectweb/asm/commons/AdviceAdapter;->stackFrame:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lorg/objectweb/asm/commons/AdviceAdapter;->stackFrame:Ljava/util/List;

    add-int/lit8 v2, v0, -0x3

    iget-object v3, p0, Lorg/objectweb/asm/commons/AdviceAdapter;->stackFrame:Ljava/util/List;

    add-int/lit8 v4, v0, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v1, p0, Lorg/objectweb/asm/commons/AdviceAdapter;->stackFrame:Ljava/util/List;

    add-int/lit8 v2, v0, -0x3

    iget-object v3, p0, Lorg/objectweb/asm/commons/AdviceAdapter;->stackFrame:Ljava/util/List;

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_f
    iget-object v0, p0, Lorg/objectweb/asm/commons/AdviceAdapter;->stackFrame:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lorg/objectweb/asm/commons/AdviceAdapter;->stackFrame:Ljava/util/List;

    add-int/lit8 v2, v0, -0x4

    iget-object v3, p0, Lorg/objectweb/asm/commons/AdviceAdapter;->stackFrame:Ljava/util/List;

    add-int/lit8 v4, v0, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v1, p0, Lorg/objectweb/asm/commons/AdviceAdapter;->stackFrame:Ljava/util/List;

    add-int/lit8 v2, v0, -0x4

    iget-object v3, p0, Lorg/objectweb/asm/commons/AdviceAdapter;->stackFrame:Ljava/util/List;

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_10
    iget-object v0, p0, Lorg/objectweb/asm/commons/AdviceAdapter;->stackFrame:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lorg/objectweb/asm/commons/AdviceAdapter;->stackFrame:Ljava/util/List;

    add-int/lit8 v2, v0, -0x2

    iget-object v3, p0, Lorg/objectweb/asm/commons/AdviceAdapter;->stackFrame:Ljava/util/List;

    add-int/lit8 v4, v0, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v1, p0, Lorg/objectweb/asm/commons/AdviceAdapter;->stackFrame:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_0
    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    invoke-virtual {p0, p1}, Lorg/objectweb/asm/commons/AdviceAdapter;->onMethodExit(I)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
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
        :pswitch_6
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_6
        :pswitch_6
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
        :pswitch_8
        :pswitch_9
        :pswitch_8
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_6
        :pswitch_7
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_6
        :pswitch_7
        :pswitch_6
        :pswitch_7
        :pswitch_6
        :pswitch_7
        :pswitch_6
        :pswitch_7
        :pswitch_6
        :pswitch_7
        :pswitch_6
        :pswitch_7
        :pswitch_6
        :pswitch_7
        :pswitch_6
        :pswitch_7
        :pswitch_6
        :pswitch_7
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_6
        :pswitch_7
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_4
        :pswitch_6
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_6
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_6
        :pswitch_6
        :pswitch_8
        :pswitch_8
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
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_1
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
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_6
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0xac -> :sswitch_0
        0xad -> :sswitch_0
        0xae -> :sswitch_0
        0xaf -> :sswitch_0
        0xb0 -> :sswitch_0
        0xb1 -> :sswitch_0
        0xbf -> :sswitch_0
    .end sparse-switch
.end method

.method public visitIntInsn(II)V
    .registers 4

    iget-object v0, p0, Lorg/objectweb/asm/commons/AdviceAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2}, Lorg/objectweb/asm/MethodVisitor;->visitIntInsn(II)V

    iget-boolean v0, p0, Lorg/objectweb/asm/commons/AdviceAdapter;->constructor:Z

    if-eqz v0, :cond_0

    const/16 v0, 0xbc

    if-eq p1, v0, :cond_0

    sget-object v0, Lorg/objectweb/asm/commons/AdviceAdapter;->OTHER:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AdviceAdapter;->pushValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public varargs visitInvokeDynamicInsn(Ljava/lang/String;Ljava/lang/String;Lorg/objectweb/asm/Handle;[Ljava/lang/Object;)V
    .registers 9

    const/4 v3, 0x2

    iget-object v0, p0, Lorg/objectweb/asm/commons/AdviceAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/objectweb/asm/MethodVisitor;->visitInvokeDynamicInsn(Ljava/lang/String;Ljava/lang/String;Lorg/objectweb/asm/Handle;[Ljava/lang/Object;)V

    iget-boolean v0, p0, Lorg/objectweb/asm/commons/AdviceAdapter;->constructor:Z

    if-eqz v0, :cond_2

    invoke-static {p2}, Lorg/objectweb/asm/Type;->getArgumentTypes(Ljava/lang/String;)[Lorg/objectweb/asm/Type;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    invoke-direct {p0}, Lorg/objectweb/asm/commons/AdviceAdapter;->popValue()Ljava/lang/Object;

    aget-object v2, v1, v0

    invoke-virtual {v2}, Lorg/objectweb/asm/Type;->getSize()I

    move-result v2

    if-ne v2, v3, :cond_0

    invoke-direct {p0}, Lorg/objectweb/asm/commons/AdviceAdapter;->popValue()Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-static {p2}, Lorg/objectweb/asm/Type;->getReturnType(Ljava/lang/String;)Lorg/objectweb/asm/Type;

    move-result-object v0

    sget-object v1, Lorg/objectweb/asm/Type;->VOID_TYPE:Lorg/objectweb/asm/Type;

    if-eq v0, v1, :cond_2

    sget-object v1, Lorg/objectweb/asm/commons/AdviceAdapter;->OTHER:Ljava/lang/Object;

    invoke-direct {p0, v1}, Lorg/objectweb/asm/commons/AdviceAdapter;->pushValue(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lorg/objectweb/asm/Type;->getSize()I

    move-result v0

    if-ne v0, v3, :cond_2

    sget-object v0, Lorg/objectweb/asm/commons/AdviceAdapter;->OTHER:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AdviceAdapter;->pushValue(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public visitJumpInsn(ILorg/objectweb/asm/Label;)V
    .registers 4

    iget-object v0, p0, Lorg/objectweb/asm/commons/AdviceAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2}, Lorg/objectweb/asm/MethodVisitor;->visitJumpInsn(ILorg/objectweb/asm/Label;)V

    iget-boolean v0, p0, Lorg/objectweb/asm/commons/AdviceAdapter;->constructor:Z

    if-eqz v0, :cond_0

    sparse-switch p1, :sswitch_data_0

    :goto_0
    invoke-direct {p0, p2}, Lorg/objectweb/asm/commons/AdviceAdapter;->addBranch(Lorg/objectweb/asm/Label;)V

    :cond_0
    return-void

    :sswitch_0
    invoke-direct {p0}, Lorg/objectweb/asm/commons/AdviceAdapter;->popValue()Ljava/lang/Object;

    goto :goto_0

    :sswitch_1
    invoke-direct {p0}, Lorg/objectweb/asm/commons/AdviceAdapter;->popValue()Ljava/lang/Object;

    invoke-direct {p0}, Lorg/objectweb/asm/commons/AdviceAdapter;->popValue()Ljava/lang/Object;

    goto :goto_0

    :sswitch_2
    sget-object v0, Lorg/objectweb/asm/commons/AdviceAdapter;->OTHER:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AdviceAdapter;->pushValue(Ljava/lang/Object;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x99 -> :sswitch_0
        0x9a -> :sswitch_0
        0x9b -> :sswitch_0
        0x9c -> :sswitch_0
        0x9d -> :sswitch_0
        0x9e -> :sswitch_0
        0x9f -> :sswitch_1
        0xa0 -> :sswitch_1
        0xa1 -> :sswitch_1
        0xa2 -> :sswitch_1
        0xa3 -> :sswitch_1
        0xa4 -> :sswitch_1
        0xa5 -> :sswitch_1
        0xa6 -> :sswitch_1
        0xa8 -> :sswitch_2
        0xc6 -> :sswitch_0
        0xc7 -> :sswitch_0
    .end sparse-switch
.end method

.method public visitLabel(Lorg/objectweb/asm/Label;)V
    .registers 3

    iget-object v0, p0, Lorg/objectweb/asm/commons/AdviceAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    invoke-virtual {v0, p1}, Lorg/objectweb/asm/MethodVisitor;->visitLabel(Lorg/objectweb/asm/Label;)V

    iget-boolean v0, p0, Lorg/objectweb/asm/commons/AdviceAdapter;->constructor:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/objectweb/asm/commons/AdviceAdapter;->branches:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/objectweb/asm/commons/AdviceAdapter;->branches:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    iput-object v0, p0, Lorg/objectweb/asm/commons/AdviceAdapter;->stackFrame:Ljava/util/List;

    iget-object v0, p0, Lorg/objectweb/asm/commons/AdviceAdapter;->branches:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public visitLdcInsn(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lorg/objectweb/asm/commons/AdviceAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    invoke-virtual {v0, p1}, Lorg/objectweb/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lorg/objectweb/asm/commons/AdviceAdapter;->constructor:Z

    if-eqz v0, :cond_1

    sget-object v0, Lorg/objectweb/asm/commons/AdviceAdapter;->OTHER:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AdviceAdapter;->pushValue(Ljava/lang/Object;)V

    instance-of v0, p1, Ljava/lang/Double;

    if-nez v0, :cond_0

    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lorg/objectweb/asm/commons/AdviceAdapter;->OTHER:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AdviceAdapter;->pushValue(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public visitLookupSwitchInsn(Lorg/objectweb/asm/Label;[I[Lorg/objectweb/asm/Label;)V
    .registers 5

    iget-object v0, p0, Lorg/objectweb/asm/commons/AdviceAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2, p3}, Lorg/objectweb/asm/MethodVisitor;->visitLookupSwitchInsn(Lorg/objectweb/asm/Label;[I[Lorg/objectweb/asm/Label;)V

    iget-boolean v0, p0, Lorg/objectweb/asm/commons/AdviceAdapter;->constructor:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/objectweb/asm/commons/AdviceAdapter;->popValue()Ljava/lang/Object;

    invoke-direct {p0, p1, p3}, Lorg/objectweb/asm/commons/AdviceAdapter;->addBranches(Lorg/objectweb/asm/Label;[Lorg/objectweb/asm/Label;)V

    :cond_0
    return-void
.end method

.method public visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    iget v0, p0, Lorg/objectweb/asm/commons/AdviceAdapter;->api:I

    const/high16 v1, 0x50000

    if-lt v0, v1, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Lorg/objectweb/asm/commons/GeneratorAdapter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

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

    invoke-direct/range {v0 .. v5}, Lorg/objectweb/asm/commons/AdviceAdapter;->doVisitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 8

    iget v0, p0, Lorg/objectweb/asm/commons/AdviceAdapter;->api:I

    const/high16 v1, 0x50000

    if-ge v0, v1, :cond_0

    invoke-super/range {p0 .. p5}, Lorg/objectweb/asm/commons/GeneratorAdapter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void

    :cond_0
    invoke-direct/range {p0 .. p5}, Lorg/objectweb/asm/commons/AdviceAdapter;->doVisitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public visitMultiANewArrayInsn(Ljava/lang/String;I)V
    .registers 4

    iget-object v0, p0, Lorg/objectweb/asm/commons/AdviceAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2}, Lorg/objectweb/asm/MethodVisitor;->visitMultiANewArrayInsn(Ljava/lang/String;I)V

    iget-boolean v0, p0, Lorg/objectweb/asm/commons/AdviceAdapter;->constructor:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    invoke-direct {p0}, Lorg/objectweb/asm/commons/AdviceAdapter;->popValue()Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/objectweb/asm/commons/AdviceAdapter;->OTHER:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AdviceAdapter;->pushValue(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public varargs visitTableSwitchInsn(IILorg/objectweb/asm/Label;[Lorg/objectweb/asm/Label;)V
    .registers 6

    iget-object v0, p0, Lorg/objectweb/asm/commons/AdviceAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/objectweb/asm/MethodVisitor;->visitTableSwitchInsn(IILorg/objectweb/asm/Label;[Lorg/objectweb/asm/Label;)V

    iget-boolean v0, p0, Lorg/objectweb/asm/commons/AdviceAdapter;->constructor:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/objectweb/asm/commons/AdviceAdapter;->popValue()Ljava/lang/Object;

    invoke-direct {p0, p3, p4}, Lorg/objectweb/asm/commons/AdviceAdapter;->addBranches(Lorg/objectweb/asm/Label;[Lorg/objectweb/asm/Label;)V

    :cond_0
    return-void
.end method

.method public visitTryCatchBlock(Lorg/objectweb/asm/Label;Lorg/objectweb/asm/Label;Lorg/objectweb/asm/Label;Ljava/lang/String;)V
    .registers 7

    invoke-super {p0, p1, p2, p3, p4}, Lorg/objectweb/asm/commons/GeneratorAdapter;->visitTryCatchBlock(Lorg/objectweb/asm/Label;Lorg/objectweb/asm/Label;Lorg/objectweb/asm/Label;Ljava/lang/String;)V

    iget-boolean v0, p0, Lorg/objectweb/asm/commons/AdviceAdapter;->constructor:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/objectweb/asm/commons/AdviceAdapter;->branches:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lorg/objectweb/asm/commons/AdviceAdapter;->OTHER:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lorg/objectweb/asm/commons/AdviceAdapter;->branches:Ljava/util/Map;

    invoke-interface {v1, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public visitTypeInsn(ILjava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lorg/objectweb/asm/commons/AdviceAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2}, Lorg/objectweb/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    iget-boolean v0, p0, Lorg/objectweb/asm/commons/AdviceAdapter;->constructor:Z

    if-eqz v0, :cond_0

    const/16 v0, 0xbb

    if-ne p1, v0, :cond_0

    sget-object v0, Lorg/objectweb/asm/commons/AdviceAdapter;->OTHER:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AdviceAdapter;->pushValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public visitVarInsn(II)V
    .registers 4

    invoke-super {p0, p1, p2}, Lorg/objectweb/asm/commons/GeneratorAdapter;->visitVarInsn(II)V

    iget-boolean v0, p0, Lorg/objectweb/asm/commons/AdviceAdapter;->constructor:Z

    if-eqz v0, :cond_0

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    sget-object v0, Lorg/objectweb/asm/commons/AdviceAdapter;->OTHER:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AdviceAdapter;->pushValue(Ljava/lang/Object;)V

    goto :goto_0

    :sswitch_1
    sget-object v0, Lorg/objectweb/asm/commons/AdviceAdapter;->OTHER:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AdviceAdapter;->pushValue(Ljava/lang/Object;)V

    sget-object v0, Lorg/objectweb/asm/commons/AdviceAdapter;->OTHER:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AdviceAdapter;->pushValue(Ljava/lang/Object;)V

    goto :goto_0

    :sswitch_2
    if-nez p2, :cond_1

    sget-object v0, Lorg/objectweb/asm/commons/AdviceAdapter;->THIS:Ljava/lang/Object;

    :goto_1
    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AdviceAdapter;->pushValue(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lorg/objectweb/asm/commons/AdviceAdapter;->OTHER:Ljava/lang/Object;

    goto :goto_1

    :sswitch_3
    invoke-direct {p0}, Lorg/objectweb/asm/commons/AdviceAdapter;->popValue()Ljava/lang/Object;

    goto :goto_0

    :sswitch_4
    invoke-direct {p0}, Lorg/objectweb/asm/commons/AdviceAdapter;->popValue()Ljava/lang/Object;

    invoke-direct {p0}, Lorg/objectweb/asm/commons/AdviceAdapter;->popValue()Ljava/lang/Object;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x17 -> :sswitch_0
        0x18 -> :sswitch_1
        0x19 -> :sswitch_2
        0x36 -> :sswitch_3
        0x37 -> :sswitch_4
        0x38 -> :sswitch_3
        0x39 -> :sswitch_4
        0x3a -> :sswitch_3
    .end sparse-switch
.end method
