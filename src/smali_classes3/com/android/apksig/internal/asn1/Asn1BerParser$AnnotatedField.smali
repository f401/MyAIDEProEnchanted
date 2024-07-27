.class final Lcom/android/apksig/internal/asn1/Asn1BerParser$AnnotatedField;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/apksig/internal/asn1/Asn1BerParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AnnotatedField"
.end annotation


# instance fields
.field private final mAnnotation:Lcom/android/apksig/internal/asn1/Asn1Field;

.field private final mBerTagClass:I

.field private final mBerTagNumber:I

.field private final mDataType:Lcom/android/apksig/internal/asn1/Asn1Type;

.field private final mField:Ljava/lang/reflect/Field;

.field private final mOptional:Z

.field private final mTagClass:Lcom/android/apksig/internal/asn1/Asn1TagClass;

.field private final mTagging:Lcom/android/apksig/internal/asn1/Asn1Tagging;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Field;Lcom/android/apksig/internal/asn1/Asn1Field;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/apksig/internal/asn1/Asn1DecodingException;
        }
    .end annotation

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/apksig/internal/asn1/Asn1BerParser$AnnotatedField;->mField:Ljava/lang/reflect/Field;

    iput-object p2, p0, Lcom/android/apksig/internal/asn1/Asn1BerParser$AnnotatedField;->mAnnotation:Lcom/android/apksig/internal/asn1/Asn1Field;

    invoke-interface {p2}, Lcom/android/apksig/internal/asn1/Asn1Field;->type()Lcom/android/apksig/internal/asn1/Asn1Type;

    move-result-object v2

    iput-object v2, p0, Lcom/android/apksig/internal/asn1/Asn1BerParser$AnnotatedField;->mDataType:Lcom/android/apksig/internal/asn1/Asn1Type;

    invoke-interface {p2}, Lcom/android/apksig/internal/asn1/Asn1Field;->cls()Lcom/android/apksig/internal/asn1/Asn1TagClass;

    move-result-object v0

    sget-object v3, Lcom/android/apksig/internal/asn1/Asn1TagClass;->AUTOMATIC:Lcom/android/apksig/internal/asn1/Asn1TagClass;

    if-ne v0, v3, :cond_0

    invoke-interface {p2}, Lcom/android/apksig/internal/asn1/Asn1Field;->tagNumber()I

    move-result v0

    if-eq v0, v1, :cond_3

    sget-object v0, Lcom/android/apksig/internal/asn1/Asn1TagClass;->CONTEXT_SPECIFIC:Lcom/android/apksig/internal/asn1/Asn1TagClass;

    :cond_0
    :goto_0
    iput-object v0, p0, Lcom/android/apksig/internal/asn1/Asn1BerParser$AnnotatedField;->mTagClass:Lcom/android/apksig/internal/asn1/Asn1TagClass;

    invoke-static {v0}, Lcom/android/apksig/internal/asn1/ber/BerEncoding;->getTagClass(Lcom/android/apksig/internal/asn1/Asn1TagClass;)I

    move-result v0

    iput v0, p0, Lcom/android/apksig/internal/asn1/Asn1BerParser$AnnotatedField;->mBerTagClass:I

    invoke-interface {p2}, Lcom/android/apksig/internal/asn1/Asn1Field;->tagNumber()I

    move-result v0

    if-eq v0, v1, :cond_4

    invoke-interface {p2}, Lcom/android/apksig/internal/asn1/Asn1Field;->tagNumber()I

    move-result v0

    :goto_1
    iput v0, p0, Lcom/android/apksig/internal/asn1/Asn1BerParser$AnnotatedField;->mBerTagNumber:I

    invoke-interface {p2}, Lcom/android/apksig/internal/asn1/Asn1Field;->tagging()Lcom/android/apksig/internal/asn1/Asn1Tagging;

    move-result-object v0

    iput-object v0, p0, Lcom/android/apksig/internal/asn1/Asn1BerParser$AnnotatedField;->mTagging:Lcom/android/apksig/internal/asn1/Asn1Tagging;

    sget-object v2, Lcom/android/apksig/internal/asn1/Asn1Tagging;->EXPLICIT:Lcom/android/apksig/internal/asn1/Asn1Tagging;

    if-eq v0, v2, :cond_1

    sget-object v2, Lcom/android/apksig/internal/asn1/Asn1Tagging;->IMPLICIT:Lcom/android/apksig/internal/asn1/Asn1Tagging;

    if-ne v0, v2, :cond_2

    :cond_1
    invoke-interface {p2}, Lcom/android/apksig/internal/asn1/Asn1Field;->tagNumber()I

    move-result v2

    if-eq v2, v1, :cond_7

    :cond_2
    invoke-interface {p2}, Lcom/android/apksig/internal/asn1/Asn1Field;->optional()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/apksig/internal/asn1/Asn1BerParser$AnnotatedField;->mOptional:Z

    return-void

    :cond_3
    sget-object v0, Lcom/android/apksig/internal/asn1/Asn1TagClass;->UNIVERSAL:Lcom/android/apksig/internal/asn1/Asn1TagClass;

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/android/apksig/internal/asn1/Asn1Type;->CHOICE:Lcom/android/apksig/internal/asn1/Asn1Type;

    if-eq v2, v0, :cond_5

    sget-object v0, Lcom/android/apksig/internal/asn1/Asn1Type;->ANY:Lcom/android/apksig/internal/asn1/Asn1Type;

    if-ne v2, v0, :cond_6

    :cond_5
    move v0, v1

    goto :goto_1

    :cond_6
    invoke-static {v2}, Lcom/android/apksig/internal/asn1/ber/BerEncoding;->getTagNumber(Lcom/android/apksig/internal/asn1/Asn1Type;)I

    move-result v0

    goto :goto_1

    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tag number must be specified when tagging mode is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/android/apksig/internal/asn1/Asn1DecodingException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/apksig/internal/asn1/Asn1DecodingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getAnnotation()Lcom/android/apksig/internal/asn1/Asn1Field;
    .registers 2

    iget-object v0, p0, Lcom/android/apksig/internal/asn1/Asn1BerParser$AnnotatedField;->mAnnotation:Lcom/android/apksig/internal/asn1/Asn1Field;

    return-object v0
