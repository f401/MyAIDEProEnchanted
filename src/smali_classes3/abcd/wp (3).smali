.class public final enum Labcd/wp;
.super Ljava/lang/Enum;

# interfaces
.implements Labcd/lu;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Labcd/wp;",
        ">;",
        "Labcd/lu;"
    }
.end annotation


# static fields
.field public static final enum DW:Labcd/wp;

.field public static final enum EQ:Labcd/wp;

.field public static final enum FH:Labcd/wp;

.field public static final enum Hw:Labcd/wp;

.field public static final enum J0:Labcd/wp;

.field public static final enum J8:Labcd/wp;

.field public static final enum Mr:Labcd/wp;

.field public static final enum QX:Labcd/wp;

.field public static final enum U2:Labcd/wp;

.field public static final enum VH:Labcd/wp;

.field public static final enum Ws:Labcd/wp;

.field public static final enum XL:Labcd/wp;

.field public static final enum Zo:Labcd/wp;

.field public static final enum a8:Labcd/wp;

.field public static final enum aM:Labcd/wp;

.field public static final enum gn:Labcd/wp;

.field public static final enum j3:Labcd/wp;

.field public static final enum j6:Labcd/wp;

.field private static final lg:[Labcd/wp;

.field public static final enum tp:Labcd/wp;

.field public static final enum u7:Labcd/wp;

.field public static final enum v5:Labcd/wp;

.field public static final enum we:Labcd/wp;


# instance fields
.field private final er:Ljava/lang/String;

.field private final rN:I

.field private final yS:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 26

    new-instance v0, Labcd/wp;

    const-string v1, "header_item"

    const-string v2, "TYPE_HEADER_ITEM"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v3, v1}, Labcd/wp;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Labcd/wp;->j6:Labcd/wp;

    new-instance v1, Labcd/wp;

    const-string v2, "string_id_item"

    const-string v4, "TYPE_STRING_ID_ITEM"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v5, v2}, Labcd/wp;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Labcd/wp;->DW:Labcd/wp;

    new-instance v2, Labcd/wp;

    const-string v4, "type_id_item"

    const-string v6, "TYPE_TYPE_ID_ITEM"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v7, v4}, Labcd/wp;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v2, Labcd/wp;->FH:Labcd/wp;

    new-instance v4, Labcd/wp;

    const-string v6, "proto_id_item"

    const-string v8, "TYPE_PROTO_ID_ITEM"

    const/4 v9, 0x3

    invoke-direct {v4, v8, v9, v9, v6}, Labcd/wp;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v4, Labcd/wp;->Hw:Labcd/wp;

    new-instance v6, Labcd/wp;

    const-string v8, "field_id_item"

    const-string v10, "TYPE_FIELD_ID_ITEM"

    const/4 v11, 0x4

    invoke-direct {v6, v10, v11, v11, v8}, Labcd/wp;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v6, Labcd/wp;->v5:Labcd/wp;

    new-instance v8, Labcd/wp;

    const-string v10, "method_id_item"

    const-string v12, "TYPE_METHOD_ID_ITEM"

    const/4 v13, 0x5

    invoke-direct {v8, v12, v13, v13, v10}, Labcd/wp;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v8, Labcd/wp;->Zo:Labcd/wp;

    new-instance v10, Labcd/wp;

    const-string v12, "class_def_item"

    const-string v14, "TYPE_CLASS_DEF_ITEM"

    const/4 v15, 0x6

    invoke-direct {v10, v14, v15, v15, v12}, Labcd/wp;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v10, Labcd/wp;->VH:Labcd/wp;

    new-instance v12, Labcd/wp;

    const/16 v14, 0x1000

    const-string v15, "map_list"

    const-string v13, "TYPE_MAP_LIST"

    const/4 v11, 0x7

    invoke-direct {v12, v13, v11, v14, v15}, Labcd/wp;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v12, Labcd/wp;->gn:Labcd/wp;

    new-instance v13, Labcd/wp;

    const/16 v14, 0x1001

    const-string v15, "type_list"

    const-string v11, "TYPE_TYPE_LIST"

    const/16 v9, 0x8

    invoke-direct {v13, v11, v9, v14, v15}, Labcd/wp;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v13, Labcd/wp;->u7:Labcd/wp;

    new-instance v11, Labcd/wp;

    const/16 v14, 0x1002

    const-string v15, "annotation_set_ref_list"

    const-string v9, "TYPE_ANNOTATION_SET_REF_LIST"

    const/16 v7, 0x9

    invoke-direct {v11, v9, v7, v14, v15}, Labcd/wp;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v11, Labcd/wp;->tp:Labcd/wp;

    new-instance v9, Labcd/wp;

    const/16 v14, 0x1003

    const-string v15, "annotation_set_item"

    const-string v7, "TYPE_ANNOTATION_SET_ITEM"

    const/16 v5, 0xa

    invoke-direct {v9, v7, v5, v14, v15}, Labcd/wp;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v9, Labcd/wp;->EQ:Labcd/wp;

    new-instance v7, Labcd/wp;

    const/16 v14, 0x2000

    const-string v15, "class_data_item"

    const-string v5, "TYPE_CLASS_DATA_ITEM"

    const/16 v3, 0xb

    invoke-direct {v7, v5, v3, v14, v15}, Labcd/wp;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v7, Labcd/wp;->we:Labcd/wp;

    new-instance v5, Labcd/wp;

    const/16 v14, 0x2001

    const-string v15, "code_item"

    const-string v3, "TYPE_CODE_ITEM"

    move-object/from16 v16, v7

    const/16 v7, 0xc

    invoke-direct {v5, v3, v7, v14, v15}, Labcd/wp;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v5, Labcd/wp;->J0:Labcd/wp;

    new-instance v3, Labcd/wp;

    const/16 v14, 0x2002

    const-string v15, "string_data_item"

    const-string v7, "TYPE_STRING_DATA_ITEM"

    move-object/from16 v17, v5

    const/16 v5, 0xd

    invoke-direct {v3, v7, v5, v14, v15}, Labcd/wp;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v3, Labcd/wp;->J8:Labcd/wp;

    new-instance v7, Labcd/wp;

    const/16 v14, 0x2003

    const-string v15, "debug_info_item"

    const-string v5, "TYPE_DEBUG_INFO_ITEM"

    move-object/from16 v18, v3

    const/16 v3, 0xe

    invoke-direct {v7, v5, v3, v14, v15}, Labcd/wp;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v7, Labcd/wp;->Ws:Labcd/wp;

    new-instance v5, Labcd/wp;

    const/16 v14, 0x2004

    const-string v15, "annotation_item"

    const-string v3, "TYPE_ANNOTATION_ITEM"

    move-object/from16 v19, v7

    const/16 v7, 0xf

    invoke-direct {v5, v3, v7, v14, v15}, Labcd/wp;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v5, Labcd/wp;->QX:Labcd/wp;

    new-instance v3, Labcd/wp;

    const/16 v14, 0x2005

    const-string v15, "encoded_array_item"

    const-string v7, "TYPE_ENCODED_ARRAY_ITEM"

    move-object/from16 v20, v5

    const/16 v5, 0x10

    invoke-direct {v3, v7, v5, v14, v15}, Labcd/wp;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v3, Labcd/wp;->XL:Labcd/wp;

    new-instance v7, Labcd/wp;

    const/16 v14, 0x2006

    const-string v15, "annotations_directory_item"

    const-string v5, "TYPE_ANNOTATIONS_DIRECTORY_ITEM"

    move-object/from16 v21, v3

    const/16 v3, 0x11

    invoke-direct {v7, v5, v3, v14, v15}, Labcd/wp;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v7, Labcd/wp;->aM:Labcd/wp;

    new-instance v5, Labcd/wp;

    const-string v14, "map_item"

    const-string v15, "TYPE_MAP_ITEM"

    const/16 v3, 0x12

    move-object/from16 v22, v7

    const/4 v7, -0x1

    invoke-direct {v5, v15, v3, v7, v14}, Labcd/wp;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v5, Labcd/wp;->j3:Labcd/wp;

    new-instance v14, Labcd/wp;

    const-string v15, "type_item"

    const-string v3, "TYPE_TYPE_ITEM"

    move-object/from16 v23, v5

    const/16 v5, 0x13

    invoke-direct {v14, v3, v5, v7, v15}, Labcd/wp;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v14, Labcd/wp;->Mr:Labcd/wp;

    new-instance v3, Labcd/wp;

    const-string v15, "exception_handler_item"

    const-string v5, "TYPE_EXCEPTION_HANDLER_ITEM"

    move-object/from16 v24, v14

    const/16 v14, 0x14

    invoke-direct {v3, v5, v14, v7, v15}, Labcd/wp;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v3, Labcd/wp;->U2:Labcd/wp;

    new-instance v5, Labcd/wp;

    const/16 v15, 0x15

    const-string v14, "annotation_set_ref_item"

    move-object/from16 v25, v3

    const-string v3, "TYPE_ANNOTATION_SET_REF_ITEM"

    invoke-direct {v5, v3, v15, v7, v14}, Labcd/wp;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v5, Labcd/wp;->a8:Labcd/wp;

    const/16 v3, 0x16

    new-array v3, v3, [Labcd/wp;

    const/4 v7, 0x0

    aput-object v0, v3, v7

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v2, v3, v0

    const/4 v0, 0x3

    aput-object v4, v3, v0

    const/4 v0, 0x4

    aput-object v6, v3, v0

    const/4 v0, 0x5

    aput-object v8, v3, v0

    const/4 v0, 0x6

    aput-object v10, v3, v0

    const/4 v0, 0x7

    aput-object v12, v3, v0

    const/16 v0, 0x8

    aput-object v13, v3, v0

    const/16 v0, 0x9

    aput-object v11, v3, v0

    const/16 v0, 0xa

    aput-object v9, v3, v0

    const/16 v0, 0xb

    aput-object v16, v3, v0

    const/16 v0, 0xc

    aput-object v17, v3, v0

    const/16 v0, 0xd

    aput-object v18, v3, v0

    const/16 v0, 0xe

    aput-object v19, v3, v0

    const/16 v0, 0xf

    aput-object v20, v3, v0

    const/16 v0, 0x10

    aput-object v21, v3, v0

    const/16 v0, 0x11

    aput-object v22, v3, v0

    const/16 v0, 0x12

    aput-object v23, v3, v0

    const/16 v0, 0x13

    aput-object v24, v3, v0

    const/16 v0, 0x14

    aput-object v25, v3, v0

    const/16 v0, 0x15

    aput-object v5, v3, v0

    sput-object v3, Labcd/wp;->lg:[Labcd/wp;

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

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Labcd/wp;->rN:I

    iput-object p4, p0, Labcd/wp;->er:Ljava/lang/String;

    const-string p1, "_item"

    invoke-virtual {p4, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1a

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x5

    const/4 p2, 0x0

    invoke-virtual {p4, p2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p4

    :cond_1a
    const/16 p1, 0x5f

    const/16 p2, 0x20

    invoke-virtual {p4, p1, p2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Labcd/wp;->yS:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Labcd/wp;
    .registers 2

    const-class v0, Labcd/wp;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Labcd/wp;

    return-object p0
.end method

.method public static values()[Labcd/wp;
    .registers 1

    sget-object v0, Labcd/wp;->lg:[Labcd/wp;

    invoke-virtual {v0}, [Labcd/wp;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Labcd/wp;

    return-object v0
.end method


# virtual methods
.method public Hw()I
    .registers 2

    iget v0, p0, Labcd/wp;->rN:I

    return v0
.end method

.method public Zo()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Labcd/wp;->er:Ljava/lang/String;

    return-object v0
.end method

.method public aM()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Labcd/wp;->yS:Ljava/lang/String;

    return-object v0
.end method
