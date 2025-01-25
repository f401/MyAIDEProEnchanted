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
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createBean(Ljava/lang/String;Lcom/s1243808733/util/Json2Java$Configurd;)Ljava/lang/String;
    .registers 3
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

    move-result-object p0
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_9} :catch_a

    return-object p0

    .line 19
    :catch_a
    move-exception v0

    :try_start_b
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/s1243808733/util/Json2Java;->createBean(Lorg/json/JSONArray;Lcom/s1243808733/util/Json2Java$Configurd;)Ljava/lang/String;

    move-result-object p0
    :try_end_14
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_14} :catch_15

    return-object p0

    .line 22
    :catch_15
    move-exception p1

    new-instance p1, Lorg/json/JSONException;

    invoke-direct {p1, p0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static createBean(Lorg/json/JSONArray;Lcom/s1243808733/util/Json2Java$Configurd;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 26
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_27

    .line 27
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    .line 28
    instance-of v0, p0, Lorg/json/JSONObject;

    if-eqz v0, :cond_16

    .line 29
    check-cast p0, Lorg/json/JSONObject;

    .line 30
    invoke-static {p0, p1}, Lcom/s1243808733/util/Json2Java;->createBean(Lorg/json/JSONObject;Lcom/s1243808733/util/Json2Java$Configurd;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 32
    :cond_16
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result p0

    if-eqz p0, :cond_1f

    const-string p0, "不支持此无key类型数组转换"

    goto :goto_21

    :cond_1f
    const-string p0, "This array conversion without key type is not supported"

    :goto_21
    new-instance p1, Lorg/json/JSONException;

    invoke-direct {p1, p0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 36
    :cond_27
    const-string p0, ""

    invoke-static {p0, p1}, Lcom/s1243808733/util/Json2Java;->createClass(Ljava/lang/String;Lcom/s1243808733/util/Json2Java$Configurd;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static createBean(Lorg/json/JSONObject;Lcom/s1243808733/util/Json2Java$Configurd;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 40
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p1}, Lcom/s1243808733/util/Json2Java;->createObject(Lorg/json/JSONObject;Ljava/lang/String;ILcom/s1243808733/util/Json2Java$Configurd;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/s1243808733/util/Json2Java;->createClass(Ljava/lang/String;Lcom/s1243808733/util/Json2Java$Configurd;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static createClass(Ljava/lang/String;Lcom/s1243808733/util/Json2Java$Configurd;)Ljava/lang/String;
    .registers 7

    .line 44
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 46
    invoke-virtual {p1}, Lcom/s1243808733/util/Json2Java$Configurd;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\n\n"

    if-eqz v1, :cond_2a

    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "package "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/s1243808733/util/Json2Java$Configurd;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ";"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 48
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 51
    :cond_2a
    invoke-virtual {p1}, Lcom/s1243808733/util/Json2Java$Configurd;->getClassName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_93

    .line 53
    invoke-virtual {p1}, Lcom/s1243808733/util/Json2Java$Configurd;->getImports()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_69

    .line 54
    invoke-virtual {p1}, Lcom/s1243808733/util/Json2Java$Configurd;->getImports()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_64

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 55
    const-string v4, "import "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 56
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 57
    const-string v3, ";\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4a

    .line 59
    :cond_64
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 62
    :cond_69
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "public class "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/s1243808733/util/Json2Java$Configurd;->getClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " {"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 63
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 64
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 65
    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 67
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 69
    :cond_93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/s1243808733/util/Json2Java$Configurd;->getSpace()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static createField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Lcom/s1243808733/util/Json2Java$Configurd;)Lcom/s1243808733/util/Json2Java$Field;
    .registers 5

    .line 288
    invoke-virtual {p3}, Lcom/s1243808733/util/Json2Java$Configurd;->isPublicField()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "public"

    goto :goto_b

    :cond_9
    const-string v0, "private"

    .line 290
    :goto_b
    instance-of p0, p0, Lorg/json/JSONArray;

    if-eqz p0, :cond_68

    .line 292
    new-instance p0, Lcom/s1243808733/util/Json2Java$Field;

    invoke-direct {p0}, Lcom/s1243808733/util/Json2Java$Field;-><init>()V

    .line 293
    invoke-virtual {p0, v0}, Lcom/s1243808733/util/Json2Java$Field;->setModifier(Ljava/lang/String;)Lcom/s1243808733/util/Json2Java$Field;

    .line 294
    invoke-virtual {p0, p2}, Lcom/s1243808733/util/Json2Java$Field;->setName(Ljava/lang/String;)Lcom/s1243808733/util/Json2Java$Field;

    .line 295
    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Lcom/s1243808733/util/Json2Java$Field;->setArray(Z)Lcom/s1243808733/util/Json2Java$Field;

    .line 297
    invoke-virtual {p3}, Lcom/s1243808733/util/Json2Java$Configurd;->isUseArray()Z

    move-result p2

    if-eqz p2, :cond_39

    .line 298
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "[]"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/s1243808733/util/Json2Java$Field;->setType(Ljava/lang/String;)Lcom/s1243808733/util/Json2Java$Field;

    goto :goto_67

    .line 300
    :cond_39
    nop

    .line 301
    sget-object p2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_48

    .line 302
    const-string p1, "Integer"

    .line 304
    :cond_48
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "List<"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ">"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/s1243808733/util/Json2Java$Field;->setType(Ljava/lang/String;)Lcom/s1243808733/util/Json2Java$Field;

    .line 305
    const-class p1, Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/s1243808733/util/Json2Java$Configurd;->addImport(Ljava/lang/String;)Lcom/s1243808733/util/Json2Java$Configurd;

    :goto_67
    return-object p0

    .line 311
    :cond_68
    new-instance p0, Lcom/s1243808733/util/Json2Java$Field;

    invoke-direct {p0, v0, p1, p2}, Lcom/s1243808733/util/Json2Java$Field;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method private static createObject(Lorg/json/JSONObject;Ljava/lang/String;ILcom/s1243808733/util/Json2Java$Configurd;)Ljava/lang/String;
    .registers 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 75
    move/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual/range {p3 .. p3}, Lcom/s1243808733/util/Json2Java$Configurd;->getSpace()Ljava/lang/String;

    move-result-object v2

    .line 78
    const-string v3, ""

    const/4 v4, 0x0

    move-object v7, v2

    move-object v6, v3

    const/4 v5, 0x0

    :goto_e
    if-ge v5, v0, :cond_31

    .line 79
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 80
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    .line 83
    :cond_31
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 84
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 86
    invoke-virtual/range {p0 .. p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v9

    .line 87
    :goto_3f
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_df

    .line 88
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 89
    move-object/from16 v11, p0

    invoke-virtual {v11, v10}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    .line 91
    instance-of v13, v12, Lorg/json/JSONArray;

    if-eqz v13, :cond_b6

    .line 92
    check-cast v12, Lorg/json/JSONArray;

    .line 93
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-lez v13, :cond_ac

    .line 94
    invoke-virtual {v12, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    const/4 v14, 0x0

    .line 97
    :goto_62
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v15

    if-ge v14, v15, :cond_81

    .line 98
    invoke-virtual {v12, v14}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v15, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7d

    .line 99
    const-class v4, Ljava/lang/Object;

    goto :goto_82

    :cond_7d
    add-int/lit8 v14, v14, 0x1

    const/4 v4, 0x0

    goto :goto_62

    :cond_81
    move-object v4, v13

    .line 103
    :goto_82
    instance-of v14, v4, Lorg/json/JSONObject;

    if-eqz v14, :cond_8b

    .line 104
    invoke-static {v10}, Lcom/s1243808733/util/Json2Java;->toUpperCaseFirst(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    goto :goto_91

    .line 105
    :cond_8b
    instance-of v14, v4, Ljava/lang/Class;

    invoke-static {v4, v1}, Lcom/s1243808733/util/Json2Java;->getSimpleName(Ljava/lang/Object;Lcom/s1243808733/util/Json2Java$Configurd;)Ljava/lang/String;

    move-result-object v4

    .line 103
    :goto_91
    invoke-static {v12, v4, v10, v1}, Lcom/s1243808733/util/Json2Java;->createField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Lcom/s1243808733/util/Json2Java$Configurd;)Lcom/s1243808733/util/Json2Java$Field;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    instance-of v4, v13, Lorg/json/JSONObject;

    if-eqz v4, :cond_dc

    .line 108
    check-cast v13, Lorg/json/JSONObject;

    .line 109
    invoke-static {v10}, Lcom/s1243808733/util/Json2Java;->toUpperCaseFirst(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v10, v0, 0x1

    invoke-static {v13, v4, v10, v1}, Lcom/s1243808733/util/Json2Java;->createObject(Lorg/json/JSONObject;Ljava/lang/String;ILcom/s1243808733/util/Json2Java$Configurd;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_dc

    .line 113
    :cond_ac
    const-string v4, "Object"

    invoke-static {v12, v4, v10, v1}, Lcom/s1243808733/util/Json2Java;->createField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Lcom/s1243808733/util/Json2Java$Configurd;)Lcom/s1243808733/util/Json2Java$Field;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_dc

    .line 115
    :cond_b6
    instance-of v4, v12, Lorg/json/JSONObject;

    if-eqz v4, :cond_d1

    .line 116
    check-cast v12, Lorg/json/JSONObject;

    .line 117
    invoke-static {v10}, Lcom/s1243808733/util/Json2Java;->toUpperCaseFirst(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 118
    invoke-static {v12, v4, v10, v1}, Lcom/s1243808733/util/Json2Java;->createField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Lcom/s1243808733/util/Json2Java$Configurd;)Lcom/s1243808733/util/Json2Java$Field;

    move-result-object v10

    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    add-int/lit8 v10, v0, 0x1

    invoke-static {v12, v4, v10, v1}, Lcom/s1243808733/util/Json2Java;->createObject(Lorg/json/JSONObject;Ljava/lang/String;ILcom/s1243808733/util/Json2Java$Configurd;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_dc

    .line 121
    :cond_d1
    invoke-static {v12, v1}, Lcom/s1243808733/util/Json2Java;->getSimpleName(Ljava/lang/Object;Lcom/s1243808733/util/Json2Java$Configurd;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v12, v4, v10, v1}, Lcom/s1243808733/util/Json2Java;->createField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Lcom/s1243808733/util/Json2Java$Configurd;)Lcom/s1243808733/util/Json2Java$Field;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_dc
    :goto_dc
    const/4 v4, 0x0

    goto/16 :goto_3f

    .line 126
    :cond_df
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 127
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    .line 128
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    .line 129
    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    .line 131
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 132
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    const/4 v14, 0x0

    .line 134
    :goto_fe
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v15

    const-string v1, "return "

    move-object/from16 v16, v3

    const-string v3, "\n"

    if-ge v14, v15, :cond_2ba

    .line 135
    invoke-interface {v5, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/s1243808733/util/Json2Java$Field;

    .line 136
    move-object/from16 v17, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Lcom/s1243808733/util/Json2Java$Field;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 137
    invoke-virtual {v9, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v14, v14, 0x1

    .line 138
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v14, v0, :cond_136

    .line 139
    invoke-virtual {v9, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 142
    :cond_136
    invoke-virtual/range {p3 .. p3}, Lcom/s1243808733/util/Json2Java$Configurd;->isSetters()Z

    move-result v0

    const-string v6, "}"

    move/from16 p0, v14

    const-string v14, ";"

    move-object/from16 v18, v5

    const-string v5, " "

    if-eqz v0, :cond_211

    .line 143
    invoke-virtual {v15}, Lcom/s1243808733/util/Json2Java$Field;->getType()Ljava/lang/String;

    move-result-object v0

    .line 144
    invoke-virtual/range {p3 .. p3}, Lcom/s1243808733/util/Json2Java$Configurd;->isUseArray()Z

    move-result v19

    if-eqz v19, :cond_179

    invoke-virtual {v15}, Lcom/s1243808733/util/Json2Java$Field;->isArray()Z

    move-result v19

    if-eqz v19, :cond_179

    .line 145
    move-object/from16 v19, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v20

    move-object/from16 v21, v9

    add-int/lit8 v9, v20, -0x2

    move-object/from16 v20, v11

    const/4 v11, 0x0

    invoke-virtual {v0, v11, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "..."

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_180

    .line 144
    :cond_179
    move-object/from16 v19, v4

    move-object/from16 v21, v9

    move-object/from16 v20, v11

    const/4 v11, 0x0

    .line 147
    :goto_180
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 148
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "public void set"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Lcom/s1243808733/util/Json2Java$Field;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/s1243808733/util/Json2Java;->toUpperCaseFirst(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 149
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v11, "("

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Lcom/s1243808733/util/Json2Java$Field;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") {"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 150
    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "this."

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Lcom/s1243808733/util/Json2Java$Field;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " = "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Lcom/s1243808733/util/Json2Java$Field;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 152
    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 154
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_217

    .line 142
    :cond_211
    move-object/from16 v19, v4

    move-object/from16 v21, v9

    move-object/from16 v20, v11

    .line 157
    :goto_217
    invoke-virtual/range {p3 .. p3}, Lcom/s1243808733/util/Json2Java$Configurd;->isGetters()Z

    move-result v0

    if-eqz v0, :cond_2a6

    .line 158
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 160
    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15}, Lcom/s1243808733/util/Json2Java$Field;->getType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_235

    .line 161
    const-string v4, "is"

    goto :goto_237

    .line 160
    :cond_235
    const-string v4, "get"

    .line 163
    :goto_237
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "public "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Lcom/s1243808733/util/Json2Java$Field;->getType()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Lcom/s1243808733/util/Json2Java$Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/s1243808733/util/Json2Java;->toUpperCaseFirst(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "() {"

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 164
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 165
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Lcom/s1243808733/util/Json2Java$Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 166
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 167
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 168
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2a6
    move/from16 v14, p0

    move/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v3, v16

    move-object/from16 v6, v17

    move-object/from16 v5, v18

    move-object/from16 v4, v19

    move-object/from16 v11, v20

    move-object/from16 v9, v21

    goto/16 :goto_fe

    .line 173
    :cond_2ba
    move-object/from16 v19, v4

    move-object/from16 v18, v5

    move-object/from16 v17, v6

    move-object/from16 v21, v9

    move-object/from16 v20, v11

    invoke-virtual/range {p3 .. p3}, Lcom/s1243808733/util/Json2Java$Configurd;->isSortMethod()Z

    move-result v0

    const-string v4, "\n\n"

    if-eqz v0, :cond_2fa

    .line 174
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2d0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2e3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 175
    invoke-virtual {v10, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 176
    invoke-virtual {v10, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2d0

    .line 178
    :cond_2e3
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2e7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_356

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 179
    invoke-virtual {v10, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 180
    invoke-virtual {v10, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2e7

    .line 183
    :cond_2fa
    invoke-virtual/range {p3 .. p3}, Lcom/s1243808733/util/Json2Java$Configurd;->isSetters()Z

    move-result v0

    if-eqz v0, :cond_328

    invoke-virtual/range {p3 .. p3}, Lcom/s1243808733/util/Json2Java$Configurd;->isGetters()Z

    move-result v0

    if-eqz v0, :cond_328

    const/4 v0, 0x0

    .line 184
    :goto_307
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_356

    .line 185
    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 186
    invoke-virtual {v10, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 187
    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 188
    invoke-virtual {v10, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_307

    .line 191
    :cond_328
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_32c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_33f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 192
    invoke-virtual {v10, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 193
    invoke-virtual {v10, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_32c

    .line 195
    :cond_33f
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_343
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_356

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 196
    invoke-virtual {v10, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 197
    invoke-virtual {v10, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_343

    .line 202
    :cond_356
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_35a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_36f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 203
    move-object/from16 v6, v20

    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 204
    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_35a

    .line 207
    :cond_36f
    move-object/from16 v6, v20

    move-object/from16 v0, v19

    move-object/from16 v5, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 208
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 209
    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 210
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 212
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 215
    invoke-virtual/range {p3 .. p3}, Lcom/s1243808733/util/Json2Java$Configurd;->isToString()Z

    move-result v6

    if-eqz v6, :cond_412

    .line 217
    const-string v6, "\"[\"+getClass().getCanonicalName()+\"]\""

    move-object v8, v6

    const/4 v6, 0x0

    :goto_390
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v9

    if-ge v6, v9, :cond_3df

    .line 218
    move-object/from16 v9, v18

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/s1243808733/util/Json2Java$Field;

    .line 219
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " + \""

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v6, :cond_3b9

    move-object/from16 v8, v16

    goto :goto_3bb

    :cond_3b9
    const-string v8, ","

    :goto_3bb
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\\n"

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lcom/s1243808733/util/Json2Java$Field;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "=\" + "

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lcom/s1243808733/util/Json2Java$Field;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v18, v9

    goto :goto_390

    .line 221
    :cond_3df
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "@Override\n"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "public String toString() {\n"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";\n"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}\n\n"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_414

    .line 215
    :cond_412
    move-object/from16 v3, v16

    .line 221
    :goto_414
    if-lez p2, :cond_456

    .line 229
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v6, v17

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "public static class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " {"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 230
    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 231
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_44a

    .line 232
    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 235
    :cond_44a
    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 236
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 237
    const-string v0, "}\n"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_45c

    .line 239
    :cond_456
    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 240
    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 244
    :goto_45c
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getSimpleName(Ljava/lang/Object;Lcom/s1243808733/util/Json2Java$Configurd;)Ljava/lang/String;
    .registers 13

    .line 254
    sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-ne v0, p0, :cond_7

    .line 255
    const-string p0, "Object"

    return-object p0

    .line 258
    :cond_7
    nop

    .line 265
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 272
    instance-of v4, p0, Ljava/lang/Class;

    if-eqz v4, :cond_17

    check-cast p0, Ljava/lang/Class;

    goto :goto_1b

    :cond_17
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    .line 274
    :goto_1b
    invoke-virtual {p1}, Lcom/s1243808733/util/Json2Java$Configurd;->isUseInteger()Z

    move-result p1

    if-eqz p1, :cond_2e

    const-class p1, Ljava/lang/Integer;

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2e

    .line 275
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2e
    const/4 p1, 0x0

    const/4 v4, 0x0

    :goto_30
    const/4 v5, 0x4

    if-ge v4, v5, :cond_64

    .line 278
    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Ljava/lang/Boolean;

    aput-object v7, v6, p1

    const-class v7, Ljava/lang/Integer;

    const/4 v8, 0x1

    aput-object v7, v6, v8

    const-class v7, Ljava/lang/Long;

    const/4 v9, 0x2

    aput-object v7, v6, v9

    const-class v7, Ljava/lang/Double;

    const/4 v10, 0x3

    aput-object v7, v6, v10

    aget-object v6, v6, v4

    invoke-virtual {v6, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_61

    .line 279
    new-array p0, v5, [Ljava/lang/Class;

    aput-object v0, p0, p1

    aput-object v1, p0, v8

    aput-object v2, p0, v9

    aput-object v3, p0, v10

    aget-object p0, p0, v4

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_61
    add-int/lit8 v4, v4, 0x1

    goto :goto_30

    .line 284
    :cond_64
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static toUpperCaseFirst(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 3

    .line 248
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    .line 249
    const/4 v0, 0x0

    aget-char v1, p0, v0

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    aput-char v1, p0, v0

    .line 250
    invoke-static {p0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
