.class public Lorg/objectweb/asm/util/Textifier;
.super Lorg/objectweb/asm/util/Printer;


# static fields
.field public static final CLASS_DECLARATION:I = 0x7

.field public static final CLASS_SIGNATURE:I = 0x5

.field public static final FIELD_DESCRIPTOR:I = 0x1

.field public static final FIELD_SIGNATURE:I = 0x2

.field public static final HANDLE_DESCRIPTOR:I = 0x9

.field public static final INTERNAL_NAME:I = 0x0

.field public static final METHOD_DESCRIPTOR:I = 0x3

.field public static final METHOD_SIGNATURE:I = 0x4

.field public static final PARAMETERS_DECLARATION:I = 0x8

.field public static final TYPE_DECLARATION:I = 0x6

.field static class$org$objectweb$asm$util$Textifier:Ljava/lang/Class;


# instance fields
.field private access:I

.field protected labelNames:Ljava/util/Map;

.field protected ltab:Ljava/lang/String;

.field protected tab:Ljava/lang/String;

.field protected tab2:Ljava/lang/String;

.field protected tab3:Ljava/lang/String;

.field private valueNumber:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "org.objectweb.asm.util.Textifier"

    invoke-static {v0}, Lorg/objectweb/asm/util/Textifier;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/objectweb/asm/util/Textifier;->class$org$objectweb$asm$util$Textifier:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const/high16 v0, 0x50000

    invoke-direct {p0, v0}, Lorg/objectweb/asm/util/Textifier;-><init>(I)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Lorg/objectweb/asm/util/Textifier;->class$org$objectweb$asm$util$Textifier:Ljava/lang/Class;

    if-eq v0, v1, :cond_13

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_13
    return-void
.end method

.method protected constructor <init>(I)V
    .registers 3

    invoke-direct {p0, p1}, Lorg/objectweb/asm/util/Printer;-><init>(I)V

    const-string v0, "  "

    iput-object v0, p0, Lorg/objectweb/asm/util/Textifier;->tab:Ljava/lang/String;

    const-string v0, "    "

    iput-object v0, p0, Lorg/objectweb/asm/util/Textifier;->tab2:Ljava/lang/String;

    const-string v0, "      "

    iput-object v0, p0, Lorg/objectweb/asm/util/Textifier;->tab3:Ljava/lang/String;

    const-string v0, "   "

    iput-object v0, p0, Lorg/objectweb/asm/util/Textifier;->ltab:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lorg/objectweb/asm/util/Textifier;->valueNumber:I

    return-void
.end method

.method private appendAccess(I)V
    .registers 4

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    const-string v1, "public "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_b
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_16

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    const-string v1, "private "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_16
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_21

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    const-string v1, "protected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_21
    and-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    const-string v1, "final "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2c
    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_37

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    const-string v1, "static "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_37
    and-int/lit8 v0, p1, 0x20

    if-eqz v0, :cond_42

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    const-string v1, "synchronized "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_42
    and-int/lit8 v0, p1, 0x40

    if-eqz v0, :cond_4d

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    const-string v1, "volatile "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4d
    and-int/lit16 v0, p1, 0x80

    if-eqz v0, :cond_58

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    const-string v1, "transient "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_58
    and-int/lit16 v0, p1, 0x400

    if-eqz v0, :cond_63

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    const-string v1, "abstract "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_63
    and-int/lit16 v0, p1, 0x800

    if-eqz v0, :cond_6e

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    const-string v1, "strictfp "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_6e
    and-int/lit16 v0, p1, 0x1000

    if-eqz v0, :cond_79

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    const-string v1, "synthetic "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_79
    const v0, 0x8000

    and-int/2addr v0, p1

    if-eqz v0, :cond_86

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    const-string v1, "mandated "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_86
    and-int/lit16 v0, p1, 0x4000

    if-eqz v0, :cond_91

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    const-string v1, "enum "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_91
    return-void
.end method

.method private appendComa(I)V
    .registers 4

    if-eqz p1, :cond_9

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_9
    return-void
.end method

