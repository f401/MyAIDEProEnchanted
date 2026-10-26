.class public Lcom/s1243808733/util/Json2Java;
.super Ljava/lang/Object;
.source "Json2Java.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/s1243808733/util/Json2Java$Configurd;,
        Lcom/s1243808733/util/Json2Java$Field;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createBean(Ljava/lang/String;Lcom/s1243808733/util/Json2Java$Configurd;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 16
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/s1243808733/util/Json2Java;->createBean(Lorg/json/JSONObject;Lcom/s1243808733/util/Json2Java$Configurd;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 19
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/s1243808733/util/Json2Java;->createBean(Lorg/json/JSONArray;Lcom/s1243808733/util/Json2Java$Configurd;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_0

    .line 22
    :catch_1
    move-exception v0

    new-instance v0, Lorg/json/JSONException;

    invoke-direct {v0, p0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static createBean(Lorg/json/JSONArray;Lcom/s1243808733/util/Json2Java$Configurd;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 26
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 27
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 28
    instance-of v1, v0, Lorg/json/JSONObject;

    if-eqz v1, :cond_0

    .line 29
    check-cast v0, Lorg/json/JSONObject;

    .line 30
    invoke-static {v0, p1}, Lcom/s1243808733/util/Json2Java;->createBean(Lorg/json/JSONObject;Lcom/s1243808733/util/Json2Java$Configurd;)Ljava/lang/String;

    move-result-object v0

    .line 36
    :goto_0
    return-object v0

    .line 32
    :cond_0
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\u4e0d\u652f\u6301\u6b64\u65e0key\u7c7b\u578b\u6570\u7ec4\u8f6c\u6362"

    :goto_1
    new-instance v1, Lorg/json/JSONException;

    invoke-direct {v1, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    const-string v0, "This array conversion without key type is not supported"

    goto :goto_1

    .line 36
    :cond_2
    const-string v0, ""

    invoke-static {v0, p1}, Lcom/s1243808733/util/Json2Java;->createClass(Ljava/lang/String;Lcom/s1243808733/util/Json2Java$Configurd;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static createBean(Lorg/json/JSONObject;Lcom/s1243808733/util/Json2Java$Configurd;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 40
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p1}, Lcom/s1243808733/util/Json2Java;->createObject(Lorg/json/JSONObject;Ljava/lang/String;ILcom/s1243808733/util/Json2Java$Configurd;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/s1243808733/util/Json2Java;->createClass(Ljava/lang/String;Lcom/s1243808733/util/Json2Java$Configurd;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static createClass(Ljava/lang/String;Lcom/s1243808733/util/Json2Java$Configurd;)Ljava/lang/String;
    .locals 4

    .line 44
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 46
    invoke-virtual {p1}, Lcom/s1243808733/util/Json2Java$Configurd;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "package "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/s1243808733/util/Json2Java$Configurd;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 48
    const-string v0, "\n\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 51
    :cond_0
    invoke-virtual {p1}, Lcom/s1243808733/util/Json2Java$Configurd;->getClassName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 53
    invoke-virtual {p1}, Lcom/s1243808733/util/Json2Java$Configurd;->getImports()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 54
    invoke-virtual {p1}, Lcom/s1243808733/util/Json2Java$Configurd;->getImports()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 55
    const-string v3, "import "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 56
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 57
    const-string v0, ";\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 59
    :cond_1
    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 62
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "public class "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/s1243808733/util/Json2Java$Configurd;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " {"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 63
    const-string v0, "\n\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 64
    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 65
    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 67
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 69
    :goto_1
    return-object v0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/s1243808733/util/Json2Java$Configurd;->getSpace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private static createField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Lcom/s1243808733/util/Json2Java$Configurd;)Lcom/s1243808733/util/Json2Java$Field;
    .locals 3

    .line 288
    invoke-virtual {p3}, Lcom/s1243808733/util/Json2Java$Configurd;->isPublicField()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "public"

    .line 290
    :goto_0
    instance-of v1, p0, Lorg/json/JSONArray;

    if-eqz v1, :cond_3

    .line 292
    new-instance v1, Lcom/s1243808733/util/Json2Java$Field;

    invoke-direct {v1}, Lcom/s1243808733/util/Json2Java$Field;-><init>()V

    .line 293
    invoke-virtual {v1, v0}, Lcom/s1243808733/util/Json2Java$Field;->setModifier(Ljava/lang/String;)Lcom/s1243808733/util/Json2Java$Field;

    .line 294
    invoke-virtual {v1, p2}, Lcom/s1243808733/util/Json2Java$Field;->setName(Ljava/lang/String;)Lcom/s1243808733/util/Json2Java$Field;

    .line 295
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/s1243808733/util/Json2Java$Field;->setArray(Z)Lcom/s1243808733/util/Json2Java$Field;

    .line 297
    invoke-virtual {p3}, Lcom/s1243808733/util/Json2Java$Configurd;->isUseArray()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "[]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/s1243808733/util/Json2Java$Field;->setType(Ljava/lang/String;)Lcom/s1243808733/util/Json2Java$Field;

    :goto_1
    move-object v0, v1

    .line 311
    :goto_2
    return-object v0

    .line 288
    :cond_0
    const-string v0, "private"

    goto :goto_0

    .line 300
    :cond_1
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 302
    const-string p1, "Integer"

    .line 304
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "List<"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ">"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/s1243808733/util/Json2Java$Field;->setType(Ljava/lang/String;)Lcom/s1243808733/util/Json2Java$Field;

    .line 305
    const-class v0, Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/s1243808733/util/Json2Java$Configurd;->addImport(Ljava/lang/String;)Lcom/s1243808733/util/Json2Java$Configurd;

    goto :goto_1

    .line 311
    :cond_3
    new-instance v1, Lcom/s1243808733/util/Json2Java$Field;

    invoke-direct {v1, v0, p1, p2}, Lcom/s1243808733/util/Json2Java$Field;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_2
.end method

.method private static createObject(Lorg/json/JSONObject;Ljava/lang/String;ILcom/s1243808733/util/Json2Java$Configurd;)Ljava/lang/String;
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 75
    invoke-virtual/range {p3 .. p3}, Lcom/s1243808733/util/Json2Java$Configurd;->getSpace()Ljava/lang/String;

    move-result-object v8

    .line 78
    const-string v6, ""

    const-string v2, ""

    const/4 v3, 0x0

    move-object v7, v8

    move-object v9, v2

    move v4, v3

    :goto_0
    move/from16 v0, p2

    if-ge v4, v0, :cond_0

    .line 79
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 80
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v4, v4, 0x1

    move-object v7, v2

    move-object v9, v3

    goto :goto_0

    .line 83
    :cond_0
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 84
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 86
    invoke-virtual/range {p0 .. p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v12

    .line 87
    :cond_1
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 88
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 89
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 91
    instance-of v4, v3, Lorg/json/JSONArray;

    if-eqz v4, :cond_6

    .line 92
    check-cast v3, Lorg/json/JSONArray;

    .line 93
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_5

    .line 94
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x0

    .line 97
    :goto_2
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-ge v5, v13, :cond_3

    .line 98
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2

    .line 99
    const-class v5, Ljava/lang/Object;

    .line 103
    :goto_3
    instance-of v13, v5, Lorg/json/JSONObject;

    if-eqz v13, :cond_4

    .line 104
    invoke-static {v2}, Lcom/s1243808733/util/Json2Java;->toUpperCaseFirst(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 103
    :goto_4
    move-object/from16 v0, p3

    invoke-static {v3, v5, v2, v0}, Lcom/s1243808733/util/Json2Java;->createField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Lcom/s1243808733/util/Json2Java$Configurd;)Lcom/s1243808733/util/Json2Java$Field;

    move-result-object v3

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    instance-of v3, v4, Lorg/json/JSONObject;

    if-eqz v3, :cond_1

    move-object v3, v4

    .line 108
    check-cast v3, Lorg/json/JSONObject;

    .line 109
    invoke-static {v2}, Lcom/s1243808733/util/Json2Java;->toUpperCaseFirst(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v4, p2, 0x1

    move-object/from16 v0, p3

    invoke-static {v3, v2, v4, v0}, Lcom/s1243808733/util/Json2Java;->createObject(Lorg/json/JSONObject;Ljava/lang/String;ILcom/s1243808733/util/Json2Java$Configurd;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 99
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    move-object v5, v4

    goto :goto_3

    .line 105
    :cond_4
    instance-of v13, v5, Ljava/lang/Class;

    move-object/from16 v0, p3

    invoke-static {v5, v0}, Lcom/s1243808733/util/Json2Java;->getSimpleName(Ljava/lang/Object;Lcom/s1243808733/util/Json2Java$Configurd;)Ljava/lang/String;

    move-result-object v5

    goto :goto_4

    .line 113
    :cond_5
    const-string v4, "Object"

    move-object/from16 v0, p3

    invoke-static {v3, v4, v2, v0}, Lcom/s1243808733/util/Json2Java;->createField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Lcom/s1243808733/util/Json2Java$Configurd;)Lcom/s1243808733/util/Json2Java$Field;

    move-result-object v2

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 115
    :cond_6
    instance-of v4, v3, Lorg/json/JSONObject;

    if-eqz v4, :cond_7

    .line 116
    check-cast v3, Lorg/json/JSONObject;

    .line 117
    invoke-static {v2}, Lcom/s1243808733/util/Json2Java;->toUpperCaseFirst(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 118
    move-object/from16 v0, p3

    invoke-static {v3, v4, v2, v0}, Lcom/s1243808733/util/Json2Java;->createField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Lcom/s1243808733/util/Json2Java$Configurd;)Lcom/s1243808733/util/Json2Java$Field;

    move-result-object v2

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    add-int/lit8 v2, p2, 0x1

    move-object/from16 v0, p3

    invoke-static {v3, v4, v2, v0}, Lcom/s1243808733/util/Json2Java;->createObject(Lorg/json/JSONObject;Ljava/lang/String;ILcom/s1243808733/util/Json2Java$Configurd;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 121
    :cond_7
    move-object/from16 v0, p3

    invoke-static {v3, v0}, Lcom/s1243808733/util/Json2Java;->getSimpleName(Ljava/lang/Object;Lcom/s1243808733/util/Json2Java$Configurd;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-static {v3, v4, v2, v0}, Lcom/s1243808733/util/Json2Java;->createField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Lcom/s1243808733/util/Json2Java$Configurd;)Lcom/s1243808733/util/Json2Java$Field;

    move-result-object v2

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 126
    :cond_8
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 127
    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    .line 128
    new-instance v13, Ljava/lang/StringBuffer;

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    .line 129
    new-instance v14, Ljava/lang/StringBuffer;

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    .line 131
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 132
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    .line 134
    :goto_5
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_e

    .line 135
    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/s1243808733/util/Json2Java$Field;

    .line 136
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/s1243808733/util/Json2Java$Field;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 137
    const-string v4, "\n"

    invoke-virtual {v12, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v4, v3, 0x1

    .line 138
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v3

    if-ge v4, v3, :cond_9

    .line 139
    const-string v3, "\n"

    invoke-virtual {v12, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 142
    :cond_9
    invoke-virtual/range {p3 .. p3}, Lcom/s1243808733/util/Json2Java$Configurd;->isSetters()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 143
    invoke-virtual {v2}, Lcom/s1243808733/util/Json2Java$Field;->getType()Ljava/lang/String;

    move-result-object v3

    .line 144
    invoke-virtual/range {p3 .. p3}, Lcom/s1243808733/util/Json2Java$Configurd;->isUseArray()Z

    move-result v17

    if-eqz v17, :cond_a

    invoke-virtual {v2}, Lcom/s1243808733/util/Json2Java$Field;->isArray()Z

    move-result v17

    if-eqz v17, :cond_a

    .line 145
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v18, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v19

    add-int/lit8 v19, v19, -0x2

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "..."

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 144
    :cond_a
    new-instance v17, Ljava/lang/StringBuffer;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuffer;-><init>()V

    .line 148
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v19, "public void set"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/s1243808733/util/Json2Java$Field;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/s1243808733/util/Json2Java;->toUpperCaseFirst(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 149
    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "("

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/s1243808733/util/Json2Java$Field;->getName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") {"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 150
    const-string v3, "\n"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 151
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v18, "this."

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/s1243808733/util/Json2Java$Field;->getName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v18, " = "

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/s1243808733/util/Json2Java$Field;->getName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v18, ";"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 152
    const-string v3, "\n"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 153
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v18, "}"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 154
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v15, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    :cond_b
    invoke-virtual/range {p3 .. p3}, Lcom/s1243808733/util/Json2Java$Configurd;->isGetters()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 158
    new-instance v17, Ljava/lang/StringBuffer;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuffer;-><init>()V

    .line 160
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/s1243808733/util/Json2Java$Field;->getType()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 161
    const-string v3, "is"

    .line 163
    :goto_6
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v19, "public "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/s1243808733/util/Json2Java$Field;->getType()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/s1243808733/util/Json2Java$Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/s1243808733/util/Json2Java;->toUpperCaseFirst(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "() {"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 164
    const-string v3, "\n"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 165
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v18, "return "

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/s1243808733/util/Json2Java$Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ";"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 166
    const-string v2, "\n"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 167
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 168
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c
    move v3, v4

    goto/16 :goto_5

    .line 160
    :cond_d
    const-string v3, "get"

    goto/16 :goto_6

    .line 173
    :cond_e
    invoke-virtual/range {p3 .. p3}, Lcom/s1243808733/util/Json2Java$Configurd;->isSortMethod()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 174
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 175
    invoke-virtual {v13, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 176
    const-string v2, "\n\n"

    invoke-virtual {v13, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_7

    .line 178
    :cond_f
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 179
    invoke-virtual {v13, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 180
    const-string v2, "\n\n"

    invoke-virtual {v13, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_8

    .line 183
    :cond_10
    invoke-virtual/range {p3 .. p3}, Lcom/s1243808733/util/Json2Java$Configurd;->isSetters()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-virtual/range {p3 .. p3}, Lcom/s1243808733/util/Json2Java$Configurd;->isGetters()Z

    move-result v2

    if-eqz v2, :cond_11

    const/4 v2, 0x0

    move v3, v2

    .line 184
    :goto_9
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_13

    .line 185
    invoke-interface {v15, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 186
    const-string v2, "\n\n"

    invoke-virtual {v13, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 187
    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 188
    const-string v2, "\n\n"

    invoke-virtual {v13, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_9

    .line 191
    :cond_11
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 192
    invoke-virtual {v13, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 193
    const-string v2, "\n\n"

    invoke-virtual {v13, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_a

    .line 195
    :cond_12
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 196
    invoke-virtual {v13, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 197
    const-string v2, "\n\n"

    invoke-virtual {v13, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_b

    .line 202
    :cond_13
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 203
    invoke-virtual {v14, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 204
    const-string v2, "\n"

    invoke-virtual {v14, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_c

    .line 207
    :cond_14
    invoke-virtual {v5, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 208
    const-string v2, "\n"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 209
    invoke-virtual {v5, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 210
    invoke-virtual {v5, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 212
    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    .line 215
    invoke-virtual/range {p3 .. p3}, Lcom/s1243808733/util/Json2Java$Configurd;->isToString()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 217
    const-string v3, "\"[\"+getClass().getCanonicalName()+\"]\""

    const/4 v2, 0x0

    move v4, v2

    :goto_d
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v2

    if-ge v4, v2, :cond_16

    .line 218
    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/s1243808733/util/Json2Java$Field;

    .line 219
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " + \""

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v4, :cond_15

    move-object v3, v6

    :goto_e
    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\\n"

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/s1243808733/util/Json2Java$Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "=\" + "

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/s1243808733/util/Json2Java$Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_d

    :cond_15
    const-string v3, ","

    goto :goto_e

    .line 221
    :cond_16
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "@Override\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "public String toString() {\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "return "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ";\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "}\n\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 215
    :cond_17
    if-lez p2, :cond_19

    .line 229
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "public static class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " {"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 230
    const-string v2, "\n\n"

    invoke-virtual {v11, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 231
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_18

    .line 232
    invoke-virtual {v11, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 235
    :cond_18
    invoke-virtual {v11, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 236
    invoke-virtual {v11, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 237
    const-string v2, "}\n"

    invoke-virtual {v11, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 244
    :goto_f
    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 239
    :cond_19
    invoke-virtual {v11, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 240
    invoke-virtual {v11, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_f
.end method

.method private static getSimpleName(Ljava/lang/Object;Lcom/s1243808733/util/Json2Java$Configurd;)Ljava/lang/String;
    .locals 12

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x4

    const/4 v1, 0x0

    .line 254
    sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-ne v0, p0, :cond_0

    .line 255
    const-string v0, "Object"

    .line 284
    :goto_0
    return-object v0

    .line 258
    :cond_0
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 272
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/lang/Class;

    .line 274
    :goto_1
    invoke-virtual {p1}, Lcom/s1243808733/util/Json2Java$Configurd;->isUseInteger()Z

    move-result v0

    if-eqz v0, :cond_2

    const-class v0, Ljava/lang/Integer;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 275
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 272
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_1

    :cond_2
    move v0, v1

    .line 275
    :goto_2
    if-ge v0, v8, :cond_4

    .line 278
    new-array v6, v8, [Ljava/lang/Class;

    const-class v7, Ljava/lang/Boolean;

    aput-object v7, v6, v1

    const-class v7, Ljava/lang/Integer;

    aput-object v7, v6, v9

    const-class v7, Ljava/lang/Long;

    aput-object v7, v6, v10

    const-class v7, Ljava/lang/Double;

    aput-object v7, v6, v11

    aget-object v6, v6, v0

    invoke-virtual {v6, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 279
    new-array v6, v8, [Ljava/lang/Class;

    aput-object v2, v6, v1

    aput-object v3, v6, v9

    aput-object v4, v6, v10

    aput-object v5, v6, v11

    aget-object v0, v6, v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 284
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static toUpperCaseFirst(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 3

    const/4 v2, 0x0

    .line 248
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 249
    aget-char v1, v0, v2

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    aput-char v1, v0, v2

    .line 250
    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
