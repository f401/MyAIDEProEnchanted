.class public final enum Lcom/s1243808733/android/dx/dex/file/ItemType;
.super Ljava/lang/Enum;
.source "ItemType.java"

# interfaces
.implements Lcom/s1243808733/android/dx/util/ToHuman;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/s1243808733/android/dx/dex/file/ItemType;",
        ">;",
        "Lcom/s1243808733/android/dx/util/ToHuman;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Lcom/s1243808733/android/dx/dex/file/ItemType;

.field public static final enum TYPE_ANNOTATIONS_DIRECTORY_ITEM:Lcom/s1243808733/android/dx/dex/file/ItemType;

.field public static final enum TYPE_ANNOTATION_ITEM:Lcom/s1243808733/android/dx/dex/file/ItemType;

.field public static final enum TYPE_ANNOTATION_SET_ITEM:Lcom/s1243808733/android/dx/dex/file/ItemType;

.field public static final enum TYPE_ANNOTATION_SET_REF_ITEM:Lcom/s1243808733/android/dx/dex/file/ItemType;

.field public static final enum TYPE_ANNOTATION_SET_REF_LIST:Lcom/s1243808733/android/dx/dex/file/ItemType;

.field public static final enum TYPE_CALL_SITE_ID_ITEM:Lcom/s1243808733/android/dx/dex/file/ItemType;

.field public static final enum TYPE_CLASS_DATA_ITEM:Lcom/s1243808733/android/dx/dex/file/ItemType;

.field public static final enum TYPE_CLASS_DEF_ITEM:Lcom/s1243808733/android/dx/dex/file/ItemType;

.field public static final enum TYPE_CODE_ITEM:Lcom/s1243808733/android/dx/dex/file/ItemType;

.field public static final enum TYPE_DEBUG_INFO_ITEM:Lcom/s1243808733/android/dx/dex/file/ItemType;

.field public static final enum TYPE_ENCODED_ARRAY_ITEM:Lcom/s1243808733/android/dx/dex/file/ItemType;

.field public static final enum TYPE_EXCEPTION_HANDLER_ITEM:Lcom/s1243808733/android/dx/dex/file/ItemType;

.field public static final enum TYPE_FIELD_ID_ITEM:Lcom/s1243808733/android/dx/dex/file/ItemType;

.field public static final enum TYPE_HEADER_ITEM:Lcom/s1243808733/android/dx/dex/file/ItemType;

.field public static final enum TYPE_MAP_ITEM:Lcom/s1243808733/android/dx/dex/file/ItemType;

.field public static final enum TYPE_MAP_LIST:Lcom/s1243808733/android/dx/dex/file/ItemType;

.field public static final enum TYPE_METHOD_HANDLE_ITEM:Lcom/s1243808733/android/dx/dex/file/ItemType;

.field public static final enum TYPE_METHOD_ID_ITEM:Lcom/s1243808733/android/dx/dex/file/ItemType;

.field public static final enum TYPE_PROTO_ID_ITEM:Lcom/s1243808733/android/dx/dex/file/ItemType;

.field public static final enum TYPE_STRING_DATA_ITEM:Lcom/s1243808733/android/dx/dex/file/ItemType;

.field public static final enum TYPE_STRING_ID_ITEM:Lcom/s1243808733/android/dx/dex/file/ItemType;

.field public static final enum TYPE_TYPE_ID_ITEM:Lcom/s1243808733/android/dx/dex/file/ItemType;

.field public static final enum TYPE_TYPE_ITEM:Lcom/s1243808733/android/dx/dex/file/ItemType;

.field public static final enum TYPE_TYPE_LIST:Lcom/s1243808733/android/dx/dex/file/ItemType;


# instance fields
.field private final humanName:Ljava/lang/String;

.field private final mapValue:I