.method private appendFrameTypes(I[Ljava/lang/Object;)V
    .registers 8

    const/4 v2, 0x0

    const/4 v4, 0x1

    move v1, v2

    :goto_3
    if-ge v1, p1, :cond_6f

    if-lez v1, :cond_e

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    const/16 v3, 0x20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_e
    aget-object v0, p2, v1

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_2b

    aget-object v0, p2, v1

    check-cast v0, Ljava/lang/String;

    const-string v3, "["

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_27

    invoke-virtual {p0, v4, v0}, Lorg/objectweb/asm/util/Textifier;->appendDescriptor(ILjava/lang/String;)V

    :goto_23
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_27
    invoke-virtual {p0, v2, v0}, Lorg/objectweb/asm/util/Textifier;->appendDescriptor(ILjava/lang/String;)V

    goto :goto_23

    :cond_2b
    aget-object v0, p2, v1

    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_67

    aget-object v0, p2, v1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_70

    goto :goto_23

    :pswitch_3d  #0x0
    const-string v0, "T"

    invoke-virtual {p0, v4, v0}, Lorg/objectweb/asm/util/Textifier;->appendDescriptor(ILjava/lang/String;)V

    goto :goto_23

    :pswitch_43  #0x1
    const-string v0, "I"

    invoke-virtual {p0, v4, v0}, Lorg/objectweb/asm/util/Textifier;->appendDescriptor(ILjava/lang/String;)V

    goto :goto_23

    :pswitch_49  #0x2
    const-string v0, "F"

    invoke-virtual {p0, v4, v0}, Lorg/objectweb/asm/util/Textifier;->appendDescriptor(ILjava/lang/String;)V

    goto :goto_23

    :pswitch_4f  #0x3
    const-string v0, "D"

    invoke-virtual {p0, v4, v0}, Lorg/objectweb/asm/util/Textifier;->appendDescriptor(ILjava/lang/String;)V

    goto :goto_23

    :pswitch_55  #0x4
    const-string v0, "J"

    invoke-virtual {p0, v4, v0}, Lorg/objectweb/asm/util/Textifier;->appendDescriptor(ILjava/lang/String;)V

    goto :goto_23

    :pswitch_5b  #0x5
    const-string v0, "N"

    invoke-virtual {p0, v4, v0}, Lorg/objectweb/asm/util/Textifier;->appendDescriptor(ILjava/lang/String;)V

    goto :goto_23

    :pswitch_61  #0x6
    const-string v0, "U"

    invoke-virtual {p0, v4, v0}, Lorg/objectweb/asm/util/Textifier;->appendDescriptor(ILjava/lang/String;)V

    goto :goto_23

    :cond_67
    aget-object v0, p2, v1

    check-cast v0, Lorg/objectweb/asm/Label;

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/util/Textifier;->appendLabel(Lorg/objectweb/asm/Label;)V

    goto :goto_23

    :cond_6f
    return-void

    :pswitch_data_70
    .packed-switch 0x0
        :pswitch_3d  #00000000
        :pswitch_43  #00000001
        :pswitch_49  #00000002
        :pswitch_4f  #00000003
        :pswitch_55  #00000004
        :pswitch_5b  #00000005
        :pswitch_61  #00000006
    .end packed-switch
.end method

.method private appendTypeReference(I)V
    .registers 5

    new-instance v0, Lorg/objectweb/asm/TypeReference;

    invoke-direct {v0, p1}, Lorg/objectweb/asm/TypeReference;-><init>(I)V

    invoke-virtual {v0}, Lorg/objectweb/asm/TypeReference;->getSort()I

    move-result v1

    sparse-switch v1, :sswitch_data_150

    :goto_c
    return-void

    :sswitch_d
    iget-object v1, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    const-string v2, "CLASS_TYPE_PARAMETER "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v0}, Lorg/objectweb/asm/TypeReference;->getTypeParameterIndex()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_c

    :sswitch_1d
    iget-object v1, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    const-string v2, "METHOD_TYPE_PARAMETER "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v0}, Lorg/objectweb/asm/TypeReference;->getTypeParameterIndex()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_c

    :sswitch_2d
    iget-object v1, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    const-string v2, "CLASS_EXTENDS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v0}, Lorg/objectweb/asm/TypeReference;->getSuperTypeIndex()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_c

    :sswitch_3d
    iget-object v1, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    const-string v2, "CLASS_TYPE_PARAMETER_BOUND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v0}, Lorg/objectweb/asm/TypeReference;->getTypeParameterIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v0}, Lorg/objectweb/asm/TypeReference;->getTypeParameterBoundIndex()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_c

    :sswitch_5b
    iget-object v1, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    const-string v2, "METHOD_TYPE_PARAMETER_BOUND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v0}, Lorg/objectweb/asm/TypeReference;->getTypeParameterIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v0}, Lorg/objectweb/asm/TypeReference;->getTypeParameterBoundIndex()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_c

    :sswitch_79
    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    const-string v1, "FIELD"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_c

    :sswitch_81
    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    const-string v1, "METHOD_RETURN"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_c

    :sswitch_89
    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    const-string v1, "METHOD_RECEIVER"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_c

    :sswitch_92
    iget-object v1, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    const-string v2, "METHOD_FORMAL_PARAMETER "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v0}, Lorg/objectweb/asm/TypeReference;->getFormalParameterIndex()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto/16 :goto_c

    :sswitch_a3
    iget-object v1, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    const-string v2, "THROWS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v0}, Lorg/objectweb/asm/TypeReference;->getExceptionIndex()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto/16 :goto_c

    :sswitch_b4
    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    const-string v1, "LOCAL_VARIABLE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_c

    :sswitch_bd
    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    const-string v1, "RESOURCE_VARIABLE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_c

    :sswitch_c6
    iget-object v1, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    const-string v2, "EXCEPTION_PARAMETER "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v0}, Lorg/objectweb/asm/TypeReference;->getTryCatchBlockIndex()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto/16 :goto_c

    :sswitch_d7
    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    const-string v1, "INSTANCEOF"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_c

    :sswitch_e0
    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    const-string v1, "NEW"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_c

    :sswitch_e9
    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    const-string v1, "CONSTRUCTOR_REFERENCE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_c

    :sswitch_f2
    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    const-string v1, "METHOD_REFERENCE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_c

    :sswitch_fb
    iget-object v1, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    const-string v2, "CAST "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v0}, Lorg/objectweb/asm/TypeReference;->getTypeArgumentIndex()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto/16 :goto_c

    :sswitch_10c
    iget-object v1, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    const-string v2, "CONSTRUCTOR_INVOCATION_TYPE_ARGUMENT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v0}, Lorg/objectweb/asm/TypeReference;->getTypeArgumentIndex()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto/16 :goto_c

    :sswitch_11d
    iget-object v1, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    const-string v2, "METHOD_INVOCATION_TYPE_ARGUMENT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v0}, Lorg/objectweb/asm/TypeReference;->getTypeArgumentIndex()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto/16 :goto_c

    :sswitch_12e
    iget-object v1, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    const-string v2, "CONSTRUCTOR_REFERENCE_TYPE_ARGUMENT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v0}, Lorg/objectweb/asm/TypeReference;->getTypeArgumentIndex()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto/16 :goto_c

    :sswitch_13f
    iget-object v1, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    const-string v2, "METHOD_REFERENCE_TYPE_ARGUMENT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v0}, Lorg/objectweb/asm/TypeReference;->getTypeArgumentIndex()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto/16 :goto_c

    :sswitch_data_150
    .sparse-switch
        0x0 -> :sswitch_d
        0x1 -> :sswitch_1d
        0x10 -> :sswitch_2d
        0x11 -> :sswitch_3d
        0x12 -> :sswitch_5b
        0x13 -> :sswitch_79
        0x14 -> :sswitch_81
        0x15 -> :sswitch_89
        0x16 -> :sswitch_92
        0x17 -> :sswitch_a3
        0x40 -> :sswitch_b4
        0x41 -> :sswitch_bd
        0x42 -> :sswitch_c6
        0x43 -> :sswitch_d7
        0x44 -> :sswitch_e0
        0x45 -> :sswitch_e9
        0x46 -> :sswitch_f2
        0x47 -> :sswitch_fb
        0x48 -> :sswitch_10c
        0x49 -> :sswitch_11d
        0x4a -> :sswitch_12e
        0x4b -> :sswitch_13f
    .end sparse-switch
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
    .registers 10

    const/16 v3, 0x20

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/objectweb/asm/util/Textifier;->tab2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    sget-object v1, Lorg/objectweb/asm/util/Textifier;->OPCODES:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p0, v2, p2}, Lorg/objectweb/asm/util/Textifier;->appendDescriptor(ILjava/lang/String;)V

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v0, 0x3

    invoke-virtual {p0, v0, p4}, Lorg/objectweb/asm/util/Textifier;->appendDescriptor(ILjava/lang/String;)V

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->text:Ljava/util/List;

    iget-object v1, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v6, -0x1

    const/4 v4, 0x2

    const/4 v0, 0x1

    const/4 v2, 0x0

    array-length v1, p0

    if-lt v1, v0, :cond_a

    array-length v1, p0

    if-le v1, v4, :cond_75

    :cond_a
    move v3, v2

    :goto_b
    if-eqz v3, :cond_73

    const-string v1, "-debug"

    aget-object v5, p0, v2

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_73

    array-length v1, p0

    if-eq v1, v4, :cond_70

    move v1, v0

    move v3, v2

    move v4, v2

    :goto_1d
    if-nez v3, :cond_2e

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Prints a disassembled view of the given class."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Usage: Textifier [-debug] <fully qualified class name or class file name>"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_2d
    return-void

    :cond_2e
    aget-object v0, p0, v1

    const-string v2, ".class"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4c

    aget-object v0, p0, v1

    const/16 v2, 0x5c

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gt v0, v6, :cond_4c

    aget-object v0, p0, v1

    const/16 v2, 0x2f

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-le v0, v6, :cond_68

    :cond_4c
    new-instance v0, Lorg/objectweb/asm/ClassReader;

    new-instance v2, Ljava/io/FileInputStream;

    aget-object v1, p0, v1

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Lorg/objectweb/asm/ClassReader;-><init>(Ljava/io/InputStream;)V

    :goto_58
    new-instance v1, Lorg/objectweb/asm/util/TraceClassVisitor;

    new-instance v2, Ljava/io/PrintWriter;

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {v2, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v1, v2}, Lorg/objectweb/asm/util/TraceClassVisitor;-><init>(Ljava/io/PrintWriter;)V

    invoke-virtual {v0, v1, v4}, Lorg/objectweb/asm/ClassReader;->accept(Lorg/objectweb/asm/ClassVisitor;I)V

    goto :goto_2d

    :cond_68
    new-instance v0, Lorg/objectweb/asm/ClassReader;

    aget-object v1, p0, v1

    invoke-direct {v0, v1}, Lorg/objectweb/asm/ClassReader;-><init>(Ljava/lang/String;)V

    goto :goto_58

    :cond_70
    move v1, v0

    move v4, v2

    goto :goto_1d

    :cond_73
    move v1, v2

    goto :goto_1d

    :cond_75
    move v3, v0

    goto :goto_b
.end method

.method private visitBoolean(Z)V
    .registers 3

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    return-void
.end method

.method private visitByte(B)V
    .registers 4

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    const-string v1, "(byte)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    return-void
.end method

.method private visitChar(C)V
    .registers 4

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    const-string v1, "(char)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    return-void
.end method

.method private visitDouble(D)V
    .registers 6

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-void
.end method

.method private visitFloat(F)V
    .registers 4

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x46

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-void
.end method

.method private visitInt(I)V
    .registers 3

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    return-void
.end method

.method private visitLong(J)V
    .registers 6

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x4c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-void
.end method

.method private visitShort(S)V
    .registers 4

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    const-string v1, "(short)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    return-void
.end method

