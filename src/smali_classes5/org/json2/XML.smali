.class public Lorg/json2/XML;
.super Ljava/lang/Object;


# static fields
.field public static final AMP:Ljava/lang/Character;

.field public static final APOS:Ljava/lang/Character;

.field public static final BANG:Ljava/lang/Character;

.field public static final EQ:Ljava/lang/Character;

.field public static final GT:Ljava/lang/Character;

.field public static final LT:Ljava/lang/Character;

.field public static final NULL_ATTR:Ljava/lang/String; = "xsi:nil"

.field public static final QUEST:Ljava/lang/Character;

.field public static final QUOT:Ljava/lang/Character;

.field public static final SLASH:Ljava/lang/Character;

.field public static final TYPE_ATTR:Ljava/lang/String; = "xsi:type"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x26

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    sput-object v0, Lorg/json2/XML;->AMP:Ljava/lang/Character;

    const/16 v0, 0x27

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    sput-object v0, Lorg/json2/XML;->APOS:Ljava/lang/Character;

    const/16 v0, 0x21

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    sput-object v0, Lorg/json2/XML;->BANG:Ljava/lang/Character;

    const/16 v0, 0x3d

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    sput-object v0, Lorg/json2/XML;->EQ:Ljava/lang/Character;

    const/16 v0, 0x3e

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    sput-object v0, Lorg/json2/XML;->GT:Ljava/lang/Character;

    const/16 v0, 0x3c

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    sput-object v0, Lorg/json2/XML;->LT:Ljava/lang/Character;

    const/16 v0, 0x3f

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    sput-object v0, Lorg/json2/XML;->QUEST:Ljava/lang/Character;

    const/16 v0, 0x22

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    sput-object v0, Lorg/json2/XML;->QUOT:Ljava/lang/Character;

    const/16 v0, 0x2f

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    sput-object v0, Lorg/json2/XML;->SLASH:Ljava/lang/Character;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static codePointIterator(Ljava/lang/String;)Ljava/lang/Iterable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/json2/XML$1;

    invoke-direct {v0, p0}, Lorg/json2/XML$1;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static escape(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {p0}, Lorg/json2/XML;->codePointIterator(Ljava/lang/String;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_52

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sparse-switch v0, :sswitch_data_58

    invoke-static {v0}, Lorg/json2/XML;->mustEscape(I)Z

    move-result v3

    if-eqz v3, :cond_4e

    const-string v3, "&#x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x3b

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_11

    :sswitch_3c
    const-string v0, "&gt;"

    :goto_3e
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_11

    :sswitch_42
    const-string v0, "&lt;"

    goto :goto_3e

    :sswitch_45
    const-string v0, "&apos;"

    goto :goto_3e

    :sswitch_48
    const-string v0, "&amp;"

    goto :goto_3e

    :sswitch_4b
    const-string v0, "&quot;"

    goto :goto_3e

    :cond_4e
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    goto :goto_11

    :cond_52
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_58
    .sparse-switch
        0x22 -> :sswitch_4b
        0x26 -> :sswitch_48
        0x27 -> :sswitch_45
        0x3c -> :sswitch_42
        0x3e -> :sswitch_3c
    .end sparse-switch
.end method

.method private static isDecimalNotation(Ljava/lang/String;)Z
    .registers 3

    const/4 v1, -0x1

    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gt v0, v1, :cond_21

    const/16 v0, 0x65

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gt v0, v1, :cond_21

    const/16 v0, 0x45

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gt v0, v1, :cond_21

    const-string v0, "-0"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    :cond_21
    const/4 v0, 0x1

    :goto_22
    return v0

    :cond_23
    const/4 v0, 0x0

    goto :goto_22
.end method

.method private static mustEscape(I)Z
    .registers 2

    invoke-static {p0}, Ljava/lang/Character;->isISOControl(I)Z

    move-result v0

    if-eqz v0, :cond_12

    const/16 v0, 0x9

    if-eq p0, v0, :cond_12

    const/16 v0, 0xa

    if-eq p0, v0, :cond_12

    const/16 v0, 0xd

    if-ne p0, v0, :cond_2e

    :cond_12
    const/16 v0, 0x20

    if-lt p0, v0, :cond_1b

    const v0, 0xd7ff

    if-le p0, v0, :cond_30

    :cond_1b
    const v0, 0xe000

    if-lt p0, v0, :cond_25

    const v0, 0xfffd

    if-le p0, v0, :cond_30

    :cond_25
    const/high16 v0, 0x10000

    if-lt p0, v0, :cond_2e

    const v0, 0x10ffff

    if-le p0, v0, :cond_30

    :cond_2e
    const/4 v0, 0x1

    :goto_2f
    return v0

    :cond_30
    const/4 v0, 0x0

    goto :goto_2f
.end method

.method public static noSpace(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json2/JSONException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_32

    const/4 v0, 0x0

    :goto_7
    if-ge v0, v1, :cond_3a

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-nez v2, :cond_16

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' contains a space character."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lorg/json2/JSONException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/json2/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_32
    new-instance v0, Lorg/json2/JSONException;

    const-string v1, "Empty string."

    invoke-direct {v0, v1}, Lorg/json2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3a
    return-void
.end method

.method private static parse(Lorg/json2/XMLTokener;Lorg/json2/JSONObject;Ljava/lang/String;Lorg/json2/XMLParserConfiguration;)Z
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json2/JSONException;
        }
    .end annotation

    const/16 v3, 0x5b

    const/16 v2, 0x2d

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v4, 0x1

    invoke-virtual {p0}, Lorg/json2/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lorg/json2/XML;->BANG:Ljava/lang/Character;

    if-ne v0, v1, :cond_70

    invoke-virtual {p0}, Lorg/json2/XMLTokener;->next()C

    move-result v0

    if-ne v0, v2, :cond_35

    invoke-virtual {p0}, Lorg/json2/XMLTokener;->next()C

    move-result v0

    if-ne v0, v2, :cond_22

    const-string v0, "-->"

    :goto_1d
    invoke-virtual {p0, v0}, Lorg/json2/XMLTokener;->skipPast(Ljava/lang/String;)V

    :cond_20
    :goto_20
    move v4, v7

    :cond_21
    return v4

    :cond_22
    invoke-virtual {p0}, Lorg/json2/XMLTokener;->back()V

    move v0, v4

    :cond_26
    :goto_26
    invoke-virtual {p0}, Lorg/json2/XMLTokener;->nextMeta()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_69

    sget-object v2, Lorg/json2/XML;->LT:Ljava/lang/Character;

    if-ne v1, v2, :cond_62

    add-int/lit8 v0, v0, 0x1

    :cond_32
    :goto_32
    if-gtz v0, :cond_26

    goto :goto_20

    :cond_35
    if-ne v0, v3, :cond_266

    const-string v0, "CDATA"

    invoke-virtual {p0}, Lorg/json2/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5b

    invoke-virtual {p0}, Lorg/json2/XMLTokener;->next()C

    move-result v0

    if-ne v0, v3, :cond_5b

    invoke-virtual {p0}, Lorg/json2/XMLTokener;->nextCDATA()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_20

    invoke-virtual {p3}, Lorg/json2/XMLParserConfiguration;->getcDataTagName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lorg/json2/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json2/JSONObject;

    goto :goto_20

    :cond_5b
    const-string v0, "Expected \'CDATA[\'"

    invoke-virtual {p0, v0}, Lorg/json2/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json2/JSONException;

    move-result-object v0

    throw v0

    :cond_62
    sget-object v2, Lorg/json2/XML;->GT:Ljava/lang/Character;

    if-ne v1, v2, :cond_32

    add-int/lit8 v0, v0, -0x1

    goto :goto_32

    :cond_69
    const-string v0, "Missing \'>\' after \'<!\'."

    invoke-virtual {p0, v0}, Lorg/json2/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json2/JSONException;

    move-result-object v0

    throw v0

    :cond_70
    sget-object v1, Lorg/json2/XML;->QUEST:Ljava/lang/Character;

    if-ne v0, v1, :cond_77

    const-string v0, "?>"

    goto :goto_1d

    :cond_77
    sget-object v1, Lorg/json2/XML;->SLASH:Ljava/lang/Character;

    if-ne v0, v1, :cond_ca

    invoke-virtual {p0}, Lorg/json2/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object v0

    if-eqz p2, :cond_b4

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_96

    invoke-virtual {p0}, Lorg/json2/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lorg/json2/XML;->GT:Ljava/lang/Character;

    if-eq v0, v1, :cond_21

    const-string v0, "Misshaped close tag"

    invoke-virtual {p0, v0}, Lorg/json2/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json2/JSONException;

    move-result-object v0

    throw v0

    :cond_96
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mismatched "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json2/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json2/JSONException;

    move-result-object v0

    throw v0

    :cond_b4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mismatched close tag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json2/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json2/JSONException;

    move-result-object v0

    throw v0

    :cond_ca
    instance-of v1, v0, Ljava/lang/Character;

    if-nez v1, :cond_258

    check-cast v0, Ljava/lang/String;

    new-instance v9, Lorg/json2/JSONObject;

    invoke-direct {v9}, Lorg/json2/JSONObject;-><init>()V

    move-object v5, v8

    move v6, v7

    move-object v3, v8

    :goto_d8
    if-nez v3, :cond_25f

    invoke-virtual {p0}, Lorg/json2/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object v1

    :goto_de
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_159

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0}, Lorg/json2/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lorg/json2/XML;->EQ:Ljava/lang/Character;

    if-ne v1, v2, :cond_152

    invoke-virtual {p0}, Lorg/json2/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object v2

    instance-of v1, v2, Ljava/lang/String;

    if-eqz v1, :cond_14b

    invoke-virtual {p3}, Lorg/json2/XMLParserConfiguration;->isConvertNilAttributeToNull()Z

    move-result v1

    if-eqz v1, :cond_112

    const-string v1, "xsi:nil"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_112

    move-object v1, v2

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_112

    move-object v1, v5

    move v2, v4

    :goto_10e
    move-object v5, v1

    move v6, v2

    move-object v3, v8

    goto :goto_d8

    :cond_112
    invoke-virtual {p3}, Lorg/json2/XMLParserConfiguration;->getXsiTypeMap()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_136

    invoke-virtual {p3}, Lorg/json2/XMLParserConfiguration;->getXsiTypeMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_136

    const-string v1, "xsi:type"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_136

    invoke-virtual {p3}, Lorg/json2/XMLParserConfiguration;->getXsiTypeMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json2/XMLXsiTypeConverter;

    move v2, v6

    goto :goto_10e

    :cond_136
    if-nez v6, :cond_262

    invoke-virtual {p3}, Lorg/json2/XMLParserConfiguration;->isKeepStrings()Z

    move-result v1

    check-cast v2, Ljava/lang/String;

    if-eqz v1, :cond_146

    :goto_140
    invoke-virtual {v9, v3, v2}, Lorg/json2/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json2/JSONObject;

    move-object v1, v5

    move v2, v6

    goto :goto_10e

    :cond_146
    invoke-static {v2}, Lorg/json2/XML;->stringToValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_140

    :cond_14b
    const-string v0, "Missing value"

    invoke-virtual {p0, v0}, Lorg/json2/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json2/JSONException;

    move-result-object v0

    throw v0

    :cond_152
    const-string v2, ""

    invoke-virtual {v9, v3, v2}, Lorg/json2/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json2/JSONObject;

    move-object v3, v1

    goto :goto_d8

    :cond_159
    sget-object v2, Lorg/json2/XML;->SLASH:Ljava/lang/Character;

    if-ne v1, v2, :cond_1b5

    invoke-virtual {p0}, Lorg/json2/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lorg/json2/XML;->GT:Ljava/lang/Character;

    if-ne v1, v2, :cond_1ae

    invoke-virtual {p3}, Lorg/json2/XMLParserConfiguration;->getForceList()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18d

    if-eqz v6, :cond_178

    sget-object v1, Lorg/json2/JSONObject;->NULL:Ljava/lang/Object;

    :goto_173
    invoke-virtual {p1, v0, v1}, Lorg/json2/JSONObject;->append(Ljava/lang/String;Ljava/lang/Object;)Lorg/json2/JSONObject;

    goto/16 :goto_20

    :cond_178
    invoke-virtual {v9}, Lorg/json2/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_183

    :cond_17e
    invoke-virtual {p1, v0, v9}, Lorg/json2/JSONObject;->append(Ljava/lang/String;Ljava/lang/Object;)Lorg/json2/JSONObject;

    goto/16 :goto_20

    :cond_183
    new-instance v1, Lorg/json2/JSONArray;

    invoke-direct {v1}, Lorg/json2/JSONArray;-><init>()V

    :goto_188
    invoke-virtual {p1, v0, v1}, Lorg/json2/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json2/JSONObject;

    goto/16 :goto_20

    :cond_18d
    if-eqz v6, :cond_196

    sget-object v1, Lorg/json2/JSONObject;->NULL:Ljava/lang/Object;

    :goto_191
    invoke-virtual {p1, v0, v1}, Lorg/json2/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json2/JSONObject;

    goto/16 :goto_20

    :cond_196
    invoke-virtual {v9}, Lorg/json2/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_1a7

    :cond_19c
    invoke-virtual {p1, v0, v9}, Lorg/json2/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json2/JSONObject;

    goto/16 :goto_20

    :cond_1a1
    invoke-virtual {v9}, Lorg/json2/JSONObject;->length()I

    move-result v1

    if-nez v1, :cond_237

    :cond_1a7
    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lorg/json2/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json2/JSONObject;

    goto/16 :goto_20

    :cond_1ae
    const-string v0, "Misshaped tag"

    invoke-virtual {p0, v0}, Lorg/json2/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json2/JSONException;

    move-result-object v0

    throw v0

    :cond_1b5
    sget-object v2, Lorg/json2/XML;->GT:Ljava/lang/Character;

    if-ne v1, v2, :cond_251

    :cond_1b9
    :goto_1b9
    invoke-virtual {p0}, Lorg/json2/XMLTokener;->nextContent()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1d7

    if-eqz v0, :cond_20

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unclosed tag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json2/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json2/JSONException;

    move-result-object v0

    throw v0

    :cond_1d7
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_1fc

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1b9

    invoke-virtual {p3}, Lorg/json2/XMLParserConfiguration;->getcDataTagName()Ljava/lang/String;

    move-result-object v2

    if-eqz v5, :cond_1f1

    invoke-static {v1, v5}, Lorg/json2/XML;->stringToValue(Ljava/lang/String;Lorg/json2/XMLXsiTypeConverter;)Ljava/lang/Object;

    move-result-object v1

    :cond_1ed
    :goto_1ed
    invoke-virtual {v9, v2, v1}, Lorg/json2/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json2/JSONObject;

    goto :goto_1b9

    :cond_1f1
    invoke-virtual {p3}, Lorg/json2/XMLParserConfiguration;->isKeepStrings()Z

    move-result v3

    if-nez v3, :cond_1ed

    invoke-static {v1}, Lorg/json2/XML;->stringToValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_1ed

    :cond_1fc
    sget-object v2, Lorg/json2/XML;->LT:Ljava/lang/Character;

    if-ne v1, v2, :cond_1b9

    invoke-static {p0, v9, v0, p3}, Lorg/json2/XML;->parse(Lorg/json2/XMLTokener;Lorg/json2/JSONObject;Ljava/lang/String;Lorg/json2/XMLParserConfiguration;)Z

    move-result v1

    if-eqz v1, :cond_1b9

    invoke-virtual {p3}, Lorg/json2/XMLParserConfiguration;->getForceList()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a1

    invoke-virtual {v9}, Lorg/json2/JSONObject;->length()I

    move-result v1

    if-nez v1, :cond_21d

    new-instance v1, Lorg/json2/JSONArray;

    invoke-direct {v1}, Lorg/json2/JSONArray;-><init>()V

    goto/16 :goto_188

    :cond_21d
    invoke-virtual {v9}, Lorg/json2/JSONObject;->length()I

    move-result v1

    if-ne v1, v4, :cond_17e

    invoke-virtual {p3}, Lorg/json2/XMLParserConfiguration;->getcDataTagName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lorg/json2/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_17e

    invoke-virtual {p3}, Lorg/json2/XMLParserConfiguration;->getcDataTagName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lorg/json2/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_173

    :cond_237
    invoke-virtual {v9}, Lorg/json2/JSONObject;->length()I

    move-result v1

    if-ne v1, v4, :cond_19c

    invoke-virtual {p3}, Lorg/json2/XMLParserConfiguration;->getcDataTagName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lorg/json2/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_19c

    invoke-virtual {p3}, Lorg/json2/XMLParserConfiguration;->getcDataTagName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lorg/json2/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_191

    :cond_251
    const-string v0, "Misshaped tag"

    invoke-virtual {p0, v0}, Lorg/json2/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json2/JSONException;

    move-result-object v0

    throw v0

    :cond_258
    const-string v0, "Misshaped tag"

    invoke-virtual {p0, v0}, Lorg/json2/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json2/JSONException;

    move-result-object v0

    throw v0

    :cond_25f
    move-object v1, v3

    goto/16 :goto_de

    :cond_262
    move-object v1, v5

    move v2, v6

    goto/16 :goto_10e

    :cond_266
    move v0, v4

    goto/16 :goto_26
.end method

.method private static stringToNumber(Ljava/lang/String;)Ljava/lang/Number;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    const/4 v6, 0x2

    const/16 v5, 0x39

    const/16 v4, 0x2d

    const/4 v3, 0x1

    const/16 v2, 0x30

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-lt v1, v2, :cond_11

    if-le v1, v5, :cond_13

    :cond_11
    if-ne v1, v4, :cond_ff

    :cond_13
    invoke-static {p0}, Lorg/json2/XML;->isDecimalNotation(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_79

    :try_start_19
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    if-ne v1, v4, :cond_2e

    sget-object v1, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-virtual {v1, v0}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I
    :try_end_25
    .catch Ljava/lang/NumberFormatException; {:try_start_19 .. :try_end_25} :catch_2f

    move-result v1

    if-nez v1, :cond_2e

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    :cond_2e
    :goto_2e
    return-object v0

    :catch_2f
    move-exception v0

    :try_start_30
    invoke-static {p0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->isNaN()Z

    move-result v1

    if-nez v1, :cond_40

    invoke-virtual {v0}, Ljava/lang/Double;->isInfinite()Z

    move-result v1

    if-eqz v1, :cond_2e

    :cond_40
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "val ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] is not a valid number."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5c
    .catch Ljava/lang/NumberFormatException; {:try_start_30 .. :try_end_5c} :catch_5c

    :catch_5c
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "val ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] is not a valid number."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/NumberFormatException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_79
    if-ne v1, v2, :cond_bb

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v3, :cond_bb

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-lt v0, v2, :cond_89

    if-le v0, v5, :cond_9f

    :cond_89
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, p0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    const/16 v2, 0x1f

    if-gt v1, v2, :cond_ed

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_2e

    :cond_9f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "val ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] is not a valid number."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/NumberFormatException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_bb
    if-ne v1, v4, :cond_89

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v6, :cond_89

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v0, v2, :cond_89

    if-lt v1, v2, :cond_89

    if-gt v1, v5, :cond_89

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "val ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] is not a valid number."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/NumberFormatException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_ed
    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    const/16 v2, 0x3f

    if-gt v1, v2, :cond_2e

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto/16 :goto_2e

    :cond_ff
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "val ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] is not a valid number."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/NumberFormatException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static stringToValue(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    const-string v0, ""

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    :goto_8
    return-object p0

    :cond_9
    const-string v0, "true"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_8

    :cond_14
    const-string v0, "false"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_8

    :cond_1f
    const-string v0, "null"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    sget-object p0, Lorg/json2/JSONObject;->NULL:Ljava/lang/Object;

    goto :goto_8

    :cond_2a
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x30

    if-lt v0, v1, :cond_37

    const/16 v1, 0x39

    if-le v0, v1, :cond_3b

    :cond_37
    const/16 v1, 0x2d

    if-ne v0, v1, :cond_8

    :cond_3b
    :try_start_3b
    invoke-static {p0}, Lorg/json2/XML;->stringToNumber(Ljava/lang/String;)Ljava/lang/Number;
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_3e} :catch_40

    move-result-object p0

    goto :goto_8

    :catch_40
    move-exception v0

    goto :goto_8
.end method

.method public static stringToValue(Ljava/lang/String;Lorg/json2/XMLXsiTypeConverter;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/json2/XMLXsiTypeConverter",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    if-eqz p1, :cond_7

    invoke-interface {p1, p0}, Lorg/json2/XMLXsiTypeConverter;->convert(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    :goto_6
    return-object v0

    :cond_7
    invoke-static {p0}, Lorg/json2/XML;->stringToValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_6
.end method

.method public static toJSONObject(Ljava/io/Reader;)Lorg/json2/JSONObject;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json2/JSONException;
        }
    .end annotation

    sget-object v0, Lorg/json2/XMLParserConfiguration;->ORIGINAL:Lorg/json2/XMLParserConfiguration;

    invoke-static {p0, v0}, Lorg/json2/XML;->toJSONObject(Ljava/io/Reader;Lorg/json2/XMLParserConfiguration;)Lorg/json2/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public static toJSONObject(Ljava/io/Reader;Lorg/json2/XMLParserConfiguration;)Lorg/json2/JSONObject;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json2/JSONException;
        }
    .end annotation

    new-instance v0, Lorg/json2/JSONObject;

    invoke-direct {v0}, Lorg/json2/JSONObject;-><init>()V

    new-instance v1, Lorg/json2/XMLTokener;

    invoke-direct {v1, p0}, Lorg/json2/XMLTokener;-><init>(Ljava/io/Reader;)V

    :cond_a
    :goto_a
    invoke-virtual {v1}, Lorg/json2/XMLTokener;->more()Z

    move-result v2

    if-eqz v2, :cond_20

    const-string v2, "<"

    invoke-virtual {v1, v2}, Lorg/json2/XMLTokener;->skipPast(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json2/XMLTokener;->more()Z

    move-result v2

    if-eqz v2, :cond_a

    const/4 v2, 0x0

    invoke-static {v1, v0, v2, p1}, Lorg/json2/XML;->parse(Lorg/json2/XMLTokener;Lorg/json2/JSONObject;Ljava/lang/String;Lorg/json2/XMLParserConfiguration;)Z

    goto :goto_a

    :cond_20
    return-object v0
.end method

.method public static toJSONObject(Ljava/io/Reader;Z)Lorg/json2/JSONObject;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json2/JSONException;
        }
    .end annotation

    if-eqz p1, :cond_9

    sget-object v0, Lorg/json2/XMLParserConfiguration;->KEEP_STRINGS:Lorg/json2/XMLParserConfiguration;

    :goto_4
    invoke-static {p0, v0}, Lorg/json2/XML;->toJSONObject(Ljava/io/Reader;Lorg/json2/XMLParserConfiguration;)Lorg/json2/JSONObject;

    move-result-object v0

    return-object v0

    :cond_9
    sget-object v0, Lorg/json2/XMLParserConfiguration;->ORIGINAL:Lorg/json2/XMLParserConfiguration;

    goto :goto_4
.end method

.method public static toJSONObject(Ljava/lang/String;)Lorg/json2/JSONObject;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json2/JSONException;
        }
    .end annotation

    sget-object v0, Lorg/json2/XMLParserConfiguration;->ORIGINAL:Lorg/json2/XMLParserConfiguration;

    invoke-static {p0, v0}, Lorg/json2/XML;->toJSONObject(Ljava/lang/String;Lorg/json2/XMLParserConfiguration;)Lorg/json2/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public static toJSONObject(Ljava/lang/String;Lorg/json2/XMLParserConfiguration;)Lorg/json2/JSONObject;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json2/JSONException;
        }
    .end annotation

    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Lorg/json2/XML;->toJSONObject(Ljava/io/Reader;Lorg/json2/XMLParserConfiguration;)Lorg/json2/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public static toJSONObject(Ljava/lang/String;Z)Lorg/json2/JSONObject;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json2/JSONException;
        }
    .end annotation

    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Lorg/json2/XML;->toJSONObject(Ljava/io/Reader;Z)Lorg/json2/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public static toString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json2/JSONException;
        }
    .end annotation

    const/4 v0, 0x0

    sget-object v1, Lorg/json2/XMLParserConfiguration;->ORIGINAL:Lorg/json2/XMLParserConfiguration;

    invoke-static {p0, v0, v1}, Lorg/json2/XML;->toString(Ljava/lang/Object;Ljava/lang/String;Lorg/json2/XMLParserConfiguration;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    sget-object v0, Lorg/json2/XMLParserConfiguration;->ORIGINAL:Lorg/json2/XMLParserConfiguration;

    invoke-static {p0, p1, v0}, Lorg/json2/XML;->toString(Ljava/lang/Object;Ljava/lang/String;Lorg/json2/XMLParserConfiguration;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString(Ljava/lang/Object;Ljava/lang/String;Lorg/json2/XMLParserConfiguration;)Ljava/lang/String;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json2/JSONException;
        }
    .end annotation

    const/16 v10, 0x3c

    const/4 v3, 0x0

    const/16 v9, 0x3e

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    instance-of v0, p0, Lorg/json2/JSONObject;

    if-eqz v0, :cond_ec

    if-eqz p1, :cond_19

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_19
    check-cast p0, Lorg/json2/JSONObject;

    invoke-virtual {p0}, Lorg/json2/JSONObject;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_23
    :goto_23
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_da

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/json2/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_68

    const-string v1, ""

    :goto_37
    invoke-virtual {p2}, Lorg/json2/XMLParserConfiguration;->getcDataTagName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_84

    instance-of v0, v1, Lorg/json2/JSONArray;

    if-eqz v0, :cond_78

    move-object v0, v1

    check-cast v0, Lorg/json2/JSONArray;

    invoke-virtual {v0}, Lorg/json2/JSONArray;->length()I

    move-result v2

    move v1, v3

    :goto_4d
    if-ge v1, v2, :cond_23

    if-lez v1, :cond_56

    const/16 v6, 0xa

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_56
    invoke-virtual {v0, v1}, Lorg/json2/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/json2/XML;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_4d

    :cond_68
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_197

    new-instance v1, Lorg/json2/JSONArray;

    invoke-direct {v1, v2}, Lorg/json2/JSONArray;-><init>(Ljava/lang/Object;)V

    goto :goto_37

    :cond_78
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/json2/XML;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_80
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_23

    :cond_84
    instance-of v2, v1, Lorg/json2/JSONArray;

    if-eqz v2, :cond_c0

    check-cast v1, Lorg/json2/JSONArray;

    invoke-virtual {v1}, Lorg/json2/JSONArray;->length()I

    move-result v6

    move v2, v3

    :goto_8f
    if-ge v2, v6, :cond_23

    invoke-virtual {v1, v2}, Lorg/json2/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v7

    instance-of v8, v7, Lorg/json2/JSONArray;

    if-eqz v8, :cond_b8

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v8, 0x0

    invoke-static {v7, v8, p2}, Lorg/json2/XML;->toString(Ljava/lang/Object;Ljava/lang/String;Lorg/json2/XMLParserConfiguration;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "</"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_b5
    add-int/lit8 v2, v2, 0x1

    goto :goto_8f

    :cond_b8
    invoke-static {v7, v0, p2}, Lorg/json2/XML;->toString(Ljava/lang/Object;Ljava/lang/String;Lorg/json2/XMLParserConfiguration;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b5

    :cond_c0
    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d5

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/>"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_23

    :cond_d5
    invoke-static {v1, v0, p2}, Lorg/json2/XML;->toString(Ljava/lang/Object;Ljava/lang/String;Lorg/json2/XMLParserConfiguration;)Ljava/lang/String;

    move-result-object v0

    goto :goto_80

    :cond_da
    if-eqz p1, :cond_e7

    const-string v0, "</"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_e7
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_eb
    return-object v0

    :cond_ec
    if-eqz p0, :cond_12b

    instance-of v0, p0, Lorg/json2/JSONArray;

    if-nez v0, :cond_fc

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_12b

    :cond_fc
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_126

    new-instance v0, Lorg/json2/JSONArray;

    invoke-direct {v0, p0}, Lorg/json2/JSONArray;-><init>(Ljava/lang/Object;)V

    move-object p0, v0

    :goto_10c
    invoke-virtual {p0}, Lorg/json2/JSONArray;->length()I

    move-result v2

    move v1, v3

    :goto_111
    if-ge v1, v2, :cond_e7

    invoke-virtual {p0, v1}, Lorg/json2/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v3

    if-nez p1, :cond_129

    const-string v0, "array"

    :goto_11b
    invoke-static {v3, v0, p2}, Lorg/json2/XML;->toString(Ljava/lang/Object;Ljava/lang/String;Lorg/json2/XMLParserConfiguration;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_111

    :cond_126
    check-cast p0, Lorg/json2/JSONArray;

    goto :goto_10c

    :cond_129
    move-object v0, p1

    goto :goto_11b

    :cond_12b
    if-nez p0, :cond_148

    const-string v0, "null"

    :goto_12f
    if-nez p1, :cond_151

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_eb

    :cond_148
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/json2/XML;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_12f

    :cond_151
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_16f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_eb

    :cond_16f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "</"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ">"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_eb

    :cond_197
    move-object v1, v2

    goto/16 :goto_37
.end method

.method public static unescape(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v0, 0x0

    :goto_e
    if-ge v0, v2, :cond_3b

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x26

    if-ne v3, v4, :cond_37

    const/16 v4, 0x3b

    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    if-le v4, v0, :cond_37

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/json2/XMLTokener;->unescapeEntity(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v0, v3

    :goto_34
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_37
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_34

    :cond_3b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
