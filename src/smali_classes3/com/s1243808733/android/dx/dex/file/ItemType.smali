.class public enum Lcom/s1243808733/android/dx/dex/file/ItemType;
.super Ljava/lang/Enum;
.source "ItemType.java"

# interfaces
.implements Lcom/s1243808733/android/dx/util/ToHuman;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/s1243808733/android/dx/dex/file/ItemType;",
        ">;",
        "Lcom/s1243808733/android/dx/util/ToHuman;"
    }
.end annotation


# static fields
.field private static $VALUES:[Lcom/s1243808733/android/dx/dex/file/ItemType;

.field public static final TYPE_ANNOTATIONS_DIRECTORY_ITEM:Lcom/s1243808733/android/dx/dex/file/ItemType;

.field public static final TYPE_ANNOTATION_ITEM:Lcom/s1243808733/android/dx/dex/file/ItemType;

.field public static final TYPE_ANNOTATION_SET_ITEM:Lcom/s1243808733/android/dx/dex/file/ItemType;

.field public static final TYPE_ANNOTATION_SET_REF_ITEM:Lcom/s1243808733/android/dx/dex/file/ItemType;

.field public static final TYPE_ANNOTATION_SET_REF_LIST:Lcom/s1243808733/android/dx/dex/file/ItemType;

.field public static final TYPE_CALL_SITE_ID_ITEM:Lcom/s1243808733/android/dx/dex/file/ItemType;

.field public static final TYPE_CLASS_DATA_ITEM:Lcom/s1243808733/android/dx/dex/file/ItemType;

.field public static final TYPE_CLASS_DEF_ITEM:Lcom/s1243808733/android/dx/dex/file/ItemType;

.field public static final TYPE_CODE_ITEM:Lcom/s1243808733/android/dx/dex/file/ItemType;

.field public static final TYPE_DEBUG_INFO_ITEM:Lcom/s1243808733/android/dx/dex/file/ItemType;

.field public static final TYPE_ENCODED_ARRAY_ITEM:Lcom/s1243808733/android/dx/dex/file/ItemType;

.field public static final TYPE_EXCEPTION_HANDLER_ITEM:Lcom/s1243808733/android/dx/dex/file/ItemType;

.field public static final TYPE_FIELD_ID_ITEM:Lcom/s1243808733/android/dx/dex/file/ItemType;

.field public static final TYPE_HEADER_ITEM:Lcom/s1243808733/android/dx/dex/file/ItemType;

.field public static final TYPE_MAP_ITEM:Lcom/s1243808733/android/dx/dex/file/ItemType;

.field public static final TYPE_MAP_LIST:Lcom/s1243808733/android/dx/dex/file/ItemType;

.field public static final TYPE_METHOD_HANDLE_ITEM:Lcom/s1243808733/android/dx/dex/file/ItemType;

.field public static final TYPE_METHOD_ID_ITEM:Lcom/s1243808733/android/dx/dex/file/ItemType;

.field public static final TYPE_PROTO_ID_ITEM:Lcom/s1243808733/android/dx/dex/file/ItemType;

.field public static final TYPE_STRING_DATA_ITEM:Lcom/s1243808733/android/dx/dex/file/ItemType;

.field public static final TYPE_STRING_ID_ITEM:Lcom/s1243808733/android/dx/dex/file/ItemType;

.field public static final TYPE_TYPE_ID_ITEM:Lcom/s1243808733/android/dx/dex/file/ItemType;

.field public static final TYPE_TYPE_ITEM:Lcom/s1243808733/android/dx/dex/file/ItemType;

.field public static final TYPE_TYPE_LIST:Lcom/s1243808733/android/dx/dex/file/ItemType;


# instance fields
.field private final humanName:Ljava/lang/String;

.field private final mapValue:I

.field private final typeName:Ljava/lang/String;


# direct methods
.method static final constructor <clinit>()V
    .registers 10

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, -0x1

    new-instance v0, Lcom/s1243808733/android/dx/dex/file/ItemType;

    const-string v1, "TYPE_HEADER_ITEM"

    const-string v2, "header_item"

    invoke-direct {v0, v1, v6, v6, v2}, Lcom/s1243808733/android/dx/dex/file/ItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/s1243808733/android/dx/dex/file/ItemType;->TYPE_HEADER_ITEM:Lcom/s1243808733/android/dx/dex/file/ItemType;

    new-instance v0, Lcom/s1243808733/android/dx/dex/file/ItemType;

    const-string v1, "TYPE_STRING_ID_ITEM"

    const-string v2, "string_id_item"

    invoke-direct {v0, v1, v7, v7, v2}, Lcom/s1243808733/android/dx/dex/file/ItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/s1243808733/android/dx/dex/file/ItemType;->TYPE_STRING_ID_ITEM:Lcom/s1243808733/android/dx/dex/file/ItemType;

    new-instance v0, Lcom/s1243808733/android/dx/dex/file/ItemType;

    const-string v1, "TYPE_TYPE_ID_ITEM"

    const-string v2, "type_id_item"

    invoke-direct {v0, v1, v8, v8, v2}, Lcom/s1243808733/android/dx/dex/file/ItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/s1243808733/android/dx/dex/file/ItemType;->TYPE_TYPE_ID_ITEM:Lcom/s1243808733/android/dx/dex/file/ItemType;

    new-instance v0, Lcom/s1243808733/android/dx/dex/file/ItemType;

    const-string v1, "TYPE_PROTO_ID_ITEM"

    const-string v2, "proto_id_item"

    invoke-direct {v0, v1, v9, v9, v2}, Lcom/s1243808733/android/dx/dex/file/ItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/s1243808733/android/dx/dex/file/ItemType;->TYPE_PROTO_ID_ITEM:Lcom/s1243808733/android/dx/dex/file/ItemType;

    new-instance v0, Lcom/s1243808733/android/dx/dex/file/ItemType;

    const-string v1, "TYPE_FIELD_ID_ITEM"

    const/4 v2, 0x4

    const/4 v3, 0x4

    const-string v4, "field_id_item"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/s1243808733/android/dx/dex/file/ItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/s1243808733/android/dx/dex/file/ItemType;->TYPE_FIELD_ID_ITEM:Lcom/s1243808733/android/dx/dex/file/ItemType;

    new-instance v0, Lcom/s1243808733/android/dx/dex/file/ItemType;

    const-string v1, "TYPE_METHOD_ID_ITEM"

    const/4 v2, 0x5

    const/4 v3, 0x5

    const-string v4, "method_id_item"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/s1243808733/android/dx/dex/file/ItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/s1243808733/android/dx/dex/file/ItemType;->TYPE_METHOD_ID_ITEM:Lcom/s1243808733/android/dx/dex/file/ItemType;

    new-instance v0, Lcom/s1243808733/android/dx/dex/file/ItemType;

    const-string v1, "TYPE_CLASS_DEF_ITEM"

    const/4 v2, 0x6

    const/4 v3, 0x6

    const-string v4, "class_def_item"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/s1243808733/android/dx/dex/file/ItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/s1243808733/android/dx/dex/file/ItemType;->TYPE_CLASS_DEF_ITEM:Lcom/s1243808733/android/dx/dex/file/ItemType;

    new-instance v0, Lcom/s1243808733/android/dx/dex/file/ItemType;

    const-string v1, "TYPE_CALL_SITE_ID_ITEM"

    const/4 v2, 0x7

    const/4 v3, 0x7

    const-string v4, "call_site_id_item"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/s1243808733/android/dx/dex/file/ItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/s1243808733/android/dx/dex/file/ItemType;->TYPE_CALL_SITE_ID_ITEM:Lcom/s1243808733/android/dx/dex/file/ItemType;

    new-instance v0, Lcom/s1243808733/android/dx/dex/file/ItemType;

    const-string v1, "TYPE_METHOD_HANDLE_ITEM"

    const/16 v2, 0x8

    const/16 v3, 0x8

    const-string v4, "method_handle_item"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/s1243808733/android/dx/dex/file/ItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/s1243808733/android/dx/dex/file/ItemType;->TYPE_METHOD_HANDLE_ITEM:Lcom/s1243808733/android/dx/dex/file/ItemType;

    new-instance v0, Lcom/s1243808733/android/dx/dex/file/ItemType;

    const-string v1, "TYPE_MAP_LIST"

    const/16 v2, 0x9

    const/16 v3, 0x1000

    const-string v4, "map_list"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/s1243808733/android/dx/dex/file/ItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/s1243808733/android/dx/dex/file/ItemType;->TYPE_MAP_LIST:Lcom/s1243808733/android/dx/dex/file/ItemType;

    new-instance v0, Lcom/s1243808733/android/dx/dex/file/ItemType;

    const-string v1, "TYPE_TYPE_LIST"

    const/16 v2, 0xa

    const/16 v3, 0x1001

    const-string v4, "type_list"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/s1243808733/android/dx/dex/file/ItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/s1243808733/android/dx/dex/file/ItemType;->TYPE_TYPE_LIST:Lcom/s1243808733/android/dx/dex/file/ItemType;

    new-instance v0, Lcom/s1243808733/android/dx/dex/file/ItemType;

    const-string v1, "TYPE_ANNOTATION_SET_REF_LIST"

    const/16 v2, 0xb

    const/16 v3, 0x1002

    const-string v4, "annotation_set_ref_list"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/s1243808733/android/dx/dex/file/ItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/s1243808733/android/dx/dex/file/ItemType;->TYPE_ANNOTATION_SET_REF_LIST:Lcom/s1243808733/android/dx/dex/file/ItemType;

    new-instance v0, Lcom/s1243808733/android/dx/dex/file/ItemType;

    const-string v1, "TYPE_ANNOTATION_SET_ITEM"

    const/16 v2, 0xc

    const/16 v3, 0x1003

    const-string v4, "annotation_set_item"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/s1243808733/android/dx/dex/file/ItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/s1243808733/android/dx/dex/file/ItemType;->TYPE_ANNOTATION_SET_ITEM:Lcom/s1243808733/android/dx/dex/file/ItemType;

    new-instance v0, Lcom/s1243808733/android/dx/dex/file/ItemType;

    const-string v1, "TYPE_CLASS_DATA_ITEM"

    const/16 v2, 0xd

    const/16 v3, 0x2000

    const-string v4, "class_data_item"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/s1243808733/android/dx/dex/file/ItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/s1243808733/android/dx/dex/file/ItemType;->TYPE_CLASS_DATA_ITEM:Lcom/s1243808733/android/dx/dex/file/ItemType;

    new-instance v0, Lcom/s1243808733/android/dx/dex/file/ItemType;

    const-string v1, "TYPE_CODE_ITEM"

    const/16 v2, 0xe

    const/16 v3, 0x2001

    const-string v4, "code_item"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/s1243808733/android/dx/dex/file/ItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/s1243808733/android/dx/dex/file/ItemType;->TYPE_CODE_ITEM:Lcom/s1243808733/android/dx/dex/file/ItemType;

    new-instance v0, Lcom/s1243808733/android/dx/dex/file/ItemType;

    const-string v1, "TYPE_STRING_DATA_ITEM"

    const/16 v2, 0xf

    const/16 v3, 0x2002

    const-string v4, "string_data_item"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/s1243808733/android/dx/dex/file/ItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/s1243808733/android/dx/dex/file/ItemType;->TYPE_STRING_DATA_ITEM:Lcom/s1243808733/android/dx/dex/file/ItemType;

    new-instance v0, Lcom/s1243808733/android/dx/dex/file/ItemType;

    const-string v1, "TYPE_DEBUG_INFO_ITEM"

    const/16 v2, 0x10

    const/16 v3, 0x2003

    const-string v4, "debug_info_item"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/s1243808733/android/dx/dex/file/ItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/s1243808733/android/dx/dex/file/ItemType;->TYPE_DEBUG_INFO_ITEM:Lcom/s1243808733/android/dx/dex/file/ItemType;

    new-instance v0, Lcom/s1243808733/android/dx/dex/file/ItemType;

    const-string v1, "TYPE_ANNOTATION_ITEM"

    const/16 v2, 0x11

    const/16 v3, 0x2004

    const-string v4, "annotation_item"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/s1243808733/android/dx/dex/file/ItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/s1243808733/android/dx/dex/file/ItemType;->TYPE_ANNOTATION_ITEM:Lcom/s1243808733/android/dx/dex/file/ItemType;

    new-instance v0, Lcom/s1243808733/android/dx/dex/file/ItemType;

    const-string v1, "TYPE_ENCODED_ARRAY_ITEM"

    const/16 v2, 0x12

    const/16 v3, 0x2005

    const-string v4, "encoded_array_item"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/s1243808733/android/dx/dex/file/ItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/s1243808733/android/dx/dex/file/ItemType;->TYPE_ENCODED_ARRAY_ITEM:Lcom/s1243808733/android/dx/dex/file/ItemType;

    new-instance v0, Lcom/s1243808733/android/dx/dex/file/ItemType;

    const-string v1, "TYPE_ANNOTATIONS_DIRECTORY_ITEM"

    const/16 v2, 0x13

    const/16 v3, 0x2006

    const-string v4, "annotations_directory_item"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/s1243808733/android/dx/dex/file/ItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/s1243808733/android/dx/dex/file/ItemType;->TYPE_ANNOTATIONS_DIRECTORY_ITEM:Lcom/s1243808733/android/dx/dex/file/ItemType;

    new-instance v0, Lcom/s1243808733/android/dx/dex/file/ItemType;

    const-string v1, "TYPE_MAP_ITEM"

    const/16 v2, 0x14

    const-string v3, "map_item"

    invoke-direct {v0, v1, v2, v5, v3}, Lcom/s1243808733/android/dx/dex/file/ItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/s1243808733/android/dx/dex/file/ItemType;->TYPE_MAP_ITEM:Lcom/s1243808733/android/dx/dex/file/ItemType;

    new-instance v0, Lcom/s1243808733/android/dx/dex/file/ItemType;

    const-string v1, "TYPE_TYPE_ITEM"

    const/16 v2, 0x15

    const-string v3, "type_item"

    invoke-direct {v0, v1, v2, v5, v3}, Lcom/s1243808733/android/dx/dex/file/ItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/s1243808733/android/dx/dex/file/ItemType;->TYPE_TYPE_ITEM:Lcom/s1243808733/android/dx/dex/file/ItemType;

    new-instance v0, Lcom/s1243808733/android/dx/dex/file/ItemType;

    const-string v1, "TYPE_EXCEPTION_HANDLER_ITEM"

    const/16 v2, 0x16

    const-string v3, "exception_handler_item"

    invoke-direct {v0, v1, v2, v5, v3}, Lcom/s1243808733/android/dx/dex/file/ItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/s1243808733/android/dx/dex/file/ItemType;->TYPE_EXCEPTION_HANDLER_ITEM:Lcom/s1243808733/android/dx/dex/file/ItemType;

    new-instance v0, Lcom/s1243808733/android/dx/dex/file/ItemType;

    const-string v1, "TYPE_ANNOTATION_SET_REF_ITEM"

    const/16 v2, 0x17

    const-string v3, "annotation_set_ref_item"

    invoke-direct {v0, v1, v2, v5, v3}, Lcom/s1243808733/android/dx/dex/file/ItemType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/s1243808733/android/dx/dex/file/ItemType;->TYPE_ANNOTATION_SET_REF_ITEM:Lcom/s1243808733/android/dx/dex/file/ItemType;

    const/16 v0, 0x18

    new-array v0, v0, [Lcom/s1243808733/android/dx/dex/file/ItemType;

    sget-object v1, Lcom/s1243808733/android/dx/dex/file/ItemType;->TYPE_HEADER_ITEM:Lcom/s1243808733/android/dx/dex/file/ItemType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/s1243808733/android/dx/dex/file/ItemType;->TYPE_STRING_ID_ITEM:Lcom/s1243808733/android/dx/dex/file/ItemType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/s1243808733/android/dx/dex/file/ItemType;->TYPE_TYPE_ID_ITEM:Lcom/s1243808733/android/dx/dex/file/ItemType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/s1243808733/android/dx/dex/file/ItemType;->TYPE_PROTO_ID_ITEM:Lcom/s1243808733/android/dx/dex/file/ItemType;

    aput-object v1, v0, v9

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

    sput-object v0, Lcom/s1243808733/android/dx/dex/file/ItemType;->$VALUES:[Lcom/s1243808733/android/dx/dex/file/ItemType;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .registers 7

    .line 65
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 66
    iput p3, p0, Lcom/s1243808733/android/dx/dex/file/ItemType;->mapValue:I

    .line 67
    iput-object p4, p0, Lcom/s1243808733/android/dx/dex/file/ItemType;->typeName:Ljava/lang/String;

    .line 71
    const-string v0, "_item"

    invoke-virtual {p4, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    const/4 v0, 0x0

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x5

    invoke-virtual {p4, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p4

    .line 74
    :cond_0
    const/16 v0, 0x5f

    const/16 v1, 0x20

    invoke-virtual {p4, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ItemType;->humanName:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/s1243808733/android/dx/dex/file/ItemType;
    .registers 5

    .line 48
    sget-object v1, Lcom/s1243808733/android/dx/dex/file/ItemType;->$VALUES:[Lcom/s1243808733/android/dx/dex/file/ItemType;

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-lt v0, v2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    aget-object v2, v1, v0

    invoke-virtual {v2}, Lcom/s1243808733/android/dx/dex/file/ItemType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static final values()[Lcom/s1243808733/android/dx/dex/file/ItemType;
    .registers 1

    .line 48
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
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 98
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/ItemType;->humanName:Ljava/lang/String;

    return-object v0
.end method
