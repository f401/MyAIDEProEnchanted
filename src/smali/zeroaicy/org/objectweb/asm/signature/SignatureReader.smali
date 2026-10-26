.class public Lzeroaicy/org/objectweb/asm/signature/SignatureReader;
.super Ljava/lang/Object;
.source "SignatureReader.java"


# instance fields
.field private final signatureValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lzeroaicy/org/objectweb/asm/signature/SignatureReader;->signatureValue:Ljava/lang/String;

    return-void
.end method

.method private static parseType(Ljava/lang/String;ILzeroaicy/org/objectweb/asm/signature/SignatureVisitor;)I
    .locals 10

    const/4 v4, 0x1

    const/16 v9, 0x3b

    const/4 v3, 0x0

    add-int/lit8 v1, p1, 0x1

    .line 154
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x46

    if-eq v0, v2, :cond_d

    const/16 v2, 0x4c

    if-eq v0, v2, :cond_2

    const/16 v2, 0x56

    if-eq v0, v2, :cond_d

    const/16 v2, 0x49

    if-eq v0, v2, :cond_d

    const/16 v2, 0x4a

    if-eq v0, v2, :cond_d

    const/16 v2, 0x53

    if-eq v0, v2, :cond_d

    const/16 v2, 0x54

    if-eq v0, v2, :cond_1

    const/16 v2, 0x5a

    if-eq v0, v2, :cond_d

    const/16 v2, 0x5b

    if-eq v0, v2, :cond_0

    packed-switch v0, :pswitch_data_0

    .line 249
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "currentChar: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    add-int/lit8 v2, p1, -0x9

    add-int/lit8 v3, p1, 0xb

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 173
    :cond_0
    invoke-virtual {p2}, Lzeroaicy/org/objectweb/asm/signature/SignatureVisitor;->visitArrayType()Lzeroaicy/org/objectweb/asm/signature/SignatureVisitor;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lzeroaicy/org/objectweb/asm/signature/SignatureReader;->parseType(Ljava/lang/String;ILzeroaicy/org/objectweb/asm/signature/SignatureVisitor;)I

    move-result v1

    .line 206
    :goto_0
    return v1

    .line 177
    :cond_1
    invoke-virtual {p0, v9, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 178
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lzeroaicy/org/objectweb/asm/signature/SignatureVisitor;->visitTypeVariable(Ljava/lang/String;)V

    add-int/lit8 v1, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    move v2, v3

    move v5, v3

    move v6, v1

    :goto_1
    add-int/lit8 v1, v6, 0x1

    .line 190
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x2e

    if-eq v7, v8, :cond_3

    if-ne v7, v9, :cond_5

    .line 229
    :cond_3
    if-nez v5, :cond_4

    .line 196
    invoke-virtual {p0, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    if-eqz v2, :cond_b

    .line 198
    invoke-virtual {p2, v0}, Lzeroaicy/org/objectweb/asm/signature/SignatureVisitor;->visitInnerClassType(Ljava/lang/String;)V

    .line 200
    :cond_4
    :goto_2
    if-ne v7, v9, :cond_c

    .line 206
    invoke-virtual {p2}, Lzeroaicy/org/objectweb/asm/signature/SignatureVisitor;->visitEnd()V

    goto :goto_0

    .line 190
    :cond_5
    const/16 v8, 0x3c

    if-ne v7, v8, :cond_a

    .line 216
    invoke-virtual {p0, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    if-eqz v2, :cond_6

    .line 218
    invoke-virtual {p2, v5}, Lzeroaicy/org/objectweb/asm/signature/SignatureVisitor;->visitInnerClassType(Ljava/lang/String;)V

    .line 224
    :goto_3
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x3e

    if-ne v5, v6, :cond_7

    move v5, v4

    move v6, v1

    goto :goto_1

    .line 220
    :cond_6
    invoke-virtual {p2, v5}, Lzeroaicy/org/objectweb/asm/signature/SignatureVisitor;->visitClassType(Ljava/lang/String;)V

    goto :goto_3

    .line 224
    :cond_7
    const/16 v6, 0x2a

    if-eq v5, v6, :cond_9

    const/16 v6, 0x2b

    if-eq v5, v6, :cond_8

    const/16 v6, 0x2d

    if-eq v5, v6, :cond_8

    .line 240
    const/16 v5, 0x3d

    invoke-virtual {p2, v5}, Lzeroaicy/org/objectweb/asm/signature/SignatureVisitor;->visitTypeArgument(C)Lzeroaicy/org/objectweb/asm/signature/SignatureVisitor;

    move-result-object v5

    invoke-static {p0, v1, v5}, Lzeroaicy/org/objectweb/asm/signature/SignatureReader;->parseType(Ljava/lang/String;ILzeroaicy/org/objectweb/asm/signature/SignatureVisitor;)I

    move-result v1

    goto :goto_3

    .line 234
    :cond_8
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p2, v5}, Lzeroaicy/org/objectweb/asm/signature/SignatureVisitor;->visitTypeArgument(C)Lzeroaicy/org/objectweb/asm/signature/SignatureVisitor;

    move-result-object v5

    invoke-static {p0, v1, v5}, Lzeroaicy/org/objectweb/asm/signature/SignatureReader;->parseType(Ljava/lang/String;ILzeroaicy/org/objectweb/asm/signature/SignatureVisitor;)I

    move-result v1

    goto :goto_3

    :cond_9
    add-int/lit8 v1, v1, 0x1

    .line 229
    invoke-virtual {p2}, Lzeroaicy/org/objectweb/asm/signature/SignatureVisitor;->visitTypeArgument()V

    goto :goto_3

    :cond_a
    move v6, v1

    goto :goto_1

    .line 200
    :cond_b
    invoke-virtual {p2, v0}, Lzeroaicy/org/objectweb/asm/signature/SignatureVisitor;->visitClassType(Ljava/lang/String;)V

    goto :goto_2

    :cond_c
    move v0, v1

    move v2, v4

    move v5, v3

    move v6, v1

    .line 206
    goto :goto_1

    .line 168
    :cond_d
    :pswitch_0
    invoke-virtual {p2, v0}, Lzeroaicy/org/objectweb/asm/signature/SignatureVisitor;->visitBaseType(C)V

    goto/16 :goto_0

    .line 154
    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public accept(Lzeroaicy/org/objectweb/asm/signature/SignatureVisitor;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzeroaicy/org/objectweb/asm/signature/SignatureVisitor;",
            ")V"
        }
    .end annotation

    const/16 v5, 0x3a

    const/4 v0, 0x0

    .line 64
    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/signature/SignatureReader;->signatureValue:Ljava/lang/String;

    .line 65
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    .line 72
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v4, 0x3c

    if-ne v1, v4, :cond_2

    const/4 v0, 0x2

    .line 78
    :cond_0
    invoke-virtual {v2, v5, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 79
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lzeroaicy/org/objectweb/asm/signature/SignatureVisitor;->visitFormalTypeParameter(Ljava/lang/String;)V

    add-int/lit8 v0, v1, 0x1

    .line 85
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v4, 0x4c

    if-eq v1, v4, :cond_1

    const/16 v4, 0x5b

    if-eq v1, v4, :cond_1

    const/16 v4, 0x54

    if-ne v1, v4, :cond_8

    .line 87
    :cond_1
    invoke-virtual {p1}, Lzeroaicy/org/objectweb/asm/signature/SignatureVisitor;->visitClassBound()Lzeroaicy/org/objectweb/asm/signature/SignatureVisitor;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lzeroaicy/org/objectweb/asm/signature/SignatureReader;->parseType(Ljava/lang/String;ILzeroaicy/org/objectweb/asm/signature/SignatureVisitor;)I

    move-result v0

    move v1, v0

    :goto_0
    add-int/lit8 v0, v1, 0x1

    .line 92
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v5, :cond_4

    const/16 v4, 0x3e

    if-ne v1, v4, :cond_0

    .line 108
    :cond_2
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v4, 0x28

    if-ne v1, v4, :cond_7

    add-int/lit8 v0, v0, 0x1

    .line 110
    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v4, 0x29

    if-ne v1, v4, :cond_6

    .line 114
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1}, Lzeroaicy/org/objectweb/asm/signature/SignatureVisitor;->visitReturnType()Lzeroaicy/org/objectweb/asm/signature/SignatureVisitor;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lzeroaicy/org/objectweb/asm/signature/SignatureReader;->parseType(Ljava/lang/String;ILzeroaicy/org/objectweb/asm/signature/SignatureVisitor;)I

    move-result v0

    :goto_2
    if-lt v0, v3, :cond_5

    .line 122
    :cond_3
    return-void

    .line 93
    :cond_4
    invoke-virtual {p1}, Lzeroaicy/org/objectweb/asm/signature/SignatureVisitor;->visitInterfaceBound()Lzeroaicy/org/objectweb/asm/signature/SignatureVisitor;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lzeroaicy/org/objectweb/asm/signature/SignatureReader;->parseType(Ljava/lang/String;ILzeroaicy/org/objectweb/asm/signature/SignatureVisitor;)I

    move-result v0

    move v1, v0

    goto :goto_0

    .line 117
    :cond_5
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1}, Lzeroaicy/org/objectweb/asm/signature/SignatureVisitor;->visitExceptionType()Lzeroaicy/org/objectweb/asm/signature/SignatureVisitor;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lzeroaicy/org/objectweb/asm/signature/SignatureReader;->parseType(Ljava/lang/String;ILzeroaicy/org/objectweb/asm/signature/SignatureVisitor;)I

    move-result v0

    goto :goto_2

    .line 111
    :cond_6
    invoke-virtual {p1}, Lzeroaicy/org/objectweb/asm/signature/SignatureVisitor;->visitParameterType()Lzeroaicy/org/objectweb/asm/signature/SignatureVisitor;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lzeroaicy/org/objectweb/asm/signature/SignatureReader;->parseType(Ljava/lang/String;ILzeroaicy/org/objectweb/asm/signature/SignatureVisitor;)I

    move-result v0

    goto :goto_1

    .line 122
    :cond_7
    invoke-virtual {p1}, Lzeroaicy/org/objectweb/asm/signature/SignatureVisitor;->visitSuperclass()Lzeroaicy/org/objectweb/asm/signature/SignatureVisitor;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lzeroaicy/org/objectweb/asm/signature/SignatureReader;->parseType(Ljava/lang/String;ILzeroaicy/org/objectweb/asm/signature/SignatureVisitor;)I

    move-result v0

    :goto_3
    if-ge v0, v3, :cond_3

    .line 124
    invoke-virtual {p1}, Lzeroaicy/org/objectweb/asm/signature/SignatureVisitor;->visitInterface()Lzeroaicy/org/objectweb/asm/signature/SignatureVisitor;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lzeroaicy/org/objectweb/asm/signature/SignatureReader;->parseType(Ljava/lang/String;ILzeroaicy/org/objectweb/asm/signature/SignatureVisitor;)I

    move-result v0

    goto :goto_3

    :cond_8
    move v1, v0

    goto :goto_0
.end method

.method public acceptType(Lzeroaicy/org/objectweb/asm/signature/SignatureVisitor;)V
    .locals 2
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
