.class public final Lorg/apache/tools/ant/IntrospectionHelper;
.super Ljava/lang/Object;
.source "IntrospectionHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/IntrospectionHelper$AddNestedCreator;,
        Lorg/apache/tools/ant/IntrospectionHelper$AttributeSetter;,
        Lorg/apache/tools/ant/IntrospectionHelper$CreateNestedCreator;,
        Lorg/apache/tools/ant/IntrospectionHelper$Creator;,
        Lorg/apache/tools/ant/IntrospectionHelper$MethodAndObject;,
        Lorg/apache/tools/ant/IntrospectionHelper$NestedCreator;
    }
.end annotation


# static fields
.field private static final ELLIPSIS:Ljava/lang/String; = "..."

.field private static final HELPERS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/tools/ant/IntrospectionHelper;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAX_REPORT_NESTED_TEXT:I = 0x14

.field protected static final NOT_SUPPORTED_CHILD_POSTFIX:Ljava/lang/String; = "\" element."

.field protected static final NOT_SUPPORTED_CHILD_PREFIX:Ljava/lang/String; = " doesn\'t support the nested \""

.field private static final PRIMITIVE_TYPE_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private final addText:Ljava/lang/reflect/Method;

.field private final addTypeMethods:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field private final attributeSetters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/tools/ant/IntrospectionHelper$AttributeSetter;",
            ">;"
        }
    .end annotation
.end field

.field private final attributeTypes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final bean:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final nestedCreators:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/tools/ant/IntrospectionHelper$NestedCreator;",
            ">;"
        }
    .end annotation
.end field

