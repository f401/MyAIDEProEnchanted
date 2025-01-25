.class public final Lcom/android/apksig/internal/asn1/Asn1BerParser;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/apksig/internal/asn1/Asn1BerParser$AnnotatedField;,
        Lcom/android/apksig/internal/asn1/Asn1BerParser$Asn1UnexpectedTagException;,
        Lcom/android/apksig/internal/asn1/Asn1BerParser$BerToJavaConverter;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/reflect/Field;)Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/apksig/internal/asn1/Asn1DecodingException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-static {p0}, Lcom/android/apksig/internal/asn1/Asn1BerParser;->getElementType(Ljava/lang/reflect/Field;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/apksig/internal/asn1/ber/BerDataValue;Ljava/lang/Class;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/apksig/internal/asn1/Asn1DecodingException;
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/android/apksig/internal/asn1/Asn1BerParser;->parseSetOf(Lcom/android/apksig/internal/asn1/ber/BerDataValue;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Ljava/nio/ByteBuffer;)I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/apksig/internal/asn1/Asn1DecodingException;
        }
    .end annotation

    invoke-static {p0}, Lcom/android/apksig/internal/asn1/Asn1BerParser;->integerToInt(Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Ljava/nio/ByteBuffer;)J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/apksig/internal/asn1/Asn1DecodingException;
        }
    .end annotation

    invoke-static {p0}, Lcom/android/apksig/internal/asn1/Asn1BerParser;->integerToLong(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$400(Ljava/nio/ByteBuffer;)Ljava/math/BigInteger;
    .registers 2

    invoke-static {p0}, Lcom/android/apksig/internal/asn1/Asn1BerParser;->integerToBigInteger(Ljava/nio/ByteBuffer;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/apksig/internal/asn1/Asn1DecodingException;
        }
    .end annotation

    invoke-static {p0}, Lcom/android/apksig/internal/asn1/Asn1BerParser;->oidToString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/apksig/internal/asn1/ber/BerDataValue;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/apksig/internal/asn1/Asn1DecodingException;
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/android/apksig/internal/asn1/Asn1BerParser;->parseSequence(Lcom/android/apksig/internal/asn1/ber/BerDataValue;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/apksig/internal/asn1/ber/BerDataValue;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/apksig/internal/asn1/Asn1DecodingException;
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/android/apksig/internal/asn1/Asn1BerParser;->parseChoice(Lcom/android/apksig/internal/asn1/ber/BerDataValue;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static decodeBase128UnsignedLong(Ljava/nio/ByteBuffer;)J
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/apksig/internal/asn1/Asn1DecodingException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    const-wide/16 v0, 0x0

    if-nez v2, :cond_9

    :goto_8
    return-wide v0

    :cond_9
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_31

    const-wide v2, 0xffffffffffffffL

    cmp-long v2, v0, v2

    if-gtz v2, :cond_29

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    const/4 v3, 0x7

    shl-long/2addr v0, v3

    and-int/lit8 v3, v2, 0x7f

    int-to-long v4, v3

    or-long/2addr v0, v4

    and-int/lit16 v2, v2, 0x80

    if-nez v2, :cond_9

    goto :goto_8

    :cond_29
    new-instance v0, Lcom/android/apksig/internal/asn1/Asn1DecodingException;

    const-string v1, "Base-128 number too large"

    invoke-direct {v0, v1}, Lcom/android/apksig/internal/asn1/Asn1DecodingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_31
    new-instance v0, Lcom/android/apksig/internal/asn1/Asn1DecodingException;

    const-string v1, "Truncated base-128 encoded input: missing terminating byte, with highest bit not set"

    invoke-direct {v0, v1}, Lcom/android/apksig/internal/asn1/Asn1DecodingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getAnnotatedFields(Ljava/lang/Class;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/List",
            "<",
            "Lcom/android/apksig/internal/asn1/Asn1BerParser$AnnotatedField;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/apksig/internal/asn1/Asn1DecodingException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    array-length v0, v2

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    array-length v4, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_d
    if-ge v1, v4, :cond_8a

    aget-object v5, v2, v1

    const-class v0, Lcom/android/apksig/internal/asn1/Asn1Field;

    invoke-virtual {v5, v0}, Ljava/lang/reflect/Field;->getDeclaredAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/android/apksig/internal/asn1/Asn1Field;

    if-nez v0, :cond_1f

    :goto_1b
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_d

    :cond_1f
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v6

    invoke-static {v6}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v6

    if-nez v6, :cond_5a

    :try_start_29
    new-instance v6, Lcom/android/apksig/internal/asn1/Asn1BerParser$AnnotatedField;

    invoke-direct {v6, v5, v0}, Lcom/android/apksig/internal/asn1/Asn1BerParser$AnnotatedField;-><init>(Ljava/lang/reflect/Field;Lcom/android/apksig/internal/asn1/Asn1Field;)V
    :try_end_2e
    .catch Lcom/android/apksig/internal/asn1/Asn1DecodingException; {:try_start_29 .. :try_end_2e} :catch_32

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    :catch_32
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid ASN.1 annotation on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Lcom/android/apksig/internal/asn1/Asn1DecodingException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lcom/android/apksig/internal/asn1/Asn1DecodingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_5a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/android/apksig/internal/asn1/Asn1Field;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " used on a static field: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/android/apksig/internal/asn1/Asn1DecodingException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/apksig/internal/asn1/Asn1DecodingException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_8a
    return-object v3
.end method

.method private static getContainerAsn1Type(Ljava/lang/Class;)Lcom/android/apksig/internal/asn1/Asn1Type;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/android/apksig/internal/asn1/Asn1Type;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/apksig/internal/asn1/Asn1DecodingException;
        }
    .end annotation

    const-class v0, Lcom/android/apksig/internal/asn1/Asn1Class;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getDeclaredAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/android/apksig/internal/asn1/Asn1Class;

    if-eqz v0, :cond_3f

    sget-object v1, Lcom/android/apksig/internal/asn1/Asn1BerParser$1;->$SwitchMap$com$android$apksig$internal$asn1$Asn1Type:[I

    invoke-interface {v0}, Lcom/android/apksig/internal/asn1/Asn1Class;->type()Lcom/android/apksig/internal/asn1/Asn1Type;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/apksig/internal/asn1/Asn1Type;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1f

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1f

    const/4 v2, 0x3

    if-ne v1, v2, :cond_24

    :cond_1f
    invoke-interface {v0}, Lcom/android/apksig/internal/asn1/Asn1Class;->type()Lcom/android/apksig/internal/asn1/Asn1Type;

    move-result-object v0

    return-object v0

    :cond_24
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported ASN.1 container annotation type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lcom/android/apksig/internal/asn1/Asn1Class;->type()Lcom/android/apksig/internal/asn1/Asn1Type;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/android/apksig/internal/asn1/Asn1DecodingException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/apksig/internal/asn1/Asn1DecodingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is not annotated with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/apksig/internal/asn1/Asn1Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/android/apksig/internal/asn1/Asn1DecodingException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/apksig/internal/asn1/Asn1DecodingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static getElementType(Ljava/lang/reflect/Field;)Ljava/lang/Class;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/apksig/internal/asn1/Asn1DecodingException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    const/4 v3, -0x1

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/reflect/Type;->getTypeName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v3, :cond_3f

    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0x3e

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    if-eq v2, v3, :cond_24

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0

    :cond_24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not a container type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/android/apksig/internal/asn1/Asn1DecodingException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/apksig/internal/asn1/Asn1DecodingException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not a container type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/android/apksig/internal/asn1/Asn1DecodingException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/apksig/internal/asn1/Asn1DecodingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static integerToBigInteger(Ljava/nio/ByteBuffer;)Ljava/math/BigInteger;
    .registers 3

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_9

    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    :goto_8
    return-object v0

    :cond_9
    new-instance v0, Ljava/math/BigInteger;

    invoke-static {p0}, Lcom/android/apksig/internal/util/ByteBufferUtils;->toByteArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    goto :goto_8
.end method

.method private static integerToInt(Ljava/nio/ByteBuffer;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/apksig/internal/asn1/Asn1DecodingException;
        }
    .end annotation

    invoke-static {p0}, Lcom/android/apksig/internal/asn1/Asn1BerParser;->integerToBigInteger(Ljava/nio/ByteBuffer;)Ljava/math/BigInteger;

    move-result-object v0

    :try_start_4
    invoke-virtual {v0}, Ljava/math/BigInteger;->intValueExact()I
    :try_end_7
    .catch Ljava/lang/ArithmeticException; {:try_start_4 .. :try_end_7} :catch_9

    move-result v0

    return v0

    :catch_9
    move-exception v1

    new-instance v2, Lcom/android/apksig/internal/asn1/Asn1DecodingException;

    const-string v3, "INTEGER cannot be represented as int: %1$d (0x%1$x)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Lcom/android/apksig/internal/asn1/Asn1DecodingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static integerToLong(Ljava/nio/ByteBuffer;)J
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/apksig/internal/asn1/Asn1DecodingException;
        }
    .end annotation

    invoke-static {p0}, Lcom/android/apksig/internal/asn1/Asn1BerParser;->integerToBigInteger(Ljava/nio/ByteBuffer;)Ljava/math/BigInteger;

    move-result-object v0

    :try_start_4
    invoke-virtual {v0}, Ljava/math/BigInteger;->longValueExact()J
    :try_end_7
    .catch Ljava/lang/ArithmeticException; {:try_start_4 .. :try_end_7} :catch_9

    move-result-wide v0

    return-wide v0

    :catch_9
    move-exception v1

    new-instance v2, Lcom/android/apksig/internal/asn1/Asn1DecodingException;

    const-string v3, "INTEGER cannot be represented as long: %1$d (0x%1$x)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Lcom/android/apksig/internal/asn1/Asn1DecodingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method static synthetic lambda$parseSequence$0(Lcom/android/apksig/internal/asn1/Asn1BerParser$AnnotatedField;Lcom/android/apksig/internal/asn1/Asn1BerParser$AnnotatedField;)I
    .registers 4

    invoke-virtual {p0}, Lcom/android/apksig/internal/asn1/Asn1BerParser$AnnotatedField;->getAnnotation()Lcom/android/apksig/internal/asn1/Asn1Field;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/apksig/internal/asn1/Asn1Field;->index()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/apksig/internal/asn1/Asn1BerParser$AnnotatedField;->getAnnotation()Lcom/android/apksig/internal/asn1/Asn1Field;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/apksig/internal/asn1/Asn1Field;->index()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private static oidToString(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/apksig/internal/asn1/Asn1DecodingException;
        }
    .end annotation

    const/16 v8, 0x2e

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_45

    invoke-static {p0}, Lcom/android/apksig/internal/asn1/Asn1BerParser;->decodeBase128UnsignedLong(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    const-wide/16 v2, 0x28

    div-long v2, v0, v2

    const-wide/16 v4, 0x2

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v2, v2

    mul-int/lit8 v3, v2, 0x28

    int-to-long v4, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    int-to-long v6, v2

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sub-long/2addr v0, v4

    :goto_2b
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_40

    invoke-static {p0}, Lcom/android/apksig/internal/asn1/Asn1BerParser;->decodeBase128UnsignedLong(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2b

    :cond_40
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_45
    new-instance v0, Lcom/android/apksig/internal/asn1/Asn1DecodingException;

    const-string v1, "Empty OBJECT IDENTIFIER"

    invoke-direct {v0, v1}, Lcom/android/apksig/internal/asn1/Asn1DecodingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static parse(Lcom/android/apksig/internal/asn1/ber/BerDataValue;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/apksig/internal/asn1/ber/BerDataValue;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/apksig/internal/asn1/Asn1DecodingException;
        }
    .end annotation

    const/4 v3, 0x1

    if-eqz p0, :cond_98

    if-eqz p1, :cond_90

    invoke-static {p1}, Lcom/android/apksig/internal/asn1/Asn1BerParser;->getContainerAsn1Type(Ljava/lang/Class;)Lcom/android/apksig/internal/asn1/Asn1Type;

    move-result-object v0

    sget-object v1, Lcom/android/apksig/internal/asn1/Asn1BerParser$1;->$SwitchMap$com$android$apksig$internal$asn1$Asn1Type:[I

    invoke-virtual {v0}, Lcom/android/apksig/internal/asn1/Asn1Type;->ordinal()I

    move-result v2

    aget v1, v1, v2

    if-eq v1, v3, :cond_8b

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3a

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1e

    invoke-static {p0, p1, v3}, Lcom/android/apksig/internal/asn1/Asn1BerParser;->parseSequence(Lcom/android/apksig/internal/asn1/ber/BerDataValue;Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v0

    :goto_1d
    return-object v0

    :cond_1e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Parsing container "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " not supported"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/android/apksig/internal/asn1/Asn1DecodingException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/apksig/internal/asn1/Asn1DecodingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3a
    invoke-static {v0}, Lcom/android/apksig/internal/asn1/ber/BerEncoding;->getTagNumber(Lcom/android/apksig/internal/asn1/Asn1Type;)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/apksig/internal/asn1/ber/BerDataValue;->getTagClass()I

    move-result v1

    if-nez v1, :cond_4f

    invoke-virtual {p0}, Lcom/android/apksig/internal/asn1/ber/BerDataValue;->getTagNumber()I

    move-result v1

    if-ne v1, v0, :cond_4f

    invoke-static {p0, p1}, Lcom/android/apksig/internal/asn1/Asn1BerParser;->parseSequence(Lcom/android/apksig/internal/asn1/ber/BerDataValue;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1d

    :cond_4f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected data value read as "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". Expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-static {v2, v0}, Lcom/android/apksig/internal/asn1/ber/BerEncoding;->tagClassAndNumberToString(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", but read: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/apksig/internal/asn1/ber/BerDataValue;->getTagClass()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/apksig/internal/asn1/ber/BerDataValue;->getTagNumber()I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/apksig/internal/asn1/ber/BerEncoding;->tagClassAndNumberToString(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/android/apksig/internal/asn1/Asn1BerParser$Asn1UnexpectedTagException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/apksig/internal/asn1/Asn1BerParser$Asn1UnexpectedTagException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8b
    invoke-static {p0, p1}, Lcom/android/apksig/internal/asn1/Asn1BerParser;->parseChoice(Lcom/android/apksig/internal/asn1/ber/BerDataValue;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1d

    :cond_90
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "containerClass == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_98
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "container == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static parse(Ljava/nio/ByteBuffer;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/nio/ByteBuffer;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/apksig/internal/asn1/Asn1DecodingException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Lcom/android/apksig/internal/asn1/ber/ByteBufferBerDataValueReader;

    invoke-direct {v0, p0}, Lcom/android/apksig/internal/asn1/ber/ByteBufferBerDataValueReader;-><init>(Ljava/nio/ByteBuffer;)V

    invoke-virtual {v0}, Lcom/android/apksig/internal/asn1/ber/ByteBufferBerDataValueReader;->readDataValue()Lcom/android/apksig/internal/asn1/ber/BerDataValue;
    :try_end_8
    .catch Lcom/android/apksig/internal/asn1/ber/BerDataValueFormatException; {:try_start_0 .. :try_end_8} :catch_18

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-static {v0, p1}, Lcom/android/apksig/internal/asn1/Asn1BerParser;->parse(Lcom/android/apksig/internal/asn1/ber/BerDataValue;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_10
    new-instance v0, Lcom/android/apksig/internal/asn1/Asn1DecodingException;

    const-string v1, "Empty input"

    invoke-direct {v0, v1}, Lcom/android/apksig/internal/asn1/Asn1DecodingException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_18
    move-exception v0

    new-instance v1, Lcom/android/apksig/internal/asn1/Asn1DecodingException;

    const-string v2, "Failed to decode top-level data value"

    invoke-direct {v1, v2, v0}, Lcom/android/apksig/internal/asn1/Asn1DecodingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static parseChoice(Lcom/android/apksig/internal/asn1/ber/BerDataValue;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/apksig/internal/asn1/ber/BerDataValue;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/apksig/internal/asn1/Asn1DecodingException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/android/apksig/internal/asn1/Asn1BerParser;->getAnnotatedFields(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_da

    move v1, v0

    :goto_c
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v1, v0, :cond_7c

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/apksig/internal/asn1/Asn1BerParser$AnnotatedField;

    invoke-virtual {v0}, Lcom/android/apksig/internal/asn1/Asn1BerParser$AnnotatedField;->getBerTagNumber()I

    move-result v5

    invoke-virtual {v0}, Lcom/android/apksig/internal/asn1/Asn1BerParser$AnnotatedField;->getBerTagClass()I

    move-result v6

    add-int/lit8 v2, v1, 0x1

    move v3, v2

    :goto_25
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_107

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/apksig/internal/asn1/Asn1BerParser$AnnotatedField;

    invoke-virtual {v1}, Lcom/android/apksig/internal/asn1/Asn1BerParser$AnnotatedField;->getBerTagNumber()I

    move-result v7

    invoke-virtual {v1}, Lcom/android/apksig/internal/asn1/Asn1BerParser$AnnotatedField;->getBerTagClass()I

    move-result v8

    if-ne v5, v7, :cond_3d

    if-eq v6, v8, :cond_41

    :cond_3d
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_25

    :cond_41
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CHOICE fields are indistinguishable because they have the same tag class and number: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/apksig/internal/asn1/Asn1BerParser$AnnotatedField;->getField()Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " and ."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/apksig/internal/asn1/Asn1BerParser$AnnotatedField;->getField()Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/android/apksig/internal/asn1/Asn1DecodingException;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/apksig/internal/asn1/Asn1DecodingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7c
    const/4 v0, 0x0

    :try_start_7d
    new-array v0, v0, [Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_89
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7d .. :try_end_89} :catch_be
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_7d .. :try_end_89} :catch_105

    move-result-object v1

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/apksig/internal/asn1/Asn1BerParser$AnnotatedField;

    :try_start_9a
    invoke-virtual {v0, p0, v1}, Lcom/android/apksig/internal/asn1/Asn1BerParser$AnnotatedField;->setValueFrom(Lcom/android/apksig/internal/asn1/ber/BerDataValue;Ljava/lang/Object;)V
    :try_end_9d
    .catch Lcom/android/apksig/internal/asn1/Asn1BerParser$Asn1UnexpectedTagException; {:try_start_9a .. :try_end_9d} :catch_103

    return-object v1

    :cond_9e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No options of CHOICE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " matched"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/android/apksig/internal/asn1/Asn1DecodingException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/apksig/internal/asn1/Asn1DecodingException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_be
    move-exception v0

    :goto_bf
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to instantiate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Lcom/android/apksig/internal/asn1/Asn1DecodingException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lcom/android/apksig/internal/asn1/Asn1DecodingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_da
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No fields annotated with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/apksig/internal/asn1/Asn1Field;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " in CHOICE class "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/android/apksig/internal/asn1/Asn1DecodingException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/apksig/internal/asn1/Asn1DecodingException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_103
    move-exception v0

    goto :goto_8e

    :catch_105
    move-exception v0

    goto :goto_bf

    :cond_107
    move v1, v2

    goto/16 :goto_c
.end method

.method public static parseImplicitSetOf(Ljava/nio/ByteBuffer;Ljava/lang/Class;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/nio/ByteBuffer;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/apksig/internal/asn1/Asn1DecodingException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Lcom/android/apksig/internal/asn1/ber/ByteBufferBerDataValueReader;

    invoke-direct {v0, p0}, Lcom/android/apksig/internal/asn1/ber/ByteBufferBerDataValueReader;-><init>(Ljava/nio/ByteBuffer;)V

    invoke-virtual {v0}, Lcom/android/apksig/internal/asn1/ber/ByteBufferBerDataValueReader;->readDataValue()Lcom/android/apksig/internal/asn1/ber/BerDataValue;
    :try_end_8
    .catch Lcom/android/apksig/internal/asn1/ber/BerDataValueFormatException; {:try_start_0 .. :try_end_8} :catch_18

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-static {v0, p1}, Lcom/android/apksig/internal/asn1/Asn1BerParser;->parseSetOf(Lcom/android/apksig/internal/asn1/ber/BerDataValue;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_10
    new-instance v0, Lcom/android/apksig/internal/asn1/Asn1DecodingException;

    const-string v1, "Empty input"

    invoke-direct {v0, v1}, Lcom/android/apksig/internal/asn1/Asn1DecodingException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_18
    move-exception v0

    new-instance v1, Lcom/android/apksig/internal/asn1/Asn1DecodingException;

    const-string v2, "Failed to decode top-level data value"

    invoke-direct {v1, v2, v0}, Lcom/android/apksig/internal/asn1/Asn1DecodingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static parseSequence(Lcom/android/apksig/internal/asn1/ber/BerDataValue;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/apksig/internal/asn1/ber/BerDataValue;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/apksig/internal/asn1/Asn1DecodingException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/apksig/internal/asn1/Asn1BerParser;->parseSequence(Lcom/android/apksig/internal/asn1/ber/BerDataValue;Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static parseSequence(Lcom/android/apksig/internal/asn1/ber/BerDataValue;Ljava/lang/Class;Z)Ljava/lang/Object;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/apksig/internal/asn1/ber/BerDataValue;",
            "Ljava/lang/Class",
            "<TT;>;Z)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/apksig/internal/asn1/Asn1DecodingException;
        }
    .end annotation

    const/4 v2, 0x0

    invoke-static {p1}, Lcom/android/apksig/internal/asn1/Asn1BerParser;->getAnnotatedFields(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v4

    sget-object v0, Lcom/android/apksig/internal/asn1/Asn1BerParser$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/apksig/internal/asn1/Asn1BerParser$$ExternalSyntheticLambda0;

    invoke-static {v4, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_74

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v0, 0x0

    move-object v1, v0

    :goto_17
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_74

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/apksig/internal/asn1/Asn1BerParser$AnnotatedField;

    if-eqz v1, :cond_37

    invoke-virtual {v1}, Lcom/android/apksig/internal/asn1/Asn1BerParser$AnnotatedField;->getAnnotation()Lcom/android/apksig/internal/asn1/Asn1Field;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/apksig/internal/asn1/Asn1Field;->index()I

    move-result v5

    invoke-virtual {v0}, Lcom/android/apksig/internal/asn1/Asn1BerParser$AnnotatedField;->getAnnotation()Lcom/android/apksig/internal/asn1/Asn1Field;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/apksig/internal/asn1/Asn1Field;->index()I

    move-result v6

    if-eq v5, v6, :cond_39

    :cond_37
    move-object v1, v0

    goto :goto_17

    :cond_39
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fields have the same index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/apksig/internal/asn1/Asn1BerParser$AnnotatedField;->getField()Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " and ."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/apksig/internal/asn1/Asn1BerParser$AnnotatedField;->getField()Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/android/apksig/internal/asn1/Asn1DecodingException;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/apksig/internal/asn1/Asn1DecodingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_74
    const/4 v0, 0x0

    :try_start_75
    new-array v0, v0, [Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_81
    .catch Ljava/lang/IllegalArgumentException; {:try_start_75 .. :try_end_81} :catch_f3
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_75 .. :try_end_81} :catch_10f

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/apksig/internal/asn1/ber/BerDataValue;->contentsReader()Lcom/android/apksig/internal/asn1/ber/BerDataValueReader;

    move-result-object v6

    move v1, v2

    :cond_87
    :goto_87
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_94

    if-eqz p2, :cond_95

    if-nez v1, :cond_95

    move-object v3, p0

    :goto_92
    if-nez v3, :cond_9b

    :cond_94
    return-object v5

    :cond_95
    :try_start_95
    invoke-interface {v6}, Lcom/android/apksig/internal/asn1/ber/BerDataValueReader;->readDataValue()Lcom/android/apksig/internal/asn1/ber/BerDataValue;
    :try_end_98
    .catch Lcom/android/apksig/internal/asn1/ber/BerDataValueFormatException; {:try_start_95 .. :try_end_98} :catch_ea

    move-result-object v0

    move-object v3, v0

    goto :goto_92

    :cond_9b
    move v2, v1

    :goto_9c
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_87

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/apksig/internal/asn1/Asn1BerParser$AnnotatedField;

    :try_start_a8
    invoke-virtual {v0}, Lcom/android/apksig/internal/asn1/Asn1BerParser$AnnotatedField;->isOptional()Z
    :try_end_ab
    .catch Lcom/android/apksig/internal/asn1/Asn1DecodingException; {:try_start_a8 .. :try_end_ab} :catch_be

    move-result v7

    if-eqz v7, :cond_ba

    :try_start_ae
    invoke-virtual {v0, v3, v5}, Lcom/android/apksig/internal/asn1/Asn1BerParser$AnnotatedField;->setValueFrom(Lcom/android/apksig/internal/asn1/ber/BerDataValue;Ljava/lang/Object;)V
    :try_end_b1
    .catch Lcom/android/apksig/internal/asn1/Asn1BerParser$Asn1UnexpectedTagException; {:try_start_ae .. :try_end_b1} :catch_b5
    .catch Lcom/android/apksig/internal/asn1/Asn1DecodingException; {:try_start_ae .. :try_end_b1} :catch_be

    :goto_b1
    add-int/lit8 v0, v2, 0x1

    move v1, v0

    goto :goto_87

    :catch_b5
    move-exception v0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_9c

    :cond_ba
    :try_start_ba
    invoke-virtual {v0, v3, v5}, Lcom/android/apksig/internal/asn1/Asn1BerParser$AnnotatedField;->setValueFrom(Lcom/android/apksig/internal/asn1/ber/BerDataValue;Ljava/lang/Object;)V
    :try_end_bd
    .catch Lcom/android/apksig/internal/asn1/Asn1DecodingException; {:try_start_ba .. :try_end_bd} :catch_be

    goto :goto_b1

    :catch_be
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to parse "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/apksig/internal/asn1/Asn1BerParser$AnnotatedField;->getField()Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/android/apksig/internal/asn1/Asn1DecodingException;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/android/apksig/internal/asn1/Asn1DecodingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_ea
    move-exception v0

    new-instance v1, Lcom/android/apksig/internal/asn1/Asn1DecodingException;

    const-string v2, "Malformed data value"

    invoke-direct {v1, v2, v0}, Lcom/android/apksig/internal/asn1/Asn1DecodingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_f3
    move-exception v0

    :goto_f4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to instantiate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Lcom/android/apksig/internal/asn1/Asn1DecodingException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lcom/android/apksig/internal/asn1/Asn1DecodingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_10f
    move-exception v0

    goto :goto_f4
.end method

.method private static parseSetOf(Lcom/android/apksig/internal/asn1/ber/BerDataValue;Ljava/lang/Class;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/apksig/internal/asn1/ber/BerDataValue;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/apksig/internal/asn1/Asn1DecodingException;
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/android/apksig/internal/asn1/ber/BerDataValue;->contentsReader()Lcom/android/apksig/internal/asn1/ber/BerDataValueReader;

    move-result-object v2

    :goto_9
    :try_start_9
    invoke-interface {v2}, Lcom/android/apksig/internal/asn1/ber/BerDataValueReader;->readDataValue()Lcom/android/apksig/internal/asn1/ber/BerDataValue;
    :try_end_c
    .catch Lcom/android/apksig/internal/asn1/ber/BerDataValueFormatException; {:try_start_9 .. :try_end_c} :catch_37

    move-result-object v3

    if-nez v3, :cond_10

    return-object v1

    :cond_10
    const-class v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-virtual {v3}, Lcom/android/apksig/internal/asn1/ber/BerDataValue;->getEncodedContents()Ljava/nio/ByteBuffer;

    move-result-object v0

    :goto_1c
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_20
    const-class v0, Lcom/android/apksig/internal/asn1/Asn1OpaqueObject;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    new-instance v0, Lcom/android/apksig/internal/asn1/Asn1OpaqueObject;

    invoke-virtual {v3}, Lcom/android/apksig/internal/asn1/ber/BerDataValue;->getEncoded()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/apksig/internal/asn1/Asn1OpaqueObject;-><init>(Ljava/nio/ByteBuffer;)V

    goto :goto_1c

    :cond_32
    invoke-static {v3, p1}, Lcom/android/apksig/internal/asn1/Asn1BerParser;->parse(Lcom/android/apksig/internal/asn1/ber/BerDataValue;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1c

    :catch_37
    move-exception v0

    new-instance v1, Lcom/android/apksig/internal/asn1/Asn1DecodingException;

    const-string v2, "Malformed data value"

    invoke-direct {v1, v2, v0}, Lcom/android/apksig/internal/asn1/Asn1DecodingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
