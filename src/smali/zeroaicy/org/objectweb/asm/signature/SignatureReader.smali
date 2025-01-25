.class public Lzeroaicy/org/objectweb/asm/signature/SignatureReader;
.super Ljava/lang/Object;
.source "SignatureReader.java"


# instance fields
.field private final signatureValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lzeroaicy/org/objectweb/asm/signature/SignatureReader;->signatureValue:Ljava/lang/String;

    return-void
.end method

.method private static parseType(Ljava/lang/String;ILzeroaicy/org/objectweb/asm/signature/SignatureVisitor;)I
    .registers 12

    add-int/lit8 v0, p1, 0x1

    .line 154
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x46

    if-eq v1, v2, :cond_d4

    const/16 v2, 0x4c

    const/16 v3, 0x3b

    const/4 v4, 0x1

    if-eq v1, v2, :cond_63

    const/16 v2, 0x56

    if-eq v1, v2, :cond_d4

    const/16 v2, 0x49

    if-eq v1, v2, :cond_d4

    const/16 v2, 0x4a

    if-eq v1, v2, :cond_d4

    const/16 v2, 0x53

    if-eq v1, v2, :cond_d4

    const/16 v2, 0x54

    if-eq v1, v2, :cond_56

    const/16 v2, 0x5a

    if-eq v1, v2, :cond_d4

    const/16 v2, 0x5b

    if-eq v1, v2, :cond_4d

    packed-switch v1, :pswitch_data_d8

    .line 249
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "currentChar: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    add-int/lit8 v1, p1, -0x9

    add-int/lit8 p1, p1, 0xb

    invoke-virtual {p0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 173
    :cond_4d
    invoke-virtual {p2}, Lzeroaicy/org/objectweb/asm/signature/SignatureVisitor;->visitArrayType()Lzeroaicy/org/objectweb/asm/signature/SignatureVisitor;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lzeroaicy/org/objectweb/asm/signature/SignatureReader;->parseType(Ljava/lang/String;ILzeroaicy/org/objectweb/asm/signature/SignatureVisitor;)I

    move-result p0

    return p0

    .line 177
    :cond_56
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->indexOf(II)I

    move-result p1

    .line 178
    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lzeroaicy/org/objectweb/asm/signature/SignatureVisitor;->visitTypeVariable(Ljava/lang/String;)V

    add-int/2addr p1, v4

    return p1

    :cond_63
    const/4 p1, 0x0

    move v1, v0

    const/4 v2, 0x0

    const/4 v5, 0x0

    :goto_67
    add-int/lit8 v6, v0, 0x1

    .line 190
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x2e

    if-eq v7, v8, :cond_ba

    if-ne v7, v3, :cond_74

    goto :goto_ba

    :cond_74
    const/16 v8, 0x3c

    if-ne v7, v8, :cond_b8

    .line 216
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    if-eqz v5, :cond_82

    .line 218
    invoke-virtual {p2, v0}, Lzeroaicy/org/objectweb/asm/signature/SignatureVisitor;->visitInnerClassType(Ljava/lang/String;)V

    goto :goto_85

    .line 220
    :cond_82
    invoke-virtual {p2, v0}, Lzeroaicy/org/objectweb/asm/signature/SignatureVisitor;->visitClassType(Ljava/lang/String;)V

    :goto_85
    move v0, v6

    .line 224
    :goto_86
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v6, 0x3e

    if-ne v2, v6, :cond_90

    const/4 v2, 0x1

    goto :goto_67

    :cond_90
    const/16 v6, 0x2a

    if-eq v2, v6, :cond_b2

    const/16 v6, 0x2b

    if-eq v2, v6, :cond_a7

    const/16 v6, 0x2d

    if-eq v2, v6, :cond_a7

    .line 240
    const/16 v2, 0x3d

    invoke-virtual {p2, v2}, Lzeroaicy/org/objectweb/asm/signature/SignatureVisitor;->visitTypeArgument(C)Lzeroaicy/org/objectweb/asm/signature/SignatureVisitor;

    move-result-object v2

    invoke-static {p0, v0, v2}, Lzeroaicy/org/objectweb/asm/signature/SignatureReader;->parseType(Ljava/lang/String;ILzeroaicy/org/objectweb/asm/signature/SignatureVisitor;)I

    move-result v0

    goto :goto_86

    .line 234
    :cond_a7
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v2}, Lzeroaicy/org/objectweb/asm/signature/SignatureVisitor;->visitTypeArgument(C)Lzeroaicy/org/objectweb/asm/signature/SignatureVisitor;

    move-result-object v2

    invoke-static {p0, v0, v2}, Lzeroaicy/org/objectweb/asm/signature/SignatureReader;->parseType(Ljava/lang/String;ILzeroaicy/org/objectweb/asm/signature/SignatureVisitor;)I

    move-result v0

    goto :goto_86

    :cond_b2
    add-int/lit8 v0, v0, 0x1

    .line 229
    invoke-virtual {p2}, Lzeroaicy/org/objectweb/asm/signature/SignatureVisitor;->visitTypeArgument()V

    goto :goto_86

    :cond_b8
    move v0, v6

    goto :goto_67

    :cond_ba
    :goto_ba
    if-nez v2, :cond_c9

    .line 196
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    if-eqz v5, :cond_c6

    .line 198
    invoke-virtual {p2, v0}, Lzeroaicy/org/objectweb/asm/signature/SignatureVisitor;->visitInnerClassType(Ljava/lang/String;)V

    goto :goto_c9

    .line 200
    :cond_c6
    invoke-virtual {p2, v0}, Lzeroaicy/org/objectweb/asm/signature/SignatureVisitor;->visitClassType(Ljava/lang/String;)V

    :cond_c9
    :goto_c9
    if-ne v7, v3, :cond_cf

    .line 206
    invoke-virtual {p2}, Lzeroaicy/org/objectweb/asm/signature/SignatureVisitor;->visitEnd()V

    return v6

    :cond_cf
    move v0, v6

    move v1, v0

    const/4 v2, 0x0

    const/4 v5, 0x1

    goto :goto_67

    .line 168
    :cond_d4
    :pswitch_d4  #0x42, 0x43, 0x44
    invoke-virtual {p2, v1}, Lzeroaicy/org/objectweb/asm/signature/SignatureVisitor;->visitBaseType(C)V

    return v0

    :pswitch_data_d8
    .packed-switch 0x42
        :pswitch_d4  #00000042
        :pswitch_d4  #00000043
        :pswitch_d4  #00000044
    .end packed-switch