.method private visitString(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    invoke-static {v0, p1}, Lorg/objectweb/asm/util/Textifier;->appendString(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    return-void
.end method

.method private visitType(Lorg/objectweb/asm/Type;)V
    .registers 4

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lorg/objectweb/asm/Type;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ".class"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method


# virtual methods
.method protected appendDescriptor(ILjava/lang/String;)V
    .registers 5

    const/4 v0, 0x5

    if-eq p1, v0, :cond_9

    const/4 v0, 0x2

    if-eq p1, v0, :cond_9

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1d

    :cond_9
    if-eqz p2, :cond_1c

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    const-string v1, "// signature "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_1c
    :goto_1c
    return-void

    :cond_1d
    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1c
.end method

.method protected appendHandle(Lorg/objectweb/asm/Handle;)V
    .registers 7

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p1}, Lorg/objectweb/asm/Handle;->getTag()I

    move-result v2

    iget-object v3, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    const-string v4, "// handle kind 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    packed-switch v2, :pswitch_data_ae

    move v0, v1

    :goto_1f
    iget-object v2, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    iget-object v3, p0, Lorg/objectweb/asm/util/Textifier;->tab3:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lorg/objectweb/asm/Handle;->getOwner()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/objectweb/asm/util/Textifier;->appendDescriptor(ILjava/lang/String;)V

    iget-object v1, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lorg/objectweb/asm/Handle;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-nez v0, :cond_4d

    iget-object v1, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    const/16 v2, 0x28

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_4d
    const/16 v1, 0x9

    invoke-virtual {p1}, Lorg/objectweb/asm/Handle;->getDesc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/objectweb/asm/util/Textifier;->appendDescriptor(ILjava/lang/String;)V

    if-nez v0, :cond_5f

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_5f
    return-void

    :pswitch_60  #0x1
    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    const-string v2, "GETFIELD"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v0, v1

    goto :goto_1f

    :pswitch_69  #0x2
    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    const-string v2, "GETSTATIC"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v0, v1

    goto :goto_1f

    :pswitch_72  #0x3
    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    const-string v2, "PUTFIELD"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v0, v1

    goto :goto_1f

    :pswitch_7b  #0x4
    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    const-string v2, "PUTSTATIC"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v0, v1

    goto :goto_1f

    :pswitch_84  #0x9
    iget-object v2, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    const-string v3, "INVOKEINTERFACE"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1f

    :pswitch_8c  #0x7
    iget-object v2, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    const-string v3, "INVOKESPECIAL"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1f

    :pswitch_94  #0x6
    iget-object v2, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    const-string v3, "INVOKESTATIC"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1f

    :pswitch_9c  #0x5
    iget-object v2, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    const-string v3, "INVOKEVIRTUAL"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1f

    :pswitch_a5  #0x8
    iget-object v2, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    const-string v3, "NEWINVOKESPECIAL"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1f

    :pswitch_data_ae
    .packed-switch 0x1
        :pswitch_60  #00000001
        :pswitch_69  #00000002
        :pswitch_72  #00000003
        :pswitch_7b  #00000004
        :pswitch_9c  #00000005
        :pswitch_94  #00000006
        :pswitch_8c  #00000007
        :pswitch_a5  #00000008
        :pswitch_84  #00000009
    .end packed-switch
.end method

.method protected appendLabel(Lorg/objectweb/asm/Label;)V
    .registers 4

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->labelNames:Ljava/util/Map;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/objectweb/asm/util/Textifier;->labelNames:Ljava/util/Map;

    :cond_b
    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->labelNames:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_33

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "L"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/objectweb/asm/util/Textifier;->labelNames:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/objectweb/asm/util/Textifier;->labelNames:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_33
    iget-object v1, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected createTextifier()Lorg/objectweb/asm/util/Textifier;
    .registers 2

    new-instance v0, Lorg/objectweb/asm/util/Textifier;

    invoke-direct {v0}, Lorg/objectweb/asm/util/Textifier;-><init>()V

    return-object v0
.end method

.method public visit(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 13

    const/16 v5, 0x20

    const/16 v4, 0xa

    const/4 v1, 0x0

    iput p2, p0, Lorg/objectweb/asm/util/Textifier;->access:I

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    const-string v2, "// class version "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const v2, 0xffff

    and-int/2addr v2, p1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    ushr-int/lit8 v2, p1, 0x10

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, " ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, ")\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/high16 v0, 0x20000

    and-int/2addr v0, p2

    if-eqz v0, :cond_43

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    const-string v2, "// DEPRECATED\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_43
    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    const-string v2, "// access flags 0x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v0, 0x5

    invoke-virtual {p0, v0, p4}, Lorg/objectweb/asm/util/Textifier;->appendDescriptor(ILjava/lang/String;)V

    if-eqz p4, :cond_84

    new-instance v0, Lorg/objectweb/asm/util/TraceSignatureVisitor;

    invoke-direct {v0, p2}, Lorg/objectweb/asm/util/TraceSignatureVisitor;-><init>(I)V

    new-instance v2, Lorg/objectweb/asm/signature/SignatureReader;

    invoke-direct {v2, p4}, Lorg/objectweb/asm/signature/SignatureReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lorg/objectweb/asm/signature/SignatureReader;->accept(Lorg/objectweb/asm/signature/SignatureVisitor;)V

    iget-object v2, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    const-string v3, "// declaration: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v0}, Lorg/objectweb/asm/util/TraceSignatureVisitor;->getDeclaration()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_84
    and-int/lit8 v0, p2, -0x21

    invoke-direct {p0, v0}, Lorg/objectweb/asm/util/Textifier;->appendAccess(I)V

    and-int/lit16 v0, p2, 0x2000

    if-eqz v0, :cond_cd

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    const-string v2, "@interface "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_94
    :goto_94
    invoke-virtual {p0, v1, p3}, Lorg/objectweb/asm/util/Textifier;->appendDescriptor(ILjava/lang/String;)V

    if-eqz p5, :cond_b0

    const-string v0, "java/lang/Object"

    invoke-virtual {v0, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b0

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    const-string v2, " extends "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, v1, p5}, Lorg/objectweb/asm/util/Textifier;->appendDescriptor(ILjava/lang/String;)V

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_b0
    if-eqz p6, :cond_e5

    array-length v0, p6

    if-lez v0, :cond_e5

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    const-string v2, " implements "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v0, v1

    :goto_bd
    array-length v2, p6

    if-ge v0, v2, :cond_e5

    aget-object v2, p6, v0

    invoke-virtual {p0, v1, v2}, Lorg/objectweb/asm/util/Textifier;->appendDescriptor(ILjava/lang/String;)V

    iget-object v2, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_bd

    :cond_cd
    and-int/lit16 v0, p2, 0x200

    if-eqz v0, :cond_d9

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    const-string v2, "interface "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_94

    :cond_d9
    and-int/lit16 v0, p2, 0x4000

    if-nez v0, :cond_94

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    const-string v2, "class "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_94

    :cond_e5
    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    const-string v1, " {\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->text:Ljava/util/List;

    iget-object v1, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public visit(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 7

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    iget v1, p0, Lorg/objectweb/asm/util/Textifier;->valueNumber:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/objectweb/asm/util/Textifier;->valueNumber:I

    invoke-direct {p0, v1}, Lorg/objectweb/asm/util/Textifier;->appendComa(I)V

    if-eqz p1, :cond_1c

    iget-object v1, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const/16 v2, 0x3d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_1c
    instance-of v1, p2, Ljava/lang/String;

    if-eqz v1, :cond_31

    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, p2}, Lorg/objectweb/asm/util/Textifier;->visitString(Ljava/lang/String;)V

    :cond_25
    :goto_25
    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->text:Ljava/util/List;

    iget-object v1, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_31
    instance-of v1, p2, Lorg/objectweb/asm/Type;

    if-eqz v1, :cond_3b

    check-cast p2, Lorg/objectweb/asm/Type;

    invoke-direct {p0, p2}, Lorg/objectweb/asm/util/Textifier;->visitType(Lorg/objectweb/asm/Type;)V

    goto :goto_25

    :cond_3b
    instance-of v1, p2, Ljava/lang/Byte;

    if-eqz v1, :cond_49

    check-cast p2, Ljava/lang/Byte;

    invoke-virtual {p2}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    invoke-direct {p0, v0}, Lorg/objectweb/asm/util/Textifier;->visitByte(B)V

    goto :goto_25

    :cond_49
    instance-of v1, p2, Ljava/lang/Boolean;

    if-eqz v1, :cond_57

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lorg/objectweb/asm/util/Textifier;->visitBoolean(Z)V

    goto :goto_25

    :cond_57
    instance-of v1, p2, Ljava/lang/Short;

    if-eqz v1, :cond_65

    check-cast p2, Ljava/lang/Short;

    invoke-virtual {p2}, Ljava/lang/Short;->shortValue()S

    move-result v0

    invoke-direct {p0, v0}, Lorg/objectweb/asm/util/Textifier;->visitShort(S)V

    goto :goto_25

    :cond_65
    instance-of v1, p2, Ljava/lang/Character;

    if-eqz v1, :cond_73

    check-cast p2, Ljava/lang/Character;

    invoke-virtual {p2}, Ljava/lang/Character;->charValue()C

    move-result v0

    invoke-direct {p0, v0}, Lorg/objectweb/asm/util/Textifier;->visitChar(C)V

    goto :goto_25

    :cond_73
    instance-of v1, p2, Ljava/lang/Integer;

    if-eqz v1, :cond_81

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/objectweb/asm/util/Textifier;->visitInt(I)V

    goto :goto_25

    :cond_81
    instance-of v1, p2, Ljava/lang/Float;

    if-eqz v1, :cond_8f

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-direct {p0, v0}, Lorg/objectweb/asm/util/Textifier;->visitFloat(F)V

    goto :goto_25

    :cond_8f
    instance-of v1, p2, Ljava/lang/Long;

    if-eqz v1, :cond_9d

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lorg/objectweb/asm/util/Textifier;->visitLong(J)V

    goto :goto_25

    :cond_9d
    instance-of v1, p2, Ljava/lang/Double;

    if-eqz v1, :cond_ac

    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lorg/objectweb/asm/util/Textifier;->visitDouble(D)V

    goto/16 :goto_25

    :cond_ac
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_25

    iget-object v1, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    const/16 v2, 0x7b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    instance-of v1, p2, [B

    if-eqz v1, :cond_da

    check-cast p2, [B

    :goto_c3
    array-length v1, p2

    if-ge v0, v1, :cond_d1

    invoke-direct {p0, v0}, Lorg/objectweb/asm/util/Textifier;->appendComa(I)V

    aget-byte v1, p2, v0

    invoke-direct {p0, v1}, Lorg/objectweb/asm/util/Textifier;->visitByte(B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_c3

    :cond_d1
    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_25

    :cond_da
    instance-of v1, p2, [Z

    if-eqz v1, :cond_ee

    check-cast p2, [Z

    :goto_e0
    array-length v1, p2

    if-ge v0, v1, :cond_d1

    invoke-direct {p0, v0}, Lorg/objectweb/asm/util/Textifier;->appendComa(I)V

    aget-boolean v1, p2, v0

    invoke-direct {p0, v1}, Lorg/objectweb/asm/util/Textifier;->visitBoolean(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_e0

    :cond_ee
    instance-of v1, p2, [S

    if-eqz v1, :cond_102

    check-cast p2, [S

    :goto_f4
    array-length v1, p2

    if-ge v0, v1, :cond_d1

    invoke-direct {p0, v0}, Lorg/objectweb/asm/util/Textifier;->appendComa(I)V

    aget-short v1, p2, v0

    invoke-direct {p0, v1}, Lorg/objectweb/asm/util/Textifier;->visitShort(S)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_f4

    :cond_102
    instance-of v1, p2, [C

    if-eqz v1, :cond_116

    check-cast p2, [C

    :goto_108
    array-length v1, p2

    if-ge v0, v1, :cond_d1

    invoke-direct {p0, v0}, Lorg/objectweb/asm/util/Textifier;->appendComa(I)V

    aget-char v1, p2, v0

    invoke-direct {p0, v1}, Lorg/objectweb/asm/util/Textifier;->visitChar(C)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_108

    :cond_116
    instance-of v1, p2, [I

    if-eqz v1, :cond_12a

    check-cast p2, [I

    :goto_11c
    array-length v1, p2

    if-ge v0, v1, :cond_d1

    invoke-direct {p0, v0}, Lorg/objectweb/asm/util/Textifier;->appendComa(I)V

    aget v1, p2, v0

    invoke-direct {p0, v1}, Lorg/objectweb/asm/util/Textifier;->visitInt(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_11c

    :cond_12a
    instance-of v1, p2, [J

    if-eqz v1, :cond_13e

    check-cast p2, [J

    :goto_130
    array-length v1, p2

    if-ge v0, v1, :cond_d1

    invoke-direct {p0, v0}, Lorg/objectweb/asm/util/Textifier;->appendComa(I)V

    aget-wide v2, p2, v0

    invoke-direct {p0, v2, v3}, Lorg/objectweb/asm/util/Textifier;->visitLong(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_130

    :cond_13e
    instance-of v1, p2, [F

    if-eqz v1, :cond_152

    check-cast p2, [F

    :goto_144
    array-length v1, p2

    if-ge v0, v1, :cond_d1

    invoke-direct {p0, v0}, Lorg/objectweb/asm/util/Textifier;->appendComa(I)V

    aget v1, p2, v0

    invoke-direct {p0, v1}, Lorg/objectweb/asm/util/Textifier;->visitFloat(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_144

    :cond_152
    instance-of v1, p2, [D

    if-eqz v1, :cond_d1

    check-cast p2, [D

    :goto_158
    array-length v1, p2

    if-ge v0, v1, :cond_d1

    invoke-direct {p0, v0}, Lorg/objectweb/asm/util/Textifier;->appendComa(I)V

    aget-wide v2, p2, v0

    invoke-direct {p0, v2, v3}, Lorg/objectweb/asm/util/Textifier;->visitDouble(D)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_158
.end method

.method public bridge visitAnnotation(Ljava/lang/String;Ljava/lang/String;)Lorg/objectweb/asm/util/Printer;
    .registers 4

    invoke-virtual {p0, p1, p2}, Lorg/objectweb/asm/util/Textifier;->visitAnnotation(Ljava/lang/String;Ljava/lang/String;)Lorg/objectweb/asm/util/Textifier;

    move-result-object v0

    return-object v0
.end method

.method public visitAnnotation(Ljava/lang/String;Ljava/lang/String;)Lorg/objectweb/asm/util/Textifier;
    .registers 6

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    iget v0, p0, Lorg/objectweb/asm/util/Textifier;->valueNumber:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/objectweb/asm/util/Textifier;->valueNumber:I

    invoke-direct {p0, v0}, Lorg/objectweb/asm/util/Textifier;->appendComa(I)V

    if-eqz p1, :cond_1c

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_1c
    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p2}, Lorg/objectweb/asm/util/Textifier;->appendDescriptor(ILjava/lang/String;)V

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->text:Ljava/util/List;

    iget-object v1, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lorg/objectweb/asm/util/Textifier;->createTextifier()Lorg/objectweb/asm/util/Textifier;

    move-result-object v0

    iget-object v1, p0, Lorg/objectweb/asm/util/Textifier;->text:Ljava/util/List;

    invoke-virtual {v0}, Lorg/objectweb/asm/util/Textifier;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lorg/objectweb/asm/util/Textifier;->text:Ljava/util/List;

    const-string v2, ")"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public visitAnnotation(Ljava/lang/String;Z)Lorg/objectweb/asm/util/Textifier;
    .registers 6

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/objectweb/asm/util/Textifier;->tab:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lorg/objectweb/asm/util/Textifier;->appendDescriptor(ILjava/lang/String;)V

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->text:Ljava/util/List;

    iget-object v1, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lorg/objectweb/asm/util/Textifier;->createTextifier()Lorg/objectweb/asm/util/Textifier;

    move-result-object v1

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->text:Ljava/util/List;

    invoke-virtual {v1}, Lorg/objectweb/asm/util/Textifier;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lorg/objectweb/asm/util/Textifier;->text:Ljava/util/List;

    if-eqz p2, :cond_40

    const-string v0, ")\n"

    :goto_3c
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v1

    :cond_40
    const-string v0, ") // invisible\n"

    goto :goto_3c
.end method

.method public bridge visitAnnotationDefault()Lorg/objectweb/asm/util/Printer;
    .registers 2

    invoke-virtual {p0}, Lorg/objectweb/asm/util/Textifier;->visitAnnotationDefault()Lorg/objectweb/asm/util/Textifier;

    move-result-object v0

    return-object v0
.end method

.method public visitAnnotationDefault()Lorg/objectweb/asm/util/Textifier;
    .registers 4

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->text:Ljava/util/List;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Lorg/objectweb/asm/util/Textifier;->tab2:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "default="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lorg/objectweb/asm/util/Textifier;->createTextifier()Lorg/objectweb/asm/util/Textifier;

    move-result-object v0

    iget-object v1, p0, Lorg/objectweb/asm/util/Textifier;->text:Ljava/util/List;

    invoke-virtual {v0}, Lorg/objectweb/asm/util/Textifier;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lorg/objectweb/asm/util/Textifier;->text:Ljava/util/List;

    const-string v2, "\n"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public visitAnnotationEnd()V
    .registers 1

    return-void
.end method

.method public bridge visitArray(Ljava/lang/String;)Lorg/objectweb/asm/util/Printer;
    .registers 3

    invoke-virtual {p0, p1}, Lorg/objectweb/asm/util/Textifier;->visitArray(Ljava/lang/String;)Lorg/objectweb/asm/util/Textifier;

    move-result-object v0

    return-object v0
.end method

.method public visitArray(Ljava/lang/String;)Lorg/objectweb/asm/util/Textifier;
    .registers 5

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    iget v0, p0, Lorg/objectweb/asm/util/Textifier;->valueNumber:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/objectweb/asm/util/Textifier;->valueNumber:I

    invoke-direct {p0, v0}, Lorg/objectweb/asm/util/Textifier;->appendComa(I)V

    if-eqz p1, :cond_1c

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_1c
    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->text:Ljava/util/List;

    iget-object v1, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lorg/objectweb/asm/util/Textifier;->createTextifier()Lorg/objectweb/asm/util/Textifier;

    move-result-object v0

    iget-object v1, p0, Lorg/objectweb/asm/util/Textifier;->text:Ljava/util/List;

    invoke-virtual {v0}, Lorg/objectweb/asm/util/Textifier;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lorg/objectweb/asm/util/Textifier;->text:Ljava/util/List;

    const-string v2, "}"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public visitAttribute(Lorg/objectweb/asm/Attribute;)V
    .registers 4

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/objectweb/asm/util/Textifier;->tab:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "ATTRIBUTE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, -0x1

    iget-object v1, p1, Lorg/objectweb/asm/Attribute;->type:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lorg/objectweb/asm/util/Textifier;->appendDescriptor(ILjava/lang/String;)V

    instance-of v0, p1, Lorg/objectweb/asm/util/Textifiable;

    if-eqz v0, :cond_31

    check-cast p1, Lorg/objectweb/asm/util/Textifiable;

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lorg/objectweb/asm/util/Textifiable;->textify(Ljava/lang/StringBuffer;Ljava/util/Map;)V

    :goto_25
    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->text:Ljava/util/List;

    iget-object v1, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_31
    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    const-string v1, " : unknown\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_25
.end method

.method public bridge visitClassAnnotation(Ljava/lang/String;Z)Lorg/objectweb/asm/util/Printer;
    .registers 4

    invoke-virtual {p0, p1, p2}, Lorg/objectweb/asm/util/Textifier;->visitClassAnnotation(Ljava/lang/String;Z)Lorg/objectweb/asm/util/Textifier;

    move-result-object v0

    return-object v0
.end method

.method public visitClassAnnotation(Ljava/lang/String;Z)Lorg/objectweb/asm/util/Textifier;
    .registers 5

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->text:Ljava/util/List;

    const-string v1, "\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1, p2}, Lorg/objectweb/asm/util/Textifier;->visitAnnotation(Ljava/lang/String;Z)Lorg/objectweb/asm/util/Textifier;

    move-result-object v0

    return-object v0
.end method

.method public visitClassAttribute(Lorg/objectweb/asm/Attribute;)V
    .registers 4

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->text:Ljava/util/List;

    const-string v1, "\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1}, Lorg/objectweb/asm/util/Textifier;->visitAttribute(Lorg/objectweb/asm/Attribute;)V

    return-void
.end method

.method public visitClassEnd()V
    .registers 3

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->text:Ljava/util/List;

    const-string v1, "}\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public visitClassTypeAnnotation(ILorg/objectweb/asm/TypePath;Ljava/lang/String;Z)Lorg/objectweb/asm/util/Printer;
    .registers 7

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->text:Ljava/util/List;

    const-string v1, "\n"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/objectweb/asm/util/Textifier;->visitTypeAnnotation(ILorg/objectweb/asm/TypePath;Ljava/lang/String;Z)Lorg/objectweb/asm/util/Textifier;

    move-result-object v0

    return-object v0
.end method

.method public visitCode()V
    .registers 1

    return-void
.end method

.method public visitEnum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    iget v0, p0, Lorg/objectweb/asm/util/Textifier;->valueNumber:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/objectweb/asm/util/Textifier;->valueNumber:I

    invoke-direct {p0, v0}, Lorg/objectweb/asm/util/Textifier;->appendComa(I)V

    if-eqz p1, :cond_1c

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_1c
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p2}, Lorg/objectweb/asm/util/Textifier;->appendDescriptor(ILjava/lang/String;)V

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->text:Ljava/util/List;

    iget-object v1, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public bridge visitField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/objectweb/asm/util/Printer;
    .registers 7

    invoke-virtual/range {p0 .. p5}, Lorg/objectweb/asm/util/Textifier;->visitField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/objectweb/asm/util/Textifier;

    move-result-object v0

    return-object v0
.end method

.method public visitField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/objectweb/asm/util/Textifier;
    .registers 11

    const/16 v4, 0x22

    const/4 v2, 0x0

    const/16 v3, 0xa

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/high16 v0, 0x20000

    and-int/2addr v0, p1

    if-eqz v0, :cond_21

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/objectweb/asm/util/Textifier;->tab:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "// DEPRECATED\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_21
    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/objectweb/asm/util/Textifier;->tab:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "// access flags 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    if-eqz p4, :cond_71

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/objectweb/asm/util/Textifier;->tab:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p4}, Lorg/objectweb/asm/util/Textifier;->appendDescriptor(ILjava/lang/String;)V

    new-instance v0, Lorg/objectweb/asm/util/TraceSignatureVisitor;

    invoke-direct {v0, v2}, Lorg/objectweb/asm/util/TraceSignatureVisitor;-><init>(I)V

    new-instance v1, Lorg/objectweb/asm/signature/SignatureReader;

    invoke-direct {v1, p4}, Lorg/objectweb/asm/signature/SignatureReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lorg/objectweb/asm/signature/SignatureReader;->acceptType(Lorg/objectweb/asm/signature/SignatureVisitor;)V

    iget-object v1, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/objectweb/asm/util/Textifier;->tab:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "// declaration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v0}, Lorg/objectweb/asm/util/TraceSignatureVisitor;->getDeclaration()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_71
    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/objectweb/asm/util/Textifier;->tab:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0, p1}, Lorg/objectweb/asm/util/Textifier;->appendAccess(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p3}, Lorg/objectweb/asm/util/Textifier;->appendDescriptor(ILjava/lang/String;)V

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz p5, :cond_a4

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    instance-of v0, p5, Ljava/lang/String;

    if-eqz v0, :cond_c2

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_a4
    :goto_a4
    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->text:Ljava/util/List;

    iget-object v1, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lorg/objectweb/asm/util/Textifier;->createTextifier()Lorg/objectweb/asm/util/Textifier;

    move-result-object v0

    iget-object v1, p0, Lorg/objectweb/asm/util/Textifier;->text:Ljava/util/List;

    invoke-virtual {v0}, Lorg/objectweb/asm/util/Textifier;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_c2
    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_a4
.end method

.method public bridge visitFieldAnnotation(Ljava/lang/String;Z)Lorg/objectweb/asm/util/Printer;
    .registers 4

    invoke-virtual {p0, p1, p2}, Lorg/objectweb/asm/util/Textifier;->visitFieldAnnotation(Ljava/lang/String;Z)Lorg/objectweb/asm/util/Textifier;

    move-result-object v0

    return-object v0
.end method

.method public visitFieldAnnotation(Ljava/lang/String;Z)Lorg/objectweb/asm/util/Textifier;
    .registers 4

    invoke-virtual {p0, p1, p2}, Lorg/objectweb/asm/util/Textifier;->visitAnnotation(Ljava/lang/String;Z)Lorg/objectweb/asm/util/Textifier;

    move-result-object v0

    return-object v0
.end method

.method public visitFieldAttribute(Lorg/objectweb/asm/Attribute;)V
    .registers 2

    invoke-virtual {p0, p1}, Lorg/objectweb/asm/util/Textifier;->visitAttribute(Lorg/objectweb/asm/Attribute;)V

    return-void
.end method

.method public visitFieldEnd()V
    .registers 1

    return-void
.end method

.method public visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/objectweb/asm/util/Textifier;->tab2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    sget-object v1, Lorg/objectweb/asm/util/Textifier;->OPCODES:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p0, v2, p2}, Lorg/objectweb/asm/util/Textifier;->appendDescriptor(ILjava/lang/String;)V

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p4}, Lorg/objectweb/asm/util/Textifier;->appendDescriptor(ILjava/lang/String;)V

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->text:Ljava/util/List;

    iget-object v1, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public visitFieldTypeAnnotation(ILorg/objectweb/asm/TypePath;Ljava/lang/String;Z)Lorg/objectweb/asm/util/Printer;
    .registers 6

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/objectweb/asm/util/Textifier;->visitTypeAnnotation(ILorg/objectweb/asm/TypePath;Ljava/lang/String;Z)Lorg/objectweb/asm/util/Textifier;

    move-result-object v0

    return-object v0
.end method

.method public visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V
    .registers 9

    const/16 v2, 0x5d

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/objectweb/asm/util/Textifier;->ltab:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    const-string v1, "FRAME "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    packed-switch p1, :pswitch_data_76

    :goto_19
    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->text:Ljava/util/List;

    iget-object v1, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_2c  #0xffffffff, 0x0
    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    const-string v1, "FULL ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0, p2, p3}, Lorg/objectweb/asm/util/Textifier;->appendFrameTypes(I[Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    const-string v1, "] ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0, p4, p5}, Lorg/objectweb/asm/util/Textifier;->appendFrameTypes(I[Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_19

    :pswitch_46  #0x1
    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    const-string v1, "APPEND ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0, p2, p3}, Lorg/objectweb/asm/util/Textifier;->appendFrameTypes(I[Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_19

    :pswitch_56  #0x2
    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    const-string v1, "CHOP "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_19

    :pswitch_62  #0x3
    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    const-string v1, "SAME"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_19

    :pswitch_6a  #0x4
    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    const-string v1, "SAME1 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x1

    invoke-direct {p0, v0, p5}, Lorg/objectweb/asm/util/Textifier;->appendFrameTypes(I[Ljava/lang/Object;)V

    goto :goto_19

    :pswitch_data_76
    .packed-switch -0x1
        :pswitch_2c  #ffffffff
        :pswitch_2c  #00000000
        :pswitch_46  #00000001
        :pswitch_56  #00000002
        :pswitch_62  #00000003
        :pswitch_6a  #00000004
    .end packed-switch
.end method

.method public visitIincInsn(II)V
    .registers 5

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/objectweb/asm/util/Textifier;->tab2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "IINC "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->text:Ljava/util/List;

    iget-object v1, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public visitInnerClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 10

    const/16 v4, 0x20

    const/16 v3, 0xa

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/objectweb/asm/util/Textifier;->tab:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "// access flags 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    and-int/lit8 v1, p4, -0x21

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/objectweb/asm/util/Textifier;->tab:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0, p4}, Lorg/objectweb/asm/util/Textifier;->appendAccess(I)V

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    const-string v1, "INNERCLASS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, v2, p1}, Lorg/objectweb/asm/util/Textifier;->appendDescriptor(ILjava/lang/String;)V

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p0, v2, p2}, Lorg/objectweb/asm/util/Textifier;->appendDescriptor(ILjava/lang/String;)V

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p0, v2, p3}, Lorg/objectweb/asm/util/Textifier;->appendDescriptor(ILjava/lang/String;)V

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->text:Ljava/util/List;

    iget-object v1, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public visitInsn(I)V
    .registers 4

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/objectweb/asm/util/Textifier;->tab2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    sget-object v1, Lorg/objectweb/asm/util/Textifier;->OPCODES:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->text:Ljava/util/List;

    iget-object v1, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public visitInsnAnnotation(ILorg/objectweb/asm/TypePath;Ljava/lang/String;Z)Lorg/objectweb/asm/util/Printer;
    .registers 6

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/objectweb/asm/util/Textifier;->visitTypeAnnotation(ILorg/objectweb/asm/TypePath;Ljava/lang/String;Z)Lorg/objectweb/asm/util/Textifier;

    move-result-object v0

    return-object v0
.end method

.method public visitIntInsn(II)V
    .registers 5

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/objectweb/asm/util/Textifier;->tab2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    sget-object v1, Lorg/objectweb/asm/util/Textifier;->OPCODES:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    const/16 v0, 0xbc

    if-ne p1, v0, :cond_39

    sget-object v0, Lorg/objectweb/asm/util/Textifier;->TYPES:[Ljava/lang/String;

    aget-object v0, v0, p2

    :goto_24
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->text:Ljava/util/List;

    iget-object v1, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_39
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_24
.end method

.method public varargs visitInvokeDynamicInsn(Ljava/lang/String;Ljava/lang/String;Lorg/objectweb/asm/Handle;[Ljava/lang/Object;)V
    .registers 11

    const/4 v5, 0x3

    const/4 v0, 0x0

    const/16 v4, 0xa

    iget-object v1, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    iget-object v1, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/objectweb/asm/util/Textifier;->tab2:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "INVOKEDYNAMIC"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, v5, p2}, Lorg/objectweb/asm/util/Textifier;->appendDescriptor(ILjava/lang/String;)V

    iget-object v1, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    const-string v2, " ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/objectweb/asm/util/Textifier;->tab3:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, p3}, Lorg/objectweb/asm/util/Textifier;->appendHandle(Lorg/objectweb/asm/Handle;)V

    iget-object v1, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/objectweb/asm/util/Textifier;->tab3:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "// arguments:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    array-length v1, p4

    if-nez v1, :cond_74

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    const-string v1, " none"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_56
    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/objectweb/asm/util/Textifier;->tab2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->text:Ljava/util/List;

    iget-object v1, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_74
    iget-object v1, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v1, v0

    :goto_7a
    array-length v0, p4

    if-ge v1, v0, :cond_d2

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/objectweb/asm/util/Textifier;->tab3:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    aget-object v0, p4, v1

    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_9c

    iget-object v2, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    check-cast v0, Ljava/lang/String;

    invoke-static {v2, v0}, Lorg/objectweb/asm/util/Printer;->appendString(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    :goto_91
    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    const-string v2, ", \n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7a

    :cond_9c
    instance-of v2, v0, Lorg/objectweb/asm/Type;

    if-eqz v2, :cond_c2

    check-cast v0, Lorg/objectweb/asm/Type;

    invoke-virtual {v0}, Lorg/objectweb/asm/Type;->getSort()I

    move-result v2

    const/16 v3, 0xb

    if-ne v2, v3, :cond_b2

    invoke-virtual {v0}, Lorg/objectweb/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v5, v0}, Lorg/objectweb/asm/util/Textifier;->appendDescriptor(ILjava/lang/String;)V

    goto :goto_91

    :cond_b2
    iget-object v2, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Lorg/objectweb/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, ".class"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_91

    :cond_c2
    instance-of v2, v0, Lorg/objectweb/asm/Handle;

    if-eqz v2, :cond_cc

    check-cast v0, Lorg/objectweb/asm/Handle;

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/util/Textifier;->appendHandle(Lorg/objectweb/asm/Handle;)V

    goto :goto_91

    :cond_cc
    iget-object v2, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_91

    :cond_d2
    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    goto/16 :goto_56
.end method

.method public visitJumpInsn(ILorg/objectweb/asm/Label;)V
    .registers 5

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/objectweb/asm/util/Textifier;->tab2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    sget-object v1, Lorg/objectweb/asm/util/Textifier;->OPCODES:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p0, p2}, Lorg/objectweb/asm/util/Textifier;->appendLabel(Lorg/objectweb/asm/Label;)V

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->text:Ljava/util/List;

    iget-object v1, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public visitLabel(Lorg/objectweb/asm/Label;)V
    .registers 4

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/objectweb/asm/util/Textifier;->ltab:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, p1}, Lorg/objectweb/asm/util/Textifier;->appendLabel(Lorg/objectweb/asm/Label;)V

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->text:Ljava/util/List;

    iget-object v1, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public visitLdcInsn(Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/objectweb/asm/util/Textifier;->tab2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "LDC "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_31

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lorg/objectweb/asm/util/Printer;->appendString(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    :goto_1e
    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->text:Ljava/util/List;

    iget-object v1, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_31
    instance-of v0, p1, Lorg/objectweb/asm/Type;

    if-eqz v0, :cond_47

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    check-cast p1, Lorg/objectweb/asm/Type;

    invoke-virtual {p1}, Lorg/objectweb/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ".class"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1e

    :cond_47
    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_1e
.end method

.method public visitLineNumber(ILorg/objectweb/asm/Label;)V
    .registers 5

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/objectweb/asm/util/Textifier;->tab2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "LINENUMBER "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p0, p2}, Lorg/objectweb/asm/util/Textifier;->appendLabel(Lorg/objectweb/asm/Label;)V

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->text:Ljava/util/List;

    iget-object v1, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public visitLocalVariable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/objectweb/asm/Label;Lorg/objectweb/asm/Label;I)V
    .registers 12

    const/16 v4, 0xa

    const/4 v3, 0x0

    const/16 v2, 0x20

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/objectweb/asm/util/Textifier;->tab2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "LOCALVARIABLE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p2}, Lorg/objectweb/asm/util/Textifier;->appendDescriptor(ILjava/lang/String;)V

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p0, p4}, Lorg/objectweb/asm/util/Textifier;->appendLabel(Lorg/objectweb/asm/Label;)V

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p0, p5}, Lorg/objectweb/asm/util/Textifier;->appendLabel(Lorg/objectweb/asm/Label;)V

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    if-eqz p3, :cond_73

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/objectweb/asm/util/Textifier;->tab2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p3}, Lorg/objectweb/asm/util/Textifier;->appendDescriptor(ILjava/lang/String;)V

    new-instance v0, Lorg/objectweb/asm/util/TraceSignatureVisitor;

    invoke-direct {v0, v3}, Lorg/objectweb/asm/util/TraceSignatureVisitor;-><init>(I)V

    new-instance v1, Lorg/objectweb/asm/signature/SignatureReader;

    invoke-direct {v1, p3}, Lorg/objectweb/asm/signature/SignatureReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lorg/objectweb/asm/signature/SignatureReader;->acceptType(Lorg/objectweb/asm/signature/SignatureVisitor;)V

    iget-object v1, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/objectweb/asm/util/Textifier;->tab2:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "// declaration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v0}, Lorg/objectweb/asm/util/TraceSignatureVisitor;->getDeclaration()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_73
    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->text:Ljava/util/List;

    iget-object v1, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public visitLocalVariableAnnotation(ILorg/objectweb/asm/TypePath;[Lorg/objectweb/asm/Label;[Lorg/objectweb/asm/Label;[ILjava/lang/String;Z)Lorg/objectweb/asm/util/Printer;
    .registers 12

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    iget-object v1, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/objectweb/asm/util/Textifier;->tab2:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "LOCALVARIABLE @"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v1, 0x1

    invoke-virtual {p0, v1, p6}, Lorg/objectweb/asm/util/Textifier;->appendDescriptor(ILjava/lang/String;)V

    iget-object v1, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    const/16 v2, 0x28

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/objectweb/asm/util/Textifier;->text:Ljava/util/List;

    iget-object v2, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lorg/objectweb/asm/util/Textifier;->createTextifier()Lorg/objectweb/asm/util/Textifier;

    move-result-object v1

    iget-object v2, p0, Lorg/objectweb/asm/util/Textifier;->text:Ljava/util/List;

    invoke-virtual {v1}, Lorg/objectweb/asm/util/Textifier;->getText()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    iget-object v2, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    const-string v3, ") : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0, p1}, Lorg/objectweb/asm/util/Textifier;->appendTypeReference(I)V

    iget-object v2, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    :goto_50
    array-length v2, p3

    if-ge v0, v2, :cond_81

    iget-object v2, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    const-string v3, " [ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    aget-object v2, p3, v0

    invoke-virtual {p0, v2}, Lorg/objectweb/asm/util/Textifier;->appendLabel(Lorg/objectweb/asm/Label;)V

    iget-object v2, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    aget-object v2, p4, v0

    invoke-virtual {p0, v2}, Lorg/objectweb/asm/util/Textifier;->appendLabel(Lorg/objectweb/asm/Label;)V

    iget-object v2, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    aget v3, p5, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_50

    :cond_81
    iget-object v2, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    if-eqz p7, :cond_96

    const-string v0, "\n"

    :goto_87
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->text:Ljava/util/List;

    iget-object v2, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v1

    :cond_96
    const-string v0, " // invisible\n"

    goto :goto_87
.end method

.method public visitLookupSwitchInsn(Lorg/objectweb/asm/Label;[I[Lorg/objectweb/asm/Label;)V
    .registers 8

    const/16 v3, 0xa

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    iget-object v1, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/objectweb/asm/util/Textifier;->tab2:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "LOOKUPSWITCH\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_15
    array-length v1, p3

    if-ge v0, v1, :cond_38

    iget-object v1, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/objectweb/asm/util/Textifier;->tab3:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    aget v2, p2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    aget-object v1, p3, v0

    invoke-virtual {p0, v1}, Lorg/objectweb/asm/util/Textifier;->appendLabel(Lorg/objectweb/asm/Label;)V

    iget-object v1, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    :cond_38
    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/objectweb/asm/util/Textifier;->tab3:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "default: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, p1}, Lorg/objectweb/asm/util/Textifier;->appendLabel(Lorg/objectweb/asm/Label;)V

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->text:Ljava/util/List;

    iget-object v1, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public visitMaxs(II)V
    .registers 7

    const/16 v3, 0xa

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/objectweb/asm/util/Textifier;->tab2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "MAXSTACK = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->text:Ljava/util/List;

    iget-object v1, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/objectweb/asm/util/Textifier;->tab2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "MAXLOCALS = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->text:Ljava/util/List;

    iget-object v1, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public bridge visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/objectweb/asm/util/Printer;
    .registers 7

    invoke-virtual/range {p0 .. p5}, Lorg/objectweb/asm/util/Textifier;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/objectweb/asm/util/Textifier;

    move-result-object v0

    return-object v0
.end method

.method public visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/objectweb/asm/util/Textifier;
    .registers 14

    const/16 v7, 0x20

    const/16 v6, 0xa

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/high16 v0, 0x20000

    and-int/2addr v0, p1

    if-eqz v0, :cond_21

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/objectweb/asm/util/Textifier;->tab:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "// DEPRECATED\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_21
    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/objectweb/asm/util/Textifier;->tab:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "// access flags 0x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    if-eqz p4, :cond_93

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/objectweb/asm/util/Textifier;->tab:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x4

    invoke-virtual {p0, v0, p4}, Lorg/objectweb/asm/util/Textifier;->appendDescriptor(ILjava/lang/String;)V

    new-instance v0, Lorg/objectweb/asm/util/TraceSignatureVisitor;

    invoke-direct {v0, v1}, Lorg/objectweb/asm/util/TraceSignatureVisitor;-><init>(I)V

    new-instance v2, Lorg/objectweb/asm/signature/SignatureReader;

    invoke-direct {v2, p4}, Lorg/objectweb/asm/signature/SignatureReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lorg/objectweb/asm/signature/SignatureReader;->accept(Lorg/objectweb/asm/signature/SignatureVisitor;)V

    invoke-virtual {v0}, Lorg/objectweb/asm/util/TraceSignatureVisitor;->getDeclaration()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lorg/objectweb/asm/util/TraceSignatureVisitor;->getReturnType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lorg/objectweb/asm/util/TraceSignatureVisitor;->getExceptions()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    iget-object v5, p0, Lorg/objectweb/asm/util/Textifier;->tab:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "// declaration: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz v0, :cond_8e

    iget-object v2, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    const-string v3, " throws "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_8e
    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_93
    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/objectweb/asm/util/Textifier;->tab:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    and-int/lit8 v0, p1, -0x41

    invoke-direct {p0, v0}, Lorg/objectweb/asm/util/Textifier;->appendAccess(I)V

    and-int/lit16 v0, p1, 0x100

    if-eqz v0, :cond_aa

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    const-string v2, "native "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_aa
    and-int/lit16 v0, p1, 0x80

    if-eqz v0, :cond_b5

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    const-string v2, "varargs "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_b5
    and-int/lit8 v0, p1, 0x40

    if-eqz v0, :cond_c0

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    const-string v2, "bridge "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_c0
    iget v0, p0, Lorg/objectweb/asm/util/Textifier;->access:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_d5

    and-int/lit16 v0, p1, 0x400

    if-nez v0, :cond_d5

    and-int/lit8 v0, p1, 0x8

    if-nez v0, :cond_d5

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    const-string v2, "default "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_d5
    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x3

    invoke-virtual {p0, v0, p3}, Lorg/objectweb/asm/util/Textifier;->appendDescriptor(ILjava/lang/String;)V

    if-eqz p5, :cond_fb

    array-length v0, p5

    if-lez v0, :cond_fb

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    const-string v2, " throws "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v0, v1

    :goto_eb
    array-length v2, p5

    if-ge v0, v2, :cond_fb

    aget-object v2, p5, v0

    invoke-virtual {p0, v1, v2}, Lorg/objectweb/asm/util/Textifier;->appendDescriptor(ILjava/lang/String;)V

    iget-object v2, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_eb

    :cond_fb
    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->text:Ljava/util/List;

    iget-object v1, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lorg/objectweb/asm/util/Textifier;->createTextifier()Lorg/objectweb/asm/util/Textifier;

    move-result-object v0

    iget-object v1, p0, Lorg/objectweb/asm/util/Textifier;->text:Ljava/util/List;

    invoke-virtual {v0}, Lorg/objectweb/asm/util/Textifier;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public bridge visitMethodAnnotation(Ljava/lang/String;Z)Lorg/objectweb/asm/util/Printer;
    .registers 4

    invoke-virtual {p0, p1, p2}, Lorg/objectweb/asm/util/Textifier;->visitMethodAnnotation(Ljava/lang/String;Z)Lorg/objectweb/asm/util/Textifier;

    move-result-object v0

    return-object v0
.end method

.method public visitMethodAnnotation(Ljava/lang/String;Z)Lorg/objectweb/asm/util/Textifier;
    .registers 4

    invoke-virtual {p0, p1, p2}, Lorg/objectweb/asm/util/Textifier;->visitAnnotation(Ljava/lang/String;Z)Lorg/objectweb/asm/util/Textifier;

    move-result-object v0

    return-object v0
.end method

.method public visitMethodAttribute(Lorg/objectweb/asm/Attribute;)V
    .registers 4

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/objectweb/asm/util/Textifier;->tab:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "ATTRIBUTE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, -0x1

    iget-object v1, p1, Lorg/objectweb/asm/Attribute;->type:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lorg/objectweb/asm/util/Textifier;->appendDescriptor(ILjava/lang/String;)V

    instance-of v0, p1, Lorg/objectweb/asm/util/Textifiable;

    if-eqz v0, :cond_32

    check-cast p1, Lorg/objectweb/asm/util/Textifiable;

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/objectweb/asm/util/Textifier;->labelNames:Ljava/util/Map;

    invoke-interface {p1, v0, v1}, Lorg/objectweb/asm/util/Textifiable;->textify(Ljava/lang/StringBuffer;Ljava/util/Map;)V

    :goto_26
    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->text:Ljava/util/List;

    iget-object v1, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_32
    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    const-string v1, " : unknown\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_26
.end method

.method public visitMethodEnd()V
    .registers 1

    return-void
.end method

.method public visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    iget v0, p0, Lorg/objectweb/asm/util/Textifier;->api:I

    const/high16 v1, 0x50000

    if-lt v0, v1, :cond_a

    invoke-super {p0, p1, p2, p3, p4}, Lorg/objectweb/asm/util/Printer;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

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

    invoke-direct/range {v0 .. v5}, Lorg/objectweb/asm/util/Textifier;->doVisitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_9

    :cond_18
    const/4 v5, 0x0

    goto :goto_f
.end method

.method public visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 8

    iget v0, p0, Lorg/objectweb/asm/util/Textifier;->api:I

    const/high16 v1, 0x50000

    if-ge v0, v1, :cond_a

    invoke-super/range {p0 .. p5}, Lorg/objectweb/asm/util/Printer;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_9
    return-void

    :cond_a
    invoke-direct/range {p0 .. p5}, Lorg/objectweb/asm/util/Textifier;->doVisitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_9
.end method

.method public visitMethodTypeAnnotation(ILorg/objectweb/asm/TypePath;Ljava/lang/String;Z)Lorg/objectweb/asm/util/Printer;
    .registers 6

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/objectweb/asm/util/Textifier;->visitTypeAnnotation(ILorg/objectweb/asm/TypePath;Ljava/lang/String;Z)Lorg/objectweb/asm/util/Textifier;

    move-result-object v0

    return-object v0
.end method

.method public visitMultiANewArrayInsn(Ljava/lang/String;I)V
    .registers 5

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/objectweb/asm/util/Textifier;->tab2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "MULTIANEWARRAY "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lorg/objectweb/asm/util/Textifier;->appendDescriptor(ILjava/lang/String;)V

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->text:Ljava/util/List;

    iget-object v1, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public visitOuterClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    const/16 v3, 0x20

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/objectweb/asm/util/Textifier;->tab:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "OUTERCLASS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, v2, p1}, Lorg/objectweb/asm/util/Textifier;->appendDescriptor(ILjava/lang/String;)V

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    if-eqz p2, :cond_28

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_28
    const/4 v0, 0x3

    invoke-virtual {p0, v0, p3}, Lorg/objectweb/asm/util/Textifier;->appendDescriptor(ILjava/lang/String;)V

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->text:Ljava/util/List;

    iget-object v1, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public visitParameter(Ljava/lang/String;I)V
    .registers 5

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/objectweb/asm/util/Textifier;->tab2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "// parameter "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0, p2}, Lorg/objectweb/asm/util/Textifier;->appendAccess(I)V

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    if-nez p1, :cond_22

    const-string p1, "<no name>"

    :cond_22
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->text:Ljava/util/List;

    iget-object v1, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public bridge visitParameterAnnotation(ILjava/lang/String;Z)Lorg/objectweb/asm/util/Printer;
    .registers 5

    invoke-virtual {p0, p1, p2, p3}, Lorg/objectweb/asm/util/Textifier;->visitParameterAnnotation(ILjava/lang/String;Z)Lorg/objectweb/asm/util/Textifier;

    move-result-object v0

    return-object v0
.end method

.method public visitParameterAnnotation(ILjava/lang/String;Z)Lorg/objectweb/asm/util/Textifier;
    .registers 7

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/objectweb/asm/util/Textifier;->tab2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p2}, Lorg/objectweb/asm/util/Textifier;->appendDescriptor(ILjava/lang/String;)V

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->text:Ljava/util/List;

    iget-object v1, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lorg/objectweb/asm/util/Textifier;->createTextifier()Lorg/objectweb/asm/util/Textifier;

    move-result-object v1

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->text:Ljava/util/List;

    invoke-virtual {v1}, Lorg/objectweb/asm/util/Textifier;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lorg/objectweb/asm/util/Textifier;->text:Ljava/util/List;

    if-eqz p3, :cond_51

    const-string v0, ") // parameter "

    :goto_3c
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->text:Ljava/util/List;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->text:Ljava/util/List;

    const-string v2, "\n"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v1

    :cond_51
    const-string v0, ") // invisible, parameter "

    goto :goto_3c
.end method

.method public visitSource(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    const/16 v2, 0xa

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    if-eqz p1, :cond_1f

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/objectweb/asm/util/Textifier;->tab:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "// compiled from: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_1f
    if-eqz p2, :cond_36

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/objectweb/asm/util/Textifier;->tab:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "// debug info: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_36
    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_49

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->text:Ljava/util/List;

    iget-object v1, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_49
    return-void
.end method

.method public varargs visitTableSwitchInsn(IILorg/objectweb/asm/Label;[Lorg/objectweb/asm/Label;)V
    .registers 9

    const/16 v3, 0xa

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    iget-object v1, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/objectweb/asm/util/Textifier;->tab2:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "TABLESWITCH\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_15
    array-length v1, p4

    if-ge v0, v1, :cond_38

    iget-object v1, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/objectweb/asm/util/Textifier;->tab3:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    add-int v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    aget-object v1, p4, v0

    invoke-virtual {p0, v1}, Lorg/objectweb/asm/util/Textifier;->appendLabel(Lorg/objectweb/asm/Label;)V

    iget-object v1, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    :cond_38
    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/objectweb/asm/util/Textifier;->tab3:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "default: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, p3}, Lorg/objectweb/asm/util/Textifier;->appendLabel(Lorg/objectweb/asm/Label;)V

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->text:Ljava/util/List;

    iget-object v1, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public visitTryCatchAnnotation(ILorg/objectweb/asm/TypePath;Ljava/lang/String;Z)Lorg/objectweb/asm/util/Printer;
    .registers 9

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/objectweb/asm/util/Textifier;->tab2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "TRYCATCHBLOCK @"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p3}, Lorg/objectweb/asm/util/Textifier;->appendDescriptor(ILjava/lang/String;)V

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->text:Ljava/util/List;

    iget-object v1, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lorg/objectweb/asm/util/Textifier;->createTextifier()Lorg/objectweb/asm/util/Textifier;

    move-result-object v1

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->text:Ljava/util/List;

    invoke-virtual {v1}, Lorg/objectweb/asm/util/Textifier;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    const-string v2, ") : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0, p1}, Lorg/objectweb/asm/util/Textifier;->appendTypeReference(I)V

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    if-eqz p4, :cond_65

    const-string v0, "\n"

    :goto_56
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->text:Ljava/util/List;

    iget-object v2, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v1

    :cond_65
    const-string v0, " // invisible\n"

    goto :goto_56
.end method

.method public visitTryCatchBlock(Lorg/objectweb/asm/Label;Lorg/objectweb/asm/Label;Lorg/objectweb/asm/Label;Ljava/lang/String;)V
    .registers 9

    const/4 v3, 0x0

    const/16 v2, 0x20

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/objectweb/asm/util/Textifier;->tab2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "TRYCATCHBLOCK "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, p1}, Lorg/objectweb/asm/util/Textifier;->appendLabel(Lorg/objectweb/asm/Label;)V

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p0, p2}, Lorg/objectweb/asm/util/Textifier;->appendLabel(Lorg/objectweb/asm/Label;)V

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p0, p3}, Lorg/objectweb/asm/util/Textifier;->appendLabel(Lorg/objectweb/asm/Label;)V

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p0, v3, p4}, Lorg/objectweb/asm/util/Textifier;->appendDescriptor(ILjava/lang/String;)V

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->text:Ljava/util/List;

    iget-object v1, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public visitTypeAnnotation(ILorg/objectweb/asm/TypePath;Ljava/lang/String;Z)Lorg/objectweb/asm/util/Textifier;
    .registers 9

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/objectweb/asm/util/Textifier;->tab:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p3}, Lorg/objectweb/asm/util/Textifier;->appendDescriptor(ILjava/lang/String;)V

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->text:Ljava/util/List;

    iget-object v1, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lorg/objectweb/asm/util/Textifier;->createTextifier()Lorg/objectweb/asm/util/Textifier;

    move-result-object v1

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->text:Ljava/util/List;

    invoke-virtual {v1}, Lorg/objectweb/asm/util/Textifier;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    const-string v2, ") : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {p0, p1}, Lorg/objectweb/asm/util/Textifier;->appendTypeReference(I)V

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    if-eqz p4, :cond_65

    const-string v0, "\n"

    :goto_56
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->text:Ljava/util/List;

    iget-object v2, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v1

    :cond_65
    const-string v0, " // invisible\n"

    goto :goto_56
.end method

.method public visitTypeInsn(ILjava/lang/String;)V
    .registers 6

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/objectweb/asm/util/Textifier;->tab2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    sget-object v1, Lorg/objectweb/asm/util/Textifier;->OPCODES:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p0, v2, p2}, Lorg/objectweb/asm/util/Textifier;->appendDescriptor(ILjava/lang/String;)V

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->text:Ljava/util/List;

    iget-object v1, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public visitVarInsn(II)V
    .registers 5

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/objectweb/asm/util/Textifier;->tab2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    sget-object v1, Lorg/objectweb/asm/util/Textifier;->OPCODES:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/objectweb/asm/util/Textifier;->text:Ljava/util/List;

    iget-object v1, p0, Lorg/objectweb/asm/util/Textifier;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