.end method

.method public getBerTagClass()I
    .registers 2

    iget v0, p0, Lcom/android/apksig/internal/asn1/Asn1BerParser$AnnotatedField;->mBerTagClass:I

    return v0
.end method

.method public getBerTagNumber()I
    .registers 2

    iget v0, p0, Lcom/android/apksig/internal/asn1/Asn1BerParser$AnnotatedField;->mBerTagNumber:I

    return v0
.end method

.method public getField()Ljava/lang/reflect/Field;
    .registers 2

    iget-object v0, p0, Lcom/android/apksig/internal/asn1/Asn1BerParser$AnnotatedField;->mField:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method public isOptional()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/apksig/internal/asn1/Asn1BerParser$AnnotatedField;->mOptional:Z

    return v0
.end method

.method public setValueFrom(Lcom/android/apksig/internal/asn1/ber/BerDataValue;Ljava/lang/Object;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/apksig/internal/asn1/Asn1DecodingException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/android/apksig/internal/asn1/ber/BerDataValue;->getTagClass()I

    move-result v0

    iget v1, p0, Lcom/android/apksig/internal/asn1/Asn1BerParser$AnnotatedField;->mBerTagNumber:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    invoke-virtual {p1}, Lcom/android/apksig/internal/asn1/ber/BerDataValue;->getTagNumber()I

    move-result v1

    iget v2, p0, Lcom/android/apksig/internal/asn1/Asn1BerParser$AnnotatedField;->mBerTagClass:I

    if-ne v0, v2, :cond_2

    iget v2, p0, Lcom/android/apksig/internal/asn1/Asn1BerParser$AnnotatedField;->mBerTagNumber:I

    if-ne v1, v2, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/android/apksig/internal/asn1/Asn1BerParser$AnnotatedField;->mTagging:Lcom/android/apksig/internal/asn1/Asn1Tagging;

    sget-object v1, Lcom/android/apksig/internal/asn1/Asn1Tagging;->EXPLICIT:Lcom/android/apksig/internal/asn1/Asn1Tagging;

    if-ne v0, v1, :cond_1

    :try_start_0
    invoke-virtual {p1}, Lcom/android/apksig/internal/asn1/ber/BerDataValue;->contentsReader()Lcom/android/apksig/internal/asn1/ber/BerDataValueReader;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/apksig/internal/asn1/ber/BerDataValueReader;->readDataValue()Lcom/android/apksig/internal/asn1/ber/BerDataValue;
    :try_end_0
    .catch Lcom/android/apksig/internal/asn1/ber/BerDataValueFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    :cond_1
    iget-object v0, p0, Lcom/android/apksig/internal/asn1/Asn1BerParser$AnnotatedField;->mField:Ljava/lang/reflect/Field;

    iget-object v1, p0, Lcom/android/apksig/internal/asn1/Asn1BerParser$AnnotatedField;->mDataType:Lcom/android/apksig/internal/asn1/Asn1Type;

    invoke-static {p2, v0, v1, p1}, Lcom/android/apksig/internal/asn1/Asn1BerParser$BerToJavaConverter;->setFieldValue(Ljava/lang/Object;Ljava/lang/reflect/Field;Lcom/android/apksig/internal/asn1/Asn1Type;Lcom/android/apksig/internal/asn1/ber/BerDataValue;)V

    return-void

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tag mismatch. Expected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/apksig/internal/asn1/Asn1BerParser$AnnotatedField;->mBerTagClass:I

    iget v4, p0, Lcom/android/apksig/internal/asn1/Asn1BerParser$AnnotatedField;->mBerTagNumber:I

    invoke-static {v3, v4}, Lcom/android/apksig/internal/asn1/ber/BerEncoding;->tagClassAndNumberToString(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", but found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Lcom/android/apksig/internal/asn1/ber/BerEncoding;->tagClassAndNumberToString(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/android/apksig/internal/asn1/Asn1BerParser$Asn1UnexpectedTagException;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/apksig/internal/asn1/Asn1BerParser$Asn1UnexpectedTagException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget v1, p0, Lcom/android/apksig/internal/asn1/Asn1BerParser$AnnotatedField;->mBerTagClass:I

    if-eq v0, v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tag mismatch. Expected class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/apksig/internal/asn1/Asn1BerParser$AnnotatedField;->mBerTagClass:I

    invoke-static {v2}, Lcom/android/apksig/internal/asn1/ber/BerEncoding;->tagClassToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", but found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/apksig/internal/asn1/ber/BerEncoding;->tagClassToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/android/apksig/internal/asn1/Asn1BerParser$Asn1UnexpectedTagException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/apksig/internal/asn1/Asn1BerParser$Asn1UnexpectedTagException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/android/apksig/internal/asn1/Asn1DecodingException;

    const-string v2, "Failed to read contents of EXPLICIT data value"

    invoke-direct {v1, v2, v0}, Lcom/android/apksig/internal/asn1/Asn1DecodingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
