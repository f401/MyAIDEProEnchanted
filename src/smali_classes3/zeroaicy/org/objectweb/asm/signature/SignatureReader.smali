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

    const/4 v3, 0x1

    const/16 v8, 0x3b

    const/4 v2, 0x0

    .line 154
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 157
    packed-switch v1, :pswitch_data_0

    .line 249
    :pswitch_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "currentChar: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    add-int/lit8 v3, v0, -0xa

    add-int/lit8 v0, v0, 0xa

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 168
    :pswitch_1
    invoke-virtual {p2, v1}, Lzeroaicy/org/objectweb/asm/signature/SignatureVisitor;->visitBaseType(C)V

    .line 246
    :goto_0
    return v0

    .line 173
    :pswitch_2
    invoke-virtual {p2}, Lzeroaicy/org/objectweb/asm/signature/SignatureVisitor;->visitArrayType()Lzeroaicy/org/objectweb/asm/signature/SignatureVisitor;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lzeroaicy/org/objectweb/asm/signature/SignatureReader;->parseType(Ljava/lang/String;ILzeroaicy/org/objectweb/asm/signature/SignatureVisitor;)I

    move-result v0

    goto :goto_0

    .line 177
    :pswitch_3
    invoke-virtual {p0, v8, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 178
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lzeroaicy/org/objectweb/asm/signature/SignatureVisitor;->visitTypeVariable(Ljava/lang/String;)V

    .line 179
    add-int/lit8 v0, v1, 0x1

    goto :goto_0

    :pswitch_4
    move v1, v2

    move v4, v0

    move v5, v2

    move v6, v0

    .line 190
    :goto_1
    add-int/lit8 v0, v6, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 191
    const/16 v7, 0x2e

    if-eq v6, v7, :cond_0

    if-ne v6, v8, :cond_4

    .line 195
    :cond_0
    if-nez v5, :cond_1

    .line 196
    add-int/lit8 v5, v0, -0x1

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 197
    if-eqz v1, :cond_2

    .line 198
    invoke-virtual {p2, v4}, Lzeroaicy/org/objectweb/asm/signature/SignatureVisitor;->visitInnerClassType(Ljava/lang/String;)V

    .line 205
    :cond_1
    :goto_2
    if-ne v6, v8, :cond_3

    .line 206
    invoke-virtual {p2}, Lzeroaicy/org/objectweb/asm/signature/SignatureVisitor;->visitEnd()V

    goto :goto_0

    .line 200
    :cond_2
    invoke-virtual {p2, v4}, Lzeroaicy/org/objectweb/asm/signature/SignatureVisitor;->visitClassType(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    move v1, v3

    move v4, v0

    move v5, v2

    move v6, v0

    .line 211
    goto :goto_1

    .line 212
    :cond_4
    const/16 v7, 0x3c

    if-ne v6, v7, :cond_7

    .line 216
    add-int/lit8 v5, v0, -0x1

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 217
    if-eqz v1, :cond_5

    .line 218
    invoke-virtual {p2, v5}, Lzeroaicy/org/objectweb/asm/signature/SignatureVisitor;->visitInnerClassType(Ljava/lang/String;)V

    .line 224
    :goto_3
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x3e

    if-ne v5, v6, :cond_6

    move v5, v3

    move v6, v0

    goto :goto_1

    .line 220
    :cond_5
    invoke-virtual {p2, v5}, Lzeroaicy/org/objectweb/asm/signature/SignatureVisitor;->visitClassType(Ljava/lang/String;)V

    goto :goto_3

    .line 225
    :cond_6
    packed-switch v5, :pswitch_data_1

    .line 240
    :pswitch_5
    const/16 v5, 0x3d

    invoke-virtual {p2, v5}, Lzeroaicy/org/objectweb/asm/signature/SignatureVisitor;->visitTypeArgument(C)Lzeroaicy/org/objectweb/asm/signature/SignatureVisitor;

    move-result-object v5

    invoke-static {p0, v0, v5}, Lzeroaicy/org/objectweb/asm/signature/SignatureReader;->parseType(Ljava/lang/String;ILzeroaicy/org/objectweb/asm/signature/SignatureVisitor;)I

    move-result v0

    goto :goto_3

    .line 228
    :pswitch_6
    add-int/lit8 v0, v0, 0x1

    .line 229
    invoke-virtual {p2}, Lzeroaicy/org/objectweb/asm/signature/SignatureVisitor;->visitTypeArgument()V

    goto :goto_3

    .line 234
    :pswitch_7
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v5}, Lzeroaicy/org/objectweb/asm/signature/SignatureVisitor;->visitTypeArgument(C)Lzeroaicy/org/objectweb/asm/signature/SignatureVisitor;

    move-result-object v5

    invoke-static {p0, v0, v5}, Lzeroaicy/org/objectweb/asm/signature/SignatureReader;->parseType(Ljava/lang/String;ILzeroaicy/org/objectweb/asm/signature/SignatureVisitor;)I

    move-result v0

    goto :goto_3

    :cond_7
    move v6, v0

    goto :goto_1

    .line 157
    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 225
    :pswitch_data_1
    .packed-switch 0x2a
        :pswitch_6
        :pswitch_7
        :pswitch_5
        :pswitch_7
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

    const/16 v5, 0x3a

    const/4 v0, 0x0

    .line 64
    iget-object v2, p0, Lzeroaicy/org/objectweb/asm/signature/SignatureReader;->signatureValue:Ljava/lang/String;

    .line 65
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    .line 66
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v4, 0x3c

    if-ne v1, v4, :cond_2

    .line 75
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

    .line 84
    add-int/lit8 v0, v1, 0x1

    .line 85
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 86
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

    .line 92
    :goto_0
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v5, :cond_4

    .line 76
    const/16 v4, 0x3e

    if-ne v1, v4, :cond_0

    .line 108
    :cond_2
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v4, 0x28

    if-ne v1, v4, :cond_7

    .line 109
    add-int/lit8 v0, v0, 0x1

    .line 110
    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v4, 0x29

    if-ne v1, v4, :cond_5

    .line 114
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1}, Lzeroaicy/org/objectweb/asm/signature/SignatureVisitor;->visitReturnType()Lzeroaicy/org/objectweb/asm/signature/SignatureVisitor;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lzeroaicy/org/objectweb/asm/signature/SignatureReader;->parseType(Ljava/lang/String;ILzeroaicy/org/objectweb/asm/signature/SignatureVisitor;)I

    move-result v0

    .line 115
    :goto_2
    if-lt v0, v3, :cond_6

    .line 123
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

    .line 111
    :cond_5
    invoke-virtual {p1}, Lzeroaicy/org/objectweb/asm/signature/SignatureVisitor;->visitParameterType()Lzeroaicy/org/objectweb/asm/signature/SignatureVisitor;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lzeroaicy/org/objectweb/asm/signature/SignatureReader;->parseType(Ljava/lang/String;ILzeroaicy/org/objectweb/asm/signature/SignatureVisitor;)I

    move-result v0

    goto :goto_1

    .line 117
    :cond_6
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1}, Lzeroaicy/org/objectweb/asm/signature/SignatureVisitor;->visitExceptionType()Lzeroaicy/org/objectweb/asm/signature/SignatureVisitor;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lzeroaicy/org/objectweb/asm/signature/SignatureReader;->parseType(Ljava/lang/String;ILzeroaicy/org/objectweb/asm/signature/SignatureVisitor;)I

    move-result v0

    goto :goto_2

    .line 122
    :cond_7
    invoke-virtual {p1}, Lzeroaicy/org/objectweb/asm/signature/SignatureVisitor;->visitSuperclass()Lzeroaicy/org/objectweb/asm/signature/SignatureVisitor;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lzeroaicy/org/objectweb/asm/signature/SignatureReader;->parseType(Ljava/lang/String;ILzeroaicy/org/objectweb/asm/signature/SignatureVisitor;)I

    move-result v0

    .line 123
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
