.class Lcom/android/apksig/internal/apk/AndroidBinXmlParser$Attribute;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/apksig/internal/apk/AndroidBinXmlParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Attribute"
.end annotation


# static fields
.field private static final TYPE_INT_BOOLEAN:I = 0x12

.field private static final TYPE_INT_DEC:I = 0x10

.field private static final TYPE_INT_HEX:I = 0x11

.field private static final TYPE_REFERENCE:I = 0x1

.field private static final TYPE_STRING:I = 0x3


# instance fields
.field private final mNameId:J

.field private final mNsId:J

.field private final mResourceMap:Lcom/android/apksig/internal/apk/AndroidBinXmlParser$ResourceMap;

.field private final mStringPool:Lcom/android/apksig/internal/apk/AndroidBinXmlParser$StringPool;

.field private final mValueData:I

.field private final mValueType:I


# direct methods
.method private constructor <init>(JJIILcom/android/apksig/internal/apk/AndroidBinXmlParser$StringPool;Lcom/android/apksig/internal/apk/AndroidBinXmlParser$ResourceMap;)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$Attribute;->mNsId:J

    iput-wide p3, p0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$Attribute;->mNameId:J

    iput p5, p0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$Attribute;->mValueType:I

    iput p6, p0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$Attribute;->mValueData:I

    iput-object p7, p0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$Attribute;->mStringPool:Lcom/android/apksig/internal/apk/AndroidBinXmlParser$StringPool;

    iput-object p8, p0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$Attribute;->mResourceMap:Lcom/android/apksig/internal/apk/AndroidBinXmlParser$ResourceMap;

    return-void
.end method

.method synthetic constructor <init>(JJIILcom/android/apksig/internal/apk/AndroidBinXmlParser$StringPool;Lcom/android/apksig/internal/apk/AndroidBinXmlParser$ResourceMap;Lcom/android/apksig/internal/apk/AndroidBinXmlParser$1;)V
    .registers 11

    invoke-direct/range {p0 .. p8}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$Attribute;-><init>(JJIILcom/android/apksig/internal/apk/AndroidBinXmlParser$StringPool;Lcom/android/apksig/internal/apk/AndroidBinXmlParser$ResourceMap;)V

    return-void
.end method


# virtual methods
.method public getBooleanValue()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/apksig/internal/apk/AndroidBinXmlParser$XmlParserException;
        }
    .end annotation

    iget v0, p0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$Attribute;->mValueType:I

    const/16 v1, 0x12

    if-ne v0, v1, :cond_e

    iget v0, p0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$Attribute;->mValueData:I

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b

    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot coerce to boolean: value type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$Attribute;->mValueType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$XmlParserException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$XmlParserException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getIntValue()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/apksig/internal/apk/AndroidBinXmlParser$XmlParserException;
        }
    .end annotation

    iget v0, p0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$Attribute;->mValueType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_21

    packed-switch v0, :pswitch_data_24

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot coerce to int: value type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$Attribute;->mValueType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$XmlParserException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$XmlParserException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_21
    :pswitch_21  #0x10, 0x11, 0x12
    iget v0, p0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$Attribute;->mValueData:I

    return v0

    :pswitch_data_24
    .packed-switch 0x10
        :pswitch_21  #00000010
        :pswitch_21  #00000011
        :pswitch_21  #00000012
    .end packed-switch
.end method

.method public getName()Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/apksig/internal/apk/AndroidBinXmlParser$XmlParserException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$Attribute;->mStringPool:Lcom/android/apksig/internal/apk/AndroidBinXmlParser$StringPool;

    iget-wide v2, p0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$Attribute;->mNameId:J

    invoke-virtual {v0, v2, v3}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$StringPool;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNameResourceId()I
    .registers 5

    iget-object v0, p0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$Attribute;->mResourceMap:Lcom/android/apksig/internal/apk/AndroidBinXmlParser$ResourceMap;

    if-eqz v0, :cond_b

    iget-wide v2, p0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$Attribute;->mNameId:J

    invoke-virtual {v0, v2, v3}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$ResourceMap;->getResourceId(J)I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getNamespace()Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/apksig/internal/apk/AndroidBinXmlParser$XmlParserException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$Attribute;->mNsId:J

    const-wide v2, 0xffffffffL

    cmp-long v2, v0, v2

    if-eqz v2, :cond_12

    iget-object v2, p0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$Attribute;->mStringPool:Lcom/android/apksig/internal/apk/AndroidBinXmlParser$StringPool;

    invoke-virtual {v2, v0, v1}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$StringPool;->getString(J)Ljava/lang/String;

    move-result-object v0

    :goto_11
    return-object v0

    :cond_12
    const-string v0, ""

    goto :goto_11
.end method

.method public getStringValue()Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/apksig/internal/apk/AndroidBinXmlParser$XmlParserException;
        }
    .end annotation

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$Attribute;->mValueType:I

    if-eq v1, v0, :cond_5e

    const/4 v2, 0x3

    if-eq v1, v2, :cond_4e

    packed-switch v1, :pswitch_data_66

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot coerce to string: value type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$Attribute;->mValueType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$XmlParserException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$XmlParserException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_24  #0x12
    iget v1, p0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$Attribute;->mValueData:I

    if-eqz v1, :cond_2d

    :goto_28
    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    :goto_2c
    return-object v0

    :cond_2d
    const/4 v0, 0x0

    goto :goto_28

    :pswitch_2f  #0x11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    :goto_36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$Attribute;->mValueData:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2c

    :pswitch_47  #0x10
    iget v0, p0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$Attribute;->mValueData:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2c

    :cond_4e
    iget-object v0, p0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$Attribute;->mStringPool:Lcom/android/apksig/internal/apk/AndroidBinXmlParser$StringPool;

    iget v1, p0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$Attribute;->mValueData:I

    int-to-long v2, v1

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$StringPool;->getString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_2c

    :cond_5e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "@"

    goto :goto_36

    :pswitch_data_66
    .packed-switch 0x10
        :pswitch_47  #00000010
        :pswitch_2f  #00000011
        :pswitch_24  #00000012
    .end packed-switch
.end method

.method public getValueType()I
    .registers 2

    iget v0, p0, Lcom/android/apksig/internal/apk/AndroidBinXmlParser$Attribute;->mValueType:I

    return v0
.end method
