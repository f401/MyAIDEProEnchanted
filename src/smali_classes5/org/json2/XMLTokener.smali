.class public Lorg/json2/XMLTokener;
.super Lorg/json2/JSONTokener;


# static fields
.field public static final entity:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lorg/json2/XMLTokener;->entity:Ljava/util/HashMap;

    const-string v1, "amp"

    sget-object v2, Lorg/json2/XML;->AMP:Ljava/lang/Character;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "apos"

    sget-object v2, Lorg/json2/XML;->APOS:Ljava/lang/Character;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "gt"

    sget-object v2, Lorg/json2/XML;->GT:Ljava/lang/Character;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "lt"

    sget-object v2, Lorg/json2/XML;->LT:Ljava/lang/Character;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "quot"

    sget-object v2, Lorg/json2/XML;->QUOT:Ljava/lang/Character;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .registers 2

    invoke-direct {p0, p1}, Lorg/json2/JSONTokener;-><init>(Ljava/io/Reader;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lorg/json2/JSONTokener;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static unescapeEntity(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const/4 v4, 0x0

    const/4 v3, 0x1

    if-eqz p0, :cond_a

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_a
    const-string v0, ""

    :goto_c
    return-object v0

    :cond_d
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x23

    if-ne v0, v1, :cond_44

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x78

    if-eq v0, v1, :cond_25

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x58

    if-ne v0, v1, :cond_3b

    :cond_25
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    :goto_30
    new-instance v1, Ljava/lang/String;

    new-array v2, v3, [I

    aput v0, v2, v4

    invoke-direct {v1, v2, v4, v3}, Ljava/lang/String;-><init>([III)V

    move-object v0, v1

    goto :goto_c

    :cond_3b
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_30

    :cond_44
    sget-object v0, Lorg/json2/XMLTokener;->entity:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Character;

    if-nez v0, :cond_65

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    :cond_65
    invoke-virtual {v0}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_c
.end method


# virtual methods
.method public nextCDATA()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json2/JSONException;
        }
    .end annotation

    const/16 v4, 0x5d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :cond_7
    invoke-virtual {p0}, Lorg/json2/XMLTokener;->more()Z

    move-result v1

    if-eqz v1, :cond_3c

    invoke-virtual {p0}, Lorg/json2/XMLTokener;->next()C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x3

    if-ltz v1, :cond_7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_7

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_7

    add-int/lit8 v2, v1, 0x2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    const/16 v3, 0x3e

    if-ne v2, v3, :cond_7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3c
    const-string v0, "Unclosed CDATA"

    invoke-virtual {p0, v0}, Lorg/json2/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json2/JSONException;

    move-result-object v0

    throw v0
.end method

.method public nextContent()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json2/JSONException;
        }
    .end annotation

    const/16 v3, 0x3c

    :cond_2
    invoke-virtual {p0}, Lorg/json2/XMLTokener;->next()C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-nez v1, :cond_2

    if-nez v0, :cond_10

    const/4 v0, 0x0

    :goto_f
    return-object v0

    :cond_10
    if-ne v0, v3, :cond_15

    sget-object v0, Lorg/json2/XML;->LT:Ljava/lang/Character;

    goto :goto_f

    :cond_15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1a
    if-nez v0, :cond_25

    :goto_1c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    :cond_25
    if-ne v0, v3, :cond_2b

    invoke-virtual {p0}, Lorg/json2/XMLTokener;->back()V

    goto :goto_1c

    :cond_2b
    const/16 v2, 0x26

    if-ne v0, v2, :cond_3b

    invoke-virtual {p0, v0}, Lorg/json2/XMLTokener;->nextEntity(C)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_36
    invoke-virtual {p0}, Lorg/json2/XMLTokener;->next()C

    move-result v0

    goto :goto_1a

    :cond_3b
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_36
.end method

.method public nextEntity(C)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json2/JSONException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_5
    invoke-virtual {p0}, Lorg/json2/XMLTokener;->next()C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v2

    if-nez v2, :cond_13

    const/16 v2, 0x23

    if-ne v1, v2, :cond_1b

    :cond_13
    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_1b
    const/16 v2, 0x3b

    if-ne v1, v2, :cond_28

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/json2/XMLTokener;->unescapeEntity(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_28
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Missing \';\' in XML entity: &"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json2/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json2/JSONException;

    move-result-object v0

    throw v0
.end method

.method public nextMeta()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json2/JSONException;
        }
    .end annotation

    :cond_0
    invoke-virtual {p0}, Lorg/json2/XMLTokener;->next()C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-nez v1, :cond_0

    sparse-switch v0, :sswitch_data_52

    :goto_d
    invoke-virtual {p0}, Lorg/json2/XMLTokener;->next()C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_43

    :goto_17
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_19
    return-object v0

    :sswitch_1a
    sget-object v0, Lorg/json2/XML;->QUEST:Ljava/lang/Character;

    goto :goto_19

    :sswitch_1d
    sget-object v0, Lorg/json2/XML;->GT:Ljava/lang/Character;

    goto :goto_19

    :sswitch_20
    sget-object v0, Lorg/json2/XML;->EQ:Ljava/lang/Character;

    goto :goto_19

    :sswitch_23
    sget-object v0, Lorg/json2/XML;->LT:Ljava/lang/Character;

    goto :goto_19

    :sswitch_26
    sget-object v0, Lorg/json2/XML;->SLASH:Ljava/lang/Character;

    goto :goto_19

    :cond_29
    :sswitch_29
    invoke-virtual {p0}, Lorg/json2/XMLTokener;->next()C

    move-result v1

    if-eqz v1, :cond_32

    if-ne v1, v0, :cond_29

    goto :goto_17

    :cond_32
    const-string v0, "Unterminated string"

    invoke-virtual {p0, v0}, Lorg/json2/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json2/JSONException;

    move-result-object v0

    throw v0

    :sswitch_39
    sget-object v0, Lorg/json2/XML;->BANG:Ljava/lang/Character;

    goto :goto_19

    :sswitch_3c
    const-string v0, "Misshaped meta tag"

    invoke-virtual {p0, v0}, Lorg/json2/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json2/JSONException;

    move-result-object v0

    throw v0

    :cond_43
    sparse-switch v0, :sswitch_data_78

    goto :goto_d

    :sswitch_47
    const-string v0, "Unterminated string"

    invoke-virtual {p0, v0}, Lorg/json2/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json2/JSONException;

    move-result-object v0

    throw v0

    :sswitch_4e
    invoke-virtual {p0}, Lorg/json2/XMLTokener;->back()V

    goto :goto_17

    :sswitch_data_52
    .sparse-switch
        0x0 -> :sswitch_3c
        0x21 -> :sswitch_39
        0x22 -> :sswitch_29
        0x27 -> :sswitch_29
        0x2f -> :sswitch_26
        0x3c -> :sswitch_23
        0x3d -> :sswitch_20
        0x3e -> :sswitch_1d
        0x3f -> :sswitch_1a
    .end sparse-switch

    :sswitch_data_78
    .sparse-switch
        0x0 -> :sswitch_47
        0x21 -> :sswitch_4e
        0x22 -> :sswitch_4e
        0x27 -> :sswitch_4e
        0x2f -> :sswitch_4e
        0x3c -> :sswitch_4e
        0x3d -> :sswitch_4e
        0x3e -> :sswitch_4e
        0x3f -> :sswitch_4e
    .end sparse-switch
.end method

.method public nextToken()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json2/JSONException;
        }
    .end annotation

    :cond_0
    invoke-virtual {p0}, Lorg/json2/XMLTokener;->next()C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-nez v1, :cond_0

    sparse-switch v0, :sswitch_data_7a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_12
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/json2/XMLTokener;->next()C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_68

    move-object v0, v1

    :goto_20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_24
    return-object v0

    :sswitch_25
    sget-object v0, Lorg/json2/XML;->QUEST:Ljava/lang/Character;

    goto :goto_24

    :sswitch_28
    sget-object v0, Lorg/json2/XML;->GT:Ljava/lang/Character;

    goto :goto_24

    :sswitch_2b
    sget-object v0, Lorg/json2/XML;->EQ:Ljava/lang/Character;

    goto :goto_24

    :sswitch_2e
    const-string v0, "Misplaced \'<\'"

    invoke-virtual {p0, v0}, Lorg/json2/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json2/JSONException;

    move-result-object v0

    throw v0

    :sswitch_35
    sget-object v0, Lorg/json2/XML;->SLASH:Ljava/lang/Character;

    goto :goto_24

    :sswitch_38
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_3d
    invoke-virtual {p0}, Lorg/json2/XMLTokener;->next()C

    move-result v2

    if-eqz v2, :cond_57

    if-ne v2, v0, :cond_47

    move-object v0, v1

    goto :goto_20

    :cond_47
    const/16 v3, 0x26

    if-ne v2, v3, :cond_53

    invoke-virtual {p0, v2}, Lorg/json2/XMLTokener;->nextEntity(C)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_3d

    :cond_53
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3d

    :cond_57
    const-string v0, "Unterminated string"

    invoke-virtual {p0, v0}, Lorg/json2/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json2/JSONException;

    move-result-object v0

    throw v0

    :sswitch_5e
    sget-object v0, Lorg/json2/XML;->BANG:Ljava/lang/Character;

    goto :goto_24

    :sswitch_61
    const-string v0, "Misshaped element"

    invoke-virtual {p0, v0}, Lorg/json2/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json2/JSONException;

    move-result-object v0

    throw v0

    :cond_68
    sparse-switch v0, :sswitch_data_a0

    goto :goto_12

    :sswitch_6c
    move-object v0, v1

    goto :goto_20

    :sswitch_6e
    const-string v0, "Bad character in a name"

    invoke-virtual {p0, v0}, Lorg/json2/XMLTokener;->syntaxError(Ljava/lang/String;)Lorg/json2/JSONException;

    move-result-object v0

    throw v0

    :sswitch_75
    invoke-virtual {p0}, Lorg/json2/XMLTokener;->back()V

    move-object v0, v1

    goto :goto_20

    :sswitch_data_7a
    .sparse-switch
        0x0 -> :sswitch_61
        0x21 -> :sswitch_5e
        0x22 -> :sswitch_38
        0x27 -> :sswitch_38
        0x2f -> :sswitch_35
        0x3c -> :sswitch_2e
        0x3d -> :sswitch_2b
        0x3e -> :sswitch_28
        0x3f -> :sswitch_25
    .end sparse-switch

    :sswitch_data_a0
    .sparse-switch
        0x0 -> :sswitch_6c
        0x21 -> :sswitch_75
        0x22 -> :sswitch_6e
        0x27 -> :sswitch_6e
        0x2f -> :sswitch_75
        0x3c -> :sswitch_6e
        0x3d -> :sswitch_75
        0x3e -> :sswitch_75
        0x3f -> :sswitch_75
        0x5b -> :sswitch_75
        0x5d -> :sswitch_75
    .end sparse-switch
.end method

.method public skipPast(Ljava/lang/String;)V
    .registers 10

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    new-array v5, v4, [C

    move v0, v1

    :goto_8
    if-ge v0, v4, :cond_16

    invoke-virtual {p0}, Lorg/json2/XMLTokener;->next()C

    move-result v2

    if-nez v2, :cond_11

    :cond_10
    return-void

    :cond_11
    aput-char v2, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_16
    move v0, v1

    :cond_17
    :goto_17
    move v3, v1

    move v2, v0

    :goto_19
    if-ge v3, v4, :cond_3c

    aget-char v6, v5, v2

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v6, v7, :cond_34

    move v2, v1

    :goto_24
    if-nez v2, :cond_10

    invoke-virtual {p0}, Lorg/json2/XMLTokener;->next()C

    move-result v2

    if-eqz v2, :cond_10

    aput-char v2, v5, v0

    add-int/lit8 v0, v0, 0x1

    if-lt v0, v4, :cond_17

    sub-int/2addr v0, v4

    goto :goto_17

    :cond_34
    add-int/lit8 v2, v2, 0x1

    if-lt v2, v4, :cond_39

    sub-int/2addr v2, v4

    :cond_39
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    :cond_3c
    const/4 v2, 0x1

    goto :goto_24
.end method
