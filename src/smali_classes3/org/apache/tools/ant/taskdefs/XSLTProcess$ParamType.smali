.class public final enum Lorg/apache/tools/ant/taskdefs/XSLTProcess$ParamType;
.super Ljava/lang/Enum;
.source "XSLTProcess.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/XSLTProcess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ParamType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/apache/tools/ant/taskdefs/XSLTProcess$ParamType;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Lorg/apache/tools/ant/taskdefs/XSLTProcess$ParamType;

.field public static final enum BOOLEAN:Lorg/apache/tools/ant/taskdefs/XSLTProcess$ParamType;

.field public static final enum DOUBLE:Lorg/apache/tools/ant/taskdefs/XSLTProcess$ParamType;

.field public static final enum INT:Lorg/apache/tools/ant/taskdefs/XSLTProcess$ParamType;

.field public static final enum LONG:Lorg/apache/tools/ant/taskdefs/XSLTProcess$ParamType;

.field public static final enum STRING:Lorg/apache/tools/ant/taskdefs/XSLTProcess$ParamType;

.field public static final enum XPATH_BOOLEAN:Lorg/apache/tools/ant/taskdefs/XSLTProcess$ParamType;

.field public static final enum XPATH_NODE:Lorg/apache/tools/ant/taskdefs/XSLTProcess$ParamType;

.field public static final enum XPATH_NODESET:Lorg/apache/tools/ant/taskdefs/XSLTProcess$ParamType;

.field public static final enum XPATH_NUMBER:Lorg/apache/tools/ant/taskdefs/XSLTProcess$ParamType;

.field public static final enum XPATH_STRING:Lorg/apache/tools/ant/taskdefs/XSLTProcess$ParamType;

