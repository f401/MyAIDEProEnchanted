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

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-static {v0}, Lorg/json2/XML;->mustEscape(I)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "&#x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x3b

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :sswitch_0
    const-string v0, "&gt;"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :sswitch_1
    const-string v0, "&lt;"

    goto :goto_1

    :sswitch_2
    const-string v0, "&apos;"

    goto :goto_1

    :sswitch_3
    const-string v0, "&amp;"

    goto :goto_1

    :sswitch_4
    const-string v0, "&quot;"

    goto :goto_1

    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_4
        0x26 -> :sswitch_3
        0x27 -> :sswitch_2
        0x3c -> :sswitch_1
        0x3e -> :sswitch_0
    .end sparse-switch
.end method

.method private static isDecimalNotation(Ljava/lang/String;)Z
    .registers 3

    const/4 v1, -0x1

    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gt v0, v1, :cond_0

    const/16 v0, 0x65

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gt v0, v1, :cond_0

    const/16 v0, 0x45

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gt v0, v1, :cond_0

    const-string v0, "-0"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static mustEscape(I)Z
    .registers 2

    invoke-static {p0}, Ljava/lang/Character;->isISOControl(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    if-eq p0, v0, :cond_0

    const/16 v0, 0xa

    if-eq p0, v0, :cond_0

    const/16 v0, 0xd

    if-ne p0, v0, :cond_3

    :cond_0
    const/16 v0, 0x20

    if-lt p0, v0, :cond_1

    const v0, 0xd7ff

    if-le p0, v0, :cond_4

    :cond_1
    const v0, 0xe000

    if-lt p0, v0, :cond_2

    const v0, 0xfffd

    if-le p0, v0, :cond_4

    :cond_2
    const/high16 v0, 0x10000

    if-lt p0, v0, :cond_3

    const v0, 0x10ffff

    if-le p0, v0, :cond_4

    :cond_3
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
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

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
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

    :cond_1
    new-instance v0, Lorg/json2/JSONException;

    const-string v1, "Empty string."

    invoke-direct {v0, v1}, Lorg/json2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
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

    if-ne v0, v1, :cond_9

    invoke-virtual {p0}, Lorg/json2/XMLTokener;->next()C

    move-result v0

    if-ne v0, v2, :cond_5

    invoke-virtual {p0}, Lorg/json2/XMLTokener;->next()C

    move-result v0

    if-ne v0, v2, :cond_2

    const-string v0, "-->"

    :goto_0
    invoke-virtual {p0, v0}, Lorg/json2/XMLTokener;->skipPast(Ljava/lang/String;)V

    :cond_0
    :goto_1
    move v4, v7

    :cond_1
    return v4

    :cond_2
    invoke-virtual {p0}, Lorg/json2/XMLTokener;->back()V

    move v0, v4

    :cond_3
    :goto_2
    invoke-virtual {p0}, Lorg/json2/XMLTokener;->nextMeta()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_8

    sget-object v2, Lorg/json2/XML;->LT:Ljava/lang/Character;

    if-ne v1, v2, :cond_7

    add-int/lit8 v0, v0, 0x1

    :cond_4
    :goto_3
    if-gtz v0, :cond_3

    goto :goto_1

    :cond_5
    if-ne v0, v3, :cond_29

    const-string v0, "CDATA"

    invoke-virtual {p0}, Lorg/json2/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lorg/json2/XMLTokener;->next()C

    move-result v0

    if-ne v0, v3, :cond_6

    invoke-virtual {p0}, Lorg/json2/XMLTokener;->nextCDATA()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p3}, Lorg/json2/XMLParserConfiguration;->getcDataTagName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lorg/json2/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json2/JSONObject;

    goto :goto_1

    :cond_6
    const-string v0, "Expected \'CDATA[\'"

    invoke-virtual {p0, v0}, Lorg/json2/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json2/JSONException;

    move-result-object v0

    throw v0

    :cond_7
    sget-object v2, Lorg/json2/XML;->GT:Ljava/lang/Character;

    if-ne v1, v2, :cond_4

    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    :cond_8
    const-string v0, "Missing \'>\' after \'<!\'."

    invoke-virtual {p0, v0}, Lorg/json2/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json2/JSONException;

    move-result-object v0

    throw v0

    :cond_9
    sget-object v1, Lorg/json2/XML;->QUEST:Ljava/lang/Character;

    if-ne v0, v1, :cond_a

    const-string v0, "?>"

    goto :goto_0

    :cond_a
    sget-object v1, Lorg/json2/XML;->SLASH:Ljava/lang/Character;

    if-ne v0, v1, :cond_d

    invoke-virtual {p0}, Lorg/json2/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object v0

    if-eqz p2, :cond_c

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {p0}, Lorg/json2/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lorg/json2/XML;->GT:Ljava/lang/Character;

    if-eq v0, v1, :cond_1

    const-string v0, "Misshaped close tag"

    invoke-virtual {p0, v0}, Lorg/json2/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json2/JSONException;

    move-result-object v0

    throw v0

    :cond_b
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

    :cond_c
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

    :cond_d
    instance-of v1, v0, Ljava/lang/Character;

    if-nez v1, :cond_26

    check-cast v0, Ljava/lang/String;

    new-instance v9, Lorg/json2/JSONObject;

    invoke-direct {v9}, Lorg/json2/JSONObject;-><init>()V

    move-object v5, v8

    move v6, v7

    move-object v3, v8

    :goto_4
    if-nez v3, :cond_27

    invoke-virtual {p0}, Lorg/json2/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object v1

    :goto_5
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_13

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0}, Lorg/json2/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lorg/json2/XML;->EQ:Ljava/lang/Character;

    if-ne v1, v2, :cond_12

    invoke-virtual {p0}, Lorg/json2/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object v2

    instance-of v1, v2, Ljava/lang/String;

    if-eqz v1, :cond_11

    invoke-virtual {p3}, Lorg/json2/XMLParserConfiguration;->isConvertNilAttributeToNull()Z

    move-result v1

    if-eqz v1, :cond_e

    const-string v1, "xsi:nil"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    move-object v1, v2

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    move-object v1, v5

    move v2, v4

    :goto_6
    move-object v5, v1

    move v6, v2

    move-object v3, v8

    goto :goto_4

    :cond_e
    invoke-virtual {p3}, Lorg/json2/XMLParserConfiguration;->getXsiTypeMap()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_f

    invoke-virtual {p3}, Lorg/json2/XMLParserConfiguration;->getXsiTypeMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_f

    const-string v1, "xsi:type"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {p3}, Lorg/json2/XMLParserConfiguration;->getXsiTypeMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json2/XMLXsiTypeConverter;

    move v2, v6

    goto :goto_6

    :cond_f
    if-nez v6, :cond_28

    invoke-virtual {p3}, Lorg/json2/XMLParserConfiguration;->isKeepStrings()Z

    move-result v1

    check-cast v2, Ljava/lang/String;

    if-eqz v1, :cond_10

    :goto_7
    invoke-virtual {v9, v3, v2}, Lorg/json2/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json2/JSONObject;

    move-object v1, v5

    move v2, v6

    goto :goto_6

    :cond_10
    invoke-static {v2}, Lorg/json2/XML;->stringToValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_7

    :cond_11
    const-string v0, "Missing value"

    invoke-virtual {p0, v0}, Lorg/json2/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json2/JSONException;

    move-result-object v0

    throw v0

    :cond_12
    const-string v2, ""

    invoke-virtual {v9, v3, v2}, Lorg/json2/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json2/JSONObject;

    move-object v3, v1

    goto :goto_4

    :cond_13
    sget-object v2, Lorg/json2/XML;->SLASH:Ljava/lang/Character;

    if-ne v1, v2, :cond_1d

    invoke-virtual {p0}, Lorg/json2/XMLTokener;->nextToken()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lorg/json2/XML;->GT:Ljava/lang/Character;

    if-ne v1, v2, :cond_1c

    invoke-virtual {p3}, Lorg/json2/XMLParserConfiguration;->getForceList()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    if-eqz v6, :cond_14

    sget-object v1, Lorg/json2/JSONObject;->NULL:Ljava/lang/Object;

    :goto_8
    invoke-virtual {p1, v0, v1}, Lorg/json2/JSONObject;->append(Ljava/lang/String;Ljava/lang/Object;)Lorg/json2/JSONObject;

    goto/16 :goto_1

    :cond_14
    invoke-virtual {v9}, Lorg/json2/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_16

    :cond_15
    invoke-virtual {p1, v0, v9}, Lorg/json2/JSONObject;->append(Ljava/lang/String;Ljava/lang/Object;)Lorg/json2/JSONObject;

    goto/16 :goto_1

    :cond_16
    new-instance v1, Lorg/json2/JSONArray;

    invoke-direct {v1}, Lorg/json2/JSONArray;-><init>()V

    :goto_9
    invoke-virtual {p1, v0, v1}, Lorg/json2/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json2/JSONObject;

    goto/16 :goto_1

    :cond_17
    if-eqz v6, :cond_18

    sget-object v1, Lorg/json2/JSONObject;->NULL:Ljava/lang/Object;

    :goto_a
    invoke-virtual {p1, v0, v1}, Lorg/json2/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json2/JSONObject;

    goto/16 :goto_1

    :cond_18
    invoke-virtual {v9}, Lorg/json2/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_1b

    :cond_19
    invoke-virtual {p1, v0, v9}, Lorg/json2/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json2/JSONObject;

    goto/16 :goto_1

    :cond_1a
    invoke-virtual {v9}, Lorg/json2/JSONObject;->length()I

    move-result v1

    if-nez v1, :cond_24

    :cond_1b
    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lorg/json2/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json2/JSONObject;

    goto/16 :goto_1

    :cond_1c
    const-string v0, "Misshaped tag"

    invoke-virtual {p0, v0}, Lorg/json2/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json2/JSONException;

    move-result-object v0

    throw v0

    :cond_1d
    sget-object v2, Lorg/json2/XML;->GT:Ljava/lang/Character;

    if-ne v1, v2, :cond_25

    :cond_1e
    :goto_b
    invoke-virtual {p0}, Lorg/json2/XMLTokener;->nextContent()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1f

    if-eqz v0, :cond_0

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

    :cond_1f
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_22

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1e

    invoke-virtual {p3}, Lorg/json2/XMLParserConfiguration;->getcDataTagName()Ljava/lang/String;

    move-result-object v2

    if-eqz v5, :cond_21

    invoke-static {v1, v5}, Lorg/json2/XML;->stringToValue(Ljava/lang/String;Lorg/json2/XMLXsiTypeConverter;)Ljava/lang/Object;

    move-result-object v1

    :cond_20
    :goto_c
    invoke-virtual {v9, v2, v1}, Lorg/json2/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json2/JSONObject;

    goto :goto_b

    :cond_21
    invoke-virtual {p3}, Lorg/json2/XMLParserConfiguration;->isKeepStrings()Z

    move-result v3

    if-nez v3, :cond_20

    invoke-static {v1}, Lorg/json2/XML;->stringToValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_c

    :cond_22
    sget-object v2, Lorg/json2/XML;->LT:Ljava/lang/Character;

    if-ne v1, v2, :cond_1e

    invoke-static {p0, v9, v0, p3}, Lorg/json2/XML;->parse(Lorg/json2/XMLTokener;Lorg/json2/JSONObject;Ljava/lang/String;Lorg/json2/XMLParserConfiguration;)Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-virtual {p3}, Lorg/json2/XMLParserConfiguration;->getForceList()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-virtual {v9}, Lorg/json2/JSONObject;->length()I

    move-result v1

    if-nez v1, :cond_23

    new-instance v1, Lorg/json2/JSONArray;

    invoke-direct {v1}, Lorg/json2/JSONArray;-><init>()V

    goto/16 :goto_9

    :cond_23
    invoke-virtual {v9}, Lorg/json2/JSONObject;->length()I

    move-result v1

    if-ne v1, v4, :cond_15

    invoke-virtual {p3}, Lorg/json2/XMLParserConfiguration;->getcDataTagName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lorg/json2/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_15

    invoke-virtual {p3}, Lorg/json2/XMLParserConfiguration;->getcDataTagName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lorg/json2/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_8

    :cond_24
    invoke-virtual {v9}, Lorg/json2/JSONObject;->length()I

    move-result v1

    if-ne v1, v4, :cond_19

    invoke-virtual {p3}, Lorg/json2/XMLParserConfiguration;->getcDataTagName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lorg/json2/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_19

    invoke-virtual {p3}, Lorg/json2/XMLParserConfiguration;->getcDataTagName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lorg/json2/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_a

    :cond_25
    const-string v0, "Misshaped tag"

    invoke-virtual {p0, v0}, Lorg/json2/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json2/JSONException;

    move-result-object v0

    throw v0

    :cond_26
    const-string v0, "Misshaped tag"

    invoke-virtual {p0, v0}, Lorg/json2/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json2/JSONException;

    move-result-object v0

    throw v0

    :cond_27
    move-object v1, v3

    goto/16 :goto_5

    :cond_28
    move-object v1, v5

    move v2, v6

    goto/16 :goto_6

    :cond_29
    move v0, v4

    goto/16 :goto_2
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

    if-lt v1, v2, :cond_0

    if-le v1, v5, :cond_1

    :cond_0
    if-ne v1, v4, :cond_9

    :cond_1
    invoke-static {p0}, Lorg/json2/XML;->isDecimalNotation(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    :try_start_0
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    if-ne v1, v4, :cond_2

    sget-object v1, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-virtual {v1, v0}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_2

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    :cond_2
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {p0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->isNaN()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Ljava/lang/Double;->isInfinite()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_3
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
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
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

    :cond_4
    if-ne v1, v2, :cond_7

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v3, :cond_7

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-lt v0, v2, :cond_5

    if-le v0, v5, :cond_6

    :cond_5
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, p0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    const/16 v2, 0x1f

    if-gt v1, v2, :cond_8

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_6
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

    :cond_7
    if-ne v1, v4, :cond_5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v6, :cond_5

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v0, v2, :cond_5

    if-lt v1, v2, :cond_5

    if-gt v1, v5, :cond_5

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

    :cond_8
    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    const/16 v2, 0x3f

    if-gt v1, v2, :cond_2

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto/16 :goto_0

    :cond_9
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

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    const-string v0, "true"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_2
    const-string v0, "false"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_3
    const-string v0, "null"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object p0, Lorg/json2/JSONObject;->NULL:Ljava/lang/Object;

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x30

    if-lt v0, v1, :cond_5

    const/16 v1, 0x39

    if-le v0, v1, :cond_6

    :cond_5
    const/16 v1, 0x2d

    if-ne v0, v1, :cond_0

    :cond_6
    :try_start_0
    invoke-static {p0}, Lorg/json2/XML;->stringToNumber(Ljava/lang/String;)Ljava/lang/Number;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
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

    if-eqz p1, :cond_0

    invoke-interface {p1, p0}, Lorg/json2/XMLXsiTypeConverter;->convert(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lorg/json2/XML;->stringToValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
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

    :cond_0
    :goto_0
    invoke-virtual {v1}, Lorg/json2/XMLTokener;->more()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "<"

    invoke-virtual {v1, v2}, Lorg/json2/XMLTokener;->skipPast(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json2/XMLTokener;->more()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-static {v1, v0, v2, p1}, Lorg/json2/XML;->parse(Lorg/json2/XMLTokener;Lorg/json2/JSONObject;Ljava/lang/String;Lorg/json2/XMLParserConfiguration;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static toJSONObject(Ljava/io/Reader;Z)Lorg/json2/JSONObject;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json2/JSONException;
        }
    .end annotation

    if-eqz p1, :cond_0

    sget-object v0, Lorg/json2/XMLParserConfiguration;->KEEP_STRINGS:Lorg/json2/XMLParserConfiguration;

    :goto_0
    invoke-static {p0, v0}, Lorg/json2/XML;->toJSONObject(Ljava/io/Reader;Lorg/json2/XMLParserConfiguration;)Lorg/json2/JSONObject;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lorg/json2/XMLParserConfiguration;->ORIGINAL:Lorg/json2/XMLParserConfiguration;

    goto :goto_0
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

    if-eqz v0, :cond_b

    if-eqz p1, :cond_0

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    check-cast p0, Lorg/json2/JSONObject;

    invoke-virtual {p0}, Lorg/json2/JSONObject;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/json2/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_3

    const-string v1, ""

    :goto_1
    invoke-virtual {p2}, Lorg/json2/XMLParserConfiguration;->getcDataTagName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    instance-of v0, v1, Lorg/json2/JSONArray;

    if-eqz v0, :cond_4

    move-object v0, v1

    check-cast v0, Lorg/json2/JSONArray;

    invoke-virtual {v0}, Lorg/json2/JSONArray;->length()I

    move-result v2

    move v1, v3

    :goto_2
    if-ge v1, v2, :cond_1

    if-lez v1, :cond_2

    const/16 v6, 0xa

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v0, v1}, Lorg/json2/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/json2/XML;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_13

    new-instance v1, Lorg/json2/JSONArray;

    invoke-direct {v1, v2}, Lorg/json2/JSONArray;-><init>(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/json2/XML;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_5
    instance-of v2, v1, Lorg/json2/JSONArray;

    if-eqz v2, :cond_7

    check-cast v1, Lorg/json2/JSONArray;

    invoke-virtual {v1}, Lorg/json2/JSONArray;->length()I

    move-result v6

    move v2, v3

    :goto_4
    if-ge v2, v6, :cond_1

    invoke-virtual {v1, v2}, Lorg/json2/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v7

    instance-of v8, v7, Lorg/json2/JSONArray;

    if-eqz v8, :cond_6

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

    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_6
    invoke-static {v7, v0, p2}, Lorg/json2/XML;->toString(Ljava/lang/Object;Ljava/lang/String;Lorg/json2/XMLParserConfiguration;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_7
    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/>"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_8
    invoke-static {v1, v0, p2}, Lorg/json2/XML;->toString(Ljava/lang/Object;Ljava/lang/String;Lorg/json2/XMLParserConfiguration;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_9
    if-eqz p1, :cond_a

    const-string v0, "</"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_6
    return-object v0

    :cond_b
    if-eqz p0, :cond_f

    instance-of v0, p0, Lorg/json2/JSONArray;

    if-nez v0, :cond_c

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_c
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_d

    new-instance v0, Lorg/json2/JSONArray;

    invoke-direct {v0, p0}, Lorg/json2/JSONArray;-><init>(Ljava/lang/Object;)V

    move-object p0, v0

    :goto_7
    invoke-virtual {p0}, Lorg/json2/JSONArray;->length()I

    move-result v2

    move v1, v3

    :goto_8
    if-ge v1, v2, :cond_a

    invoke-virtual {p0, v1}, Lorg/json2/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v3

    if-nez p1, :cond_e

    const-string v0, "array"

    :goto_9
    invoke-static {v3, v0, p2}, Lorg/json2/XML;->toString(Ljava/lang/Object;Ljava/lang/String;Lorg/json2/XMLParserConfiguration;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8

    :cond_d
    check-cast p0, Lorg/json2/JSONArray;

    goto :goto_7

    :cond_e
    move-object v0, p1

    goto :goto_9

    :cond_f
    if-nez p0, :cond_10

    const-string v0, "null"

    :goto_a
    if-nez p1, :cond_11

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_10
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/json2/XML;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    :cond_11
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_12

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_6

    :cond_12
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

    goto/16 :goto_6

    :cond_13
    move-object v1, v2

    goto/16 :goto_1
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

    :goto_0
    if-ge v0, v2, :cond_1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x26

    if-ne v3, v4, :cond_0

    const/16 v4, 0x3b

    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    if-le v4, v0, :cond_0

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

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
