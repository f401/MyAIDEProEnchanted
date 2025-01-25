.class public Lorg/objectweb/asm/commons/GeneratorAdapter;
.super Lorg/objectweb/asm/commons/LocalVariablesSorter;


# static fields
.field public static final ADD:I = 0x60

.field public static final AND:I = 0x7e

.field private static final BOOLEAN_TYPE:Lorg/objectweb/asm/Type;

.field private static final BOOLEAN_VALUE:Lorg/objectweb/asm/commons/Method;

.field private static final BYTE_TYPE:Lorg/objectweb/asm/Type;

.field private static final CHARACTER_TYPE:Lorg/objectweb/asm/Type;

.field private static final CHAR_VALUE:Lorg/objectweb/asm/commons/Method;

.field private static final CLDESC:Ljava/lang/String; = "Ljava/lang/Class;"

.field public static final DIV:I = 0x6c

.field private static final DOUBLE_TYPE:Lorg/objectweb/asm/Type;

.field private static final DOUBLE_VALUE:Lorg/objectweb/asm/commons/Method;

.field public static final EQ:I = 0x99

.field private static final FLOAT_TYPE:Lorg/objectweb/asm/Type;

.field private static final FLOAT_VALUE:Lorg/objectweb/asm/commons/Method;

.field public static final GE:I = 0x9c

.field public static final GT:I = 0x9d

.field private static final INTEGER_TYPE:Lorg/objectweb/asm/Type;

.field private static final INT_VALUE:Lorg/objectweb/asm/commons/Method;

.field public static final LE:I = 0x9e

.field private static final LONG_TYPE:Lorg/objectweb/asm/Type;

.field private static final LONG_VALUE:Lorg/objectweb/asm/commons/Method;

.field public static final LT:I = 0x9b

.field public static final MUL:I = 0x68

.field public static final NE:I = 0x9a

.field public static final NEG:I = 0x74

.field private static final NUMBER_TYPE:Lorg/objectweb/asm/Type;

.field private static final OBJECT_TYPE:Lorg/objectweb/asm/Type;

.field public static final OR:I = 0x80

.field public static final REM:I = 0x70

.field public static final SHL:I = 0x78

.field private static final SHORT_TYPE:Lorg/objectweb/asm/Type;

.field public static final SHR:I = 0x7a

.field public static final SUB:I = 0x64

.field public static final USHR:I = 0x7c

.field public static final XOR:I = 0x82

.field static class$org$objectweb$asm$commons$GeneratorAdapter:Ljava/lang/Class;


# instance fields
.field private final access:I

