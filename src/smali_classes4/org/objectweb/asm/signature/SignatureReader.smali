.class public Lorg/objectweb/asm/signature/SignatureReader;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/objectweb/asm/signature/SignatureReader;->a:Ljava/lang/String;

    return-void
.end method

.method private static a(Ljava/lang/String;ILorg/objectweb/asm/signature/SignatureVisitor;)I
    .registers 12

    const/16 v8, 0x3b

    const/4 v7, 0x1

    const/4 v4, 0x0

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    packed-switch v0, :pswitch_data_8c

    :pswitch_d  #0x45, 0x47, 0x48, 0x4b, 0x4c, 0x4d, 0x4e, 0x4f, 0x50, 0x51, 0x52, 0x55, 0x57, 0x58, 0x59
    move v0, v1

    move v2, v1

    move v3, v4

    move v5, v4

    :goto_11
    add-int/lit8 v6, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    sparse-switch v0, :sswitch_data_c4

    move v1, v2

    move v0, v6

    :goto_1c
    move v2, v1

    goto :goto_11

    :pswitch_1e  #0x42, 0x43, 0x44, 0x46, 0x49, 0x4a, 0x53, 0x56, 0x5a
    invoke-virtual {p2, v0}, Lorg/objectweb/asm/signature/SignatureVisitor;->visitBaseType(C)V

    move v6, v1

    :goto_22
    return v6

    :pswitch_23  #0x5b
    invoke-virtual {p2}, Lorg/objectweb/asm/signature/SignatureVisitor;->visitArrayType()Lorg/objectweb/asm/signature/SignatureVisitor;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lorg/objectweb/asm/signature/SignatureReader;->a(Ljava/lang/String;ILorg/objectweb/asm/signature/SignatureVisitor;)I

    move-result v6

    goto :goto_22

    :pswitch_2c  #0x54
    invoke-virtual {p0, v8, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/objectweb/asm/signature/SignatureVisitor;->visitTypeVariable(Ljava/lang/String;)V

    add-int/lit8 v6, v0, 0x1

    goto :goto_22

    :sswitch_3a
    if-nez v3, :cond_47

    add-int/lit8 v1, v6, -0x1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    if-eqz v5, :cond_4d

    invoke-virtual {p2, v1}, Lorg/objectweb/asm/signature/SignatureVisitor;->visitInnerClassType(Ljava/lang/String;)V

    :cond_47
    :goto_47
    if-ne v0, v8, :cond_51

    invoke-virtual {p2}, Lorg/objectweb/asm/signature/SignatureVisitor;->visitEnd()V

    goto :goto_22

    :cond_4d
    invoke-virtual {p2, v1}, Lorg/objectweb/asm/signature/SignatureVisitor;->visitClassType(Ljava/lang/String;)V

    goto :goto_47

    :cond_51
    move v1, v6

    move v3, v4

    move v5, v7

    move v0, v6

    goto :goto_1c

    :sswitch_56
    add-int/lit8 v0, v6, -0x1

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    if-eqz v5, :cond_73

    invoke-virtual {p2, v0}, Lorg/objectweb/asm/signature/SignatureVisitor;->visitInnerClassType(Ljava/lang/String;)V

    :goto_61
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    sparse-switch v0, :sswitch_data_d2

    const/16 v0, 0x3d

    invoke-virtual {p2, v0}, Lorg/objectweb/asm/signature/SignatureVisitor;->visitTypeArgument(C)Lorg/objectweb/asm/signature/SignatureVisitor;

    move-result-object v0

    invoke-static {p0, v6, v0}, Lorg/objectweb/asm/signature/SignatureReader;->a(Ljava/lang/String;ILorg/objectweb/asm/signature/SignatureVisitor;)I

    move-result v6

    goto :goto_61

    :cond_73
    invoke-virtual {p2, v0}, Lorg/objectweb/asm/signature/SignatureVisitor;->visitClassType(Ljava/lang/String;)V

    goto :goto_61

    :sswitch_77
    move v1, v2

    move v3, v7

    move v0, v6

    goto :goto_1c

    :sswitch_7b
    add-int/lit8 v6, v6, 0x1

    invoke-virtual {p2}, Lorg/objectweb/asm/signature/SignatureVisitor;->visitTypeArgument()V

    goto :goto_61

    :sswitch_81
    add-int/lit8 v1, v6, 0x1

    invoke-virtual {p2, v0}, Lorg/objectweb/asm/signature/SignatureVisitor;->visitTypeArgument(C)Lorg/objectweb/asm/signature/SignatureVisitor;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lorg/objectweb/asm/signature/SignatureReader;->a(Ljava/lang/String;ILorg/objectweb/asm/signature/SignatureVisitor;)I

    move-result v6

    goto :goto_61

    :pswitch_data_8c
    .packed-switch 0x42
        :pswitch_1e  #00000042
        :pswitch_1e  #00000043
        :pswitch_1e  #00000044
        :pswitch_d  #00000045
        :pswitch_1e  #00000046
        :pswitch_d  #00000047
        :pswitch_d  #00000048
        :pswitch_1e  #00000049
        :pswitch_1e  #0000004a
        :pswitch_d  #0000004b
        :pswitch_d  #0000004c
        :pswitch_d  #0000004d
        :pswitch_d  #0000004e
        :pswitch_d  #0000004f
        :pswitch_d  #00000050
        :pswitch_d  #00000051
        :pswitch_d  #00000052
        :pswitch_1e  #00000053
        :pswitch_2c  #00000054
        :pswitch_d  #00000055
        :pswitch_1e  #00000056
        :pswitch_d  #00000057
        :pswitch_d  #00000058
        :pswitch_d  #00000059
        :pswitch_1e  #0000005a
        :pswitch_23  #0000005b
    .end packed-switch

    :sswitch_data_c4
    .sparse-switch
        0x2e -> :sswitch_3a
        0x3b -> :sswitch_3a
        0x3c -> :sswitch_56
    .end sparse-switch

    :sswitch_data_d2
    .sparse-switch
        0x2a -> :sswitch_7b
        0x2b -> :sswitch_81
        0x2d -> :sswitch_81
        0x3e -> :sswitch_77
    .end sparse-switch
.end method


# virtual methods
.method public accept(Lorg/objectweb/asm/signature/SignatureVisitor;)V
    .registers 8

    const/16 v5, 0x3a

    const/4 v0, 0x0

    iget-object v2, p0, Lorg/objectweb/asm/signature/SignatureReader;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v4, 0x3c

    if-ne v1, v4, :cond_50

    const/4 v0, 0x2

    :cond_12
    invoke-virtual {v2, v5, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/objectweb/asm/signature/SignatureVisitor;->visitFormalTypeParameter(Ljava/lang/String;)V

    add-int/lit8 v0, v1, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v4, 0x4c

    if-eq v1, v4, :cond_31

    const/16 v4, 0x5b

    if-eq v1, v4, :cond_31

    const/16 v4, 0x54

    if-ne v1, v4, :cond_95

    :cond_31
    invoke-virtual {p1}, Lorg/objectweb/asm/signature/SignatureVisitor;->visitClassBound()Lorg/objectweb/asm/signature/SignatureVisitor;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lorg/objectweb/asm/signature/SignatureReader;->a(Ljava/lang/String;ILorg/objectweb/asm/signature/SignatureVisitor;)I

    move-result v0

    move v1, v0

    :goto_3a
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v5, :cond_4c

    invoke-virtual {p1}, Lorg/objectweb/asm/signature/SignatureVisitor;->visitInterfaceBound()Lorg/objectweb/asm/signature/SignatureVisitor;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lorg/objectweb/asm/signature/SignatureReader;->a(Ljava/lang/String;ILorg/objectweb/asm/signature/SignatureVisitor;)I

    move-result v0

    move v1, v0

    goto :goto_3a

    :cond_4c
    const/16 v4, 0x3e

    if-ne v1, v4, :cond_12

    :cond_50
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v4, 0x28

    if-ne v1, v4, :cond_82

    add-int/lit8 v0, v0, 0x1

    :goto_5a
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v4, 0x29

    if-eq v1, v4, :cond_6b

    invoke-virtual {p1}, Lorg/objectweb/asm/signature/SignatureVisitor;->visitParameterType()Lorg/objectweb/asm/signature/SignatureVisitor;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lorg/objectweb/asm/signature/SignatureReader;->a(Ljava/lang/String;ILorg/objectweb/asm/signature/SignatureVisitor;)I

    move-result v0

    goto :goto_5a

    :cond_6b
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1}, Lorg/objectweb/asm/signature/SignatureVisitor;->visitReturnType()Lorg/objectweb/asm/signature/SignatureVisitor;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lorg/objectweb/asm/signature/SignatureReader;->a(Ljava/lang/String;ILorg/objectweb/asm/signature/SignatureVisitor;)I

    move-result v0

    :goto_75
    if-ge v0, v3, :cond_97

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1}, Lorg/objectweb/asm/signature/SignatureVisitor;->visitExceptionType()Lorg/objectweb/asm/signature/SignatureVisitor;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lorg/objectweb/asm/signature/SignatureReader;->a(Ljava/lang/String;ILorg/objectweb/asm/signature/SignatureVisitor;)I

    move-result v0

    goto :goto_75

    :cond_82
    invoke-virtual {p1}, Lorg/objectweb/asm/signature/SignatureVisitor;->visitSuperclass()Lorg/objectweb/asm/signature/SignatureVisitor;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lorg/objectweb/asm/signature/SignatureReader;->a(Ljava/lang/String;ILorg/objectweb/asm/signature/SignatureVisitor;)I

    move-result v0

    :goto_8a
    if-ge v0, v3, :cond_97

    invoke-virtual {p1}, Lorg/objectweb/asm/signature/SignatureVisitor;->visitInterface()Lorg/objectweb/asm/signature/SignatureVisitor;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lorg/objectweb/asm/signature/SignatureReader;->a(Ljava/lang/String;ILorg/objectweb/asm/signature/SignatureVisitor;)I

    move-result v0

    goto :goto_8a

    :cond_95
    move v1, v0

    goto :goto_3a

    :cond_97
    return-void
.end method

.method public acceptType(Lorg/objectweb/asm/signature/SignatureVisitor;)V
    .registers 4

    iget-object v0, p0, Lorg/objectweb/asm/signature/SignatureReader;->a:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lorg/objectweb/asm/signature/SignatureReader;->a(Ljava/lang/String;ILorg/objectweb/asm/signature/SignatureVisitor;)I

    return-void
.end method
