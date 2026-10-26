.class public final enum Labcd/wp;
.super Ljava/lang/Enum;

# interfaces
.implements Labcd/lu;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
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
    .locals 27

    new-instance v1, Labcd/wp;

    const-string v2, "TYPE_HEADER_ITEM"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "header_item"

    invoke-direct {v1, v2, v3, v4, v5}, Labcd/wp;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Labcd/wp;->j6:Labcd/wp;

    new-instance v2, Labcd/wp;

    const-string v3, "TYPE_STRING_ID_ITEM"

    const/4 v4, 0x1

    const/4 v5, 0x1

    const-string v6, "string_id_item"

    invoke-direct {v2, v3, v4, v5, v6}, Labcd/wp;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v2, Labcd/wp;->DW:Labcd/wp;

    new-instance v3, Labcd/wp;

    const-string v4, "TYPE_TYPE_ID_ITEM"

    const/4 v5, 0x2

    const/4 v6, 0x2

    const-string v7, "type_id_item"

    invoke-direct {v3, v4, v5, v6, v7}, Labcd/wp;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v3, Labcd/wp;->FH:Labcd/wp;

    new-instance v4, Labcd/wp;

    const-string v5, "TYPE_PROTO_ID_ITEM"

    const/4 v6, 0x3

    const/4 v7, 0x3

    const-string v8, "proto_id_item"

    invoke-direct {v4, v5, v6, v7, v8}, Labcd/wp;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v4, Labcd/wp;->Hw:Labcd/wp;

    new-instance v5, Labcd/wp;

    const-string v6, "TYPE_FIELD_ID_ITEM"

    const/4 v7, 0x4

    const/4 v8, 0x4

    const-string v9, "field_id_item"

    invoke-direct {v5, v6, v7, v8, v9}, Labcd/wp;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v5, Labcd/wp;->v5:Labcd/wp;

    new-instance v6, Labcd/wp;

    const-string v7, "TYPE_METHOD_ID_ITEM"

    const/4 v8, 0x5

    const/4 v9, 0x5

    const-string v10, "method_id_item"

    invoke-direct {v6, v7, v8, v9, v10}, Labcd/wp;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v6, Labcd/wp;->Zo:Labcd/wp;

    new-instance v7, Labcd/wp;

    const-string v8, "TYPE_CLASS_DEF_ITEM"

    const/4 v9, 0x6

    const/4 v10, 0x6

    const-string v11, "class_def_item"

    invoke-direct {v7, v8, v9, v10, v11}, Labcd/wp;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v7, Labcd/wp;->VH:Labcd/wp;

    new-instance v8, Labcd/wp;

    const-string v9, "TYPE_MAP_LIST"

    const/4 v10, 0x7

    const/16 v11, 0x1000

    const-string v12, "map_list"

    invoke-direct {v8, v9, v10, v11, v12}, Labcd/wp;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v8, Labcd/wp;->gn:Labcd/wp;

    new-instance v9, Labcd/wp;

    const-string v10, "TYPE_TYPE_LIST"

    const/16 v11, 0x8

    const/16 v12, 0x1001

    const-string v13, "type_list"

    invoke-direct {v9, v10, v11, v12, v13}, Labcd/wp;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v9, Labcd/wp;->u7:Labcd/wp;

    new-instance v10, Labcd/wp;

    const-string v11, "TYPE_ANNOTATION_SET_REF_LIST"

    const/16 v12, 0x9

    const/16 v13, 0x1002

    const-string v14, "annotation_set_ref_list"

    invoke-direct {v10, v11, v12, v13, v14}, Labcd/wp;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v10, Labcd/wp;->tp:Labcd/wp;

    new-instance v11, Labcd/wp;

    const-string v12, "TYPE_ANNOTATION_SET_ITEM"

    const/16 v13, 0xa

    const/16 v14, 0x1003

    const-string v15, "annotation_set_item"

    invoke-direct {v11, v12, v13, v14, v15}, Labcd/wp;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v11, Labcd/wp;->EQ:Labcd/wp;

    new-instance v12, Labcd/wp;

    const-string v13, "TYPE_CLASS_DATA_ITEM"

    const/16 v14, 0xb

    const/16 v15, 0x2000

    const-string v16, "class_data_item"

    invoke-direct/range {v12 .. v16}, Labcd/wp;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v12, Labcd/wp;->we:Labcd/wp;

    new-instance v13, Labcd/wp;

    const-string v14, "TYPE_CODE_ITEM"

    const/16 v15, 0xc

    const/16 v16, 0x2001

    const-string v17, "code_item"

    invoke-direct/range {v13 .. v17}, Labcd/wp;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v13, Labcd/wp;->J0:Labcd/wp;

    new-instance v14, Labcd/wp;

    const-string v15, "TYPE_STRING_DATA_ITEM"

    const/16 v16, 0xd

    const/16 v17, 0x2002

    const-string v18, "string_data_item"

    invoke-direct/range {v14 .. v18}, Labcd/wp;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v14, Labcd/wp;->J8:Labcd/wp;

    new-instance v15, Labcd/wp;

    const-string v16, "TYPE_DEBUG_INFO_ITEM"

    const/16 v17, 0xe

    const/16 v18, 0x2003

    const-string v19, "debug_info_item"

    invoke-direct/range {v15 .. v19}, Labcd/wp;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v15, Labcd/wp;->Ws:Labcd/wp;

    new-instance v16, Labcd/wp;

    const-string v17, "TYPE_ANNOTATION_ITEM"

    const/16 v18, 0xf

    const/16 v19, 0x2004

    const-string v20, "annotation_item"

    invoke-direct/range {v16 .. v20}, Labcd/wp;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v16, Labcd/wp;->QX:Labcd/wp;

    new-instance v17, Labcd/wp;

    const-string v18, "TYPE_ENCODED_ARRAY_ITEM"

    const/16 v19, 0x10

    const/16 v20, 0x2005

    const-string v21, "encoded_array_item"

    invoke-direct/range {v17 .. v21}, Labcd/wp;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v17, Labcd/wp;->XL:Labcd/wp;

    new-instance v18, Labcd/wp;

    const-string v19, "TYPE_ANNOTATIONS_DIRECTORY_ITEM"

    const/16 v20, 0x11

    const/16 v21, 0x2006

    const-string v22, "annotations_directory_item"

    invoke-direct/range {v18 .. v22}, Labcd/wp;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v18, Labcd/wp;->aM:Labcd/wp;

    new-instance v19, Labcd/wp;

    const-string v20, "TYPE_MAP_ITEM"

    const/16 v21, 0x12

    const/16 v22, -0x1

    const-string v23, "map_item"

    invoke-direct/range {v19 .. v23}, Labcd/wp;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v19, Labcd/wp;->j3:Labcd/wp;

    new-instance v20, Labcd/wp;

    const-string v21, "TYPE_TYPE_ITEM"

    const/16 v22, 0x13

    const/16 v23, -0x1

    const-string v24, "type_item"

    invoke-direct/range {v20 .. v24}, Labcd/wp;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v20, Labcd/wp;->Mr:Labcd/wp;

    new-instance v21, Labcd/wp;

    const-string v22, "TYPE_EXCEPTION_HANDLER_ITEM"

    const/16 v23, 0x14

    const/16 v24, -0x1

    const-string v25, "exception_handler_item"

    invoke-direct/range {v21 .. v25}, Labcd/wp;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v21, Labcd/wp;->U2:Labcd/wp;

    new-instance v22, Labcd/wp;

    const-string v23, "TYPE_ANNOTATION_SET_REF_ITEM"

    const/16 v24, 0x15

    const/16 v25, -0x1

    const-string v26, "annotation_set_ref_item"

    invoke-direct/range {v22 .. v26}, Labcd/wp;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v22, Labcd/wp;->a8:Labcd/wp;

    const/16 v23, 0x16

    move/from16 v0, v23

    new-array v0, v0, [Labcd/wp;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-object v1, v23, v24

    const/4 v1, 0x1

    aput-object v2, v23, v1

    const/4 v1, 0x2

    aput-object v3, v23, v1

    const/4 v1, 0x3

    aput-object v4, v23, v1

    const/4 v1, 0x4

    aput-object v5, v23, v1

    const/4 v1, 0x5

    aput-object v6, v23, v1

    const/4 v1, 0x6

    aput-object v7, v23, v1

    const/4 v1, 0x7

    aput-object v8, v23, v1

    const/16 v1, 0x8

    aput-object v9, v23, v1

    const/16 v1, 0x9

    aput-object v10, v23, v1

    const/16 v1, 0xa

    aput-object v11, v23, v1

    const/16 v1, 0xb

    aput-object v12, v23, v1

    const/16 v1, 0xc

    aput-object v13, v23, v1

    const/16 v1, 0xd

    aput-object v14, v23, v1

    const/16 v1, 0xe

    aput-object v15, v23, v1

    const/16 v1, 0xf

    aput-object v16, v23, v1

    const/16 v1, 0x10

    aput-object v17, v23, v1

    const/16 v1, 0x11

    aput-object v18, v23, v1

    const/16 v1, 0x12

    aput-object v19, v23, v1

    const/16 v1, 0x13

    aput-object v20, v23, v1

    const/16 v1, 0x14

    aput-object v21, v23, v1

    const/16 v1, 0x15

    aput-object v22, v23, v1

    sput-object v23, Labcd/wp;->lg:[Labcd/wp;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 2
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

    const-string v0, "_item"

    invoke-virtual {p4, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x5

    invoke-virtual {p4, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p4

    :cond_0
    const/16 v0, 0x5f

    const/16 v1, 0x20

    invoke-virtual {p4, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Labcd/wp;->yS:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Labcd/wp;
    .locals 1

    const-class v0, Labcd/wp;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Labcd/wp;

    return-object v0
.end method

.method public static values()[Labcd/wp;
    .locals 1

    sget-object v0, Labcd/wp;->lg:[Labcd/wp;

    invoke-virtual {v0}, [Labcd/wp;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Labcd/wp;

    return-object v0
.end method


# virtual methods
.method public Hw()I
    .locals 1

    iget v0, p0, Labcd/wp;->rN:I

    return v0
.end method

.method public Zo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Labcd/wp;->er:Ljava/lang/String;

    return-object v0
.end method

.method public aM()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Labcd/wp;->yS:Ljava/lang/String;

    return-object v0
.end method