.field private final nestedTypes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 12

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/16 v8, 0x8

    const/4 v1, 0x0

    .line 67
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/apache/tools/ant/IntrospectionHelper;->HELPERS:Ljava/util/Map;

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v8}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lorg/apache/tools/ant/IntrospectionHelper;->PRIMITIVE_TYPE_MAP:Ljava/util/Map;

    .line 79
    new-array v2, v8, [Ljava/lang/Class;

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v0, v2, v1

    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    aput-object v0, v2, v9

    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    aput-object v0, v2, v10

    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    aput-object v0, v2, v11

    const/4 v0, 0x4

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v0

    const/4 v0, 0x5

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v0

    const/4 v0, 0x6

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v0

    const/4 v0, 0x7

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v0

    move v0, v1

    .line 81
    :goto_3b
    array-length v3, v2

    if-ge v0, v3, :cond_70

    .line 84
    sget-object v3, Lorg/apache/tools/ant/IntrospectionHelper;->PRIMITIVE_TYPE_MAP:Ljava/util/Map;

    aget-object v4, v2, v0

    new-array v5, v8, [Ljava/lang/Class;

    const-class v6, Ljava/lang/Boolean;

    aput-object v6, v5, v1

    const-class v6, Ljava/lang/Byte;

    aput-object v6, v5, v9

    const-class v6, Ljava/lang/Character;

    aput-object v6, v5, v10

    const-class v6, Ljava/lang/Short;

    aput-object v6, v5, v11

    const/4 v6, 0x4

    const-class v7, Ljava/lang/Integer;

    aput-object v7, v5, v6

    const/4 v6, 0x5

    const-class v7, Ljava/lang/Long;

    aput-object v7, v5, v6

    const/4 v6, 0x6

    const-class v7, Ljava/lang/Float;

    aput-object v7, v5, v6

    const/4 v6, 0x7

    const-class v7, Ljava/lang/Double;

    aput-object v7, v5, v6

    aget-object v5, v5, v0

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    add-int/lit8 v0, v0, 0x1

    goto :goto_3b

    .line 86
    :cond_70
    return-void
.end method

.method private constructor <init>(Ljava/lang/Class;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    const/4 v12, 0x1

    const/4 v4, 0x0

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/IntrospectionHelper;->attributeTypes:Ljava/util/Map;

    .line 101
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/IntrospectionHelper;->attributeSetters:Ljava/util/Map;

    .line 107
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/IntrospectionHelper;->nestedTypes:Ljava/util/Map;

    .line 113
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/IntrospectionHelper;->nestedCreators:Ljava/util/Map;

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/IntrospectionHelper;->addTypeMethods:Ljava/util/List;

    .line 181
    iput-object p1, p0, Lorg/apache/tools/ant/IntrospectionHelper;->bean:Ljava/lang/Class;

    .line 182
    invoke-virtual {p1}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v5

    array-length v6, v5

    const/4 v1, 0x0

    move v3, v4

    :goto_31
    if-ge v3, v6, :cond_24c

    aget-object v2, v5, v3

    .line 184
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    .line 185
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    .line 186
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v8

    .line 189
    array-length v9, v8

    if-ne v9, v12, :cond_65

    sget-object v9, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {v9, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_65

    .line 190
    const-string v9, "add"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5c

    const-string v9, "addConfigured"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_65

    .line 191
    :cond_5c
    invoke-direct {p0, v2}, Lorg/apache/tools/ant/IntrospectionHelper;->insertAddTypeMethod(Ljava/lang/reflect/Method;)V

    move-object v0, v1

    .line 270
    :goto_60
    add-int/lit8 v2, v3, 0x1

    move-object v1, v0

    move v3, v2

    goto :goto_31

    .line 195
    :cond_65
    const-class v9, Lorg/apache/tools/ant/ProjectComponent;

    invoke-virtual {v9, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_7a

    array-length v9, v8

    if-ne v9, v12, :cond_7a

    aget-object v9, v8, v4

    .line 196
    invoke-direct {p0, v7, v9}, Lorg/apache/tools/ant/IntrospectionHelper;->isHiddenSetMethod(Ljava/lang/String;Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_7a

    move-object v0, v1

    .line 197
    goto :goto_60

    .line 200
    :cond_7a
    invoke-virtual {p0}, Lorg/apache/tools/ant/IntrospectionHelper;->isContainer()Z

    move-result v9

    if-eqz v9, :cond_97

    array-length v9, v8

    if-ne v9, v12, :cond_97

    const-string v9, "addTask"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_97

    aget-object v9, v8, v4

    .line 201
    const-class v10, Lorg/apache/tools/ant/Task;

    invoke-virtual {v10, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_97

    move-object v0, v1

    .line 202
    goto :goto_60

    .line 204
    :cond_97
    const-string v9, "addText"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b6

    sget-object v9, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {v9, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b6

    array-length v9, v8

    if-ne v9, v12, :cond_b6

    aget-object v9, v8, v4

    .line 205
    const-class v10, Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b6

    move-object v0, v2

    .line 206
    goto :goto_60

    .line 207
    :cond_b6
    const-string v9, "set"

    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_12d

    sget-object v9, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {v9, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_12d

    array-length v9, v8

    if-ne v9, v12, :cond_12d

    aget-object v9, v8, v4

    .line 208
    invoke-virtual {v9}, Ljava/lang/Class;->isArray()Z

    move-result v9

    if-nez v9, :cond_12d

    .line 209
    const-string v0, "set"

    invoke-static {v7, v0}, Lorg/apache/tools/ant/IntrospectionHelper;->getPropertyName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 210
    iget-object v0, p0, Lorg/apache/tools/ant/IntrospectionHelper;->attributeSetters:Ljava/util/Map;

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/IntrospectionHelper$AttributeSetter;

    .line 211
    if-eqz v0, :cond_116

    .line 212
    const-class v9, Ljava/lang/String;

    aget-object v10, v8, v4

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_ee

    move-object v0, v1

    .line 219
    goto/16 :goto_60

    .line 221
    :cond_ee
    const-class v9, Ljava/io/File;

    aget-object v10, v8, v4

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_116

    .line 223
    const-class v9, Lorg/apache/tools/ant/types/Resource;

    invoke-static {v0}, Lorg/apache/tools/ant/IntrospectionHelper$AttributeSetter;->access$000(Lorg/apache/tools/ant/IntrospectionHelper$AttributeSetter;)Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_113

    const-class v9, Lorg/apache/tools/ant/types/resources/FileProvider;

    invoke-static {v0}, Lorg/apache/tools/ant/IntrospectionHelper$AttributeSetter;->access$000(Lorg/apache/tools/ant/IntrospectionHelper$AttributeSetter;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_116

    move-object v0, v1

    .line 224
    goto/16 :goto_60

    :cond_113
    move-object v0, v1

    .line 223
    goto/16 :goto_60

    .line 237
    :cond_116
    aget-object v0, v8, v4

    invoke-direct {p0, v2, v0, v7}, Lorg/apache/tools/ant/IntrospectionHelper;->createAttributeSetter(Ljava/lang/reflect/Method;Ljava/lang/Class;Ljava/lang/String;)Lorg/apache/tools/ant/IntrospectionHelper$AttributeSetter;

    move-result-object v0

    .line 238
    if-eqz v0, :cond_12a

    .line 239
    iget-object v2, p0, Lorg/apache/tools/ant/IntrospectionHelper;->attributeTypes:Ljava/util/Map;

    aget-object v8, v8, v4

    invoke-interface {v2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    iget-object v2, p0, Lorg/apache/tools/ant/IntrospectionHelper;->attributeSetters:Ljava/util/Map;

    invoke-interface {v2, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_12a
    move-object v0, v1

    .line 242
    goto/16 :goto_60

    :cond_12d
    const-string v9, "create"

    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_164

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v9

    if-nez v9, :cond_164

    .line 243
    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v9

    if-nez v9, :cond_164

    array-length v9, v8

    if-nez v9, :cond_164

    .line 245
    const-string v8, "create"

    invoke-static {v7, v8}, Lorg/apache/tools/ant/IntrospectionHelper;->getPropertyName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 248
    iget-object v8, p0, Lorg/apache/tools/ant/IntrospectionHelper;->nestedCreators:Ljava/util/Map;

    invoke-interface {v8, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_161

    .line 249
    iget-object v8, p0, Lorg/apache/tools/ant/IntrospectionHelper;->nestedTypes:Ljava/util/Map;

    invoke-interface {v8, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    iget-object v0, p0, Lorg/apache/tools/ant/IntrospectionHelper;->nestedCreators:Ljava/util/Map;

    new-instance v8, Lorg/apache/tools/ant/IntrospectionHelper$CreateNestedCreator;

    invoke-direct {v8, v2}, Lorg/apache/tools/ant/IntrospectionHelper$CreateNestedCreator;-><init>(Ljava/lang/reflect/Method;)V

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_161
    move-object v0, v1

    .line 252
    goto/16 :goto_60

    :cond_164
    const-string v9, "addConfigured"

    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1cc

    sget-object v9, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    .line 253
    invoke-virtual {v9, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1cc

    array-length v9, v8

    if-ne v9, v12, :cond_1cc

    aget-object v9, v8, v4

    .line 254
    const-class v10, Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1cc

    aget-object v9, v8, v4

    .line 255
    invoke-virtual {v9}, Ljava/lang/Class;->isArray()Z

    move-result v9

    if-nez v9, :cond_1cc

    aget-object v9, v8, v4

    invoke-virtual {v9}, Ljava/lang/Class;->isPrimitive()Z

    move-result v9

    if-nez v9, :cond_1cc

    .line 257
    const/4 v0, 0x0

    :try_start_192
    aget-object v0, v8, v0

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Class;

    invoke-virtual {v0, v9}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_19a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_192 .. :try_end_19a} :catch_1b7

    move-result-object v0

    .line 263
    :goto_19b
    :try_start_19b
    const-string v9, "addConfigured"

    invoke-static {v7, v9}, Lorg/apache/tools/ant/IntrospectionHelper;->getPropertyName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 264
    iget-object v9, p0, Lorg/apache/tools/ant/IntrospectionHelper;->nestedTypes:Ljava/util/Map;

    const/4 v10, 0x0

    aget-object v8, v8, v10

    invoke-interface {v9, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    iget-object v8, p0, Lorg/apache/tools/ant/IntrospectionHelper;->nestedCreators:Ljava/util/Map;

    new-instance v9, Lorg/apache/tools/ant/IntrospectionHelper$AddNestedCreator;

    const/4 v10, 0x2

    invoke-direct {v9, v2, v0, v10}, Lorg/apache/tools/ant/IntrospectionHelper$AddNestedCreator;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Constructor;I)V

    invoke-interface {v8, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    .line 269
    goto/16 :goto_60

    .line 260
    :catch_1b7
    move-exception v0

    .line 261
    const/4 v0, 0x0

    aget-object v0, v8, v0

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    const-class v11, Lorg/apache/tools/ant/Project;

    aput-object v11, v9, v10

    invoke-virtual {v0, v9}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_1c6
    .catch Ljava/lang/NoSuchMethodException; {:try_start_19b .. :try_end_1c6} :catch_1c8

    move-result-object v0

    goto :goto_19b

    .line 267
    :catch_1c8
    move-exception v0

    move-object v0, v1

    .line 269
    goto/16 :goto_60

    .line 270
    :cond_1cc
    const-string v9, "add"

    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_24f

    sget-object v9, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    .line 271
    invoke-virtual {v9, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_249

    array-length v0, v8

    if-ne v0, v12, :cond_249

    aget-object v0, v8, v4

    .line 272
    const-class v9, Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_246

    aget-object v0, v8, v4

    .line 273
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_243

    aget-object v0, v8, v4

    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_243

    .line 275
    const/4 v0, 0x0

    :try_start_1fa
    aget-object v0, v8, v0

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Class;

    invoke-virtual {v0, v9}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_202
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1fa .. :try_end_202} :catch_214

    move-result-object v0

    .line 281
    :goto_203
    :try_start_203
    const-string v9, "add"

    invoke-static {v7, v9}, Lorg/apache/tools/ant/IntrospectionHelper;->getPropertyName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 282
    iget-object v9, p0, Lorg/apache/tools/ant/IntrospectionHelper;->nestedTypes:Ljava/util/Map;

    invoke-interface {v9, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_225

    move-object v0, v1

    .line 288
    goto/16 :goto_60

    .line 278
    :catch_214
    move-exception v0

    .line 279
    const/4 v0, 0x0

    aget-object v0, v8, v0

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    const-class v11, Lorg/apache/tools/ant/Project;

    aput-object v11, v9, v10

    invoke-virtual {v0, v9}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    goto :goto_203

    .line 290
    :cond_225
    iget-object v9, p0, Lorg/apache/tools/ant/IntrospectionHelper;->nestedTypes:Ljava/util/Map;
    :try_end_227
    .catch Ljava/lang/NoSuchMethodException; {:try_start_203 .. :try_end_227} :catch_23f

    const/4 v10, 0x0

    :try_start_228
    aget-object v8, v8, v10

    invoke-interface {v9, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    iget-object v8, p0, Lorg/apache/tools/ant/IntrospectionHelper;->nestedCreators:Ljava/util/Map;

    new-instance v9, Lorg/apache/tools/ant/IntrospectionHelper$AddNestedCreator;

    const/4 v10, 0x1

    invoke-direct {v9, v2, v0, v10}, Lorg/apache/tools/ant/IntrospectionHelper$AddNestedCreator;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Constructor;I)V

    invoke-interface {v8, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_238
    .catch Ljava/lang/NoSuchMethodException; {:try_start_228 .. :try_end_238} :catch_23b

    move-object v0, v1

    .line 295
    goto/16 :goto_60

    .line 293
    :catch_23b
    move-exception v0

    move-object v0, v1

    goto/16 :goto_60

    :catch_23f
    move-exception v0

    move-object v0, v1

    goto/16 :goto_60

    :cond_243
    move-object v0, v1

    .line 273
    goto/16 :goto_60

    :cond_246
    move-object v0, v1

    .line 272
    goto/16 :goto_60

    :cond_249
    move-object v0, v1

    .line 271
    goto/16 :goto_60

    .line 298
    :cond_24c
    iput-object v1, p0, Lorg/apache/tools/ant/IntrospectionHelper;->addText:Ljava/lang/reflect/Method;

    .line 299
    return-void

    :cond_24f
    move-object v0, v1

    goto/16 :goto_60
.end method

.method static synthetic access$400(Ljava/lang/reflect/InvocationTargetException;)Lorg/apache/tools/ant/BuildException;
    .registers 2

    .line 62
    invoke-static {p0}, Lorg/apache/tools/ant/IntrospectionHelper;->extractBuildException(Ljava/lang/reflect/InvocationTargetException;)Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 62
    invoke-static {p0, p1}, Lorg/apache/tools/ant/IntrospectionHelper;->getPropertyName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600()Ljava/util/Map;
    .registers 1

    .line 62
    sget-object v0, Lorg/apache/tools/ant/IntrospectionHelper;->PRIMITIVE_TYPE_MAP:Ljava/util/Map;

    return-object v0
.end method

.method public static clearCache()V
    .registers 1

    .line 1515
    sget-object v0, Lorg/apache/tools/ant/IntrospectionHelper;->HELPERS:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1516
    return-void
.end method

.method private condenseText(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 1639
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x14

    if-gt v0, v1, :cond_9

    .line 1643
    :goto_8
    return-object p1

    .line 1642
    :cond_9
    const-string v0, "..."

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    rsub-int/lit8 v0, v0, 0x14

    div-int/lit8 v0, v0, 0x2

    .line 1643
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v0

    const-string v3, "..."

    invoke-virtual {v1, v0, v2, v3}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_8
.end method

.method private createAddTypeCreator(Lorg/apache/tools/ant/Project;Ljava/lang/Object;Ljava/lang/String;)Lorg/apache/tools/ant/IntrospectionHelper$NestedCreator;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const/4 v2, 0x0

    .line 1529
    iget-object v0, p0, Lorg/apache/tools/ant/IntrospectionHelper;->addTypeMethods:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    move-object v0, v2

    .line 1555
    :goto_a
    return-object v0

    .line 1532
    :cond_b
    invoke-static {p1}, Lorg/apache/tools/ant/ComponentHelper;->getComponentHelper(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/ComponentHelper;

    move-result-object v0

    .line 1534
    iget-object v1, p0, Lorg/apache/tools/ant/IntrospectionHelper;->addTypeMethods:Ljava/util/List;

    invoke-direct {p0, v0, p3, v1}, Lorg/apache/tools/ant/IntrospectionHelper;->createRestricted(Lorg/apache/tools/ant/ComponentHelper;Ljava/lang/String;Ljava/util/List;)Lorg/apache/tools/ant/IntrospectionHelper$MethodAndObject;

    move-result-object v1

    .line 1535
    iget-object v3, p0, Lorg/apache/tools/ant/IntrospectionHelper;->addTypeMethods:Ljava/util/List;

    invoke-direct {p0, v0, p3, v3}, Lorg/apache/tools/ant/IntrospectionHelper;->createTopLevel(Lorg/apache/tools/ant/ComponentHelper;Ljava/lang/String;Ljava/util/List;)Lorg/apache/tools/ant/IntrospectionHelper$MethodAndObject;

    move-result-object v0

    .line 1537
    if-nez v1, :cond_21

    if-nez v0, :cond_21

    move-object v0, v2

    .line 1538
    goto :goto_a

    .line 1541
    :cond_21
    if-eqz v1, :cond_25

    if-nez v0, :cond_4d

    .line 1547
    :cond_25
    if-nez v1, :cond_28

    move-object v1, v0

    .line 1549
    :cond_28
    invoke-static {v1}, Lorg/apache/tools/ant/IntrospectionHelper$MethodAndObject;->access$700(Lorg/apache/tools/ant/IntrospectionHelper$MethodAndObject;)Ljava/lang/Object;

    move-result-object v0

    .line 1550
    invoke-static {v1}, Lorg/apache/tools/ant/IntrospectionHelper$MethodAndObject;->access$700(Lorg/apache/tools/ant/IntrospectionHelper$MethodAndObject;)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lorg/apache/tools/ant/taskdefs/PreSetDef$PreSetDefinition;

    if-eqz v2, :cond_3e

    .line 1551
    invoke-static {v1}, Lorg/apache/tools/ant/IntrospectionHelper$MethodAndObject;->access$700(Lorg/apache/tools/ant/IntrospectionHelper$MethodAndObject;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/taskdefs/PreSetDef$PreSetDefinition;

    .line 1552
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/PreSetDef$PreSetDefinition;->createObject(Lorg/apache/tools/ant/Project;)Ljava/lang/Object;

    move-result-object v0

    .line 1554
    :cond_3e
    invoke-static {v1}, Lorg/apache/tools/ant/IntrospectionHelper$MethodAndObject;->access$700(Lorg/apache/tools/ant/IntrospectionHelper$MethodAndObject;)Ljava/lang/Object;

    move-result-object v3

    .line 1555
    new-instance v2, Lorg/apache/tools/ant/IntrospectionHelper$14;

    invoke-static {v1}, Lorg/apache/tools/ant/IntrospectionHelper$MethodAndObject;->access$800(Lorg/apache/tools/ant/IntrospectionHelper$MethodAndObject;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-direct {v2, p0, v1, v0, v3}, Lorg/apache/tools/ant/IntrospectionHelper$14;-><init>(Lorg/apache/tools/ant/IntrospectionHelper;Ljava/lang/reflect/Method;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v2

    goto :goto_a

    .line 1542
    :cond_4d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ambiguous: type and component definitions for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private createAttributeSetter(Ljava/lang/reflect/Method;Ljava/lang/Class;Ljava/lang/String;)Lorg/apache/tools/ant/IntrospectionHelper$AttributeSetter;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/tools/ant/IntrospectionHelper$AttributeSetter;"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1036
    sget-object v2, Lorg/apache/tools/ant/IntrospectionHelper;->PRIMITIVE_TYPE_MAP:Ljava/util/Map;

    invoke-interface {v2, p2, p2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    .line 1039
    const-class v2, Ljava/lang/Object;

    if-ne v2, v4, :cond_14

    .line 1040
    new-instance v0, Lorg/apache/tools/ant/IntrospectionHelper$2;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/tools/ant/IntrospectionHelper$2;-><init>(Lorg/apache/tools/ant/IntrospectionHelper;Ljava/lang/reflect/Method;Ljava/lang/Class;)V

    .line 1192
    :goto_13
    return-object v0

    .line 1051
    :cond_14
    const-class v2, Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 1052
    new-instance v0, Lorg/apache/tools/ant/IntrospectionHelper$3;

    invoke-direct {v0, p0, p1, p2, p1}, Lorg/apache/tools/ant/IntrospectionHelper$3;-><init>(Lorg/apache/tools/ant/IntrospectionHelper;Ljava/lang/reflect/Method;Ljava/lang/Class;Ljava/lang/reflect/Method;)V

    goto :goto_13

    .line 1061
    :cond_22
    const-class v2, Ljava/lang/Character;

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 1062
    new-instance v0, Lorg/apache/tools/ant/IntrospectionHelper$4;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/tools/ant/IntrospectionHelper$4;-><init>(Lorg/apache/tools/ant/IntrospectionHelper;Ljava/lang/reflect/Method;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/reflect/Method;)V

    goto :goto_13

    .line 1075
    :cond_35
    const-class v2, Ljava/lang/Boolean;

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_43

    .line 1076
    new-instance v0, Lorg/apache/tools/ant/IntrospectionHelper$5;

    invoke-direct {v0, p0, p1, p2, p1}, Lorg/apache/tools/ant/IntrospectionHelper$5;-><init>(Lorg/apache/tools/ant/IntrospectionHelper;Ljava/lang/reflect/Method;Ljava/lang/Class;Ljava/lang/reflect/Method;)V

    goto :goto_13

    .line 1086
    :cond_43
    const-class v2, Ljava/lang/Class;

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_51

    .line 1087
    new-instance v0, Lorg/apache/tools/ant/IntrospectionHelper$6;

    invoke-direct {v0, p0, p1, p2, p1}, Lorg/apache/tools/ant/IntrospectionHelper$6;-><init>(Lorg/apache/tools/ant/IntrospectionHelper;Ljava/lang/reflect/Method;Ljava/lang/Class;Ljava/lang/reflect/Method;)V

    goto :goto_13

    .line 1100
    :cond_51
    const-class v2, Ljava/io/File;

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5f

    .line 1101
    new-instance v0, Lorg/apache/tools/ant/IntrospectionHelper$7;

    invoke-direct {v0, p0, p1, p2, p1}, Lorg/apache/tools/ant/IntrospectionHelper$7;-><init>(Lorg/apache/tools/ant/IntrospectionHelper;Ljava/lang/reflect/Method;Ljava/lang/Class;Ljava/lang/reflect/Method;)V

    goto :goto_13

    .line 1110
    :cond_5f
    const-class v2, Ljava/nio/file/Path;

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6d

    .line 1111
    new-instance v0, Lorg/apache/tools/ant/IntrospectionHelper$8;

    invoke-direct {v0, p0, p1, p2, p1}, Lorg/apache/tools/ant/IntrospectionHelper$8;-><init>(Lorg/apache/tools/ant/IntrospectionHelper;Ljava/lang/reflect/Method;Ljava/lang/Class;Ljava/lang/reflect/Method;)V

    goto :goto_13

    .line 1121
    :cond_6d
    const-class v2, Lorg/apache/tools/ant/types/Resource;

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7d

    const-class v2, Lorg/apache/tools/ant/types/resources/FileProvider;

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_83

    .line 1122
    :cond_7d
    new-instance v0, Lorg/apache/tools/ant/IntrospectionHelper$9;

    invoke-direct {v0, p0, p1, p2, p1}, Lorg/apache/tools/ant/IntrospectionHelper$9;-><init>(Lorg/apache/tools/ant/IntrospectionHelper;Ljava/lang/reflect/Method;Ljava/lang/Class;Ljava/lang/reflect/Method;)V

    goto :goto_13

    .line 1131
    :cond_83
    const-class v2, Lorg/apache/tools/ant/types/EnumeratedAttribute;

    invoke-virtual {v2, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_96

    .line 1132
    new-instance v0, Lorg/apache/tools/ant/IntrospectionHelper$10;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/tools/ant/IntrospectionHelper$10;-><init>(Lorg/apache/tools/ant/IntrospectionHelper;Ljava/lang/reflect/Method;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Method;)V

    goto/16 :goto_13

    .line 1148
    :cond_96
    invoke-direct {p0, v4, p1, p2}, Lorg/apache/tools/ant/IntrospectionHelper;->getEnumSetter(Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/Class;)Lorg/apache/tools/ant/IntrospectionHelper$AttributeSetter;

    move-result-object v2

    .line 1149
    if-eqz v2, :cond_9f

    move-object v0, v2

    .line 1150
    goto/16 :goto_13

    .line 1153
    :cond_9f
    const-class v2, Ljava/lang/Long;

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b3

    .line 1154
    new-instance v0, Lorg/apache/tools/ant/IntrospectionHelper$11;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/tools/ant/IntrospectionHelper$11;-><init>(Lorg/apache/tools/ant/IntrospectionHelper;Ljava/lang/reflect/Method;Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/String;)V

    goto/16 :goto_13

    .line 1180
    :cond_b3
    const/4 v2, 0x2

    :try_start_b4
    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v5, Lorg/apache/tools/ant/Project;

    aput-object v5, v2, v3

    const/4 v3, 0x1

    const-class v5, Ljava/lang/String;

    aput-object v5, v2, v3

    invoke-virtual {v4, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_c3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_b4 .. :try_end_c3} :catch_d1

    move-result-object v5

    move v4, v0

    .line 1192
    :goto_c5
    new-instance v0, Lorg/apache/tools/ant/IntrospectionHelper$12;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v6, p1

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lorg/apache/tools/ant/IntrospectionHelper$12;-><init>(Lorg/apache/tools/ant/IntrospectionHelper;Ljava/lang/reflect/Method;Ljava/lang/Class;ZLjava/lang/reflect/Constructor;Ljava/lang/reflect/Method;Ljava/lang/String;)V

    goto/16 :goto_13

    .line 1182
    :catch_d1
    move-exception v0

    .line 1185
    const/4 v0, 0x1

    :try_start_d3
    new-array v0, v0, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Ljava/lang/String;

    aput-object v3, v0, v2

    invoke-virtual {v4, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_dd
    .catch Ljava/lang/NoSuchMethodException; {:try_start_d3 .. :try_end_dd} :catch_e0

    move-result-object v5

    move v4, v1

    .line 1186
    goto :goto_c5

    .line 1187
    :catch_e0
    move-exception v0

    .line 1189
    const/4 v0, 0x0

    goto/16 :goto_13
.end method

.method private createDynamicElement(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .registers 7

    .line 579
    const/4 v0, 0x0

    .line 580
    instance-of v1, p1, Lorg/apache/tools/ant/DynamicElementNS;

    if-eqz v1, :cond_c

    move-object v0, p1

    .line 581
    check-cast v0, Lorg/apache/tools/ant/DynamicElementNS;

    .line 582
    invoke-interface {v0, p2, p3, p4}, Lorg/apache/tools/ant/DynamicElementNS;->createDynamicElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 584
    :cond_c
    if-nez v0, :cond_1e

    instance-of v1, p1, Lorg/apache/tools/ant/DynamicElement;

    if-eqz v1, :cond_1e

    .line 585
    check-cast p1, Lorg/apache/tools/ant/DynamicElement;

    .line 586
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 587
    invoke-virtual {p3, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/apache/tools/ant/DynamicElement;->createDynamicElement(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 589
    :cond_1e
    return-object v0
.end method

.method private createRestricted(Lorg/apache/tools/ant/ComponentHelper;Ljava/lang/String;Ljava/util/List;)Lorg/apache/tools/ant/IntrospectionHelper$MethodAndObject;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/tools/ant/ComponentHelper;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/reflect/Method;",
            ">;)",
            "Lorg/apache/tools/ant/IntrospectionHelper$MethodAndObject;"
        }
    .end annotation

    .line 1694
    invoke-virtual {p1}, Lorg/apache/tools/ant/ComponentHelper;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    .line 1696
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/tools/ant/IntrospectionHelper;->findRestrictedDefinition(Lorg/apache/tools/ant/ComponentHelper;Ljava/lang/String;Ljava/util/List;)Lorg/apache/tools/ant/AntTypeDefinition;

    move-result-object v1

    .line 1699
    if-nez v1, :cond_c

    .line 1700
    const/4 v0, 0x0

    .line 1715
    :goto_b
    return-object v0

    .line 1703
    :cond_c
    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/AntTypeDefinition;->getExposedClass(Lorg/apache/tools/ant/Project;)Ljava/lang/Class;

    move-result-object v2

    invoke-direct {p0, v2, p3}, Lorg/apache/tools/ant/IntrospectionHelper;->findMatchingMethod(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1705
    if-eqz v2, :cond_45

    .line 1709
    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/AntTypeDefinition;->create(Lorg/apache/tools/ant/Project;)Ljava/lang/Object;

    move-result-object v3

    .line 1710
    if-eqz v3, :cond_22

    .line 1715
    new-instance v0, Lorg/apache/tools/ant/IntrospectionHelper$MethodAndObject;

    invoke-direct {v0, v2, v3}, Lorg/apache/tools/ant/IntrospectionHelper$MethodAndObject;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Object;)V

    goto :goto_b

    .line 1711
    :cond_22
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to create object "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1713
    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/AntTypeDefinition;->getTypeClass(Lorg/apache/tools/ant/Project;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v0, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1706
    :cond_45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ant Internal Error - contract mismatch for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private createTopLevel(Lorg/apache/tools/ant/ComponentHelper;Ljava/lang/String;Ljava/util/List;)Lorg/apache/tools/ant/IntrospectionHelper$MethodAndObject;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/tools/ant/ComponentHelper;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/reflect/Method;",
            ">;)",
            "Lorg/apache/tools/ant/IntrospectionHelper$MethodAndObject;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1720
    invoke-virtual {p1, p2}, Lorg/apache/tools/ant/ComponentHelper;->getComponentClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 1721
    if-nez v1, :cond_8

    .line 1729
    :cond_7
    :goto_7
    return-object v0

    .line 1724
    :cond_8
    iget-object v2, p0, Lorg/apache/tools/ant/IntrospectionHelper;->addTypeMethods:Ljava/util/List;

    invoke-direct {p0, v1, v2}, Lorg/apache/tools/ant/IntrospectionHelper;->findMatchingMethod(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1725
    if-eqz v1, :cond_7

    .line 1728
    invoke-virtual {p1, p2}, Lorg/apache/tools/ant/ComponentHelper;->createComponent(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 1729
    new-instance v0, Lorg/apache/tools/ant/IntrospectionHelper$MethodAndObject;

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/IntrospectionHelper$MethodAndObject;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Object;)V

    goto :goto_7
.end method

.method private static extractBuildException(Ljava/lang/reflect/InvocationTargetException;)Lorg/apache/tools/ant/BuildException;
    .registers 3

    .line 808
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v0

    .line 809
    instance-of v1, v0, Lorg/apache/tools/ant/BuildException;

    if-eqz v1, :cond_b

    .line 810
    check-cast v0, Lorg/apache/tools/ant/BuildException;

    .line 812
    :goto_a
    return-object v0

    :cond_b
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_a
.end method

.method private findMatchingMethod(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/reflect/Method;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/reflect/Method;",
            ">;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1617
    if-nez p1, :cond_4

    .line 1635
    :goto_3
    return-object v0

    .line 1623
    :cond_4
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v1, v0

    move-object v2, v0

    :goto_a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_63

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    .line 1624
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    const/4 v5, 0x0

    aget-object v3, v3, v5

    .line 1625
    invoke-virtual {v3, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_65

    .line 1626
    if-nez v2, :cond_28

    move-object v2, v3

    :goto_26
    move-object v1, v0

    .line 1634
    goto :goto_a

    .line 1629
    :cond_28
    invoke-virtual {v3, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_30

    move-object v0, v1

    goto :goto_26

    .line 1630
    :cond_30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ambiguous: types "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1631
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " match "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_63
    move-object v0, v1

    .line 1635
    goto :goto_3

    :cond_65
    move-object v0, v1

    goto :goto_26
.end method

.method private findRestrictedDefinition(Lorg/apache/tools/ant/ComponentHelper;Ljava/lang/String;Ljava/util/List;)Lorg/apache/tools/ant/AntTypeDefinition;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/tools/ant/ComponentHelper;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/reflect/Method;",
            ">;)",
            "Lorg/apache/tools/ant/AntTypeDefinition;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1661
    .line 1664
    invoke-virtual {p1, p2}, Lorg/apache/tools/ant/ComponentHelper;->getRestrictedDefinitions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 1665
    if-nez v4, :cond_8

    .line 1688
    :goto_7
    return-object v0

    .line 1668
    :cond_8
    monitor-enter v4

    .line 1669
    :try_start_9
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v1, v0

    move-object v2, v0

    :cond_f
    :goto_f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/AntTypeDefinition;

    .line 1670
    invoke-virtual {p1}, Lorg/apache/tools/ant/ComponentHelper;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/apache/tools/ant/AntTypeDefinition;->getExposedClass(Lorg/apache/tools/ant/Project;)Ljava/lang/Class;

    move-result-object v3

    .line 1671
    if-eqz v3, :cond_f

    .line 1674
    invoke-direct {p0, v3, p3}, Lorg/apache/tools/ant/IntrospectionHelper;->findMatchingMethod(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 1675
    if-eqz v6, :cond_f

    .line 1678
    if-nez v2, :cond_30

    move-object v1, v0

    move-object v2, v3

    .line 1686
    goto :goto_f

    .line 1679
    :cond_30
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ambiguous: restricted definitions for "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1687
    :catchall_57
    move-exception v0

    monitor-exit v4
    :try_end_59
    .catchall {:try_start_9 .. :try_end_59} :catchall_57

    throw v0

    :cond_5a
    :try_start_5a
    monitor-exit v4
    :try_end_5b
    .catchall {:try_start_5a .. :try_end_5b} :catchall_57

    move-object v0, v1

    .line 1688
    goto :goto_7
.end method

.method private getElementName(Lorg/apache/tools/ant/Project;Ljava/lang/Object;)Ljava/lang/String;
    .registers 4

    .line 1265
    invoke-virtual {p1, p2}, Lorg/apache/tools/ant/Project;->getElementName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getEnumSetter(Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/Class;)Lorg/apache/tools/ant/IntrospectionHelper$AttributeSetter;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/apache/tools/ant/IntrospectionHelper$AttributeSetter;"
        }
    .end annotation

    .line 1228
    invoke-virtual {p1}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1229
    new-instance v0, Lorg/apache/tools/ant/IntrospectionHelper$13;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/apache/tools/ant/IntrospectionHelper$13;-><init>(Lorg/apache/tools/ant/IntrospectionHelper;Ljava/lang/reflect/Method;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Method;)V

    .line 1250
    :goto_10
    return-object v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public static getHelper(Ljava/lang/Class;)Lorg/apache/tools/ant/IntrospectionHelper;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/apache/tools/ant/IntrospectionHelper;"
        }
    .end annotation

    .line 324
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lorg/apache/tools/ant/IntrospectionHelper;->getHelper(Lorg/apache/tools/ant/Project;Ljava/lang/Class;)Lorg/apache/tools/ant/IntrospectionHelper;

    move-result-object v0

    return-object v0
.end method

.method public static getHelper(Lorg/apache/tools/ant/Project;Ljava/lang/Class;)Lorg/apache/tools/ant/IntrospectionHelper;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/tools/ant/Project;",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/apache/tools/ant/IntrospectionHelper;"
        }
    .end annotation

    .line 341
    if-nez p0, :cond_8

    .line 344
    new-instance v0, Lorg/apache/tools/ant/IntrospectionHelper;

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/IntrospectionHelper;-><init>(Ljava/lang/Class;)V

    .line 363
    :cond_7
    :goto_7
    return-object v0

    .line 346
    :cond_8
    sget-object v2, Lorg/apache/tools/ant/IntrospectionHelper;->HELPERS:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/IntrospectionHelper;

    .line 347
    if-eqz v0, :cond_1a

    iget-object v1, v0, Lorg/apache/tools/ant/IntrospectionHelper;->bean:Ljava/lang/Class;

    if-eq v1, p1, :cond_7

    .line 355
    :cond_1a
    new-instance v1, Lorg/apache/tools/ant/IntrospectionHelper;

    invoke-direct {v1, p1}, Lorg/apache/tools/ant/IntrospectionHelper;-><init>(Ljava/lang/Class;)V

    .line 356
    monitor-enter v2

    .line 357
    :try_start_20
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/IntrospectionHelper;

    .line 358
    if-eqz v0, :cond_35

    iget-object v3, v0, Lorg/apache/tools/ant/IntrospectionHelper;->bean:Ljava/lang/Class;

    if-ne v3, p1, :cond_35

    .line 359
    monitor-exit v2

    goto :goto_7

    .line 364
    :catchall_32
    move-exception v0

    monitor-exit v2
    :try_end_34
    .catchall {:try_start_20 .. :try_end_34} :catchall_32

    throw v0

    .line 362
    :cond_35
    :try_start_35
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    monitor-exit v2
    :try_end_3d
    .catchall {:try_start_35 .. :try_end_3d} :catchall_32

    move-object v0, v1

    goto :goto_7
.end method

.method private getNestedCreator(Lorg/apache/tools/ant/Project;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Lorg/apache/tools/ant/UnknownElement;)Lorg/apache/tools/ant/IntrospectionHelper$NestedCreator;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const/4 v4, 0x0

    .line 535
    invoke-static {p4}, Lorg/apache/tools/ant/ProjectHelper;->extractUriFromComponentName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 536
    invoke-static {p4}, Lorg/apache/tools/ant/ProjectHelper;->extractNameFromComponentName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 538
    const-string v1, "antlib:org.apache.tools.ant"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 539
    const-string v0, ""

    .line 541
    :cond_13
    const-string v1, "antlib:org.apache.tools.ant"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 542
    const-string p2, ""

    .line 545
    :cond_1d
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 546
    :cond_29
    iget-object v0, p0, Lorg/apache/tools/ant/IntrospectionHelper;->nestedCreators:Ljava/util/Map;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/IntrospectionHelper$NestedCreator;

    move-object v1, v0

    .line 548
    :goto_38
    if-nez v1, :cond_3e

    .line 549
    invoke-direct {p0, p1, p3, p4}, Lorg/apache/tools/ant/IntrospectionHelper;->createAddTypeCreator(Lorg/apache/tools/ant/Project;Ljava/lang/Object;Ljava/lang/String;)Lorg/apache/tools/ant/IntrospectionHelper$NestedCreator;

    move-result-object v1

    .line 551
    :cond_3e
    if-nez v1, :cond_6b

    instance-of v0, p3, Lorg/apache/tools/ant/DynamicElementNS;

    if-nez v0, :cond_48

    instance-of v0, p3, Lorg/apache/tools/ant/DynamicElement;

    if-eqz v0, :cond_6b

    .line 553
    :cond_48
    if-nez p5, :cond_60

    move-object v2, v3

    .line 554
    :goto_4b
    if-nez p5, :cond_66

    const-string v0, ""

    :goto_4f
    invoke-direct {p0, p3, v0, v3, v2}, Lorg/apache/tools/ant/IntrospectionHelper;->createDynamicElement(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 556
    if-eqz v2, :cond_6b

    .line 557
    new-instance v0, Lorg/apache/tools/ant/IntrospectionHelper$1;

    invoke-direct {v0, p0, v4, v2}, Lorg/apache/tools/ant/IntrospectionHelper$1;-><init>(Lorg/apache/tools/ant/IntrospectionHelper;Ljava/lang/reflect/Method;Ljava/lang/Object;)V

    .line 565
    :goto_5a
    if-nez v0, :cond_5f

    .line 566
    invoke-virtual {p0, p1, p3, p4}, Lorg/apache/tools/ant/IntrospectionHelper;->throwNotSupported(Lorg/apache/tools/ant/Project;Ljava/lang/Object;Ljava/lang/String;)V

    .line 568
    :cond_5f
    return-object v0

    .line 553
    :cond_60
    invoke-virtual {p5}, Lorg/apache/tools/ant/UnknownElement;->getQName()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto :goto_4b

    .line 554
    :cond_66
    invoke-virtual {p5}, Lorg/apache/tools/ant/UnknownElement;->getNamespace()Ljava/lang/String;

    move-result-object v0

    goto :goto_4f

    :cond_6b
    move-object v0, v1

    goto :goto_5a

    :cond_6d
    move-object v1, v4

    goto :goto_38
.end method

.method private static getPropertyName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1280
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private insertAddTypeMethod(Ljava/lang/reflect/Method;)V
    .registers 8

    const/4 v2, 0x0

    .line 1590
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    aget-object v3, v0, v2

    .line 1591
    iget-object v0, p0, Lorg/apache/tools/ant/IntrospectionHelper;->addTypeMethods:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    move v1, v2

    .line 1592
    :goto_e
    if-ge v1, v4, :cond_4c

    .line 1593
    iget-object v0, p0, Lorg/apache/tools/ant/IntrospectionHelper;->addTypeMethods:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    .line 1594
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    aget-object v5, v5, v2

    invoke-virtual {v5, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_36

    .line 1595
    const-string v0, "addConfigured"

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 1597
    iget-object v0, p0, Lorg/apache/tools/ant/IntrospectionHelper;->addTypeMethods:Ljava/util/List;

    invoke-interface {v0, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1607
    :cond_35
    :goto_35
    return-void

    .line 1601
    :cond_36
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {v0, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 1602
    iget-object v0, p0, Lorg/apache/tools/ant/IntrospectionHelper;->addTypeMethods:Ljava/util/List;

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_35

    .line 1592
    :cond_48
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_e

    .line 1606
    :cond_4c
    iget-object v0, p0, Lorg/apache/tools/ant/IntrospectionHelper;->addTypeMethods:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_35
.end method

.method private isHiddenSetMethod(Ljava/lang/String;Ljava/lang/Class;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .line 310
    const-string v0, "setLocation"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-class v0, Lorg/apache/tools/ant/Location;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 311
    :cond_10
    const-string v0, "setTaskType"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    const-class v0, Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    :cond_20
    const/4 v0, 0x1

    .line 310
    :goto_21
    return v0

    .line 311
    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method


# virtual methods
.method public addText(Lorg/apache/tools/ant/Project;Ljava/lang/Object;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 470
    iget-object v0, p0, Lorg/apache/tools/ant/IntrospectionHelper;->addText:Ljava/lang/reflect/Method;

    if-nez v0, :cond_36

    .line 471
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 473
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 488
    :goto_e
    return-void

    .line 478
    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Lorg/apache/tools/ant/Project;->getElementName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " doesn\'t support nested text data (\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 479
    invoke-direct {p0, v0}, Lorg/apache/tools/ant/IntrospectionHelper;->condenseText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\")."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 482
    :cond_36
    const/4 v1, 0x1

    :try_start_37
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    invoke-virtual {v0, p2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3f
    .catch Ljava/lang/IllegalAccessException; {:try_start_37 .. :try_end_3f} :catch_40
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_37 .. :try_end_3f} :catch_47

    goto :goto_e

    .line 483
    :catch_40
    move-exception v0

    .line 485
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 486
    :catch_47
    move-exception v0

    .line 487
    invoke-static {v0}, Lorg/apache/tools/ant/IntrospectionHelper;->extractBuildException(Ljava/lang/reflect/InvocationTargetException;)Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
.end method

.method public createElement(Lorg/apache/tools/ant/Project;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v5, 0x0

    .line 617
    const-string v2, ""

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/tools/ant/IntrospectionHelper;->getNestedCreator(Lorg/apache/tools/ant/Project;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Lorg/apache/tools/ant/UnknownElement;)Lorg/apache/tools/ant/IntrospectionHelper$NestedCreator;

    move-result-object v0

    .line 619
    const/4 v1, 0x0

    :try_start_c
    invoke-virtual {v0, p1, p2, v1}, Lorg/apache/tools/ant/IntrospectionHelper$NestedCreator;->create(Lorg/apache/tools/ant/Project;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 620
    if-eqz p1, :cond_15

    .line 621
    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/Project;->setProjectReference(Ljava/lang/Object;)V
    :try_end_15
    .catch Ljava/lang/IllegalAccessException; {:try_start_c .. :try_end_15} :catch_1c
    .catch Ljava/lang/InstantiationException; {:try_start_c .. :try_end_15} :catch_23
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_c .. :try_end_15} :catch_16

    .line 623
    :cond_15
    return-object v0

    .line 627
    :catch_16
    move-exception v0

    .line 628
    invoke-static {v0}, Lorg/apache/tools/ant/IntrospectionHelper;->extractBuildException(Ljava/lang/reflect/InvocationTargetException;)Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0

    .line 624
    :catch_1c
    move-exception v0

    .line 626
    :goto_1d
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 624
    :catch_23
    move-exception v0

    goto :goto_1d
.end method

.method public getAddTextMethod()Ljava/lang/reflect/Method;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 870
    invoke-virtual {p0}, Lorg/apache/tools/ant/IntrospectionHelper;->supportsCharacters()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 874
    iget-object v0, p0, Lorg/apache/tools/ant/IntrospectionHelper;->addText:Ljava/lang/reflect/Method;

    return-object v0

    .line 871
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Class "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/IntrospectionHelper;->bean:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " doesn\'t support nested text data."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getAttributeMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation

    .line 947
    iget-object v0, p0, Lorg/apache/tools/ant/IntrospectionHelper;->attributeTypes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 948
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    .line 947
    :goto_c
    return-object v0

    .line 948
    :cond_d
    iget-object v0, p0, Lorg/apache/tools/ant/IntrospectionHelper;->attributeTypes:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    goto :goto_c
.end method

.method public getAttributeMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 911
    iget-object v0, p0, Lorg/apache/tools/ant/IntrospectionHelper;->attributeSetters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/IntrospectionHelper$AttributeSetter;

    .line 912
    if-eqz v0, :cond_f

    .line 917
    invoke-static {v0}, Lorg/apache/tools/ant/IntrospectionHelper$AttributeSetter;->access$300(Lorg/apache/tools/ant/IntrospectionHelper$AttributeSetter;)Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0

    .line 913
    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Class "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/IntrospectionHelper;->bean:Ljava/lang/Class;

    .line 914
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " doesn\'t support the \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\" attribute."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lorg/apache/tools/ant/UnsupportedAttributeException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Lorg/apache/tools/ant/UnsupportedAttributeException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1
.end method

.method public getAttributeType(Ljava/lang/String;)Ljava/lang/Class;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 850
    iget-object v0, p0, Lorg/apache/tools/ant/IntrospectionHelper;->attributeTypes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 851
    if-eqz v0, :cond_b

    .line 856
    return-object v0

    .line 852
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Class "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/IntrospectionHelper;->bean:Ljava/lang/Class;

    .line 853
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " doesn\'t support the \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\" attribute."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lorg/apache/tools/ant/UnsupportedAttributeException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Lorg/apache/tools/ant/UnsupportedAttributeException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1
.end method

.method public getAttributes()Ljava/util/Enumeration;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 936
    iget-object v0, p0, Lorg/apache/tools/ant/IntrospectionHelper;->attributeSetters:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getElementCreator(Lorg/apache/tools/ant/Project;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Lorg/apache/tools/ant/UnknownElement;)Lorg/apache/tools/ant/IntrospectionHelper$Creator;
    .registers 9

    .line 646
    invoke-direct/range {p0 .. p5}, Lorg/apache/tools/ant/IntrospectionHelper;->getNestedCreator(Lorg/apache/tools/ant/Project;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Lorg/apache/tools/ant/UnknownElement;)Lorg/apache/tools/ant/IntrospectionHelper$NestedCreator;

    move-result-object v0

    .line 647
    new-instance v1, Lorg/apache/tools/ant/IntrospectionHelper$Creator;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p3, v0, v2}, Lorg/apache/tools/ant/IntrospectionHelper$Creator;-><init>(Lorg/apache/tools/ant/Project;Ljava/lang/Object;Lorg/apache/tools/ant/IntrospectionHelper$NestedCreator;Lorg/apache/tools/ant/IntrospectionHelper$1;)V

    return-object v1
.end method

.method public getElementMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 890
    iget-object v0, p0, Lorg/apache/tools/ant/IntrospectionHelper;->nestedCreators:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/IntrospectionHelper$NestedCreator;

    .line 891
    if-eqz v0, :cond_f

    .line 896
    invoke-static {v0}, Lorg/apache/tools/ant/IntrospectionHelper$NestedCreator;->access$200(Lorg/apache/tools/ant/IntrospectionHelper$NestedCreator;)Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0

    .line 892
    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Class "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/IntrospectionHelper;->bean:Ljava/lang/Class;

    .line 893
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " doesn\'t support the nested \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\" element."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lorg/apache/tools/ant/UnsupportedElementException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Lorg/apache/tools/ant/UnsupportedElementException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1
.end method

.method public getElementType(Ljava/lang/String;)Ljava/lang/Class;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 828
    iget-object v0, p0, Lorg/apache/tools/ant/IntrospectionHelper;->nestedTypes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 829
    if-eqz v0, :cond_b

    .line 834
    return-object v0

    .line 830
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Class "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/IntrospectionHelper;->bean:Ljava/lang/Class;

    .line 831
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " doesn\'t support the nested \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\" element."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lorg/apache/tools/ant/UnsupportedElementException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Lorg/apache/tools/ant/UnsupportedElementException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1
.end method

.method public getExtensionPoints()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation

    .line 994
    iget-object v0, p0, Lorg/apache/tools/ant/IntrospectionHelper;->addTypeMethods:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 995
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 994
    :goto_c
    return-object v0

    .line 995
    :cond_d
    iget-object v0, p0, Lorg/apache/tools/ant/IntrospectionHelper;->addTypeMethods:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_c
.end method

.method public getNestedElementMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation

    .line 972
    iget-object v0, p0, Lorg/apache/tools/ant/IntrospectionHelper;->nestedTypes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 973
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    .line 972
    :goto_c
    return-object v0

    .line 973
    :cond_d
    iget-object v0, p0, Lorg/apache/tools/ant/IntrospectionHelper;->nestedTypes:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    goto :goto_c
.end method

.method public getNestedElements()Ljava/util/Enumeration;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 960
    iget-object v0, p0, Lorg/apache/tools/ant/IntrospectionHelper;->nestedTypes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public isContainer()Z
    .registers 3

    .line 677
    const-class v0, Lorg/apache/tools/ant/TaskContainer;

    iget-object v1, p0, Lorg/apache/tools/ant/IntrospectionHelper;->bean:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public isDynamic()Z
    .registers 3

    .line 662
    const-class v0, Lorg/apache/tools/ant/DynamicElement;

    iget-object v1, p0, Lorg/apache/tools/ant/IntrospectionHelper;->bean:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lorg/apache/tools/ant/IntrospectionHelper;->bean:Ljava/lang/Class;

    .line 663
    const-class v1, Lorg/apache/tools/ant/DynamicElementNS;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_14
    const/4 v0, 0x1

    .line 662
    :goto_15
    return v0

    .line 663
    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public setAttribute(Lorg/apache/tools/ant/Project;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 387
    iget-object v0, p0, Lorg/apache/tools/ant/IntrospectionHelper;->attributeSetters:Ljava/util/Map;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 388
    invoke-virtual {p3, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 387
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/IntrospectionHelper$AttributeSetter;

    .line 389
    if-nez v0, :cond_97

    if-eqz p4, :cond_97

    .line 390
    instance-of v0, p2, Lorg/apache/tools/ant/DynamicAttributeNS;

    if-eqz v0, :cond_48

    .line 391
    check-cast p2, Lorg/apache/tools/ant/DynamicAttributeNS;

    .line 392
    invoke-static {p3}, Lorg/apache/tools/ant/ProjectHelper;->extractUriFromComponentName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 393
    invoke-static {v0}, Lorg/apache/tools/ant/ProjectHelper;->extractUriFromComponentName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 394
    invoke-static {p3}, Lorg/apache/tools/ant/ProjectHelper;->extractNameFromComponentName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 395
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_33

    move-object v0, v1

    .line 396
    :goto_2b
    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v2, v1, v0, v3}, Lorg/apache/tools/ant/DynamicAttributeNS;->setDynamicAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    :cond_32
    :goto_32
    return-void

    .line 395
    :cond_33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2b

    .line 399
    :cond_48
    instance-of v0, p2, Lorg/apache/tools/ant/DynamicObjectAttribute;

    if-eqz v0, :cond_58

    .line 400
    check-cast p2, Lorg/apache/tools/ant/DynamicObjectAttribute;

    .line 401
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p3, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0, p4}, Lorg/apache/tools/ant/DynamicObjectAttribute;->setDynamicAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_32

    .line 404
    :cond_58
    instance-of v0, p2, Lorg/apache/tools/ant/DynamicAttribute;

    if-eqz v0, :cond_6c

    .line 405
    check-cast p2, Lorg/apache/tools/ant/DynamicAttribute;

    .line 406
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p3, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lorg/apache/tools/ant/DynamicAttribute;->setDynamicAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_32

    .line 409
    :cond_6c
    const-string v0, ":"

    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_32

    .line 412
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1, p2}, Lorg/apache/tools/ant/IntrospectionHelper;->getElementName(Lorg/apache/tools/ant/Project;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " doesn\'t support the \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\" attribute."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 414
    new-instance v1, Lorg/apache/tools/ant/UnsupportedAttributeException;

    invoke-direct {v1, v0, p3}, Lorg/apache/tools/ant/UnsupportedAttributeException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 416
    :cond_97
    if-eqz v0, :cond_32

    .line 418
    :try_start_99
    invoke-virtual {v0, p1, p2, p4}, Lorg/apache/tools/ant/IntrospectionHelper$AttributeSetter;->setObject(Lorg/apache/tools/ant/Project;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_9c
    .catch Ljava/lang/IllegalAccessException; {:try_start_99 .. :try_end_9c} :catch_9d
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_99 .. :try_end_9c} :catch_a4

    goto :goto_32

    .line 419
    :catch_9d
    move-exception v0

    .line 421
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 422
    :catch_a4
    move-exception v0

    .line 423
    invoke-static {v0}, Lorg/apache/tools/ant/IntrospectionHelper;->extractBuildException(Ljava/lang/reflect/InvocationTargetException;)Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
.end method

.method public setAttribute(Lorg/apache/tools/ant/Project;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 448
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/tools/ant/IntrospectionHelper;->setAttribute(Lorg/apache/tools/ant/Project;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 449
    return-void
.end method

.method public storeElement(Lorg/apache/tools/ant/Project;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 783
    if-nez p4, :cond_3

    .line 797
    :cond_2
    :goto_2
    return-void

    .line 786
    :cond_3
    iget-object v0, p0, Lorg/apache/tools/ant/IntrospectionHelper;->nestedCreators:Ljava/util/Map;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p4, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/IntrospectionHelper$NestedCreator;

    .line 787
    if-eqz v0, :cond_2

    .line 791
    :try_start_13
    invoke-virtual {v0, p2, p3}, Lorg/apache/tools/ant/IntrospectionHelper$NestedCreator;->store(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_16
    .catch Ljava/lang/IllegalAccessException; {:try_start_13 .. :try_end_16} :catch_17
    .catch Ljava/lang/InstantiationException; {:try_start_13 .. :try_end_16} :catch_24
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_13 .. :try_end_16} :catch_1e

    goto :goto_2

    .line 792
    :catch_17
    move-exception v0

    .line 794
    :goto_18
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 795
    :catch_1e
    move-exception v0

    .line 796
    invoke-static {v0}, Lorg/apache/tools/ant/IntrospectionHelper;->extractBuildException(Ljava/lang/reflect/InvocationTargetException;)Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0

    .line 792
    :catch_24
    move-exception v0

    goto :goto_18
.end method

.method public supportsCharacters()Z
    .registers 2

    .line 926
    iget-object v0, p0, Lorg/apache/tools/ant/IntrospectionHelper;->addText:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public supportsNestedElement(Ljava/lang/String;)Z
    .registers 3

    .line 689
    const-string v0, ""

    invoke-virtual {p0, v0, p1}, Lorg/apache/tools/ant/IntrospectionHelper;->supportsNestedElement(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public supportsNestedElement(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    .line 708
    invoke-virtual {p0}, Lorg/apache/tools/ant/IntrospectionHelper;->isDynamic()Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lorg/apache/tools/ant/IntrospectionHelper;->addTypeMethods:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 709
    invoke-virtual {p0, p1, p2}, Lorg/apache/tools/ant/IntrospectionHelper;->supportsReflectElement(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_14
    const/4 v0, 0x1

    .line 708
    :goto_15
    return v0

    .line 709
    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public supportsNestedElement(Ljava/lang/String;Ljava/lang/String;Lorg/apache/tools/ant/Project;Ljava/lang/Object;)Z
    .registers 6

    .line 731
    iget-object v0, p0, Lorg/apache/tools/ant/IntrospectionHelper;->addTypeMethods:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    .line 732
    invoke-direct {p0, p3, p4, p2}, Lorg/apache/tools/ant/IntrospectionHelper;->createAddTypeCreator(Lorg/apache/tools/ant/Project;Ljava/lang/Object;Ljava/lang/String;)Lorg/apache/tools/ant/IntrospectionHelper$NestedCreator;

    move-result-object v0

    if-nez v0, :cond_1a

    .line 733
    :cond_e
    invoke-virtual {p0}, Lorg/apache/tools/ant/IntrospectionHelper;->isDynamic()Z

    move-result v0

    if-nez v0, :cond_1a

    invoke-virtual {p0, p1, p2}, Lorg/apache/tools/ant/IntrospectionHelper;->supportsReflectElement(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    :cond_1a
    const/4 v0, 0x1

    .line 731
    :goto_1b
    return v0

    .line 733
    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method public supportsReflectElement(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    .line 747
    invoke-static {p2}, Lorg/apache/tools/ant/ProjectHelper;->extractNameFromComponentName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 748
    iget-object v1, p0, Lorg/apache/tools/ant/IntrospectionHelper;->nestedCreators:Ljava/util/Map;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 749
    const/4 v0, 0x0

    .line 758
    :goto_13
    return v0

    .line 751
    :cond_14
    invoke-static {p2}, Lorg/apache/tools/ant/ProjectHelper;->extractUriFromComponentName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 752
    const-string v1, "antlib:org.apache.tools.ant"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 753
    :cond_26
    const/4 v0, 0x1

    goto :goto_13

    .line 755
    :cond_28
    const-string v1, "antlib:org.apache.tools.ant"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 756
    const-string p1, ""

    .line 758
    :cond_32
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_13
.end method

.method public throwNotSupported(Lorg/apache/tools/ant/Project;Ljava/lang/Object;Ljava/lang/String;)V
    .registers 6

    .line 514
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Lorg/apache/tools/ant/Project;->getElementName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " doesn\'t support the nested \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\" element."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 517
    new-instance v1, Lorg/apache/tools/ant/UnsupportedElementException;

    invoke-direct {v1, v0, p3}, Lorg/apache/tools/ant/UnsupportedElementException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1
.end method
