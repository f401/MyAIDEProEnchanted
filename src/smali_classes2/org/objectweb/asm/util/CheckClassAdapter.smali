.class public Lorg/objectweb/asm/util/CheckClassAdapter;
.super Lorg/objectweb/asm/ClassVisitor;


# static fields
.field static class$org$objectweb$asm$util$CheckClassAdapter:Ljava/lang/Class;


# instance fields
.field private checkDataFlow:Z

.field private end:Z

.field private labels:Ljava/util/Map;

.field private outer:Z

.field private source:Z

.field private start:Z

.field private version:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "org.objectweb.asm.util.CheckClassAdapter"

    invoke-static {v0}, Lorg/objectweb/asm/util/CheckClassAdapter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/objectweb/asm/util/CheckClassAdapter;->class$org$objectweb$asm$util$CheckClassAdapter:Ljava/lang/Class;

    return-void
.end method

.method protected constructor <init>(ILorg/objectweb/asm/ClassVisitor;Z)V
    .registers 5

    invoke-direct {p0, p1, p2}, Lorg/objectweb/asm/ClassVisitor;-><init>(ILorg/objectweb/asm/ClassVisitor;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/objectweb/asm/util/CheckClassAdapter;->labels:Ljava/util/Map;

    iput-boolean p3, p0, Lorg/objectweb/asm/util/CheckClassAdapter;->checkDataFlow:Z

    return-void
.end method

.method public constructor <init>(Lorg/objectweb/asm/ClassVisitor;)V
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/objectweb/asm/util/CheckClassAdapter;-><init>(Lorg/objectweb/asm/ClassVisitor;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/objectweb/asm/ClassVisitor;Z)V
    .registers 5

    const/high16 v0, 0x50000

    invoke-direct {p0, v0, p1, p2}, Lorg/objectweb/asm/util/CheckClassAdapter;-><init>(ILorg/objectweb/asm/ClassVisitor;Z)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Lorg/objectweb/asm/util/CheckClassAdapter;->class$org$objectweb$asm$util$CheckClassAdapter:Ljava/lang/Class;

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    return-void
.end method

.method static checkAccess(II)V
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    xor-int/lit8 v2, p1, -0x1

    and-int/2addr v2, p0

    if-eqz v2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Invalid access flags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    and-int/lit8 v2, p0, 0x1

    if-nez v2, :cond_1

    move v4, v0

    :goto_0
    and-int/lit8 v2, p0, 0x2

    if-nez v2, :cond_2

    move v3, v0

    :goto_1
    and-int/lit8 v2, p0, 0x4

    if-nez v2, :cond_3

    move v2, v0

    :goto_2
    add-int/2addr v3, v4

    add-int/2addr v2, v3

    if-le v2, v1, :cond_4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "public private and protected are mutually exclusive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move v4, v1

    goto :goto_0

    :cond_2
    move v3, v1

    goto :goto_1

    :cond_3
    move v2, v1

    goto :goto_2

    :cond_4
    and-int/lit8 v2, p0, 0x10

    if-nez v2, :cond_5

    move v2, v0

    :goto_3
    and-int/lit16 v3, p0, 0x400

    if-nez v3, :cond_6

    :goto_4
    add-int/2addr v0, v2

    if-le v0, v1, :cond_7

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "final and abstract are mutually exclusive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    move v2, v1

    goto :goto_3

    :cond_6
    move v0, v1

    goto :goto_4

    :cond_7
    return-void
.end method

.method private static checkChar(CLjava/lang/String;I)I
    .registers 6

    invoke-static {p1, p2}, Lorg/objectweb/asm/util/CheckClassAdapter;->getChar(Ljava/lang/String;I)C

    move-result v0

    if-ne v0, p0, :cond_0

    add-int/lit8 v0, p2, 0x1

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ": \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\' expected at index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkClassSignature(Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/objectweb/asm/util/CheckClassAdapter;->getChar(Ljava/lang/String;I)C

    move-result v1

    const/16 v2, 0x3c

    if-ne v1, v2, :cond_0

    invoke-static {p0, v0}, Lorg/objectweb/asm/util/CheckClassAdapter;->checkFormalTypeParameters(Ljava/lang/String;I)I

    move-result v0

    :cond_0
    invoke-static {p0, v0}, Lorg/objectweb/asm/util/CheckClassAdapter;->checkClassTypeSignature(Ljava/lang/String;I)I

    move-result v0

    :goto_0
    invoke-static {p0, v0}, Lorg/objectweb/asm/util/CheckClassAdapter;->getChar(Ljava/lang/String;I)C

    move-result v1

    const/16 v2, 0x4c

    if-ne v1, v2, :cond_1

    invoke-static {p0, v0}, Lorg/objectweb/asm/util/CheckClassAdapter;->checkClassTypeSignature(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v0, v1, :cond_2

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ": error at index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    return-void
.end method

.method private static checkClassTypeSignature(Ljava/lang/String;I)I
    .registers 6

    const/16 v3, 0x3c

    const/16 v0, 0x4c

    invoke-static {v0, p0, p1}, Lorg/objectweb/asm/util/CheckClassAdapter;->checkChar(CLjava/lang/String;I)I

    move-result v0

    invoke-static {p0, v0}, Lorg/objectweb/asm/util/CheckClassAdapter;->checkIdentifier(Ljava/lang/String;I)I

    move-result v0

    :goto_0
    invoke-static {p0, v0}, Lorg/objectweb/asm/util/CheckClassAdapter;->getChar(Ljava/lang/String;I)C

    move-result v1

    const/16 v2, 0x2f

    if-ne v1, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    invoke-static {p0, v0}, Lorg/objectweb/asm/util/CheckClassAdapter;->checkIdentifier(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-static {p0, v0}, Lorg/objectweb/asm/util/CheckClassAdapter;->getChar(Ljava/lang/String;I)C

    move-result v1

    if-ne v1, v3, :cond_1

    invoke-static {p0, v0}, Lorg/objectweb/asm/util/CheckClassAdapter;->checkTypeArguments(Ljava/lang/String;I)I

    move-result v0

    :cond_1
    :goto_1
    invoke-static {p0, v0}, Lorg/objectweb/asm/util/CheckClassAdapter;->getChar(Ljava/lang/String;I)C

    move-result v1

    const/16 v2, 0x2e

    if-ne v1, v2, :cond_2

    add-int/lit8 v0, v0, 0x1

    invoke-static {p0, v0}, Lorg/objectweb/asm/util/CheckClassAdapter;->checkIdentifier(Ljava/lang/String;I)I

    move-result v0

    invoke-static {p0, v0}, Lorg/objectweb/asm/util/CheckClassAdapter;->getChar(Ljava/lang/String;I)C

    move-result v1

    if-ne v1, v3, :cond_1

    invoke-static {p0, v0}, Lorg/objectweb/asm/util/CheckClassAdapter;->checkTypeArguments(Ljava/lang/String;I)I

    move-result v0

    goto :goto_1

    :cond_2
    const/16 v1, 0x3b

    invoke-static {v1, p0, v0}, Lorg/objectweb/asm/util/CheckClassAdapter;->checkChar(CLjava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static checkFieldSignature(Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/objectweb/asm/util/CheckClassAdapter;->checkFieldTypeSignature(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v0, v1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ": error at index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    return-void
.end method

.method private static checkFieldTypeSignature(Ljava/lang/String;I)I
    .registers 3

    invoke-static {p0, p1}, Lorg/objectweb/asm/util/CheckClassAdapter;->getChar(Ljava/lang/String;I)C

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-static {p0, p1}, Lorg/objectweb/asm/util/CheckClassAdapter;->checkTypeVariableSignature(Ljava/lang/String;I)I

    move-result v0

    :goto_0
    return v0

    :sswitch_0
    invoke-static {p0, p1}, Lorg/objectweb/asm/util/CheckClassAdapter;->checkClassTypeSignature(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    :sswitch_1
    add-int/lit8 v0, p1, 0x1

    invoke-static {p0, v0}, Lorg/objectweb/asm/util/CheckClassAdapter;->checkTypeSignature(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x4c -> :sswitch_0
        0x5b -> :sswitch_1
    .end sparse-switch
.end method

.method private static checkFormalTypeParameter(Ljava/lang/String;I)I
    .registers 6

    const/16 v3, 0x3a

    invoke-static {p0, p1}, Lorg/objectweb/asm/util/CheckClassAdapter;->checkIdentifier(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v3, p0, v0}, Lorg/objectweb/asm/util/CheckClassAdapter;->checkChar(CLjava/lang/String;I)I

    move-result v0

    const-string v1, "L[T"

    invoke-static {p0, v0}, Lorg/objectweb/asm/util/CheckClassAdapter;->getChar(Ljava/lang/String;I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    invoke-static {p0, v0}, Lorg/objectweb/asm/util/CheckClassAdapter;->checkFieldTypeSignature(Ljava/lang/String;I)I

    move-result v0

    :cond_0
    :goto_0
    invoke-static {p0, v0}, Lorg/objectweb/asm/util/CheckClassAdapter;->getChar(Ljava/lang/String;I)C

    move-result v1

    if-ne v1, v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    invoke-static {p0, v0}, Lorg/objectweb/asm/util/CheckClassAdapter;->checkFieldTypeSignature(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    :cond_1
    return v0
.end method

.method private static checkFormalTypeParameters(Ljava/lang/String;I)I
    .registers 5

    const/16 v0, 0x3c

    invoke-static {v0, p0, p1}, Lorg/objectweb/asm/util/CheckClassAdapter;->checkChar(CLjava/lang/String;I)I

    move-result v0

    invoke-static {p0, v0}, Lorg/objectweb/asm/util/CheckClassAdapter;->checkFormalTypeParameter(Ljava/lang/String;I)I

    move-result v0

    :goto_0
    invoke-static {p0, v0}, Lorg/objectweb/asm/util/CheckClassAdapter;->getChar(Ljava/lang/String;I)C

    move-result v1

    const/16 v2, 0x3e

    if-eq v1, v2, :cond_0

    invoke-static {p0, v0}, Lorg/objectweb/asm/util/CheckClassAdapter;->checkFormalTypeParameter(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private static checkIdentifier(Ljava/lang/String;I)I
    .registers 5

    invoke-static {p0, p1}, Lorg/objectweb/asm/util/CheckClassAdapter;->getChar(Ljava/lang/String;I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isJavaIdentifierStart(C)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ": identifier expected at index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    add-int/lit8 v0, p1, 0x1

    :goto_0
    invoke-static {p0, v0}, Lorg/objectweb/asm/util/CheckClassAdapter;->getChar(Ljava/lang/String;I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static checkMethodSignature(Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/objectweb/asm/util/CheckClassAdapter;->getChar(Ljava/lang/String;I)C

    move-result v1

    const/16 v2, 0x3c

    if-ne v1, v2, :cond_0

    invoke-static {p0, v0}, Lorg/objectweb/asm/util/CheckClassAdapter;->checkFormalTypeParameters(Ljava/lang/String;I)I

    move-result v0

    :cond_0
    const/16 v1, 0x28

    invoke-static {v1, p0, v0}, Lorg/objectweb/asm/util/CheckClassAdapter;->checkChar(CLjava/lang/String;I)I

    move-result v0

    :goto_0
    const-string v1, "ZCBSIFJDL[T"

    invoke-static {p0, v0}, Lorg/objectweb/asm/util/CheckClassAdapter;->getChar(Ljava/lang/String;I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    invoke-static {p0, v0}, Lorg/objectweb/asm/util/CheckClassAdapter;->checkTypeSignature(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    :cond_1
    const/16 v1, 0x29

    invoke-static {v1, p0, v0}, Lorg/objectweb/asm/util/CheckClassAdapter;->checkChar(CLjava/lang/String;I)I

    move-result v0

    invoke-static {p0, v0}, Lorg/objectweb/asm/util/CheckClassAdapter;->getChar(Ljava/lang/String;I)C

    move-result v1

    const/16 v2, 0x56

    if-ne v1, v2, :cond_2

    add-int/lit8 v0, v0, 0x1

    :goto_1
    invoke-static {p0, v0}, Lorg/objectweb/asm/util/CheckClassAdapter;->getChar(Ljava/lang/String;I)C

    move-result v1

    const/16 v2, 0x5e

    if-ne v1, v2, :cond_4

    add-int/lit8 v0, v0, 0x1

    invoke-static {p0, v0}, Lorg/objectweb/asm/util/CheckClassAdapter;->getChar(Ljava/lang/String;I)C

    move-result v1

    const/16 v2, 0x4c

    if-ne v1, v2, :cond_3

    invoke-static {p0, v0}, Lorg/objectweb/asm/util/CheckClassAdapter;->checkClassTypeSignature(Ljava/lang/String;I)I

    move-result v0

    goto :goto_1

    :cond_2
    invoke-static {p0, v0}, Lorg/objectweb/asm/util/CheckClassAdapter;->checkTypeSignature(Ljava/lang/String;I)I

    move-result v0

    goto :goto_1

    :cond_3
    invoke-static {p0, v0}, Lorg/objectweb/asm/util/CheckClassAdapter;->checkTypeVariableSignature(Ljava/lang/String;I)I

    move-result v0

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v0, v1, :cond_5

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ": error at index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    return-void
.end method

.method private checkState()V
    .registers 3

    iget-boolean v0, p0, Lorg/objectweb/asm/util/CheckClassAdapter;->start:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot visit member before visit has been called."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-boolean v0, p0, Lorg/objectweb/asm/util/CheckClassAdapter;->end:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot visit member after visitEnd has been called."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method private static checkTypeArgument(Ljava/lang/String;I)I
    .registers 4

    invoke-static {p0, p1}, Lorg/objectweb/asm/util/CheckClassAdapter;->getChar(Ljava/lang/String;I)C

    move-result v0

    const/16 v1, 0x2a

    if-ne v0, v1, :cond_0

    add-int/lit8 v0, p1, 0x1

    :goto_0
    return v0

    :cond_0
    const/16 v1, 0x2b

    if-eq v0, v1, :cond_1

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_2

    :cond_1
    add-int/lit8 p1, p1, 0x1

    :cond_2
    invoke-static {p0, p1}, Lorg/objectweb/asm/util/CheckClassAdapter;->checkFieldTypeSignature(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method private static checkTypeArguments(Ljava/lang/String;I)I
    .registers 5

    const/16 v0, 0x3c

    invoke-static {v0, p0, p1}, Lorg/objectweb/asm/util/CheckClassAdapter;->checkChar(CLjava/lang/String;I)I

    move-result v0

    invoke-static {p0, v0}, Lorg/objectweb/asm/util/CheckClassAdapter;->checkTypeArgument(Ljava/lang/String;I)I

    move-result v0

    :goto_0
    invoke-static {p0, v0}, Lorg/objectweb/asm/util/CheckClassAdapter;->getChar(Ljava/lang/String;I)C

    move-result v1

    const/16 v2, 0x3e

    if-eq v1, v2, :cond_0

    invoke-static {p0, v0}, Lorg/objectweb/asm/util/CheckClassAdapter;->checkTypeArgument(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static checkTypeRefAndPath(ILorg/objectweb/asm/TypePath;)V
    .registers 6

    const/4 v3, 0x3

    ushr-int/lit8 v0, p0, 0x18

    sparse-switch v0, :sswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Invalid type reference sort 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    ushr-int/lit8 v2, p0, 0x18

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    const/high16 v0, -0x10000

    :goto_0
    xor-int/lit8 v0, v0, -0x1

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Invalid type reference 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_1
    const/high16 v0, -0x1000000

    goto :goto_0

    :sswitch_2
    const/16 v0, -0x100

    goto :goto_0

    :sswitch_3
    const v0, -0xffff01

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_3

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1}, Lorg/objectweb/asm/TypePath;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-virtual {p1, v0}, Lorg/objectweb/asm/TypePath;->getStep(I)I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    if-eq v1, v3, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Invalid type path step "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, " in "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    if-eq v1, v3, :cond_2

    invoke-virtual {p1, v0}, Lorg/objectweb/asm/TypePath;->getStepArgument(I)I

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Invalid type path step argument for step "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, " in "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0x10 -> :sswitch_2
        0x11 -> :sswitch_2
        0x12 -> :sswitch_2
        0x13 -> :sswitch_1
        0x14 -> :sswitch_1
        0x15 -> :sswitch_1
        0x16 -> :sswitch_0
        0x17 -> :sswitch_2
        0x40 -> :sswitch_1
        0x41 -> :sswitch_1
        0x42 -> :sswitch_2
        0x43 -> :sswitch_1
        0x44 -> :sswitch_1
        0x45 -> :sswitch_1
        0x46 -> :sswitch_1
        0x47 -> :sswitch_3
        0x48 -> :sswitch_3
        0x49 -> :sswitch_3
        0x4a -> :sswitch_3
        0x4b -> :sswitch_3
    .end sparse-switch
.end method

.method private static checkTypeSignature(Ljava/lang/String;I)I
    .registers 3

    invoke-static {p0, p1}, Lorg/objectweb/asm/util/CheckClassAdapter;->getChar(Ljava/lang/String;I)C

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-static {p0, p1}, Lorg/objectweb/asm/util/CheckClassAdapter;->checkFieldTypeSignature(Ljava/lang/String;I)I

    move-result v0

    :goto_0
    return v0

    :sswitch_0
    add-int/lit8 v0, p1, 0x1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_0
        0x43 -> :sswitch_0
        0x44 -> :sswitch_0
        0x46 -> :sswitch_0
        0x49 -> :sswitch_0
        0x4a -> :sswitch_0
        0x53 -> :sswitch_0
        0x5a -> :sswitch_0
    .end sparse-switch
.end method

.method private static checkTypeVariableSignature(Ljava/lang/String;I)I
    .registers 4

    const/16 v0, 0x3b

    const/16 v1, 0x54

    invoke-static {v1, p0, p1}, Lorg/objectweb/asm/util/CheckClassAdapter;->checkChar(CLjava/lang/String;I)I

    move-result v1

    invoke-static {p0, v1}, Lorg/objectweb/asm/util/CheckClassAdapter;->checkIdentifier(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, p0, v1}, Lorg/objectweb/asm/util/CheckClassAdapter;->checkChar(CLjava/lang/String;I)I

    move-result v0

    return v0
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

.method private static getChar(Ljava/lang/String;I)C
    .registers 3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getShortName(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x3b

    if-ne v2, v3, :cond_0

    add-int/lit8 v0, v0, -0x1

    :cond_0
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    :goto_0
    return-object p0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static main([Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v3, 0x0

    array-length v0, p0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Verifies the given class."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Usage: CheckClassAdapter <fully qualified class name or class file name>"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    aget-object v0, p0, v3

    const-string v1, ".class"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lorg/objectweb/asm/ClassReader;

    new-instance v1, Ljava/io/FileInputStream;

    aget-object v2, p0, v3

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/objectweb/asm/ClassReader;-><init>(Ljava/io/InputStream;)V

    :goto_1
    new-instance v1, Ljava/io/PrintWriter;

    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-direct {v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-static {v0, v3, v1}, Lorg/objectweb/asm/util/CheckClassAdapter;->verify(Lorg/objectweb/asm/ClassReader;ZLjava/io/PrintWriter;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/objectweb/asm/ClassReader;

    aget-object v1, p0, v3

    invoke-direct {v0, v1}, Lorg/objectweb/asm/ClassReader;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method

.method static printAnalyzerResult(Lorg/objectweb/asm/tree/MethodNode;Lorg/objectweb/asm/tree/analysis/Analyzer;Ljava/io/PrintWriter;)V
    .registers 13

    const/16 v9, 0x20

    const/4 v2, 0x0

    invoke-virtual {p1}, Lorg/objectweb/asm/tree/analysis/Analyzer;->getFrames()[Lorg/objectweb/asm/tree/analysis/Frame;

    move-result-object v4

    new-instance v5, Lorg/objectweb/asm/util/Textifier;

    invoke-direct {v5}, Lorg/objectweb/asm/util/Textifier;-><init>()V

    new-instance v6, Lorg/objectweb/asm/util/TraceMethodVisitor;

    invoke-direct {v6, v5}, Lorg/objectweb/asm/util/TraceMethodVisitor;-><init>(Lorg/objectweb/asm/util/Printer;)V

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lorg/objectweb/asm/tree/MethodNode;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/objectweb/asm/tree/MethodNode;->desc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v3, v2

    :goto_0
    iget-object v0, p0, Lorg/objectweb/asm/tree/MethodNode;->instructions:Lorg/objectweb/asm/tree/InsnList;

    invoke-virtual {v0}, Lorg/objectweb/asm/tree/InsnList;->size()I

    move-result v0

    if-ge v3, v0, :cond_4

    iget-object v0, p0, Lorg/objectweb/asm/tree/MethodNode;->instructions:Lorg/objectweb/asm/tree/InsnList;

    invoke-virtual {v0, v3}, Lorg/objectweb/asm/tree/InsnList;->get(I)Lorg/objectweb/asm/tree/AbstractInsnNode;

    move-result-object v0

    invoke-virtual {v0, v6}, Lorg/objectweb/asm/tree/AbstractInsnNode;->accept(Lorg/objectweb/asm/MethodVisitor;)V

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    aget-object v8, v4, v3

    if-nez v8, :cond_1

    const/16 v0, 0x3f

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_0
    :goto_1
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    iget v1, p0, Lorg/objectweb/asm/tree/MethodNode;->maxStack:I

    iget v8, p0, Lorg/objectweb/asm/tree/MethodNode;->maxLocals:I

    add-int/2addr v1, v8

    add-int/lit8 v1, v1, 0x1

    if-ge v0, v1, :cond_3

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_2
    invoke-virtual {v8}, Lorg/objectweb/asm/tree/analysis/Frame;->getLocals()I

    move-result v0

    if-ge v1, v0, :cond_2

    invoke-virtual {v8, v1}, Lorg/objectweb/asm/tree/analysis/Frame;->getLocal(I)Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v0

    check-cast v0, Lorg/objectweb/asm/tree/analysis/BasicValue;

    invoke-virtual {v0}, Lorg/objectweb/asm/tree/analysis/BasicValue;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/objectweb/asm/util/CheckClassAdapter;->getShortName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_2
    const-string v0, " : "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v1, v2

    :goto_3
    invoke-virtual {v8}, Lorg/objectweb/asm/tree/analysis/Frame;->getStackSize()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-virtual {v8, v1}, Lorg/objectweb/asm/tree/analysis/Frame;->getStack(I)Lorg/objectweb/asm/tree/analysis/Value;

    move-result-object v0

    check-cast v0, Lorg/objectweb/asm/tree/analysis/BasicValue;

    invoke-virtual {v0}, Lorg/objectweb/asm/tree/analysis/BasicValue;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/objectweb/asm/util/CheckClassAdapter;->getShortName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_3
    const v0, 0x186a0

    add-int/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, v5, Lorg/objectweb/asm/util/Textifier;->text:Ljava/util/List;

    iget-object v7, v5, Lorg/objectweb/asm/util/Textifier;->text:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_0

    :cond_4
    :goto_4
    iget-object v0, p0, Lorg/objectweb/asm/tree/MethodNode;->tryCatchBlocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_5

    iget-object v0, p0, Lorg/objectweb/asm/tree/MethodNode;->tryCatchBlocks:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/objectweb/asm/tree/TryCatchBlockNode;

    invoke-virtual {v0, v6}, Lorg/objectweb/asm/tree/TryCatchBlockNode;->accept(Lorg/objectweb/asm/MethodVisitor;)V

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, v5, Lorg/objectweb/asm/util/Textifier;->text:Ljava/util/List;

    iget-object v3, v5, Lorg/objectweb/asm/util/Textifier;->text:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_5
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public static verify(Lorg/objectweb/asm/ClassReader;Ljava/lang/ClassLoader;ZLjava/io/PrintWriter;)V
    .registers 14

    const/4 v3, 0x0

    new-instance v5, Lorg/objectweb/asm/tree/ClassNode;

    invoke-direct {v5}, Lorg/objectweb/asm/tree/ClassNode;-><init>()V

    new-instance v0, Lorg/objectweb/asm/util/CheckClassAdapter;

    invoke-direct {v0, v5, v3}, Lorg/objectweb/asm/util/CheckClassAdapter;-><init>(Lorg/objectweb/asm/ClassVisitor;Z)V

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lorg/objectweb/asm/ClassReader;->accept(Lorg/objectweb/asm/ClassVisitor;I)V

    iget-object v0, v5, Lorg/objectweb/asm/tree/ClassNode;->superName:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    move-object v1, v0

    :goto_0
    iget-object v6, v5, Lorg/objectweb/asm/tree/ClassNode;->methods:Ljava/util/List;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, v5, Lorg/objectweb/asm/tree/ClassNode;->interfaces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lorg/objectweb/asm/Type;->getObjectType(Ljava/lang/String;)Lorg/objectweb/asm/Type;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    iget-object v0, v5, Lorg/objectweb/asm/tree/ClassNode;->superName:Ljava/lang/String;

    invoke-static {v0}, Lorg/objectweb/asm/Type;->getObjectType(Ljava/lang/String;)Lorg/objectweb/asm/Type;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    :cond_1
    move v4, v3

    :goto_2
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_5

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/objectweb/asm/tree/MethodNode;

    iget-object v2, v5, Lorg/objectweb/asm/tree/ClassNode;->name:Ljava/lang/String;

    invoke-static {v2}, Lorg/objectweb/asm/Type;->getObjectType(Ljava/lang/String;)Lorg/objectweb/asm/Type;

    move-result-object v8

    iget v2, v5, Lorg/objectweb/asm/tree/ClassNode;->access:I

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    :goto_3
    new-instance v9, Lorg/objectweb/asm/tree/analysis/SimpleVerifier;

    invoke-direct {v9, v8, v1, v7, v2}, Lorg/objectweb/asm/tree/analysis/SimpleVerifier;-><init>(Lorg/objectweb/asm/Type;Lorg/objectweb/asm/Type;Ljava/util/List;Z)V

    new-instance v8, Lorg/objectweb/asm/tree/analysis/Analyzer;

    invoke-direct {v8, v9}, Lorg/objectweb/asm/tree/analysis/Analyzer;-><init>(Lorg/objectweb/asm/tree/analysis/Interpreter;)V

    if-eqz p1, :cond_2

    invoke-virtual {v9, p1}, Lorg/objectweb/asm/tree/analysis/SimpleVerifier;->setClassLoader(Ljava/lang/ClassLoader;)V

    :cond_2
    :try_start_0
    iget-object v2, v5, Lorg/objectweb/asm/tree/ClassNode;->name:Ljava/lang/String;

    invoke-virtual {v8, v2, v0}, Lorg/objectweb/asm/tree/analysis/Analyzer;->analyze(Ljava/lang/String;Lorg/objectweb/asm/tree/MethodNode;)[Lorg/objectweb/asm/tree/analysis/Frame;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p2, :cond_4

    :goto_4
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_2

    :cond_3
    move v2, v3

    goto :goto_3

    :catch_0
    move-exception v2

    invoke-virtual {v2, p3}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    :cond_4
    invoke-static {v0, v8, p3}, Lorg/objectweb/asm/util/CheckClassAdapter;->printAnalyzerResult(Lorg/objectweb/asm/tree/MethodNode;Lorg/objectweb/asm/tree/analysis/Analyzer;Ljava/io/PrintWriter;)V

    goto :goto_4

    :cond_5
    invoke-virtual {p3}, Ljava/io/PrintWriter;->flush()V

    return-void
.end method

.method public static verify(Lorg/objectweb/asm/ClassReader;ZLjava/io/PrintWriter;)V
    .registers 4

    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Lorg/objectweb/asm/util/CheckClassAdapter;->verify(Lorg/objectweb/asm/ClassReader;Ljava/lang/ClassLoader;ZLjava/io/PrintWriter;)V

    return-void
.end method


# virtual methods
.method public visit(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 11

    iget-boolean v0, p0, Lorg/objectweb/asm/util/CheckClassAdapter;->start:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "visit must be called only once"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/objectweb/asm/util/CheckClassAdapter;->start:Z

    invoke-direct {p0}, Lorg/objectweb/asm/util/CheckClassAdapter;->checkState()V

    const v0, 0x67631

    invoke-static {p2, v0}, Lorg/objectweb/asm/util/CheckClassAdapter;->checkAccess(II)V

    if-eqz p3, :cond_1

    const-string v0, "package-info"

    invoke-virtual {p3, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const-string v0, "class name"

    invoke-static {p3, v0}, Lorg/objectweb/asm/util/CheckMethodAdapter;->checkInternalName(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string v0, "java/lang/Object"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p5, :cond_4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The super class name of the Object class must be \'null\'"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    const-string v0, "super class name"

    invoke-static {p5, v0}, Lorg/objectweb/asm/util/CheckMethodAdapter;->checkInternalName(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    if-eqz p4, :cond_5

    invoke-static {p4}, Lorg/objectweb/asm/util/CheckClassAdapter;->checkClassSignature(Ljava/lang/String;)V

    :cond_5
    and-int/lit16 v0, p2, 0x200

    if-eqz v0, :cond_6

    const-string v0, "java/lang/Object"

    invoke-virtual {v0, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The super class name of interfaces must be \'java/lang/Object\'"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    if-eqz p6, :cond_7

    const/4 v0, 0x0

    :goto_0
    array-length v1, p6

    if-ge v0, v1, :cond_7

    aget-object v1, p6, v0

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "interface name at index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/objectweb/asm/util/CheckMethodAdapter;->checkInternalName(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_7
    iput p1, p0, Lorg/objectweb/asm/util/CheckClassAdapter;->version:I

    invoke-super/range {p0 .. p6}, Lorg/objectweb/asm/ClassVisitor;->visit(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public visitAnnotation(Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;
    .registers 5

    invoke-direct {p0}, Lorg/objectweb/asm/util/CheckClassAdapter;->checkState()V

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/objectweb/asm/util/CheckMethodAdapter;->checkDesc(Ljava/lang/String;Z)V

    new-instance v0, Lorg/objectweb/asm/util/CheckAnnotationAdapter;

    invoke-super {p0, p1, p2}, Lorg/objectweb/asm/ClassVisitor;->visitAnnotation(Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/objectweb/asm/util/CheckAnnotationAdapter;-><init>(Lorg/objectweb/asm/AnnotationVisitor;)V

    return-object v0
.end method

.method public visitAttribute(Lorg/objectweb/asm/Attribute;)V
    .registers 4

    invoke-direct {p0}, Lorg/objectweb/asm/util/CheckClassAdapter;->checkState()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid attribute (must not be null)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-super {p0, p1}, Lorg/objectweb/asm/ClassVisitor;->visitAttribute(Lorg/objectweb/asm/Attribute;)V

    return-void
.end method

.method public visitEnd()V
    .registers 2

    invoke-direct {p0}, Lorg/objectweb/asm/util/CheckClassAdapter;->checkState()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/objectweb/asm/util/CheckClassAdapter;->end:Z

    invoke-super {p0}, Lorg/objectweb/asm/ClassVisitor;->visitEnd()V

    return-void
.end method

.method public visitField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/objectweb/asm/FieldVisitor;
    .registers 8

    invoke-direct {p0}, Lorg/objectweb/asm/util/CheckClassAdapter;->checkState()V

    const v0, 0x650df

    invoke-static {p1, v0}, Lorg/objectweb/asm/util/CheckClassAdapter;->checkAccess(II)V

    iget v0, p0, Lorg/objectweb/asm/util/CheckClassAdapter;->version:I

    const-string v1, "field name"

    invoke-static {v0, p2, v1}, Lorg/objectweb/asm/util/CheckMethodAdapter;->checkUnqualifiedName(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {p3, v0}, Lorg/objectweb/asm/util/CheckMethodAdapter;->checkDesc(Ljava/lang/String;Z)V

    if-eqz p4, :cond_0

    invoke-static {p4}, Lorg/objectweb/asm/util/CheckClassAdapter;->checkFieldSignature(Ljava/lang/String;)V

    :cond_0
    if-eqz p5, :cond_1

    invoke-static {p5}, Lorg/objectweb/asm/util/CheckMethodAdapter;->checkConstant(Ljava/lang/Object;)V

    :cond_1
    new-instance v0, Lorg/objectweb/asm/util/CheckFieldAdapter;

    invoke-super/range {p0 .. p5}, Lorg/objectweb/asm/ClassVisitor;->visitField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/objectweb/asm/FieldVisitor;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/objectweb/asm/util/CheckFieldAdapter;-><init>(Lorg/objectweb/asm/FieldVisitor;)V

    return-object v0
.end method

.method public visitInnerClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 8

    invoke-direct {p0}, Lorg/objectweb/asm/util/CheckClassAdapter;->checkState()V

    const-string v0, "class name"

    invoke-static {p1, v0}, Lorg/objectweb/asm/util/CheckMethodAdapter;->checkInternalName(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const-string v0, "outer class name"

    invoke-static {p2, v0}, Lorg/objectweb/asm/util/CheckMethodAdapter;->checkInternalName(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz p3, :cond_3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_3

    :cond_2
    const/4 v1, -0x1

    const-string v2, "inner class name"

    invoke-static {p3, v0, v1, v2}, Lorg/objectweb/asm/util/CheckMethodAdapter;->checkIdentifier(Ljava/lang/String;IILjava/lang/String;)V

    :cond_3
    const/16 v0, 0x761f

    invoke-static {p4, v0}, Lorg/objectweb/asm/util/CheckClassAdapter;->checkAccess(II)V

    invoke-super {p0, p1, p2, p3, p4}, Lorg/objectweb/asm/ClassVisitor;->visitInnerClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/objectweb/asm/MethodVisitor;
    .registers 12

    invoke-direct {p0}, Lorg/objectweb/asm/util/CheckClassAdapter;->checkState()V

    const v0, 0x61dff

    invoke-static {p1, v0}, Lorg/objectweb/asm/util/CheckClassAdapter;->checkAccess(II)V

    const-string v0, "<init>"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "<clinit>"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lorg/objectweb/asm/util/CheckClassAdapter;->version:I

    const-string v1, "method name"

    invoke-static {v0, p2, v1}, Lorg/objectweb/asm/util/CheckMethodAdapter;->checkMethodIdentifier(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {p3}, Lorg/objectweb/asm/util/CheckMethodAdapter;->checkMethodDesc(Ljava/lang/String;)V

    if-eqz p4, :cond_1

    invoke-static {p4}, Lorg/objectweb/asm/util/CheckClassAdapter;->checkMethodSignature(Ljava/lang/String;)V

    :cond_1
    if-eqz p5, :cond_2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p5

    if-ge v0, v1, :cond_2

    aget-object v1, p5, v0

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "exception name at index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/objectweb/asm/util/CheckMethodAdapter;->checkInternalName(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lorg/objectweb/asm/util/CheckClassAdapter;->checkDataFlow:Z

    if-eqz v0, :cond_3

    new-instance v0, Lorg/objectweb/asm/util/CheckMethodAdapter;

    invoke-super/range {p0 .. p5}, Lorg/objectweb/asm/ClassVisitor;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/objectweb/asm/MethodVisitor;

    move-result-object v4

    iget-object v5, p0, Lorg/objectweb/asm/util/CheckClassAdapter;->labels:Ljava/util/Map;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/objectweb/asm/util/CheckMethodAdapter;-><init>(ILjava/lang/String;Ljava/lang/String;Lorg/objectweb/asm/MethodVisitor;Ljava/util/Map;)V

    :goto_1
    iget v1, p0, Lorg/objectweb/asm/util/CheckClassAdapter;->version:I

    iput v1, v0, Lorg/objectweb/asm/util/CheckMethodAdapter;->version:I

    return-object v0

    :cond_3
    new-instance v0, Lorg/objectweb/asm/util/CheckMethodAdapter;

    invoke-super/range {p0 .. p5}, Lorg/objectweb/asm/ClassVisitor;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/objectweb/asm/MethodVisitor;

    move-result-object v1

    iget-object v2, p0, Lorg/objectweb/asm/util/CheckClassAdapter;->labels:Ljava/util/Map;

    invoke-direct {v0, v1, v2}, Lorg/objectweb/asm/util/CheckMethodAdapter;-><init>(Lorg/objectweb/asm/MethodVisitor;Ljava/util/Map;)V

    goto :goto_1
.end method

.method public visitOuterClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Lorg/objectweb/asm/util/CheckClassAdapter;->checkState()V

    iget-boolean v0, p0, Lorg/objectweb/asm/util/CheckClassAdapter;->outer:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "visitOuterClass can be called only once."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/objectweb/asm/util/CheckClassAdapter;->outer:Z

    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal outer class owner"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-eqz p3, :cond_2

    invoke-static {p3}, Lorg/objectweb/asm/util/CheckMethodAdapter;->checkMethodDesc(Ljava/lang/String;)V

    :cond_2
    invoke-super {p0, p1, p2, p3}, Lorg/objectweb/asm/ClassVisitor;->visitOuterClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public visitSource(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Lorg/objectweb/asm/util/CheckClassAdapter;->checkState()V

    iget-boolean v0, p0, Lorg/objectweb/asm/util/CheckClassAdapter;->source:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "visitSource can be called only once."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/objectweb/asm/util/CheckClassAdapter;->source:Z

    invoke-super {p0, p1, p2}, Lorg/objectweb/asm/ClassVisitor;->visitSource(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public visitTypeAnnotation(ILorg/objectweb/asm/TypePath;Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;
    .registers 9

    invoke-direct {p0}, Lorg/objectweb/asm/util/CheckClassAdapter;->checkState()V

    ushr-int/lit8 v0, p1, 0x18

    if-eqz v0, :cond_0

    const/16 v1, 0x11

    if-eq v0, v1, :cond_0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Invalid type reference sort 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-static {p1, p2}, Lorg/objectweb/asm/util/CheckClassAdapter;->checkTypeRefAndPath(ILorg/objectweb/asm/TypePath;)V

    const/4 v0, 0x0

    invoke-static {p3, v0}, Lorg/objectweb/asm/util/CheckMethodAdapter;->checkDesc(Ljava/lang/String;Z)V

    new-instance v0, Lorg/objectweb/asm/util/CheckAnnotationAdapter;

    invoke-super {p0, p1, p2, p3, p4}, Lorg/objectweb/asm/ClassVisitor;->visitTypeAnnotation(ILorg/objectweb/asm/TypePath;Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/objectweb/asm/util/CheckAnnotationAdapter;-><init>(Lorg/objectweb/asm/AnnotationVisitor;)V

    return-object v0
.end method
