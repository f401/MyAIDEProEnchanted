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
    .registers 10

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, -0x1

    new-instance v0, Labcd/wp;

    const-string v1, "TYPE_HEADER_ITEM"

    const-string v2, "header_item"

    invoke-direct {v0, v1, v6, v6, v2}, Labcd/wp;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Labcd/wp;->j6:Labcd/wp;

    new-instance v0, Labcd/wp;

    const-string v1, "TYPE_STRING_ID_ITEM"

    const-string v2, "string_id_item"

    invoke-direct {v0, v1, v7, v7, v2}, Labcd/wp;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Labcd/wp;->DW:Labcd/wp;

    new-instance v0, Labcd/wp;

    const-string v1, "TYPE_TYPE_ID_ITEM"

    const-string v2, "type_id_item"

    invoke-direct {v0, v1, v8, v8, v2}, Labcd/wp;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Labcd/wp;->FH:Labcd/wp;

    new-instance v0, Labcd/wp;

    const-string v1, "TYPE_PROTO_ID_ITEM"

    const-string v2, "proto_id_item"

    invoke-direct {v0, v1, v9, v9, v2}, Labcd/wp;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Labcd/wp;->Hw:Labcd/wp;

    new-instance v0, Labcd/wp;

    const-string v1, "TYPE_FIELD_ID_ITEM"

    const/4 v2, 0x4

    const/4 v3, 0x4

    const-string v4, "field_id_item"

    invoke-direct {v0, v1, v2, v3, v4}, Labcd/wp;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Labcd/wp;->v5:Labcd/wp;

    new-instance v0, Labcd/wp;

    const-string v1, "TYPE_METHOD_ID_ITEM"

    const/4 v2, 0x5

    const/4 v3, 0x5

    const-string v4, "method_id_item"

    invoke-direct {v0, v1, v2, v3, v4}, Labcd/wp;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Labcd/wp;->Zo:Labcd/wp;

    new-instance v0, Labcd/wp;

    const-string v1, "TYPE_CLASS_DEF_ITEM"

    const/4 v2, 0x6

    const/4 v3, 0x6

    const-string v4, "class_def_item"

    invoke-direct {v0, v1, v2, v3, v4}, Labcd/wp;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Labcd/wp;->VH:Labcd/wp;

    new-instance v0, Labcd/wp;

    const-string v1, "TYPE_MAP_LIST"

    const/4 v2, 0x7

    const/16 v3, 0x1000

    const-string v4, "map_list"

    invoke-direct {v0, v1, v2, v3, v4}, Labcd/wp;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Labcd/wp;->gn:Labcd/wp;

    new-instance v0, Labcd/wp;

    const-string v1, "TYPE_TYPE_LIST"

    const/16 v2, 0x8

    const/16 v3, 0x1001

    const-string v4, "type_list"

    invoke-direct {v0, v1, v2, v3, v4}, Labcd/wp;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Labcd/wp;->u7:Labcd/wp;

    new-instance v0, Labcd/wp;

    const-string v1, "TYPE_ANNOTATION_SET_REF_LIST"

    const/16 v2, 0x9

    const/16 v3, 0x1002

    const-string v4, "annotation_set_ref_list"

    invoke-direct {v0, v1, v2, v3, v4}, Labcd/wp;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Labcd/wp;->tp:Labcd/wp;

    new-instance v0, Labcd/wp;

    const-string v1, "TYPE_ANNOTATION_SET_ITEM"

    const/16 v2, 0xa

    const/16 v3, 0x1003

    const-string v4, "annotation_set_item"

    invoke-direct {v0, v1, v2, v3, v4}, Labcd/wp;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Labcd/wp;->EQ:Labcd/wp;

    new-instance v0, Labcd/wp;

    const-string v1, "TYPE_CLASS_DATA_ITEM"

    const/16 v2, 0xb

    const/16 v3, 0x2000

    const-string v4, "class_data_item"

    invoke-direct {v0, v1, v2, v3, v4}, Labcd/wp;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Labcd/wp;->we:Labcd/wp;

    new-instance v0, Labcd/wp;

    const-string v1, "TYPE_CODE_ITEM"

    const/16 v2, 0xc

    const/16 v3, 0x2001

    const-string v4, "code_item"

    invoke-direct {v0, v1, v2, v3, v4}, Labcd/wp;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Labcd/wp;->J0:Labcd/wp;

    new-instance v0, Labcd/wp;

    const-string v1, "TYPE_STRING_DATA_ITEM"

    const/16 v2, 0xd

    const/16 v3, 0x2002

    const-string v4, "string_data_item"

    invoke-direct {v0, v1, v2, v3, v4}, Labcd/wp;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Labcd/wp;->J8:Labcd/wp;

    new-instance v0, Labcd/wp;

    const-string v1, "TYPE_DEBUG_INFO_ITEM"

    const/16 v2, 0xe

    const/16 v3, 0x2003

    const-string v4, "debug_info_item"

    invoke-direct {v0, v1, v2, v3, v4}, Labcd/wp;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Labcd/wp;->Ws:Labcd/wp;

    new-instance v0, Labcd/wp;

    const-string v1, "TYPE_ANNOTATION_ITEM"

    const/16 v2, 0xf

    const/16 v3, 0x2004

    const-string v4, "annotation_item"

    invoke-direct {v0, v1, v2, v3, v4}, Labcd/wp;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Labcd/wp;->QX:Labcd/wp;

    new-instance v0, Labcd/wp;

    const-string v1, "TYPE_ENCODED_ARRAY_ITEM"

    const/16 v2, 0x10

    const/16 v3, 0x2005

    const-string v4, "encoded_array_item"

    invoke-direct {v0, v1, v2, v3, v4}, Labcd/wp;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Labcd/wp;->XL:Labcd/wp;

    new-instance v0, Labcd/wp;

    const-string v1, "TYPE_ANNOTATIONS_DIRECTORY_ITEM"

    const/16 v2, 0x11

    const/16 v3, 0x2006

    const-string v4, "annotations_directory_item"

    invoke-direct {v0, v1, v2, v3, v4}, Labcd/wp;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Labcd/wp;->aM:Labcd/wp;

    new-instance v0, Labcd/wp;

    const-string v1, "TYPE_MAP_ITEM"

    const/16 v2, 0x12

    const-string v3, "map_item"

    invoke-direct {v0, v1, v2, v5, v3}, Labcd/wp;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Labcd/wp;->j3:Labcd/wp;

    new-instance v0, Labcd/wp;

    const-string v1, "TYPE_TYPE_ITEM"

    const/16 v2, 0x13

    const-string v3, "type_item"

    invoke-direct {v0, v1, v2, v5, v3}, Labcd/wp;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Labcd/wp;->Mr:Labcd/wp;

    new-instance v0, Labcd/wp;

    const-string v1, "TYPE_EXCEPTION_HANDLER_ITEM"

    const/16 v2, 0x14

    const-string v3, "exception_handler_item"

    invoke-direct {v0, v1, v2, v5, v3}, Labcd/wp;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Labcd/wp;->U2:Labcd/wp;

    new-instance v0, Labcd/wp;

    const-string v1, "TYPE_ANNOTATION_SET_REF_ITEM"

    const/16 v2, 0x15

    const-string v3, "annotation_set_ref_item"

    invoke-direct {v0, v1, v2, v5, v3}, Labcd/wp;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Labcd/wp;->a8:Labcd/wp;

    const/16 v0, 0x16

    new-array v0, v0, [Labcd/wp;

    sget-object v1, Labcd/wp;->j6:Labcd/wp;

    aput-object v1, v0, v6

    sget-object v1, Labcd/wp;->DW:Labcd/wp;

    aput-object v1, v0, v7

    sget-object v1, Labcd/wp;->FH:Labcd/wp;

    aput-object v1, v0, v8

    sget-object v1, Labcd/wp;->Hw:Labcd/wp;

    aput-object v1, v0, v9

    const/4 v1, 0x4

    sget-object v2, Labcd/wp;->v5:Labcd/wp;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Labcd/wp;->Zo:Labcd/wp;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Labcd/wp;->VH:Labcd/wp;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Labcd/wp;->gn:Labcd/wp;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Labcd/wp;->u7:Labcd/wp;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Labcd/wp;->tp:Labcd/wp;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Labcd/wp;->EQ:Labcd/wp;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Labcd/wp;->we:Labcd/wp;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Labcd/wp;->J0:Labcd/wp;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Labcd/wp;->J8:Labcd/wp;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Labcd/wp;->Ws:Labcd/wp;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Labcd/wp;->QX:Labcd/wp;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Labcd/wp;->XL:Labcd/wp;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Labcd/wp;->aM:Labcd/wp;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Labcd/wp;->j3:Labcd/wp;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Labcd/wp;->Mr:Labcd/wp;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Labcd/wp;->U2:Labcd/wp;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Labcd/wp;->a8:Labcd/wp;

    aput-object v2, v0, v1

    sput-object v0, Labcd/wp;->lg:[Labcd/wp;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .registers 7
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
    .registers 2

    const-class v0, Labcd/wp;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Labcd/wp;

    return-object v0
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