.field public static final XPATH_TYPES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/apache/tools/ant/taskdefs/XSLTProcess$ParamType;",
            "Ljavax/xml/namespace/QName;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 12

    .line 1136
    new-instance v0, Lorg/apache/tools/ant/taskdefs/XSLTProcess$ParamType;

    const-string v1, "STRING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/taskdefs/XSLTProcess$ParamType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/tools/ant/taskdefs/XSLTProcess$ParamType;->STRING:Lorg/apache/tools/ant/taskdefs/XSLTProcess$ParamType;

    .line 1137
    new-instance v1, Lorg/apache/tools/ant/taskdefs/XSLTProcess$ParamType;

    const-string v2, "BOOLEAN"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/apache/tools/ant/taskdefs/XSLTProcess$ParamType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/tools/ant/taskdefs/XSLTProcess$ParamType;->BOOLEAN:Lorg/apache/tools/ant/taskdefs/XSLTProcess$ParamType;

    .line 1138
    new-instance v2, Lorg/apache/tools/ant/taskdefs/XSLTProcess$ParamType;

    const-string v3, "INT"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/apache/tools/ant/taskdefs/XSLTProcess$ParamType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/apache/tools/ant/taskdefs/XSLTProcess$ParamType;->INT:Lorg/apache/tools/ant/taskdefs/XSLTProcess$ParamType;

    .line 1139
    new-instance v3, Lorg/apache/tools/ant/taskdefs/XSLTProcess$ParamType;

    const-string v4, "LONG"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lorg/apache/tools/ant/taskdefs/XSLTProcess$ParamType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/apache/tools/ant/taskdefs/XSLTProcess$ParamType;->LONG:Lorg/apache/tools/ant/taskdefs/XSLTProcess$ParamType;

    .line 1140
    new-instance v4, Lorg/apache/tools/ant/taskdefs/XSLTProcess$ParamType;

    const-string v5, "DOUBLE"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lorg/apache/tools/ant/taskdefs/XSLTProcess$ParamType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/apache/tools/ant/taskdefs/XSLTProcess$ParamType;->DOUBLE:Lorg/apache/tools/ant/taskdefs/XSLTProcess$ParamType;

    .line 1141
    new-instance v5, Lorg/apache/tools/ant/taskdefs/XSLTProcess$ParamType;

    const-string v6, "XPATH_STRING"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lorg/apache/tools/ant/taskdefs/XSLTProcess$ParamType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/apache/tools/ant/taskdefs/XSLTProcess$ParamType;->XPATH_STRING:Lorg/apache/tools/ant/taskdefs/XSLTProcess$ParamType;

    .line 1142
    new-instance v6, Lorg/apache/tools/ant/taskdefs/XSLTProcess$ParamType;

    const-string v7, "XPATH_BOOLEAN"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lorg/apache/tools/ant/taskdefs/XSLTProcess$ParamType;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lorg/apache/tools/ant/taskdefs/XSLTProcess$ParamType;->XPATH_BOOLEAN:Lorg/apache/tools/ant/taskdefs/XSLTProcess$ParamType;

    .line 1143
    new-instance v7, Lorg/apache/tools/ant/taskdefs/XSLTProcess$ParamType;

    const-string v8, "XPATH_NUMBER"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lorg/apache/tools/ant/taskdefs/XSLTProcess$ParamType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lorg/apache/tools/ant/taskdefs/XSLTProcess$ParamType;->XPATH_NUMBER:Lorg/apache/tools/ant/taskdefs/XSLTProcess$ParamType;

    .line 1144
    new-instance v8, Lorg/apache/tools/ant/taskdefs/XSLTProcess$ParamType;

    const-string v9, "XPATH_NODE"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Lorg/apache/tools/ant/taskdefs/XSLTProcess$ParamType;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lorg/apache/tools/ant/taskdefs/XSLTProcess$ParamType;->XPATH_NODE:Lorg/apache/tools/ant/taskdefs/XSLTProcess$ParamType;

    .line 1145
    new-instance v9, Lorg/apache/tools/ant/taskdefs/XSLTProcess$ParamType;

    const-string v10, "XPATH_NODESET"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11}, Lorg/apache/tools/ant/taskdefs/XSLTProcess$ParamType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lorg/apache/tools/ant/taskdefs/XSLTProcess$ParamType;->XPATH_NODESET:Lorg/apache/tools/ant/taskdefs/XSLTProcess$ParamType;

    .line 1134
    const/16 v10, 0xa

    new-array v10, v10, [Lorg/apache/tools/ant/taskdefs/XSLTProcess$ParamType;

    const/4 v11, 0x0

    aput-object v0, v10, v11

    const/4 v0, 0x1

    aput-object v1, v10, v0

    const/4 v0, 0x2

    aput-object v2, v10, v0

    const/4 v0, 0x3

    aput-object v3, v10, v0

    const/4 v0, 0x4

    aput-object v4, v10, v0

    const/4 v0, 0x5

    aput-object v5, v10, v0

    const/4 v0, 0x6

    aput-object v6, v10, v0

    const/4 v0, 0x7

    aput-object v7, v10, v0

    const/16 v0, 0x8

    aput-object v8, v10, v0

    const/16 v0, 0x9

    aput-object v9, v10, v0

    sput-object v10, Lorg/apache/tools/ant/taskdefs/XSLTProcess$ParamType;->$VALUES:[Lorg/apache/tools/ant/taskdefs/XSLTProcess$ParamType;

    .line 1150
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lorg/apache/tools/ant/taskdefs/XSLTProcess$ParamType;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 1151
    sget-object v1, Ljavax/xml/xpath/XPathConstants;->STRING:Ljavax/xml/namespace/QName;

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1152
    sget-object v1, Ljavax/xml/xpath/XPathConstants;->BOOLEAN:Ljavax/xml/namespace/QName;

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1153
    sget-object v1, Ljavax/xml/xpath/XPathConstants;->NUMBER:Ljavax/xml/namespace/QName;

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1154
    sget-object v1, Ljavax/xml/xpath/XPathConstants;->NODE:Ljavax/xml/namespace/QName;

    invoke-interface {v0, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1155
    sget-object v1, Ljavax/xml/xpath/XPathConstants;->NODESET:Ljavax/xml/namespace/QName;

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1156
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/taskdefs/XSLTProcess$ParamType;->XPATH_TYPES:Ljava/util/Map;

    .line 1157
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1134
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/tools/ant/taskdefs/XSLTProcess$ParamType;
    .registers 2

    .line 1134
    const-class v0, Lorg/apache/tools/ant/taskdefs/XSLTProcess$ParamType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/taskdefs/XSLTProcess$ParamType;

    return-object v0
.end method

.method public static values()[Lorg/apache/tools/ant/taskdefs/XSLTProcess$ParamType;
    .registers 1

    .line 1134
    sget-object v0, Lorg/apache/tools/ant/taskdefs/XSLTProcess$ParamType;->$VALUES:[Lorg/apache/tools/ant/taskdefs/XSLTProcess$ParamType;

    invoke-virtual {v0}, [Lorg/apache/tools/ant/taskdefs/XSLTProcess$ParamType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/tools/ant/taskdefs/XSLTProcess$ParamType;

    return-object v0
.end method