.field private final argumentTypes:[Lorg/objectweb/asm/Type;

.field private final localTypes:Ljava/util/List;

.field private final returnType:Lorg/objectweb/asm/Type;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lorg/objectweb/asm/commons/GeneratorAdapter;->_clinit_()V

    const-string v0, "java/lang/Byte"

    invoke-static {v0}, Lorg/objectweb/asm/Type;->getObjectType(Ljava/lang/String;)Lorg/objectweb/asm/Type;

    move-result-object v0

    sput-object v0, Lorg/objectweb/asm/commons/GeneratorAdapter;->BYTE_TYPE:Lorg/objectweb/asm/Type;

    const-string v0, "java/lang/Boolean"

    invoke-static {v0}, Lorg/objectweb/asm/Type;->getObjectType(Ljava/lang/String;)Lorg/objectweb/asm/Type;

    move-result-object v0

    sput-object v0, Lorg/objectweb/asm/commons/GeneratorAdapter;->BOOLEAN_TYPE:Lorg/objectweb/asm/Type;

    const-string v0, "java/lang/Short"

    invoke-static {v0}, Lorg/objectweb/asm/Type;->getObjectType(Ljava/lang/String;)Lorg/objectweb/asm/Type;

    move-result-object v0

    sput-object v0, Lorg/objectweb/asm/commons/GeneratorAdapter;->SHORT_TYPE:Lorg/objectweb/asm/Type;

    const-string v0, "java/lang/Character"

    invoke-static {v0}, Lorg/objectweb/asm/Type;->getObjectType(Ljava/lang/String;)Lorg/objectweb/asm/Type;

    move-result-object v0

    sput-object v0, Lorg/objectweb/asm/commons/GeneratorAdapter;->CHARACTER_TYPE:Lorg/objectweb/asm/Type;

    const-string v0, "java/lang/Integer"

    invoke-static {v0}, Lorg/objectweb/asm/Type;->getObjectType(Ljava/lang/String;)Lorg/objectweb/asm/Type;

    move-result-object v0

    sput-object v0, Lorg/objectweb/asm/commons/GeneratorAdapter;->INTEGER_TYPE:Lorg/objectweb/asm/Type;

    const-string v0, "java/lang/Float"

    invoke-static {v0}, Lorg/objectweb/asm/Type;->getObjectType(Ljava/lang/String;)Lorg/objectweb/asm/Type;

    move-result-object v0

    sput-object v0, Lorg/objectweb/asm/commons/GeneratorAdapter;->FLOAT_TYPE:Lorg/objectweb/asm/Type;

    const-string v0, "java/lang/Long"

    invoke-static {v0}, Lorg/objectweb/asm/Type;->getObjectType(Ljava/lang/String;)Lorg/objectweb/asm/Type;

    move-result-object v0

    sput-object v0, Lorg/objectweb/asm/commons/GeneratorAdapter;->LONG_TYPE:Lorg/objectweb/asm/Type;

    const-string v0, "java/lang/Double"

    invoke-static {v0}, Lorg/objectweb/asm/Type;->getObjectType(Ljava/lang/String;)Lorg/objectweb/asm/Type;

    move-result-object v0

    sput-object v0, Lorg/objectweb/asm/commons/GeneratorAdapter;->DOUBLE_TYPE:Lorg/objectweb/asm/Type;

    const-string v0, "java/lang/Number"

    invoke-static {v0}, Lorg/objectweb/asm/Type;->getObjectType(Ljava/lang/String;)Lorg/objectweb/asm/Type;

    move-result-object v0

    sput-object v0, Lorg/objectweb/asm/commons/GeneratorAdapter;->NUMBER_TYPE:Lorg/objectweb/asm/Type;

    const-string v0, "java/lang/Object"

    invoke-static {v0}, Lorg/objectweb/asm/Type;->getObjectType(Ljava/lang/String;)Lorg/objectweb/asm/Type;

    move-result-object v0

    sput-object v0, Lorg/objectweb/asm/commons/GeneratorAdapter;->OBJECT_TYPE:Lorg/objectweb/asm/Type;

    const-string v0, "boolean booleanValue()"

    invoke-static {v0}, Lorg/objectweb/asm/commons/Method;->getMethod(Ljava/lang/String;)Lorg/objectweb/asm/commons/Method;

    move-result-object v0

    sput-object v0, Lorg/objectweb/asm/commons/GeneratorAdapter;->BOOLEAN_VALUE:Lorg/objectweb/asm/commons/Method;

    const-string v0, "char charValue()"

    invoke-static {v0}, Lorg/objectweb/asm/commons/Method;->getMethod(Ljava/lang/String;)Lorg/objectweb/asm/commons/Method;

    move-result-object v0

    sput-object v0, Lorg/objectweb/asm/commons/GeneratorAdapter;->CHAR_VALUE:Lorg/objectweb/asm/commons/Method;

    const-string v0, "int intValue()"

    invoke-static {v0}, Lorg/objectweb/asm/commons/Method;->getMethod(Ljava/lang/String;)Lorg/objectweb/asm/commons/Method;

    move-result-object v0

    sput-object v0, Lorg/objectweb/asm/commons/GeneratorAdapter;->INT_VALUE:Lorg/objectweb/asm/commons/Method;

    const-string v0, "float floatValue()"

    invoke-static {v0}, Lorg/objectweb/asm/commons/Method;->getMethod(Ljava/lang/String;)Lorg/objectweb/asm/commons/Method;

    move-result-object v0

    sput-object v0, Lorg/objectweb/asm/commons/GeneratorAdapter;->FLOAT_VALUE:Lorg/objectweb/asm/commons/Method;

    const-string v0, "long longValue()"

    invoke-static {v0}, Lorg/objectweb/asm/commons/Method;->getMethod(Ljava/lang/String;)Lorg/objectweb/asm/commons/Method;

    move-result-object v0

    sput-object v0, Lorg/objectweb/asm/commons/GeneratorAdapter;->LONG_VALUE:Lorg/objectweb/asm/commons/Method;

    const-string v0, "double doubleValue()"

    invoke-static {v0}, Lorg/objectweb/asm/commons/Method;->getMethod(Ljava/lang/String;)Lorg/objectweb/asm/commons/Method;

    move-result-object v0

    sput-object v0, Lorg/objectweb/asm/commons/GeneratorAdapter;->DOUBLE_VALUE:Lorg/objectweb/asm/commons/Method;

    return-void
.end method

.method protected constructor <init>(ILorg/objectweb/asm/MethodVisitor;ILjava/lang/String;Ljava/lang/String;)V
    .registers 7

    invoke-direct {p0, p1, p3, p5, p2}, Lorg/objectweb/asm/commons/LocalVariablesSorter;-><init>(IILjava/lang/String;Lorg/objectweb/asm/MethodVisitor;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/objectweb/asm/commons/GeneratorAdapter;->localTypes:Ljava/util/List;

    iput p3, p0, Lorg/objectweb/asm/commons/GeneratorAdapter;->access:I

    invoke-static {p5}, Lorg/objectweb/asm/Type;->getReturnType(Ljava/lang/String;)Lorg/objectweb/asm/Type;

    move-result-object v0

    iput-object v0, p0, Lorg/objectweb/asm/commons/GeneratorAdapter;->returnType:Lorg/objectweb/asm/Type;

    invoke-static {p5}, Lorg/objectweb/asm/Type;->getArgumentTypes(Ljava/lang/String;)[Lorg/objectweb/asm/Type;

    move-result-object v0

    iput-object v0, p0, Lorg/objectweb/asm/commons/GeneratorAdapter;->argumentTypes:[Lorg/objectweb/asm/Type;

    return-void
.end method

.method public constructor <init>(ILorg/objectweb/asm/commons/Method;Ljava/lang/String;[Lorg/objectweb/asm/Type;Lorg/objectweb/asm/ClassVisitor;)V
    .registers 12

    invoke-virtual {p2}, Lorg/objectweb/asm/commons/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lorg/objectweb/asm/commons/Method;->getDescriptor()Ljava/lang/String;

    move-result-object v3

    invoke-static {p4}, Lorg/objectweb/asm/commons/GeneratorAdapter;->getInternalNames([Lorg/objectweb/asm/Type;)[Ljava/lang/String;

    move-result-object v5

    move-object v0, p5

    move v1, p1

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lorg/objectweb/asm/ClassVisitor;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/objectweb/asm/MethodVisitor;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/objectweb/asm/commons/GeneratorAdapter;-><init>(ILorg/objectweb/asm/commons/Method;Lorg/objectweb/asm/MethodVisitor;)V

    return-void
.end method

.method public constructor <init>(ILorg/objectweb/asm/commons/Method;Lorg/objectweb/asm/MethodVisitor;)V
    .registers 6

    const/4 v0, 0x0

    invoke-virtual {p2}, Lorg/objectweb/asm/commons/Method;->getDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p3, p1, v0, v1}, Lorg/objectweb/asm/commons/GeneratorAdapter;-><init>(Lorg/objectweb/asm/MethodVisitor;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/objectweb/asm/MethodVisitor;ILjava/lang/String;Ljava/lang/String;)V
    .registers 11

    const/high16 v1, 0x50000

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/objectweb/asm/commons/GeneratorAdapter;-><init>(ILorg/objectweb/asm/MethodVisitor;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Lorg/objectweb/asm/commons/GeneratorAdapter;->class$org$objectweb$asm$commons$GeneratorAdapter:Ljava/lang/Class;

    if-eq v0, v1, :cond_18

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_18
    return-void
.end method

.method private static _clinit_()V
    .registers 1

    const-string v0, "org.objectweb.asm.commons.GeneratorAdapter"

    invoke-static {v0}, Lorg/objectweb/asm/commons/GeneratorAdapter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/objectweb/asm/commons/GeneratorAdapter;->class$org$objectweb$asm$commons$GeneratorAdapter:Ljava/lang/Class;

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

.method private fieldInsn(ILorg/objectweb/asm/Type;Ljava/lang/String;Lorg/objectweb/asm/Type;)V
    .registers 8

    iget-object v0, p0, Lorg/objectweb/asm/commons/GeneratorAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    invoke-virtual {p2}, Lorg/objectweb/asm/Type;->getInternalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4}, Lorg/objectweb/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, p3, v2}, Lorg/objectweb/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private getArgIndex(I)I
    .registers 5

    const/4 v1, 0x0

    iget v0, p0, Lorg/objectweb/asm/commons/GeneratorAdapter;->access:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_18

    const/4 v2, 0x1

    move v0, v1

    :goto_9
    if-ge v0, p1, :cond_1b

    iget-object v1, p0, Lorg/objectweb/asm/commons/GeneratorAdapter;->argumentTypes:[Lorg/objectweb/asm/Type;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/objectweb/asm/Type;->getSize()I

    move-result v1

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    move v2, v1

    goto :goto_9

    :cond_18
    move v0, v1

    move v2, v1

    goto :goto_9

    :cond_1b
    return v2
.end method

.method private static getBoxedType(Lorg/objectweb/asm/Type;)Lorg/objectweb/asm/Type;
    .registers 2

    invoke-virtual {p0}, Lorg/objectweb/asm/Type;->getSort()I

    move-result v0

    packed-switch v0, :pswitch_data_20

    :goto_7
    return-object p0

    :pswitch_8  #0x3
    sget-object p0, Lorg/objectweb/asm/commons/GeneratorAdapter;->BYTE_TYPE:Lorg/objectweb/asm/Type;

    goto :goto_7

    :pswitch_b  #0x1
    sget-object p0, Lorg/objectweb/asm/commons/GeneratorAdapter;->BOOLEAN_TYPE:Lorg/objectweb/asm/Type;

    goto :goto_7

    :pswitch_e  #0x4
    sget-object p0, Lorg/objectweb/asm/commons/GeneratorAdapter;->SHORT_TYPE:Lorg/objectweb/asm/Type;

    goto :goto_7

    :pswitch_11  #0x2
    sget-object p0, Lorg/objectweb/asm/commons/GeneratorAdapter;->CHARACTER_TYPE:Lorg/objectweb/asm/Type;

    goto :goto_7

    :pswitch_14  #0x5
    sget-object p0, Lorg/objectweb/asm/commons/GeneratorAdapter;->INTEGER_TYPE:Lorg/objectweb/asm/Type;

    goto :goto_7

    :pswitch_17  #0x6
    sget-object p0, Lorg/objectweb/asm/commons/GeneratorAdapter;->FLOAT_TYPE:Lorg/objectweb/asm/Type;

    goto :goto_7

    :pswitch_1a  #0x7
    sget-object p0, Lorg/objectweb/asm/commons/GeneratorAdapter;->LONG_TYPE:Lorg/objectweb/asm/Type;

    goto :goto_7

    :pswitch_1d  #0x8
    sget-object p0, Lorg/objectweb/asm/commons/GeneratorAdapter;->DOUBLE_TYPE:Lorg/objectweb/asm/Type;

    goto :goto_7

    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_b  #00000001
        :pswitch_11  #00000002
        :pswitch_8  #00000003
        :pswitch_e  #00000004
        :pswitch_14  #00000005
        :pswitch_17  #00000006
        :pswitch_1a  #00000007
        :pswitch_1d  #00000008
    .end packed-switch
.end method

.method private static getInternalNames([Lorg/objectweb/asm/Type;)[Ljava/lang/String;
    .registers 4

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    array-length v0, p0

    new-array v1, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    :goto_8
    array-length v2, v1

    if-ge v0, v2, :cond_16

    aget-object v2, p0, v0

    invoke-virtual {v2}, Lorg/objectweb/asm/Type;->getInternalName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_16
    move-object v0, v1

    goto :goto_3
.end method

.method private invokeInsn(ILorg/objectweb/asm/Type;Lorg/objectweb/asm/commons/Method;Z)V
    .registers 11

    invoke-virtual {p2}, Lorg/objectweb/asm/Type;->getSort()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1c

    invoke-virtual {p2}, Lorg/objectweb/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v2

    :goto_c
    iget-object v0, p0, Lorg/objectweb/asm/commons/GeneratorAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    invoke-virtual {p3}, Lorg/objectweb/asm/commons/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Lorg/objectweb/asm/commons/Method;->getDescriptor()Ljava/lang/String;

    move-result-object v4

    move v1, p1

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/objectweb/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    :cond_1c
    invoke-virtual {p2}, Lorg/objectweb/asm/Type;->getInternalName()Ljava/lang/String;

    move-result-object v2

    goto :goto_c
.end method

.method private loadInsn(Lorg/objectweb/asm/Type;I)V
    .registers 5

    iget-object v0, p0, Lorg/objectweb/asm/commons/GeneratorAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    const/16 v1, 0x15

    invoke-virtual {p1, v1}, Lorg/objectweb/asm/Type;->getOpcode(I)I

    move-result v1

    invoke-virtual {v0, v1, p2}, Lorg/objectweb/asm/MethodVisitor;->visitVarInsn(II)V

    return-void
.end method

.method private storeInsn(Lorg/objectweb/asm/Type;I)V
    .registers 5

    iget-object v0, p0, Lorg/objectweb/asm/commons/GeneratorAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    const/16 v1, 0x36

    invoke-virtual {p1, v1}, Lorg/objectweb/asm/Type;->getOpcode(I)I

    move-result v1

    invoke-virtual {v0, v1, p2}, Lorg/objectweb/asm/MethodVisitor;->visitVarInsn(II)V

    return-void
.end method

.method private typeInsn(ILorg/objectweb/asm/Type;)V
    .registers 5

    iget-object v0, p0, Lorg/objectweb/asm/commons/GeneratorAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    invoke-virtual {p2}, Lorg/objectweb/asm/Type;->getInternalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/objectweb/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public arrayLength()V
    .registers 3

    iget-object v0, p0, Lorg/objectweb/asm/commons/GeneratorAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    const/16 v1, 0xbe

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/MethodVisitor;->visitInsn(I)V

    return-void
.end method

.method public arrayLoad(Lorg/objectweb/asm/Type;)V
    .registers 4

    iget-object v0, p0, Lorg/objectweb/asm/commons/GeneratorAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    const/16 v1, 0x2e

    invoke-virtual {p1, v1}, Lorg/objectweb/asm/Type;->getOpcode(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/MethodVisitor;->visitInsn(I)V

    return-void
.end method

.method public arrayStore(Lorg/objectweb/asm/Type;)V
    .registers 4

    iget-object v0, p0, Lorg/objectweb/asm/commons/GeneratorAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    const/16 v1, 0x4f

    invoke-virtual {p1, v1}, Lorg/objectweb/asm/Type;->getOpcode(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/MethodVisitor;->visitInsn(I)V

    return-void
.end method

.method public box(Lorg/objectweb/asm/Type;)V
    .registers 8

    invoke-virtual {p1}, Lorg/objectweb/asm/Type;->getSort()I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_10

    invoke-virtual {p1}, Lorg/objectweb/asm/Type;->getSort()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_11

    :cond_10
    :goto_10
    return-void

    :cond_11
    sget-object v0, Lorg/objectweb/asm/Type;->VOID_TYPE:Lorg/objectweb/asm/Type;

    if-ne p1, v0, :cond_1c

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/GeneratorAdapter;->push(Ljava/lang/String;)V

    goto :goto_10

    :cond_1c
    invoke-static {p1}, Lorg/objectweb/asm/commons/GeneratorAdapter;->getBoxedType(Lorg/objectweb/asm/Type;)Lorg/objectweb/asm/Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/GeneratorAdapter;->newInstance(Lorg/objectweb/asm/Type;)V

    invoke-virtual {p1}, Lorg/objectweb/asm/Type;->getSize()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_46

    invoke-virtual {p0}, Lorg/objectweb/asm/commons/GeneratorAdapter;->dupX2()V

    invoke-virtual {p0}, Lorg/objectweb/asm/commons/GeneratorAdapter;->dupX2()V

    invoke-virtual {p0}, Lorg/objectweb/asm/commons/GeneratorAdapter;->pop()V

    :goto_33
    new-instance v1, Lorg/objectweb/asm/commons/Method;

    const-string v2, "<init>"

    sget-object v3, Lorg/objectweb/asm/Type;->VOID_TYPE:Lorg/objectweb/asm/Type;

    const/4 v4, 0x1

    new-array v4, v4, [Lorg/objectweb/asm/Type;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-direct {v1, v2, v3, v4}, Lorg/objectweb/asm/commons/Method;-><init>(Ljava/lang/String;Lorg/objectweb/asm/Type;[Lorg/objectweb/asm/Type;)V

    invoke-virtual {p0, v0, v1}, Lorg/objectweb/asm/commons/GeneratorAdapter;->invokeConstructor(Lorg/objectweb/asm/Type;Lorg/objectweb/asm/commons/Method;)V

    goto :goto_10

    :cond_46
    invoke-virtual {p0}, Lorg/objectweb/asm/commons/GeneratorAdapter;->dupX1()V

    invoke-virtual {p0}, Lorg/objectweb/asm/commons/GeneratorAdapter;->swap()V

    goto :goto_33
.end method

.method public cast(Lorg/objectweb/asm/Type;Lorg/objectweb/asm/Type;)V
    .registers 5

    if-eq p1, p2, :cond_11

    sget-object v0, Lorg/objectweb/asm/Type;->DOUBLE_TYPE:Lorg/objectweb/asm/Type;

    if-ne p1, v0, :cond_2b

    sget-object v0, Lorg/objectweb/asm/Type;->FLOAT_TYPE:Lorg/objectweb/asm/Type;

    if-ne p2, v0, :cond_12

    iget-object v0, p0, Lorg/objectweb/asm/commons/GeneratorAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    const/16 v1, 0x90

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/MethodVisitor;->visitInsn(I)V

    :cond_11
    :goto_11
    return-void

    :cond_12
    sget-object v0, Lorg/objectweb/asm/Type;->LONG_TYPE:Lorg/objectweb/asm/Type;

    if-ne p2, v0, :cond_1e

    iget-object v0, p0, Lorg/objectweb/asm/commons/GeneratorAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    const/16 v1, 0x8f

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/MethodVisitor;->visitInsn(I)V

    goto :goto_11

    :cond_1e
    iget-object v0, p0, Lorg/objectweb/asm/commons/GeneratorAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    const/16 v1, 0x8e

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/MethodVisitor;->visitInsn(I)V

    sget-object v0, Lorg/objectweb/asm/Type;->INT_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0, p2}, Lorg/objectweb/asm/commons/GeneratorAdapter;->cast(Lorg/objectweb/asm/Type;Lorg/objectweb/asm/Type;)V

    goto :goto_11

    :cond_2b
    sget-object v0, Lorg/objectweb/asm/Type;->FLOAT_TYPE:Lorg/objectweb/asm/Type;

    if-ne p1, v0, :cond_54

    sget-object v0, Lorg/objectweb/asm/Type;->DOUBLE_TYPE:Lorg/objectweb/asm/Type;

    if-ne p2, v0, :cond_3b

    iget-object v0, p0, Lorg/objectweb/asm/commons/GeneratorAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    const/16 v1, 0x8d

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/MethodVisitor;->visitInsn(I)V

    goto :goto_11

    :cond_3b
    sget-object v0, Lorg/objectweb/asm/Type;->LONG_TYPE:Lorg/objectweb/asm/Type;

    if-ne p2, v0, :cond_47

    iget-object v0, p0, Lorg/objectweb/asm/commons/GeneratorAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    const/16 v1, 0x8c

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/MethodVisitor;->visitInsn(I)V

    goto :goto_11

    :cond_47
    iget-object v0, p0, Lorg/objectweb/asm/commons/GeneratorAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    const/16 v1, 0x8b

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/MethodVisitor;->visitInsn(I)V

    sget-object v0, Lorg/objectweb/asm/Type;->INT_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0, p2}, Lorg/objectweb/asm/commons/GeneratorAdapter;->cast(Lorg/objectweb/asm/Type;Lorg/objectweb/asm/Type;)V

    goto :goto_11

    :cond_54
    sget-object v0, Lorg/objectweb/asm/Type;->LONG_TYPE:Lorg/objectweb/asm/Type;

    if-ne p1, v0, :cond_7d

    sget-object v0, Lorg/objectweb/asm/Type;->DOUBLE_TYPE:Lorg/objectweb/asm/Type;

    if-ne p2, v0, :cond_64

    iget-object v0, p0, Lorg/objectweb/asm/commons/GeneratorAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    const/16 v1, 0x8a

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/MethodVisitor;->visitInsn(I)V

    goto :goto_11

    :cond_64
    sget-object v0, Lorg/objectweb/asm/Type;->FLOAT_TYPE:Lorg/objectweb/asm/Type;

    if-ne p2, v0, :cond_70

    iget-object v0, p0, Lorg/objectweb/asm/commons/GeneratorAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    const/16 v1, 0x89

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/MethodVisitor;->visitInsn(I)V

    goto :goto_11

    :cond_70
    iget-object v0, p0, Lorg/objectweb/asm/commons/GeneratorAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    const/16 v1, 0x88

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/MethodVisitor;->visitInsn(I)V

    sget-object v0, Lorg/objectweb/asm/Type;->INT_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0, p2}, Lorg/objectweb/asm/commons/GeneratorAdapter;->cast(Lorg/objectweb/asm/Type;Lorg/objectweb/asm/Type;)V

    goto :goto_11

    :cond_7d
    sget-object v0, Lorg/objectweb/asm/Type;->BYTE_TYPE:Lorg/objectweb/asm/Type;

    if-ne p2, v0, :cond_89

    iget-object v0, p0, Lorg/objectweb/asm/commons/GeneratorAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    const/16 v1, 0x91

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/MethodVisitor;->visitInsn(I)V

    goto :goto_11

    :cond_89
    sget-object v0, Lorg/objectweb/asm/Type;->CHAR_TYPE:Lorg/objectweb/asm/Type;

    if-ne p2, v0, :cond_96

    iget-object v0, p0, Lorg/objectweb/asm/commons/GeneratorAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    const/16 v1, 0x92

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/MethodVisitor;->visitInsn(I)V

    goto/16 :goto_11

    :cond_96
    sget-object v0, Lorg/objectweb/asm/Type;->DOUBLE_TYPE:Lorg/objectweb/asm/Type;

    if-ne p2, v0, :cond_a3

    iget-object v0, p0, Lorg/objectweb/asm/commons/GeneratorAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    const/16 v1, 0x87

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/MethodVisitor;->visitInsn(I)V

    goto/16 :goto_11

    :cond_a3
    sget-object v0, Lorg/objectweb/asm/Type;->FLOAT_TYPE:Lorg/objectweb/asm/Type;

    if-ne p2, v0, :cond_b0

    iget-object v0, p0, Lorg/objectweb/asm/commons/GeneratorAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    const/16 v1, 0x86

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/MethodVisitor;->visitInsn(I)V

    goto/16 :goto_11

    :cond_b0
    sget-object v0, Lorg/objectweb/asm/Type;->LONG_TYPE:Lorg/objectweb/asm/Type;

    if-ne p2, v0, :cond_bd

    iget-object v0, p0, Lorg/objectweb/asm/commons/GeneratorAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    const/16 v1, 0x85

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/MethodVisitor;->visitInsn(I)V

    goto/16 :goto_11

    :cond_bd
    sget-object v0, Lorg/objectweb/asm/Type;->SHORT_TYPE:Lorg/objectweb/asm/Type;

    if-ne p2, v0, :cond_11

    iget-object v0, p0, Lorg/objectweb/asm/commons/GeneratorAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    const/16 v1, 0x93

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/MethodVisitor;->visitInsn(I)V

    goto/16 :goto_11
.end method

.method public catchException(Lorg/objectweb/asm/Label;Lorg/objectweb/asm/Label;Lorg/objectweb/asm/Type;)V
    .registers 7

    new-instance v0, Lorg/objectweb/asm/Label;

    invoke-direct {v0}, Lorg/objectweb/asm/Label;-><init>()V

    if-nez p3, :cond_11

    iget-object v1, p0, Lorg/objectweb/asm/commons/GeneratorAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, p2, v0, v2}, Lorg/objectweb/asm/MethodVisitor;->visitTryCatchBlock(Lorg/objectweb/asm/Label;Lorg/objectweb/asm/Label;Lorg/objectweb/asm/Label;Ljava/lang/String;)V

    :goto_d
    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/GeneratorAdapter;->mark(Lorg/objectweb/asm/Label;)V

    return-void

    :cond_11
    iget-object v1, p0, Lorg/objectweb/asm/commons/GeneratorAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    invoke-virtual {p3}, Lorg/objectweb/asm/Type;->getInternalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, p2, v0, v2}, Lorg/objectweb/asm/MethodVisitor;->visitTryCatchBlock(Lorg/objectweb/asm/Label;Lorg/objectweb/asm/Label;Lorg/objectweb/asm/Label;Ljava/lang/String;)V

    goto :goto_d
.end method

.method public checkCast(Lorg/objectweb/asm/Type;)V
    .registers 3

    sget-object v0, Lorg/objectweb/asm/commons/GeneratorAdapter;->OBJECT_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p1, v0}, Lorg/objectweb/asm/Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    const/16 v0, 0xc0

    invoke-direct {p0, v0, p1}, Lorg/objectweb/asm/commons/GeneratorAdapter;->typeInsn(ILorg/objectweb/asm/Type;)V

    :cond_d
    return-void
.end method

.method public dup()V
    .registers 3

    iget-object v0, p0, Lorg/objectweb/asm/commons/GeneratorAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    const/16 v1, 0x59

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/MethodVisitor;->visitInsn(I)V

    return-void
.end method

.method public dup2()V
    .registers 3

    iget-object v0, p0, Lorg/objectweb/asm/commons/GeneratorAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    const/16 v1, 0x5c

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/MethodVisitor;->visitInsn(I)V

    return-void
.end method

.method public dup2X1()V
    .registers 3

    iget-object v0, p0, Lorg/objectweb/asm/commons/GeneratorAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/MethodVisitor;->visitInsn(I)V

    return-void
.end method

.method public dup2X2()V
    .registers 3

    iget-object v0, p0, Lorg/objectweb/asm/commons/GeneratorAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    const/16 v1, 0x5e

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/MethodVisitor;->visitInsn(I)V

    return-void
.end method

.method public dupX1()V
    .registers 3

    iget-object v0, p0, Lorg/objectweb/asm/commons/GeneratorAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    const/16 v1, 0x5a

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/MethodVisitor;->visitInsn(I)V

    return-void
.end method

.method public dupX2()V
    .registers 3

    iget-object v0, p0, Lorg/objectweb/asm/commons/GeneratorAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/MethodVisitor;->visitInsn(I)V

    return-void
.end method

.method public endMethod()V
    .registers 3

    const/4 v1, 0x0

    iget v0, p0, Lorg/objectweb/asm/commons/GeneratorAdapter;->access:I

    and-int/lit16 v0, v0, 0x400

    if-nez v0, :cond_c

    iget-object v0, p0, Lorg/objectweb/asm/commons/GeneratorAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    invoke-virtual {v0, v1, v1}, Lorg/objectweb/asm/MethodVisitor;->visitMaxs(II)V

    :cond_c
    iget-object v0, p0, Lorg/objectweb/asm/commons/GeneratorAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    invoke-virtual {v0}, Lorg/objectweb/asm/MethodVisitor;->visitEnd()V

    return-void
.end method

.method public getField(Lorg/objectweb/asm/Type;Ljava/lang/String;Lorg/objectweb/asm/Type;)V
    .registers 5

    const/16 v0, 0xb4

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/objectweb/asm/commons/GeneratorAdapter;->fieldInsn(ILorg/objectweb/asm/Type;Ljava/lang/String;Lorg/objectweb/asm/Type;)V

    return-void
.end method

.method public getLocalType(I)Lorg/objectweb/asm/Type;
    .registers 4

    iget-object v0, p0, Lorg/objectweb/asm/commons/GeneratorAdapter;->localTypes:Ljava/util/List;

    iget v1, p0, Lorg/objectweb/asm/commons/GeneratorAdapter;->firstLocal:I

    sub-int v1, p1, v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/objectweb/asm/Type;

    return-object v0
.end method

.method public getStatic(Lorg/objectweb/asm/Type;Ljava/lang/String;Lorg/objectweb/asm/Type;)V
    .registers 5

    const/16 v0, 0xb2

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/objectweb/asm/commons/GeneratorAdapter;->fieldInsn(ILorg/objectweb/asm/Type;Ljava/lang/String;Lorg/objectweb/asm/Type;)V

    return-void
.end method

.method public goTo(Lorg/objectweb/asm/Label;)V
    .registers 4

    iget-object v0, p0, Lorg/objectweb/asm/commons/GeneratorAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    const/16 v1, 0xa7

    invoke-virtual {v0, v1, p1}, Lorg/objectweb/asm/MethodVisitor;->visitJumpInsn(ILorg/objectweb/asm/Label;)V

    return-void
.end method

.method public ifCmp(Lorg/objectweb/asm/Type;ILorg/objectweb/asm/Label;)V
    .registers 8

    const/16 v3, 0x9d

    const/16 v2, 0x9c

    invoke-virtual {p1}, Lorg/objectweb/asm/Type;->getSort()I

    move-result v0

    packed-switch v0, :pswitch_data_7e

    const/4 v0, -0x1

    packed-switch p2, :pswitch_data_8c

    :goto_f
    iget-object v1, p0, Lorg/objectweb/asm/commons/GeneratorAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    invoke-virtual {v1, v0, p3}, Lorg/objectweb/asm/MethodVisitor;->visitJumpInsn(ILorg/objectweb/asm/Label;)V

    :goto_14
    return-void

    :pswitch_15  #0x7
    iget-object v0, p0, Lorg/objectweb/asm/commons/GeneratorAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    const/16 v1, 0x94

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/MethodVisitor;->visitInsn(I)V

    :goto_1c
    iget-object v0, p0, Lorg/objectweb/asm/commons/GeneratorAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    invoke-virtual {v0, p2, p3}, Lorg/objectweb/asm/MethodVisitor;->visitJumpInsn(ILorg/objectweb/asm/Label;)V

    goto :goto_14

    :pswitch_22  #0x8
    iget-object v1, p0, Lorg/objectweb/asm/commons/GeneratorAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    if-eq p2, v2, :cond_28

    if-ne p2, v3, :cond_2e

    :cond_28
    const/16 v0, 0x97

    :goto_2a
    invoke-virtual {v1, v0}, Lorg/objectweb/asm/MethodVisitor;->visitInsn(I)V

    goto :goto_1c

    :cond_2e
    const/16 v0, 0x98

    goto :goto_2a

    :pswitch_31  #0x6
    iget-object v1, p0, Lorg/objectweb/asm/commons/GeneratorAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    if-eq p2, v2, :cond_37

    if-ne p2, v3, :cond_3d

    :cond_37
    const/16 v0, 0x95

    :goto_39
    invoke-virtual {v1, v0}, Lorg/objectweb/asm/MethodVisitor;->visitInsn(I)V

    goto :goto_1c

    :cond_3d
    const/16 v0, 0x96

    goto :goto_39

    :pswitch_40  #0x9, 0xa
    packed-switch p2, :pswitch_data_9c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Bad comparison for type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_5c  #0x99
    iget-object v0, p0, Lorg/objectweb/asm/commons/GeneratorAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    const/16 v1, 0xa5

    invoke-virtual {v0, v1, p3}, Lorg/objectweb/asm/MethodVisitor;->visitJumpInsn(ILorg/objectweb/asm/Label;)V

    goto :goto_14

    :pswitch_64  #0x9a
    iget-object v0, p0, Lorg/objectweb/asm/commons/GeneratorAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    const/16 v1, 0xa6

    invoke-virtual {v0, v1, p3}, Lorg/objectweb/asm/MethodVisitor;->visitJumpInsn(ILorg/objectweb/asm/Label;)V

    goto :goto_14

    :pswitch_6c  #0x99
    const/16 v0, 0x9f

    goto :goto_f

    :pswitch_6f  #0x9a
    const/16 v0, 0xa0

    goto :goto_f

    :pswitch_72  #0x9c
    const/16 v0, 0xa2

    goto :goto_f

    :pswitch_75  #0x9b
    const/16 v0, 0xa1

    goto :goto_f

    :pswitch_78  #0x9e
    const/16 v0, 0xa4

    goto :goto_f

    :pswitch_7b  #0x9d
    const/16 v0, 0xa3

    goto :goto_f

    :pswitch_data_7e
    .packed-switch 0x6
        :pswitch_31  #00000006
        :pswitch_15  #00000007
        :pswitch_22  #00000008
        :pswitch_40  #00000009
        :pswitch_40  #0000000a
    .end packed-switch

    :pswitch_data_8c
    .packed-switch 0x99
        :pswitch_6c  #00000099
        :pswitch_6f  #0000009a
        :pswitch_75  #0000009b
        :pswitch_72  #0000009c
        :pswitch_7b  #0000009d
        :pswitch_78  #0000009e
    .end packed-switch

    :pswitch_data_9c
    .packed-switch 0x99
        :pswitch_5c  #00000099
        :pswitch_64  #0000009a
    .end packed-switch
.end method

.method public ifICmp(ILorg/objectweb/asm/Label;)V
    .registers 4

    sget-object v0, Lorg/objectweb/asm/Type;->INT_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0, p1, p2}, Lorg/objectweb/asm/commons/GeneratorAdapter;->ifCmp(Lorg/objectweb/asm/Type;ILorg/objectweb/asm/Label;)V

    return-void
.end method

.method public ifNonNull(Lorg/objectweb/asm/Label;)V
    .registers 4

    iget-object v0, p0, Lorg/objectweb/asm/commons/GeneratorAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    const/16 v1, 0xc7

    invoke-virtual {v0, v1, p1}, Lorg/objectweb/asm/MethodVisitor;->visitJumpInsn(ILorg/objectweb/asm/Label;)V

    return-void
.end method

.method public ifNull(Lorg/objectweb/asm/Label;)V
    .registers 4

    iget-object v0, p0, Lorg/objectweb/asm/commons/GeneratorAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    const/16 v1, 0xc6

    invoke-virtual {v0, v1, p1}, Lorg/objectweb/asm/MethodVisitor;->visitJumpInsn(ILorg/objectweb/asm/Label;)V

    return-void
.end method

.method public ifZCmp(ILorg/objectweb/asm/Label;)V
    .registers 4

    iget-object v0, p0, Lorg/objectweb/asm/commons/GeneratorAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2}, Lorg/objectweb/asm/MethodVisitor;->visitJumpInsn(ILorg/objectweb/asm/Label;)V

    return-void
.end method

.method public iinc(II)V
    .registers 4

    iget-object v0, p0, Lorg/objectweb/asm/commons/GeneratorAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2}, Lorg/objectweb/asm/MethodVisitor;->visitIincInsn(II)V

    return-void
.end method

.method public instanceOf(Lorg/objectweb/asm/Type;)V
    .registers 3

    const/16 v0, 0xc1

    invoke-direct {p0, v0, p1}, Lorg/objectweb/asm/commons/GeneratorAdapter;->typeInsn(ILorg/objectweb/asm/Type;)V

    return-void
.end method

.method public invokeConstructor(Lorg/objectweb/asm/Type;Lorg/objectweb/asm/commons/Method;)V
    .registers 5

    const/16 v0, 0xb7

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Lorg/objectweb/asm/commons/GeneratorAdapter;->invokeInsn(ILorg/objectweb/asm/Type;Lorg/objectweb/asm/commons/Method;Z)V

    return-void
.end method

.method public varargs invokeDynamic(Ljava/lang/String;Ljava/lang/String;Lorg/objectweb/asm/Handle;[Ljava/lang/Object;)V
    .registers 6

    iget-object v0, p0, Lorg/objectweb/asm/commons/GeneratorAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/objectweb/asm/MethodVisitor;->visitInvokeDynamicInsn(Ljava/lang/String;Ljava/lang/String;Lorg/objectweb/asm/Handle;[Ljava/lang/Object;)V

    return-void
.end method

.method public invokeInterface(Lorg/objectweb/asm/Type;Lorg/objectweb/asm/commons/Method;)V
    .registers 5

    const/16 v0, 0xb9

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, p2, v1}, Lorg/objectweb/asm/commons/GeneratorAdapter;->invokeInsn(ILorg/objectweb/asm/Type;Lorg/objectweb/asm/commons/Method;Z)V

    return-void
.end method

.method public invokeStatic(Lorg/objectweb/asm/Type;Lorg/objectweb/asm/commons/Method;)V
    .registers 5

    const/16 v0, 0xb8

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Lorg/objectweb/asm/commons/GeneratorAdapter;->invokeInsn(ILorg/objectweb/asm/Type;Lorg/objectweb/asm/commons/Method;Z)V

    return-void
.end method

.method public invokeVirtual(Lorg/objectweb/asm/Type;Lorg/objectweb/asm/commons/Method;)V
    .registers 5

    const/16 v0, 0xb6

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Lorg/objectweb/asm/commons/GeneratorAdapter;->invokeInsn(ILorg/objectweb/asm/Type;Lorg/objectweb/asm/commons/Method;Z)V

    return-void
.end method

.method public loadArg(I)V
    .registers 4

    iget-object v0, p0, Lorg/objectweb/asm/commons/GeneratorAdapter;->argumentTypes:[Lorg/objectweb/asm/Type;

    aget-object v0, v0, p1

    invoke-direct {p0, p1}, Lorg/objectweb/asm/commons/GeneratorAdapter;->getArgIndex(I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/objectweb/asm/commons/GeneratorAdapter;->loadInsn(Lorg/objectweb/asm/Type;I)V

    return-void
.end method

.method public loadArgArray()V
    .registers 3

    iget-object v0, p0, Lorg/objectweb/asm/commons/GeneratorAdapter;->argumentTypes:[Lorg/objectweb/asm/Type;

    array-length v0, v0

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/GeneratorAdapter;->push(I)V

    sget-object v0, Lorg/objectweb/asm/commons/GeneratorAdapter;->OBJECT_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/GeneratorAdapter;->newArray(Lorg/objectweb/asm/Type;)V

    const/4 v0, 0x0

    :goto_c
    iget-object v1, p0, Lorg/objectweb/asm/commons/GeneratorAdapter;->argumentTypes:[Lorg/objectweb/asm/Type;

    array-length v1, v1

    if-ge v0, v1, :cond_29

    invoke-virtual {p0}, Lorg/objectweb/asm/commons/GeneratorAdapter;->dup()V

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/GeneratorAdapter;->push(I)V

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/GeneratorAdapter;->loadArg(I)V

    iget-object v1, p0, Lorg/objectweb/asm/commons/GeneratorAdapter;->argumentTypes:[Lorg/objectweb/asm/Type;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Lorg/objectweb/asm/commons/GeneratorAdapter;->box(Lorg/objectweb/asm/Type;)V

    sget-object v1, Lorg/objectweb/asm/commons/GeneratorAdapter;->OBJECT_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, v1}, Lorg/objectweb/asm/commons/GeneratorAdapter;->arrayStore(Lorg/objectweb/asm/Type;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_29
    return-void
.end method

.method public loadArgs()V
    .registers 3

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/objectweb/asm/commons/GeneratorAdapter;->argumentTypes:[Lorg/objectweb/asm/Type;

    array-length v1, v1

    invoke-virtual {p0, v0, v1}, Lorg/objectweb/asm/commons/GeneratorAdapter;->loadArgs(II)V

    return-void
.end method

.method public loadArgs(II)V
    .registers 7

    invoke-direct {p0, p1}, Lorg/objectweb/asm/commons/GeneratorAdapter;->getArgIndex(I)I

    move-result v1

    const/4 v0, 0x0

    :goto_5
    if-ge v0, p2, :cond_18

    iget-object v2, p0, Lorg/objectweb/asm/commons/GeneratorAdapter;->argumentTypes:[Lorg/objectweb/asm/Type;

    add-int v3, p1, v0

    aget-object v2, v2, v3

    invoke-direct {p0, v2, v1}, Lorg/objectweb/asm/commons/GeneratorAdapter;->loadInsn(Lorg/objectweb/asm/Type;I)V

    invoke-virtual {v2}, Lorg/objectweb/asm/Type;->getSize()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_18
    return-void
.end method

.method public loadLocal(I)V
    .registers 3

    invoke-virtual {p0, p1}, Lorg/objectweb/asm/commons/GeneratorAdapter;->getLocalType(I)Lorg/objectweb/asm/Type;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/objectweb/asm/commons/GeneratorAdapter;->loadInsn(Lorg/objectweb/asm/Type;I)V

    return-void
.end method

.method public loadLocal(ILorg/objectweb/asm/Type;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lorg/objectweb/asm/commons/GeneratorAdapter;->setLocalType(ILorg/objectweb/asm/Type;)V

    invoke-direct {p0, p2, p1}, Lorg/objectweb/asm/commons/GeneratorAdapter;->loadInsn(Lorg/objectweb/asm/Type;I)V

    return-void
.end method

.method public loadThis()V
    .registers 4

    iget v0, p0, Lorg/objectweb/asm/commons/GeneratorAdapter;->access:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_e

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no \'this\' pointer within static method"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    iget-object v0, p0, Lorg/objectweb/asm/commons/GeneratorAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    const/16 v1, 0x19

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/objectweb/asm/MethodVisitor;->visitVarInsn(II)V

    return-void
.end method

.method public mark()Lorg/objectweb/asm/Label;
    .registers 3

    new-instance v0, Lorg/objectweb/asm/Label;

    invoke-direct {v0}, Lorg/objectweb/asm/Label;-><init>()V

    iget-object v1, p0, Lorg/objectweb/asm/commons/GeneratorAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    invoke-virtual {v1, v0}, Lorg/objectweb/asm/MethodVisitor;->visitLabel(Lorg/objectweb/asm/Label;)V

    return-object v0
.end method

.method public mark(Lorg/objectweb/asm/Label;)V
    .registers 3

    iget-object v0, p0, Lorg/objectweb/asm/commons/GeneratorAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    invoke-virtual {v0, p1}, Lorg/objectweb/asm/MethodVisitor;->visitLabel(Lorg/objectweb/asm/Label;)V

    return-void
.end method

.method public math(ILorg/objectweb/asm/Type;)V
    .registers 5

    iget-object v0, p0, Lorg/objectweb/asm/commons/GeneratorAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    invoke-virtual {p2, p1}, Lorg/objectweb/asm/Type;->getOpcode(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/MethodVisitor;->visitInsn(I)V

    return-void
.end method

.method public monitorEnter()V
    .registers 3

    iget-object v0, p0, Lorg/objectweb/asm/commons/GeneratorAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    const/16 v1, 0xc2

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/MethodVisitor;->visitInsn(I)V

    return-void
.end method

.method public monitorExit()V
    .registers 3

    iget-object v0, p0, Lorg/objectweb/asm/commons/GeneratorAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    const/16 v1, 0xc3

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/MethodVisitor;->visitInsn(I)V

    return-void
.end method

.method public newArray(Lorg/objectweb/asm/Type;)V
    .registers 5

    invoke-virtual {p1}, Lorg/objectweb/asm/Type;->getSort()I

    move-result v0

    packed-switch v0, :pswitch_data_28

    const/16 v0, 0xbd

    invoke-direct {p0, v0, p1}, Lorg/objectweb/asm/commons/GeneratorAdapter;->typeInsn(ILorg/objectweb/asm/Type;)V

    :goto_c
    return-void

    :pswitch_d  #0x1
    const/4 v0, 0x4

    :goto_e
    iget-object v1, p0, Lorg/objectweb/asm/commons/GeneratorAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    const/16 v2, 0xbc

    invoke-virtual {v1, v2, v0}, Lorg/objectweb/asm/MethodVisitor;->visitIntInsn(II)V

    goto :goto_c

    :pswitch_16  #0x2
    const/4 v0, 0x5

    goto :goto_e

    :pswitch_18  #0x3
    const/16 v0, 0x8

    goto :goto_e

    :pswitch_1b  #0x4
    const/16 v0, 0x9

    goto :goto_e

    :pswitch_1e  #0x5
    const/16 v0, 0xa

    goto :goto_e

    :pswitch_21  #0x6
    const/4 v0, 0x6

    goto :goto_e

    :pswitch_23  #0x7
    const/16 v0, 0xb

    goto :goto_e

    :pswitch_26  #0x8
    const/4 v0, 0x7

    goto :goto_e

    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_d  #00000001
        :pswitch_16  #00000002
        :pswitch_18  #00000003
        :pswitch_1b  #00000004
        :pswitch_1e  #00000005
        :pswitch_21  #00000006
        :pswitch_23  #00000007
        :pswitch_26  #00000008
    .end packed-switch
.end method

.method public newInstance(Lorg/objectweb/asm/Type;)V
    .registers 3

    const/16 v0, 0xbb

    invoke-direct {p0, v0, p1}, Lorg/objectweb/asm/commons/GeneratorAdapter;->typeInsn(ILorg/objectweb/asm/Type;)V

    return-void
.end method

.method public newLabel()Lorg/objectweb/asm/Label;
    .registers 2

    new-instance v0, Lorg/objectweb/asm/Label;

    invoke-direct {v0}, Lorg/objectweb/asm/Label;-><init>()V

    return-object v0
.end method

.method public not()V
    .registers 3

    iget-object v0, p0, Lorg/objectweb/asm/commons/GeneratorAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/MethodVisitor;->visitInsn(I)V

    iget-object v0, p0, Lorg/objectweb/asm/commons/GeneratorAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/MethodVisitor;->visitInsn(I)V

    return-void
.end method

.method public pop()V
    .registers 3

    iget-object v0, p0, Lorg/objectweb/asm/commons/GeneratorAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    const/16 v1, 0x57

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/MethodVisitor;->visitInsn(I)V

    return-void
.end method

.method public pop2()V
    .registers 3

    iget-object v0, p0, Lorg/objectweb/asm/commons/GeneratorAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    const/16 v1, 0x58

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/MethodVisitor;->visitInsn(I)V

    return-void
.end method

.method public push(D)V
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
    iget-object v0, p0, Lorg/objectweb/asm/commons/GeneratorAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    double-to-int v1, p1

    add-int/lit8 v1, v1, 0xe

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/MethodVisitor;->visitInsn(I)V

    :goto_18
    return-void

    :cond_19
    iget-object v0, p0, Lorg/objectweb/asm/commons/GeneratorAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    new-instance v1, Ljava/lang/Double;

    invoke-direct {v1, p1, p2}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    goto :goto_18
.end method

.method public push(F)V
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
    iget-object v0, p0, Lorg/objectweb/asm/commons/GeneratorAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    float-to-int v1, p1

    add-int/lit8 v1, v1, 0xb

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/MethodVisitor;->visitInsn(I)V

    :goto_1b
    return-void

    :cond_1c
    iget-object v0, p0, Lorg/objectweb/asm/commons/GeneratorAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    new-instance v1, Ljava/lang/Float;

    invoke-direct {v1, p1}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    goto :goto_1b
.end method

.method public push(I)V
    .registers 4

    const/4 v0, -0x1

    if-lt p1, v0, :cond_e

    const/4 v0, 0x5

    if-gt p1, v0, :cond_e

    iget-object v0, p0, Lorg/objectweb/asm/commons/GeneratorAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    add-int/lit8 v1, p1, 0x3

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/MethodVisitor;->visitInsn(I)V

    :goto_d
    return-void

    :cond_e
    const/16 v0, -0x80

    if-lt p1, v0, :cond_1e

    const/16 v0, 0x7f

    if-gt p1, v0, :cond_1e

    iget-object v0, p0, Lorg/objectweb/asm/commons/GeneratorAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    const/16 v1, 0x10

    invoke-virtual {v0, v1, p1}, Lorg/objectweb/asm/MethodVisitor;->visitIntInsn(II)V

    goto :goto_d

    :cond_1e
    const/16 v0, -0x8000

    if-lt p1, v0, :cond_2e

    const/16 v0, 0x7fff

    if-gt p1, v0, :cond_2e

    iget-object v0, p0, Lorg/objectweb/asm/commons/GeneratorAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    const/16 v1, 0x11

    invoke-virtual {v0, v1, p1}, Lorg/objectweb/asm/MethodVisitor;->visitIntInsn(II)V

    goto :goto_d

    :cond_2e
    iget-object v0, p0, Lorg/objectweb/asm/commons/GeneratorAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    goto :goto_d
.end method

.method public push(J)V
    .registers 6

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_c

    const-wide/16 v0, 0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_15

    :cond_c
    iget-object v0, p0, Lorg/objectweb/asm/commons/GeneratorAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    long-to-int v1, p1

    add-int/lit8 v1, v1, 0x9

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/MethodVisitor;->visitInsn(I)V

    :goto_14
    return-void

    :cond_15
    iget-object v0, p0, Lorg/objectweb/asm/commons/GeneratorAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    new-instance v1, Ljava/lang/Long;

    invoke-direct {v1, p1, p2}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    goto :goto_14
.end method

.method public push(Ljava/lang/String;)V
    .registers 4

    if-nez p1, :cond_9

    iget-object v0, p0, Lorg/objectweb/asm/commons/GeneratorAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/MethodVisitor;->visitInsn(I)V

    :goto_8
    return-void

    :cond_9
    iget-object v0, p0, Lorg/objectweb/asm/commons/GeneratorAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    invoke-virtual {v0, p1}, Lorg/objectweb/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    goto :goto_8
.end method

.method public push(Lorg/objectweb/asm/Handle;)V
    .registers 3

    iget-object v0, p0, Lorg/objectweb/asm/commons/GeneratorAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    invoke-virtual {v0, p1}, Lorg/objectweb/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    return-void
.end method

.method public push(Lorg/objectweb/asm/Type;)V
    .registers 7

    const/16 v4, 0xb2

    if-nez p1, :cond_b

    iget-object v0, p0, Lorg/objectweb/asm/commons/GeneratorAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/MethodVisitor;->visitInsn(I)V

    :goto_a
    return-void

    :cond_b
    invoke-virtual {p1}, Lorg/objectweb/asm/Type;->getSort()I

    move-result v0

    packed-switch v0, :pswitch_data_78

    iget-object v0, p0, Lorg/objectweb/asm/commons/GeneratorAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    invoke-virtual {v0, p1}, Lorg/objectweb/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    goto :goto_a

    :pswitch_18  #0x1
    iget-object v0, p0, Lorg/objectweb/asm/commons/GeneratorAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    const-string v1, "java/lang/Boolean"

    const-string v2, "TYPE"

    const-string v3, "Ljava/lang/Class;"

    invoke-virtual {v0, v4, v1, v2, v3}, Lorg/objectweb/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    :pswitch_24  #0x2
    iget-object v0, p0, Lorg/objectweb/asm/commons/GeneratorAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    const-string v1, "java/lang/Character"

    const-string v2, "TYPE"

    const-string v3, "Ljava/lang/Class;"

    invoke-virtual {v0, v4, v1, v2, v3}, Lorg/objectweb/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    :pswitch_30  #0x3
    iget-object v0, p0, Lorg/objectweb/asm/commons/GeneratorAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    const-string v1, "java/lang/Byte"

    const-string v2, "TYPE"

    const-string v3, "Ljava/lang/Class;"

    invoke-virtual {v0, v4, v1, v2, v3}, Lorg/objectweb/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    :pswitch_3c  #0x4
    iget-object v0, p0, Lorg/objectweb/asm/commons/GeneratorAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    const-string v1, "java/lang/Short"

    const-string v2, "TYPE"

    const-string v3, "Ljava/lang/Class;"

    invoke-virtual {v0, v4, v1, v2, v3}, Lorg/objectweb/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    :pswitch_48  #0x5
    iget-object v0, p0, Lorg/objectweb/asm/commons/GeneratorAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    const-string v1, "java/lang/Integer"

    const-string v2, "TYPE"

    const-string v3, "Ljava/lang/Class;"

    invoke-virtual {v0, v4, v1, v2, v3}, Lorg/objectweb/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    :pswitch_54  #0x6
    iget-object v0, p0, Lorg/objectweb/asm/commons/GeneratorAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    const-string v1, "java/lang/Float"

    const-string v2, "TYPE"

    const-string v3, "Ljava/lang/Class;"

    invoke-virtual {v0, v4, v1, v2, v3}, Lorg/objectweb/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    :pswitch_60  #0x7
    iget-object v0, p0, Lorg/objectweb/asm/commons/GeneratorAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    const-string v1, "java/lang/Long"

    const-string v2, "TYPE"

    const-string v3, "Ljava/lang/Class;"

    invoke-virtual {v0, v4, v1, v2, v3}, Lorg/objectweb/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    :pswitch_6c  #0x8
    iget-object v0, p0, Lorg/objectweb/asm/commons/GeneratorAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    const-string v1, "java/lang/Double"

    const-string v2, "TYPE"

    const-string v3, "Ljava/lang/Class;"

    invoke-virtual {v0, v4, v1, v2, v3}, Lorg/objectweb/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    :pswitch_data_78
    .packed-switch 0x1
        :pswitch_18  #00000001
        :pswitch_24  #00000002
        :pswitch_30  #00000003
        :pswitch_3c  #00000004
        :pswitch_48  #00000005
        :pswitch_54  #00000006
        :pswitch_60  #00000007
        :pswitch_6c  #00000008
    .end packed-switch
.end method

.method public push(Z)V
    .registers 3

    if-eqz p1, :cond_7

    const/4 v0, 0x1

    :goto_3
    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/GeneratorAdapter;->push(I)V

    return-void

    :cond_7
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public putField(Lorg/objectweb/asm/Type;Ljava/lang/String;Lorg/objectweb/asm/Type;)V
    .registers 5

    const/16 v0, 0xb5

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/objectweb/asm/commons/GeneratorAdapter;->fieldInsn(ILorg/objectweb/asm/Type;Ljava/lang/String;Lorg/objectweb/asm/Type;)V

    return-void
.end method

.method public putStatic(Lorg/objectweb/asm/Type;Ljava/lang/String;Lorg/objectweb/asm/Type;)V
    .registers 5

    const/16 v0, 0xb3

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/objectweb/asm/commons/GeneratorAdapter;->fieldInsn(ILorg/objectweb/asm/Type;Ljava/lang/String;Lorg/objectweb/asm/Type;)V

    return-void
.end method

.method public ret(I)V
    .registers 4

    iget-object v0, p0, Lorg/objectweb/asm/commons/GeneratorAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    const/16 v1, 0xa9

    invoke-virtual {v0, v1, p1}, Lorg/objectweb/asm/MethodVisitor;->visitVarInsn(II)V

    return-void
.end method

.method public returnValue()V
    .registers 4

    iget-object v0, p0, Lorg/objectweb/asm/commons/GeneratorAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    iget-object v1, p0, Lorg/objectweb/asm/commons/GeneratorAdapter;->returnType:Lorg/objectweb/asm/Type;

    const/16 v2, 0xac

    invoke-virtual {v1, v2}, Lorg/objectweb/asm/Type;->getOpcode(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/MethodVisitor;->visitInsn(I)V

    return-void
.end method

.method protected setLocalType(ILorg/objectweb/asm/Type;)V
    .registers 6

    iget v0, p0, Lorg/objectweb/asm/commons/GeneratorAdapter;->firstLocal:I

    sub-int v0, p1, v0

    :goto_4
    iget-object v1, p0, Lorg/objectweb/asm/commons/GeneratorAdapter;->localTypes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v2, v0, 0x1

    if-ge v1, v2, :cond_15

    iget-object v1, p0, Lorg/objectweb/asm/commons/GeneratorAdapter;->localTypes:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_15
    iget-object v1, p0, Lorg/objectweb/asm/commons/GeneratorAdapter;->localTypes:Ljava/util/List;

    invoke-interface {v1, v0, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public storeArg(I)V
    .registers 4

    iget-object v0, p0, Lorg/objectweb/asm/commons/GeneratorAdapter;->argumentTypes:[Lorg/objectweb/asm/Type;

    aget-object v0, v0, p1

    invoke-direct {p0, p1}, Lorg/objectweb/asm/commons/GeneratorAdapter;->getArgIndex(I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/objectweb/asm/commons/GeneratorAdapter;->storeInsn(Lorg/objectweb/asm/Type;I)V

    return-void
.end method

.method public storeLocal(I)V
    .registers 3

    invoke-virtual {p0, p1}, Lorg/objectweb/asm/commons/GeneratorAdapter;->getLocalType(I)Lorg/objectweb/asm/Type;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/objectweb/asm/commons/GeneratorAdapter;->storeInsn(Lorg/objectweb/asm/Type;I)V

    return-void
.end method

.method public storeLocal(ILorg/objectweb/asm/Type;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lorg/objectweb/asm/commons/GeneratorAdapter;->setLocalType(ILorg/objectweb/asm/Type;)V

    invoke-direct {p0, p2, p1}, Lorg/objectweb/asm/commons/GeneratorAdapter;->storeInsn(Lorg/objectweb/asm/Type;I)V

    return-void
.end method

.method public swap()V
    .registers 3

    iget-object v0, p0, Lorg/objectweb/asm/commons/GeneratorAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    const/16 v1, 0x5f

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/MethodVisitor;->visitInsn(I)V

    return-void
.end method

.method public swap(Lorg/objectweb/asm/Type;Lorg/objectweb/asm/Type;)V
    .registers 5

    const/4 v1, 0x1

    invoke-virtual {p2}, Lorg/objectweb/asm/Type;->getSize()I

    move-result v0

    if-ne v0, v1, :cond_18

    invoke-virtual {p1}, Lorg/objectweb/asm/Type;->getSize()I

    move-result v0

    if-ne v0, v1, :cond_11

    invoke-virtual {p0}, Lorg/objectweb/asm/commons/GeneratorAdapter;->swap()V

    :goto_10
    return-void

    :cond_11
    invoke-virtual {p0}, Lorg/objectweb/asm/commons/GeneratorAdapter;->dupX2()V

    invoke-virtual {p0}, Lorg/objectweb/asm/commons/GeneratorAdapter;->pop()V

    goto :goto_10

    :cond_18
    invoke-virtual {p1}, Lorg/objectweb/asm/Type;->getSize()I

    move-result v0

    if-ne v0, v1, :cond_25

    invoke-virtual {p0}, Lorg/objectweb/asm/commons/GeneratorAdapter;->dup2X1()V

    invoke-virtual {p0}, Lorg/objectweb/asm/commons/GeneratorAdapter;->pop2()V

    goto :goto_10

    :cond_25
    invoke-virtual {p0}, Lorg/objectweb/asm/commons/GeneratorAdapter;->dup2X2()V

    invoke-virtual {p0}, Lorg/objectweb/asm/commons/GeneratorAdapter;->pop2()V

    goto :goto_10
.end method

.method public tableSwitch([ILorg/objectweb/asm/commons/TableSwitchGenerator;)V
    .registers 7

    const/4 v0, 0x0

    array-length v1, p1

    if-nez v1, :cond_10

    const/4 v1, 0x0

    :goto_5
    const/high16 v2, 0x3f000000  # 0.5f

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_c

    const/4 v0, 0x1

    :cond_c
    invoke-virtual {p0, p1, p2, v0}, Lorg/objectweb/asm/commons/GeneratorAdapter;->tableSwitch([ILorg/objectweb/asm/commons/TableSwitchGenerator;Z)V

    return-void

    :cond_10
    array-length v1, p1

    int-to-float v1, v1

    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    aget v2, p1, v2

    aget v3, p1, v0

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    div-float/2addr v1, v2

    goto :goto_5
.end method

.method public tableSwitch([ILorg/objectweb/asm/commons/TableSwitchGenerator;Z)V
    .registers 15

    const/4 v1, 0x0

    const/4 v0, 0x1

    :goto_2
    array-length v2, p1

    if-ge v0, v2, :cond_18

    aget v2, p1, v0

    add-int/lit8 v3, v0, -0x1

    aget v3, p1, v3

    if-ge v2, v3, :cond_15

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "keys must be sorted ascending"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_18
    invoke-virtual {p0}, Lorg/objectweb/asm/commons/GeneratorAdapter;->newLabel()Lorg/objectweb/asm/Label;

    move-result-object v2

    invoke-virtual {p0}, Lorg/objectweb/asm/commons/GeneratorAdapter;->newLabel()Lorg/objectweb/asm/Label;

    move-result-object v3

    array-length v0, p1

    if-lez v0, :cond_5a

    array-length v4, p1

    aget v5, p1, v1

    add-int/lit8 v0, v4, -0x1

    aget v6, p1, v0

    sub-int v0, v6, v5

    add-int/lit8 v7, v0, 0x1

    if-eqz p3, :cond_64

    new-array v8, v7, [Lorg/objectweb/asm/Label;

    invoke-static {v8, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    move v0, v1

    :goto_36
    if-ge v0, v4, :cond_44

    aget v9, p1, v0

    sub-int/2addr v9, v5

    invoke-virtual {p0}, Lorg/objectweb/asm/commons/GeneratorAdapter;->newLabel()Lorg/objectweb/asm/Label;

    move-result-object v10

    aput-object v10, v8, v9

    add-int/lit8 v0, v0, 0x1

    goto :goto_36

    :cond_44
    iget-object v0, p0, Lorg/objectweb/asm/commons/GeneratorAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    invoke-virtual {v0, v5, v6, v2, v8}, Lorg/objectweb/asm/MethodVisitor;->visitTableSwitchInsn(IILorg/objectweb/asm/Label;[Lorg/objectweb/asm/Label;)V

    :goto_49
    if-ge v1, v7, :cond_5a

    aget-object v0, v8, v1

    if-eq v0, v2, :cond_57

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/GeneratorAdapter;->mark(Lorg/objectweb/asm/Label;)V

    add-int v0, v1, v5

    invoke-interface {p2, v0, v3}, Lorg/objectweb/asm/commons/TableSwitchGenerator;->generateCase(ILorg/objectweb/asm/Label;)V

    :cond_57
    add-int/lit8 v1, v1, 0x1

    goto :goto_49

    :cond_5a
    invoke-virtual {p0, v2}, Lorg/objectweb/asm/commons/GeneratorAdapter;->mark(Lorg/objectweb/asm/Label;)V

    invoke-interface {p2}, Lorg/objectweb/asm/commons/TableSwitchGenerator;->generateDefault()V

    invoke-virtual {p0, v3}, Lorg/objectweb/asm/commons/GeneratorAdapter;->mark(Lorg/objectweb/asm/Label;)V

    return-void

    :cond_64
    new-array v5, v4, [Lorg/objectweb/asm/Label;

    move v0, v1

    :goto_67
    if-ge v0, v4, :cond_72

    invoke-virtual {p0}, Lorg/objectweb/asm/commons/GeneratorAdapter;->newLabel()Lorg/objectweb/asm/Label;

    move-result-object v6

    aput-object v6, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_67

    :cond_72
    iget-object v0, p0, Lorg/objectweb/asm/commons/GeneratorAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    invoke-virtual {v0, v2, p1, v5}, Lorg/objectweb/asm/MethodVisitor;->visitLookupSwitchInsn(Lorg/objectweb/asm/Label;[I[Lorg/objectweb/asm/Label;)V

    move v0, v1

    :goto_78
    if-ge v0, v4, :cond_5a

    aget-object v1, v5, v0

    invoke-virtual {p0, v1}, Lorg/objectweb/asm/commons/GeneratorAdapter;->mark(Lorg/objectweb/asm/Label;)V

    aget v1, p1, v0

    invoke-interface {p2, v1, v3}, Lorg/objectweb/asm/commons/TableSwitchGenerator;->generateCase(ILorg/objectweb/asm/Label;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_78
.end method

.method public throwException()V
    .registers 3

    iget-object v0, p0, Lorg/objectweb/asm/commons/GeneratorAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    const/16 v1, 0xbf

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/MethodVisitor;->visitInsn(I)V

    return-void
.end method

.method public throwException(Lorg/objectweb/asm/Type;Ljava/lang/String;)V
    .registers 4

    invoke-virtual {p0, p1}, Lorg/objectweb/asm/commons/GeneratorAdapter;->newInstance(Lorg/objectweb/asm/Type;)V

    invoke-virtual {p0}, Lorg/objectweb/asm/commons/GeneratorAdapter;->dup()V

    invoke-virtual {p0, p2}, Lorg/objectweb/asm/commons/GeneratorAdapter;->push(Ljava/lang/String;)V

    const-string v0, "void <init> (String)"

    invoke-static {v0}, Lorg/objectweb/asm/commons/Method;->getMethod(Ljava/lang/String;)Lorg/objectweb/asm/commons/Method;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/objectweb/asm/commons/GeneratorAdapter;->invokeConstructor(Lorg/objectweb/asm/Type;Lorg/objectweb/asm/commons/Method;)V

    invoke-virtual {p0}, Lorg/objectweb/asm/commons/GeneratorAdapter;->throwException()V

    return-void
.end method

.method public unbox(Lorg/objectweb/asm/Type;)V
    .registers 5

    sget-object v0, Lorg/objectweb/asm/commons/GeneratorAdapter;->NUMBER_TYPE:Lorg/objectweb/asm/Type;

    const/4 v1, 0x0

    invoke-virtual {p1}, Lorg/objectweb/asm/Type;->getSort()I

    move-result v2

    packed-switch v2, :pswitch_data_2e

    :goto_a
    if-nez v1, :cond_26

    invoke-virtual {p0, p1}, Lorg/objectweb/asm/commons/GeneratorAdapter;->checkCast(Lorg/objectweb/asm/Type;)V

    :goto_f
    :pswitch_f  #0x0
    return-void

    :pswitch_10  #0x2
    sget-object v0, Lorg/objectweb/asm/commons/GeneratorAdapter;->CHARACTER_TYPE:Lorg/objectweb/asm/Type;

    sget-object v1, Lorg/objectweb/asm/commons/GeneratorAdapter;->CHAR_VALUE:Lorg/objectweb/asm/commons/Method;

    goto :goto_a

    :pswitch_15  #0x1
    sget-object v0, Lorg/objectweb/asm/commons/GeneratorAdapter;->BOOLEAN_TYPE:Lorg/objectweb/asm/Type;

    sget-object v1, Lorg/objectweb/asm/commons/GeneratorAdapter;->BOOLEAN_VALUE:Lorg/objectweb/asm/commons/Method;

    goto :goto_a

    :pswitch_1a  #0x8
    sget-object v1, Lorg/objectweb/asm/commons/GeneratorAdapter;->DOUBLE_VALUE:Lorg/objectweb/asm/commons/Method;

    goto :goto_a

    :pswitch_1d  #0x6
    sget-object v1, Lorg/objectweb/asm/commons/GeneratorAdapter;->FLOAT_VALUE:Lorg/objectweb/asm/commons/Method;

    goto :goto_a

    :pswitch_20  #0x7
    sget-object v1, Lorg/objectweb/asm/commons/GeneratorAdapter;->LONG_VALUE:Lorg/objectweb/asm/commons/Method;

    goto :goto_a

    :pswitch_23  #0x3, 0x4, 0x5
    sget-object v1, Lorg/objectweb/asm/commons/GeneratorAdapter;->INT_VALUE:Lorg/objectweb/asm/commons/Method;

    goto :goto_a

    :cond_26
    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/GeneratorAdapter;->checkCast(Lorg/objectweb/asm/Type;)V

    invoke-virtual {p0, v0, v1}, Lorg/objectweb/asm/commons/GeneratorAdapter;->invokeVirtual(Lorg/objectweb/asm/Type;Lorg/objectweb/asm/commons/Method;)V

    goto :goto_f

    nop

    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_f  #00000000
        :pswitch_15  #00000001
        :pswitch_10  #00000002
        :pswitch_23  #00000003
        :pswitch_23  #00000004
        :pswitch_23  #00000005
        :pswitch_1d  #00000006
        :pswitch_20  #00000007
        :pswitch_1a  #00000008
    .end packed-switch
.end method

.method public valueOf(Lorg/objectweb/asm/Type;)V
    .registers 7

    invoke-virtual {p1}, Lorg/objectweb/asm/Type;->getSort()I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_10

    invoke-virtual {p1}, Lorg/objectweb/asm/Type;->getSort()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_11

    :cond_10
    :goto_10
    return-void

    :cond_11
    sget-object v0, Lorg/objectweb/asm/Type;->VOID_TYPE:Lorg/objectweb/asm/Type;

    if-ne p1, v0, :cond_1c

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/GeneratorAdapter;->push(Ljava/lang/String;)V

    goto :goto_10

    :cond_1c
    invoke-static {p1}, Lorg/objectweb/asm/commons/GeneratorAdapter;->getBoxedType(Lorg/objectweb/asm/Type;)Lorg/objectweb/asm/Type;

    move-result-object v0

    new-instance v1, Lorg/objectweb/asm/commons/Method;

    const-string v2, "valueOf"

    const/4 v3, 0x1

    new-array v3, v3, [Lorg/objectweb/asm/Type;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-direct {v1, v2, v0, v3}, Lorg/objectweb/asm/commons/Method;-><init>(Ljava/lang/String;Lorg/objectweb/asm/Type;[Lorg/objectweb/asm/Type;)V

    invoke-virtual {p0, v0, v1}, Lorg/objectweb/asm/commons/GeneratorAdapter;->invokeStatic(Lorg/objectweb/asm/Type;Lorg/objectweb/asm/commons/Method;)V

    goto :goto_10
.end method