.field private final typeName:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/s1243808733/android/dx/dex/file/ItemType;
    .registers 3

    .line 24
    const/16 v0, 0x18

    new-array v0, v0, [Lcom/s1243808733/android/dx/dex/file/ItemType;

    const/4 v1, 0x0

    sget-object v2, Lcom/s1243808733/android/dx/dex/file/ItemType;->TYPE_HEADER_ITEM:Lcom/s1243808733/android/dx/dex/file/ItemType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/s1243808733/android/dx/dex/file/ItemType;->TYPE_STRING_ID_ITEM:Lcom/s1243808733/android/dx/dex/file/ItemType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/s1243808733/android/dx/dex/file/ItemType;->TYPE_TYPE_ID_ITEM:Lcom/s1243808733/android/dx/dex/file/ItemType;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/s1243808733/android/dx/dex/file/ItemType;->TYPE_PROTO_ID_ITEM:Lcom/s1243808733/android/dx/dex/file/ItemType;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/s1243808733/android/dx/dex/file/ItemType;->TYPE_FIELD_ID_ITEM:Lcom/s1243808733/android/dx/dex/file/ItemType;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/s1243808733/android/dx/dex/file/ItemType;->TYPE_METHOD_ID_ITEM:Lcom/s1243808733/android/dx/dex/file/ItemType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/s1243808733/android/dx/dex/file/ItemType;->TYPE_CLASS_DEF_ITEM:Lcom/s1243808733/android/dx/dex/file/ItemType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/s1243808733/android/dx/dex/file/ItemType;->TYPE_CALL_SITE_ID_ITEM:Lcom/s1243808733/android/dx/dex/file/ItemType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/s1243808733/android/dx/dex/file/ItemType;->TYPE_METHOD_HANDLE_ITEM:Lcom/s1243808733/android/dx/dex/file/ItemType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/s1243808733/android/dx/dex/file/ItemType;->TYPE_MAP_LIST:Lcom/s1243808733/android/dx/dex/file/ItemType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/s1243808733/android/dx/dex/file/ItemType;->TYPE_TYPE_LIST:Lcom/s1243808733/android/dx/dex/file/ItemType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/s1243808733/android/dx/dex/file/ItemType;->TYPE_ANNOTATION_SET_REF_LIST:Lcom/s1243808733/android/dx/dex/file/ItemType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/s1243808733/android/dx/dex/file/ItemType;->TYPE_ANNOTATION_SET_ITEM:Lcom/s1243808733/android/dx/dex/file/ItemType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/s1243808733/android/dx/dex/file/ItemType;->TYPE_CLASS_DATA_ITEM:Lcom/s1243808733/android/dx/dex/file/ItemType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/s1243808733/android/dx/dex/file/ItemType;->TYPE_CODE_ITEM:Lcom/s1243808733/android/dx/dex/file/ItemType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/s1243808733/android/dx/dex/file/ItemType;->TYPE_STRING_DATA_ITEM:Lcom/s1243808733/android/dx/dex/file/ItemType;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/s1243808733/android/dx/dex/file/ItemType;->TYPE_DEBUG_INFO_ITEM:Lcom/s1243808733/android/dx/dex/file/ItemType;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/s1243808733/android/dx/dex/file/ItemType;->TYPE_ANNOTATION_ITEM:Lcom/s1243808733/android/dx/dex/file/ItemType;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/s1243808733/android/dx/dex/file/ItemType;->TYPE_ENCODED_ARRAY_ITEM:Lcom/s1243808733/android/dx/dex/file/ItemType;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/s1243808733/android/dx/dex/file/ItemType;->TYPE_ANNOTATIONS_DIRECTORY_ITEM:Lcom/s1243808733/android/dx/dex/file/ItemType;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/s1243808733/android/dx/dex/file/ItemType;->TYPE_MAP_ITEM:Lcom/s1243808733/android/dx/dex/file/ItemType;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/s1243808733/android/dx/dex/file/ItemType;->TYPE_TYPE_ITEM:Lcom/s1243808733/android/dx/dex/file/ItemType;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/s1243808733/android/dx/dex/file/ItemType;->TYPE_EXCEPTION_HANDLER_ITEM:Lcom/s1243808733/android/dx/dex/file/ItemType;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/s1243808733/android/dx/dex/file/ItemType;->TYPE_ANNOTATION_SET_REF_ITEM:Lcom/s1243808733/android/dx/dex/file/ItemType;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 5

    .line 25
    new-instance v0, Lcom/s1243808733/android/dx/dex/file/ItemType;

    const/4 v1, 0x0

    const-string v2, "header_item"

    const-string v3, "TYPE_HEADER_ITEM"

    invoke-direct {v0, v3, v1, v1, v2}, Lcom/s1243808733/android/dx/dex/file/ItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/s1243808733/android/dx/dex/file/ItemType;->TYPE_HEADER_ITEM:Lcom/s1243808733/android/dx/dex/file/ItemType;

    .line 26
    new-instance v0, Lcom/s1243808733/android/dx/dex/file/ItemType;

    const/4 v1, 0x1

    const-string v2, "string_id_item"

    const-string v3, "TYPE_STRING_ID_ITEM"

    invoke-direct {v0, v3, v1, v1, v2}, Lcom/s1243808733/android/dx/dex/file/ItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/s1243808733/android/dx/dex/file/ItemType;->TYPE_STRING_ID_ITEM:Lcom/s1243808733/android/dx/dex/file/ItemType;

    .line 27
    new-instance v0, Lcom/s1243808733/android/dx/dex/file/ItemType;

    const/4 v1, 0x2

    const-string v2, "type_id_item"

    const-string v3, "TYPE_TYPE_ID_ITEM"

    invoke-direct {v0, v3, v1, v1, v2}, Lcom/s1243808733/android/dx/dex/file/ItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/s1243808733/android/dx/dex/file/ItemType;->TYPE_TYPE_ID_ITEM:Lcom/s1243808733/android/dx/dex/file/ItemType;

    .line 28
    new-instance v0, Lcom/s1243808733/android/dx/dex/file/ItemType;

    const/4 v1, 0x3

    const-string v2, "proto_id_item"

    const-string v3, "TYPE_PROTO_ID_ITEM"

    invoke-direct {v0, v3, v1, v1, v2}, Lcom/s1243808733/android/dx/dex/file/ItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/s1243808733/android/dx/dex/file/ItemType;->TYPE_PROTO_ID_ITEM:Lcom/s1243808733/android/dx/dex/file/ItemType;

    .line 29
    new-instance v0, Lcom/s1243808733/android/dx/dex/file/ItemType;

    const/4 v1, 0x4

    const-string v2, "field_id_item"

    const-string v3, "TYPE_FIELD_ID_ITEM"

    invoke-direct {v0, v3, v1, v1, v2}, Lcom/s1243808733/android/dx/dex/file/ItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/s1243808733/android/dx/dex/file/ItemType;->TYPE_FIELD_ID_ITEM:Lcom/s1243808733/android/dx/dex/file/ItemType;

    .line 30
    new-instance v0, Lcom/s1243808733/android/dx/dex/file/ItemType;

    const/4 v1, 0x5

    const-string v2, "method_id_item"

    const-string v3, "TYPE_METHOD_ID_ITEM"

    invoke-direct {v0, v3, v1, v1, v2}, Lcom/s1243808733/android/dx/dex/file/ItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/s1243808733/android/dx/dex/file/ItemType;->TYPE_METHOD_ID_ITEM:Lcom/s1243808733/android/dx/dex/file/ItemType;

    .line 31
    new-instance v0, Lcom/s1243808733/android/dx/dex/file/ItemType;

    const/4 v1, 0x6

    const-string v2, "class_def_item"

    const-string v3, "TYPE_CLASS_DEF_ITEM"

    invoke-direct {v0, v3, v1, v1, v2}, Lcom/s1243808733/android/dx/dex/file/ItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/s1243808733/android/dx/dex/file/ItemType;->TYPE_CLASS_DEF_ITEM:Lcom/s1243808733/android/dx/dex/file/ItemType;

    .line 32
    new-instance v0, Lcom/s1243808733/android/dx/dex/file/ItemType;

    const/4 v1, 0x7

    const-string v2, "call_site_id_item"

    const-string v3, "TYPE_CALL_SITE_ID_ITEM"

    invoke-direct {v0, v3, v1, v1, v2}, Lcom/s1243808733/android/dx/dex/file/ItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/s1243808733/android/dx/dex/file/ItemType;->TYPE_CALL_SITE_ID_ITEM:Lcom/s1243808733/android/dx/dex/file/ItemType;

    .line 33
    new-instance v0, Lcom/s1243808733/android/dx/dex/file/ItemType;

    const/16 v1, 0x8

    const-string v2, "method_handle_item"

    const-string v3, "TYPE_METHOD_HANDLE_ITEM"

    invoke-direct {v0, v3, v1, v1, v2}, Lcom/s1243808733/android/dx/dex/file/ItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/s1243808733/android/dx/dex/file/ItemType;->TYPE_METHOD_HANDLE_ITEM:Lcom/s1243808733/android/dx/dex/file/ItemType;

    .line 34
    new-instance v0, Lcom/s1243808733/android/dx/dex/file/ItemType;

    const/16 v1, 0x1000

    const-string v2, "map_list"

    const-string v3, "TYPE_MAP_LIST"

    const/16 v4, 0x9

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/s1243808733/android/dx/dex/file/ItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/s1243808733/android/dx/dex/file/ItemType;->TYPE_MAP_LIST:Lcom/s1243808733/android/dx/dex/file/ItemType;

    .line 35
    new-instance v0, Lcom/s1243808733/android/dx/dex/file/ItemType;

    const/16 v1, 0x1001

    const-string v2, "type_list"

    const-string v3, "TYPE_TYPE_LIST"

    const/16 v4, 0xa

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/s1243808733/android/dx/dex/file/ItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/s1243808733/android/dx/dex/file/ItemType;->TYPE_TYPE_LIST:Lcom/s1243808733/android/dx/dex/file/ItemType;

    .line 36
    new-instance v0, Lcom/s1243808733/android/dx/dex/file/ItemType;

    const/16 v1, 0x1002

    const-string v2, "annotation_set_ref_list"

    const-string v3, "TYPE_ANNOTATION_SET_REF_LIST"

    const/16 v4, 0xb

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/s1243808733/android/dx/dex/file/ItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/s1243808733/android/dx/dex/file/ItemType;->TYPE_ANNOTATION_SET_REF_LIST:Lcom/s1243808733/android/dx/dex/file/ItemType;

    .line 37
    new-instance v0, Lcom/s1243808733/android/dx/dex/file/ItemType;

    const/16 v1, 0x1003

    const-string v2, "annotation_set_item"

    const-string v3, "TYPE_ANNOTATION_SET_ITEM"

    const/16 v4, 0xc

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/s1243808733/android/dx/dex/file/ItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/s1243808733/android/dx/dex/file/ItemType;->TYPE_ANNOTATION_SET_ITEM:Lcom/s1243808733/android/dx/dex/file/ItemType;

    .line 38
    new-instance v0, Lcom/s1243808733/android/dx/dex/file/ItemType;

    const/16 v1, 0x2000

    const-string v2, "class_data_item"

    const-string v3, "TYPE_CLASS_DATA_ITEM"

    const/16 v4, 0xd

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/s1243808733/android/dx/dex/file/ItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/s1243808733/android/dx/dex/file/ItemType;->TYPE_CLASS_DATA_ITEM:Lcom/s1243808733/android/dx/dex/file/ItemType;

    .line 39
    new-instance v0, Lcom/s1243808733/android/dx/dex/file/ItemType;

    const/16 v1, 0x2001

    const-string v2, "code_item"

    const-string v3, "TYPE_CODE_ITEM"

    const/16 v4, 0xe

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/s1243808733/android/dx/dex/file/ItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/s1243808733/android/dx/dex/file/ItemType;->TYPE_CODE_ITEM:Lcom/s1243808733/android/dx/dex/file/ItemType;

    .line 40
    new-instance v0, Lcom/s1243808733/android/dx/dex/file/ItemType;

    const/16 v1, 0x2002

    const-string v2, "string_data_item"

    const-string v3, "TYPE_STRING_DATA_ITEM"

    const/16 v4, 0xf

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/s1243808733/android/dx/dex/file/ItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/s1243808733/android/dx/dex/file/ItemType;->TYPE_STRING_DATA_ITEM:Lcom/s1243808733/android/dx/dex/file/ItemType;

    .line 41
    new-instance v0, Lcom/s1243808733/android/dx/dex/file/ItemType;

    const/16 v1, 0x2003

    const-string v2, "debug_info_item"

    const-string v3, "TYPE_DEBUG_INFO_ITEM"

    const/16 v4, 0x10

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/s1243808733/android/dx/dex/file/ItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/s1243808733/android/dx/dex/file/ItemType;->TYPE_DEBUG_INFO_ITEM:Lcom/s1243808733/android/dx/dex/file/ItemType;

    .line 42
    new-instance v0, Lcom/s1243808733/android/dx/dex/file/ItemType;

    const/16 v1, 0x2004

    const-string v2, "annotation_item"

    const-string v3, "TYPE_ANNOTATION_ITEM"

    const/16 v4, 0x11

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/s1243808733/android/dx/dex/file/ItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/s1243808733/android/dx/dex/file/ItemType;->TYPE_ANNOTATION_ITEM:Lcom/s1243808733/android/dx/dex/file/ItemType;

    .line 43
    new-instance v0, Lcom/s1243808733/android/dx/dex/file/ItemType;

    const/16 v1, 0x2005

    const-string v2, "encoded_array_item"

    const-string v3, "TYPE_ENCODED_ARRAY_ITEM"

    const/16 v4, 0x12

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/s1243808733/android/dx/dex/file/ItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/s1243808733/android/dx/dex/file/ItemType;->TYPE_ENCODED_ARRAY_ITEM:Lcom/s1243808733/android/dx/dex/file/ItemType;

    .line 44
    new-instance v0, Lcom/s1243808733/android/dx/dex/file/ItemType;

    const/16 v1, 0x2006

    const-string v2, "annotations_directory_item"

    const-string v3, "TYPE_ANNOTATIONS_DIRECTORY_ITEM"

    const/16 v4, 0x13

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/s1243808733/android/dx/dex/file/ItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/s1243808733/android/dx/dex/file/ItemType;->TYPE_ANNOTATIONS_DIRECTORY_ITEM:Lcom/s1243808733/android/dx/dex/file/ItemType;

    .line 45
    new-instance v0, Lcom/s1243808733/android/dx/dex/file/ItemType;

    const-string v1, "map_item"

    const-string v2, "TYPE_MAP_ITEM"

    const/16 v3, 0x14

    const/4 v4, -0x1

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/s1243808733/android/dx/dex/file/ItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/s1243808733/android/dx/dex/file/ItemType;->TYPE_MAP_ITEM:Lcom/s1243808733/android/dx/dex/file/ItemType;

    .line 46
    new-instance v0, Lcom/s1243808733/android/dx/dex/file/ItemType;

    const/16 v1, 0x15

    const-string v2, "type_item"

    const-string v3, "TYPE_TYPE_ITEM"

    invoke-direct {v0, v3, v1, v4, v2}, Lcom/s1243808733/android/dx/dex/file/ItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/s1243808733/android/dx/dex/file/ItemType;->TYPE_TYPE_ITEM:Lcom/s1243808733/android/dx/dex/file/ItemType;

    .line 47
    new-instance v0, Lcom/s1243808733/android/dx/dex/file/ItemType;

    const/16 v1, 0x16

    const-string v2, "exception_handler_item"

    const-string v3, "TYPE_EXCEPTION_HANDLER_ITEM"

    invoke-direct {v0, v3, v1, v4, v2}, Lcom/s1243808733/android/dx/dex/file/ItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/s1243808733/android/dx/dex/file/ItemType;->TYPE_EXCEPTION_HANDLER_ITEM:Lcom/s1243808733/android/dx/dex/file/ItemType;

    .line 48
    new-instance v0, Lcom/s1243808733/android/dx/dex/file/ItemType;

    const/16 v1, 0x17

    const-string v2, "annotation_set_ref_item"

    const-string v3, "TYPE_ANNOTATION_SET_REF_ITEM"

    invoke-direct {v0, v3, v1, v4, v2}, Lcom/s1243808733/android/dx/dex/file/ItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/s1243808733/android/dx/dex/file/ItemType;->TYPE_ANNOTATION_SET_REF_ITEM:Lcom/s1243808733/android/dx/dex/file/ItemType;

    .line 24
    invoke-static {}, Lcom/s1243808733/android/dx/dex/file/ItemType;->$values()[Lcom/s1243808733/android/dx/dex/file/ItemType;

    move-result-object v0

    sput-object v0, Lcom/s1243808733/android/dx/dex/file/ItemType;->$VALUES:[Lcom/s1243808733/android/dx/dex/file/ItemType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 65
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 66
    iput p3, p0, Lcom/s1243808733/android/dx/dex/file/ItemType;->mapValue:I

    .line 67
    iput-object p4, p0, Lcom/s1243808733/android/dx/dex/file/ItemType;->typeName:Ljava/lang/String;

    .line 71
    const-string p1, "_item"

    invoke-virtual {p4, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 72
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x5

    const/4 p2, 0x0

    invoke-virtual {p4, p2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p4

    .line 74
    :cond_1a
    const/16 p1, 0x5f

    const/16 p2, 0x20

    invoke-virtual {p4, p1, p2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/s1243808733/android/dx/dex/file/ItemType;->humanName:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/s1243808733/android/dx/dex/file/ItemType;
    .registers 2

    .line 24
    const-class v0, Lcom/s1243808733/android/dx/dex/file/ItemType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/s1243808733/android/dx/dex/file/ItemType;

    return-object p0
.end method

.method public static values()[Lcom/s1243808733/android/dx/dex/file/ItemType;
    .registers 1

    .line 24
    sget-object v0, Lcom/s1243808733/android/dx/dex/file/ItemType;->$VALUES:[Lcom/s1243808733/android/dx/dex/file/ItemType;

    invoke-virtual {v0}, [Lcom/s1243808733/android/dx/dex/file/ItemType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/s1243808733/android/dx/dex/file/ItemType;

    return-object v0
.end method


# virtual methods
.method public getMapValue()I
    .registers 2

    .line 83
    iget v0, p0, Lcom/s1243808733/android/dx/dex/file/ItemType;->mapValue:I

    return v0
.end method

.method public getTypeName()Ljava/lang/String;
    .registers 2

    .line 92
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ItemType;->typeName:Ljava/lang/String;

    return-object v0
.end method

.method public toHuman()Ljava/lang/String;
    .registers 2

    .line 98
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ItemType;->humanName:Ljava/lang/String;

    return-object v0
.end method