.end method


# virtual methods
.method public accept(Lzeroaicy/org/objectweb/asm/signature/SignatureVisitor;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzeroaicy/org/objectweb/asm/signature/SignatureVisitor;",
            ")V"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/signature/SignatureReader;->signatureValue:Ljava/lang/String;

    .line 65
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 72
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x3c

    if-ne v3, v4, :cond_4f

    const/4 v2, 0x2

    .line 78
    :cond_10
    const/16 v3, 0x3a

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 79
    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lzeroaicy/org/objectweb/asm/signature/SignatureVisitor;->visitFormalTypeParameter(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    .line 85
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v5, 0x4c

    if-eq v2, v5, :cond_31

    const/16 v5, 0x5b

    if-eq v2, v5, :cond_31

    const/16 v5, 0x54

    if-ne v2, v5, :cond_39

    .line 87
    :cond_31
    invoke-virtual {p1}, Lzeroaicy/org/objectweb/asm/signature/SignatureVisitor;->visitClassBound()Lzeroaicy/org/objectweb/asm/signature/SignatureVisitor;

    move-result-object v2

    invoke-static {v0, v4, v2}, Lzeroaicy/org/objectweb/asm/signature/SignatureReader;->parseType(Ljava/lang/String;ILzeroaicy/org/objectweb/asm/signature/SignatureVisitor;)I

    move-result v4

    :cond_39
    :goto_39
    add-int/lit8 v2, v4, 0x1

    .line 92
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v3, :cond_46

    const/16 v3, 0x3e

    if-ne v4, v3, :cond_10

    goto :goto_4f

    .line 93
    :cond_46
    invoke-virtual {p1}, Lzeroaicy/org/objectweb/asm/signature/SignatureVisitor;->visitInterfaceBound()Lzeroaicy/org/objectweb/asm/signature/SignatureVisitor;

    move-result-object v4

    invoke-static {v0, v2, v4}, Lzeroaicy/org/objectweb/asm/signature/SignatureReader;->parseType(Ljava/lang/String;ILzeroaicy/org/objectweb/asm/signature/SignatureVisitor;)I

    move-result v4

    goto :goto_39

    .line 108
    :cond_4f
    :goto_4f
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x28

    if-ne v3, v4, :cond_82

    add-int/lit8 v2, v2, 0x1

    .line 110
    :goto_59
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x29

    if-ne v3, v4, :cond_79

    .line 114
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1}, Lzeroaicy/org/objectweb/asm/signature/SignatureVisitor;->visitReturnType()Lzeroaicy/org/objectweb/asm/signature/SignatureVisitor;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lzeroaicy/org/objectweb/asm/signature/SignatureReader;->parseType(Ljava/lang/String;ILzeroaicy/org/objectweb/asm/signature/SignatureVisitor;)I

    move-result v2

    :goto_6b
    if-lt v2, v1, :cond_6e

    goto :goto_8c

    .line 117
    :cond_6e
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1}, Lzeroaicy/org/objectweb/asm/signature/SignatureVisitor;->visitExceptionType()Lzeroaicy/org/objectweb/asm/signature/SignatureVisitor;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lzeroaicy/org/objectweb/asm/signature/SignatureReader;->parseType(Ljava/lang/String;ILzeroaicy/org/objectweb/asm/signature/SignatureVisitor;)I

    move-result v2

    goto :goto_6b

    .line 111
    :cond_79
    invoke-virtual {p1}, Lzeroaicy/org/objectweb/asm/signature/SignatureVisitor;->visitParameterType()Lzeroaicy/org/objectweb/asm/signature/SignatureVisitor;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lzeroaicy/org/objectweb/asm/signature/SignatureReader;->parseType(Ljava/lang/String;ILzeroaicy/org/objectweb/asm/signature/SignatureVisitor;)I

    move-result v2

    goto :goto_59

    .line 122
    :cond_82
    invoke-virtual {p1}, Lzeroaicy/org/objectweb/asm/signature/SignatureVisitor;->visitSuperclass()Lzeroaicy/org/objectweb/asm/signature/SignatureVisitor;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lzeroaicy/org/objectweb/asm/signature/SignatureReader;->parseType(Ljava/lang/String;ILzeroaicy/org/objectweb/asm/signature/SignatureVisitor;)I

    move-result v2

    :goto_8a
    if-lt v2, v1, :cond_8d

    :goto_8c
    return-void

    .line 124
    :cond_8d
    invoke-virtual {p1}, Lzeroaicy/org/objectweb/asm/signature/SignatureVisitor;->visitInterface()Lzeroaicy/org/objectweb/asm/signature/SignatureVisitor;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lzeroaicy/org/objectweb/asm/signature/SignatureReader;->parseType(Ljava/lang/String;ILzeroaicy/org/objectweb/asm/signature/SignatureVisitor;)I

    move-result v2

    goto :goto_8a
.end method

.method public acceptType(Lzeroaicy/org/objectweb/asm/signature/SignatureVisitor;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzeroaicy/org/objectweb/asm/signature/SignatureVisitor;",
            ")V"
        }
    .end annotation

    .line 140
    iget-object v0, p0, Lzeroaicy/org/objectweb/asm/signature/SignatureReader;->signatureValue:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lzeroaicy/org/objectweb/asm/signature/SignatureReader;->parseType(Ljava/lang/String;ILzeroaicy/org/objectweb/asm/signature/SignatureVisitor;)I

    return-void
.end method
