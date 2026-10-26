.class public enum Lcom/google/android/gms/internal/measurement/id;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/gms/internal/measurement/id;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DW:Lcom/google/android/gms/internal/measurement/id;

.field public static final enum EQ:Lcom/google/android/gms/internal/measurement/id;

.field public static final enum FH:Lcom/google/android/gms/internal/measurement/id;

.field public static final enum Hw:Lcom/google/android/gms/internal/measurement/id;

.field public static final enum J0:Lcom/google/android/gms/internal/measurement/id;

.field public static final enum J8:Lcom/google/android/gms/internal/measurement/id;

.field public static final enum QX:Lcom/google/android/gms/internal/measurement/id;

.field public static final enum VH:Lcom/google/android/gms/internal/measurement/id;

.field public static final enum Ws:Lcom/google/android/gms/internal/measurement/id;

.field public static final enum XL:Lcom/google/android/gms/internal/measurement/id;

.field public static final enum Zo:Lcom/google/android/gms/internal/measurement/id;

.field public static final enum aM:Lcom/google/android/gms/internal/measurement/id;

.field public static final enum gn:Lcom/google/android/gms/internal/measurement/id;

.field private static final j3:[Lcom/google/android/gms/internal/measurement/id;

.field public static final enum j6:Lcom/google/android/gms/internal/measurement/id;

.field public static final enum tp:Lcom/google/android/gms/internal/measurement/id;

.field public static final enum u7:Lcom/google/android/gms/internal/measurement/id;

.field public static final enum v5:Lcom/google/android/gms/internal/measurement/id;

.field public static final enum we:Lcom/google/android/gms/internal/measurement/id;


# instance fields
.field private final Mr:Lcom/google/android/gms/internal/measurement/nd;

.field private final U2:I


# direct methods
.method static constructor <clinit>()V
    .locals 23

    new-instance v1, Lcom/google/android/gms/internal/measurement/id;

    const-string v2, "DOUBLE"

    const/4 v3, 0x0

    sget-object v4, Lcom/google/android/gms/internal/measurement/nd;->Hw:Lcom/google/android/gms/internal/measurement/nd;

    const/4 v5, 0x1

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/measurement/id;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/nd;I)V

    sput-object v1, Lcom/google/android/gms/internal/measurement/id;->j6:Lcom/google/android/gms/internal/measurement/id;

    new-instance v2, Lcom/google/android/gms/internal/measurement/id;

    const-string v3, "FLOAT"

    const/4 v4, 0x1

    sget-object v5, Lcom/google/android/gms/internal/measurement/nd;->FH:Lcom/google/android/gms/internal/measurement/nd;

    const/4 v6, 0x5

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/android/gms/internal/measurement/id;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/nd;I)V

    sput-object v2, Lcom/google/android/gms/internal/measurement/id;->DW:Lcom/google/android/gms/internal/measurement/id;

    new-instance v3, Lcom/google/android/gms/internal/measurement/id;

    const-string v4, "INT64"

    const/4 v5, 0x2

    sget-object v6, Lcom/google/android/gms/internal/measurement/nd;->DW:Lcom/google/android/gms/internal/measurement/nd;

    const/4 v7, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/google/android/gms/internal/measurement/id;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/nd;I)V

    sput-object v3, Lcom/google/android/gms/internal/measurement/id;->FH:Lcom/google/android/gms/internal/measurement/id;

    new-instance v4, Lcom/google/android/gms/internal/measurement/id;

    const-string v5, "UINT64"

    const/4 v6, 0x3

    sget-object v7, Lcom/google/android/gms/internal/measurement/nd;->DW:Lcom/google/android/gms/internal/measurement/nd;

    const/4 v8, 0x0

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/google/android/gms/internal/measurement/id;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/nd;I)V

    sput-object v4, Lcom/google/android/gms/internal/measurement/id;->Hw:Lcom/google/android/gms/internal/measurement/id;

    new-instance v5, Lcom/google/android/gms/internal/measurement/id;

    const-string v6, "INT32"

    const/4 v7, 0x4

    sget-object v8, Lcom/google/android/gms/internal/measurement/nd;->j6:Lcom/google/android/gms/internal/measurement/nd;

    const/4 v9, 0x0

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/google/android/gms/internal/measurement/id;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/nd;I)V

    sput-object v5, Lcom/google/android/gms/internal/measurement/id;->v5:Lcom/google/android/gms/internal/measurement/id;

    new-instance v6, Lcom/google/android/gms/internal/measurement/id;

    const-string v7, "FIXED64"

    const/4 v8, 0x5

    sget-object v9, Lcom/google/android/gms/internal/measurement/nd;->DW:Lcom/google/android/gms/internal/measurement/nd;

    const/4 v10, 0x1

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/google/android/gms/internal/measurement/id;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/nd;I)V

    sput-object v6, Lcom/google/android/gms/internal/measurement/id;->Zo:Lcom/google/android/gms/internal/measurement/id;

    new-instance v7, Lcom/google/android/gms/internal/measurement/id;

    const-string v8, "FIXED32"

    const/4 v9, 0x6

    sget-object v10, Lcom/google/android/gms/internal/measurement/nd;->j6:Lcom/google/android/gms/internal/measurement/nd;

    const/4 v11, 0x5

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/google/android/gms/internal/measurement/id;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/nd;I)V

    sput-object v7, Lcom/google/android/gms/internal/measurement/id;->VH:Lcom/google/android/gms/internal/measurement/id;

    new-instance v8, Lcom/google/android/gms/internal/measurement/id;

    const-string v9, "BOOL"

    const/4 v10, 0x7

    sget-object v11, Lcom/google/android/gms/internal/measurement/nd;->v5:Lcom/google/android/gms/internal/measurement/nd;

    const/4 v12, 0x0

    invoke-direct {v8, v9, v10, v11, v12}, Lcom/google/android/gms/internal/measurement/id;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/nd;I)V

    sput-object v8, Lcom/google/android/gms/internal/measurement/id;->gn:Lcom/google/android/gms/internal/measurement/id;

    new-instance v9, Lcom/google/android/gms/internal/measurement/jd;

    const-string v10, "STRING"

    const/16 v11, 0x8

    sget-object v12, Lcom/google/android/gms/internal/measurement/nd;->Zo:Lcom/google/android/gms/internal/measurement/nd;

    const/4 v13, 0x2

    invoke-direct {v9, v10, v11, v12, v13}, Lcom/google/android/gms/internal/measurement/jd;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/nd;I)V

    sput-object v9, Lcom/google/android/gms/internal/measurement/id;->u7:Lcom/google/android/gms/internal/measurement/id;

    new-instance v10, Lcom/google/android/gms/internal/measurement/kd;

    const-string v11, "GROUP"

    const/16 v12, 0x9

    sget-object v13, Lcom/google/android/gms/internal/measurement/nd;->u7:Lcom/google/android/gms/internal/measurement/nd;

    const/4 v14, 0x3

    invoke-direct {v10, v11, v12, v13, v14}, Lcom/google/android/gms/internal/measurement/kd;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/nd;I)V

    sput-object v10, Lcom/google/android/gms/internal/measurement/id;->tp:Lcom/google/android/gms/internal/measurement/id;

    new-instance v11, Lcom/google/android/gms/internal/measurement/ld;

    const-string v12, "MESSAGE"

    const/16 v13, 0xa

    sget-object v14, Lcom/google/android/gms/internal/measurement/nd;->u7:Lcom/google/android/gms/internal/measurement/nd;

    const/4 v15, 0x2

    invoke-direct {v11, v12, v13, v14, v15}, Lcom/google/android/gms/internal/measurement/ld;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/nd;I)V

    sput-object v11, Lcom/google/android/gms/internal/measurement/id;->EQ:Lcom/google/android/gms/internal/measurement/id;

    new-instance v12, Lcom/google/android/gms/internal/measurement/md;

    const-string v13, "BYTES"

    const/16 v14, 0xb

    sget-object v15, Lcom/google/android/gms/internal/measurement/nd;->VH:Lcom/google/android/gms/internal/measurement/nd;

    const/16 v16, 0x2

    invoke-direct/range {v12 .. v16}, Lcom/google/android/gms/internal/measurement/md;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/nd;I)V

    sput-object v12, Lcom/google/android/gms/internal/measurement/id;->we:Lcom/google/android/gms/internal/measurement/id;

    new-instance v13, Lcom/google/android/gms/internal/measurement/id;

    const-string v14, "UINT32"

    const/16 v15, 0xc

    sget-object v16, Lcom/google/android/gms/internal/measurement/nd;->j6:Lcom/google/android/gms/internal/measurement/nd;

    const/16 v17, 0x0

    invoke-direct/range {v13 .. v17}, Lcom/google/android/gms/internal/measurement/id;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/nd;I)V

    sput-object v13, Lcom/google/android/gms/internal/measurement/id;->J0:Lcom/google/android/gms/internal/measurement/id;

    new-instance v14, Lcom/google/android/gms/internal/measurement/id;

    const-string v15, "ENUM"

    const/16 v16, 0xd

    sget-object v17, Lcom/google/android/gms/internal/measurement/nd;->gn:Lcom/google/android/gms/internal/measurement/nd;

    const/16 v18, 0x0

    invoke-direct/range {v14 .. v18}, Lcom/google/android/gms/internal/measurement/id;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/nd;I)V

    sput-object v14, Lcom/google/android/gms/internal/measurement/id;->J8:Lcom/google/android/gms/internal/measurement/id;

    new-instance v15, Lcom/google/android/gms/internal/measurement/id;

    const-string v16, "SFIXED32"

    const/16 v17, 0xe

    sget-object v18, Lcom/google/android/gms/internal/measurement/nd;->j6:Lcom/google/android/gms/internal/measurement/nd;

    const/16 v19, 0x5

    invoke-direct/range {v15 .. v19}, Lcom/google/android/gms/internal/measurement/id;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/nd;I)V

    sput-object v15, Lcom/google/android/gms/internal/measurement/id;->Ws:Lcom/google/android/gms/internal/measurement/id;

    new-instance v16, Lcom/google/android/gms/internal/measurement/id;

    const-string v17, "SFIXED64"

    const/16 v18, 0xf

    sget-object v19, Lcom/google/android/gms/internal/measurement/nd;->DW:Lcom/google/android/gms/internal/measurement/nd;

    const/16 v20, 0x1

    invoke-direct/range {v16 .. v20}, Lcom/google/android/gms/internal/measurement/id;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/nd;I)V

    sput-object v16, Lcom/google/android/gms/internal/measurement/id;->QX:Lcom/google/android/gms/internal/measurement/id;

    new-instance v17, Lcom/google/android/gms/internal/measurement/id;

    const-string v18, "SINT32"

    const/16 v19, 0x10

    sget-object v20, Lcom/google/android/gms/internal/measurement/nd;->j6:Lcom/google/android/gms/internal/measurement/nd;

    const/16 v21, 0x0

    invoke-direct/range {v17 .. v21}, Lcom/google/android/gms/internal/measurement/id;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/nd;I)V

    sput-object v17, Lcom/google/android/gms/internal/measurement/id;->XL:Lcom/google/android/gms/internal/measurement/id;

    new-instance v18, Lcom/google/android/gms/internal/measurement/id;

    const-string v19, "SINT64"

    const/16 v20, 0x11

    sget-object v21, Lcom/google/android/gms/internal/measurement/nd;->DW:Lcom/google/android/gms/internal/measurement/nd;

    const/16 v22, 0x0

    invoke-direct/range {v18 .. v22}, Lcom/google/android/gms/internal/measurement/id;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/nd;I)V

    sput-object v18, Lcom/google/android/gms/internal/measurement/id;->aM:Lcom/google/android/gms/internal/measurement/id;

    const/16 v19, 0x12

    move/from16 v0, v19

    new-array v0, v0, [Lcom/google/android/gms/internal/measurement/id;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v1, v19, v20

    const/4 v1, 0x1

    aput-object v2, v19, v1

    const/4 v1, 0x2

    aput-object v3, v19, v1

    const/4 v1, 0x3

    aput-object v4, v19, v1

    const/4 v1, 0x4

    aput-object v5, v19, v1

    const/4 v1, 0x5

    aput-object v6, v19, v1

    const/4 v1, 0x6

    aput-object v7, v19, v1

    const/4 v1, 0x7

    aput-object v8, v19, v1

    const/16 v1, 0x8

    aput-object v9, v19, v1

    const/16 v1, 0x9

    aput-object v10, v19, v1

    const/16 v1, 0xa

    aput-object v11, v19, v1

    const/16 v1, 0xb

    aput-object v12, v19, v1

    const/16 v1, 0xc

    aput-object v13, v19, v1

    const/16 v1, 0xd

    aput-object v14, v19, v1

    const/16 v1, 0xe

    aput-object v15, v19, v1

    const/16 v1, 0xf

    aput-object v16, v19, v1

    const/16 v1, 0x10

    aput-object v17, v19, v1

    const/16 v1, 0x11

    aput-object v18, v19, v1

    sput-object v19, Lcom/google/android/gms/internal/measurement/id;->j3:[Lcom/google/android/gms/internal/measurement/id;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/nd;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/measurement/nd;",
            "I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/id;->Mr:Lcom/google/android/gms/internal/measurement/nd;

    iput p4, p0, Lcom/google/android/gms/internal/measurement/id;->U2:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/nd;ILcom/google/android/gms/internal/measurement/hd;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/measurement/id;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/nd;I)V

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/measurement/id;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/id;->j3:[Lcom/google/android/gms/internal/measurement/id;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/measurement/id;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/measurement/id;

    return-object v0
.end method


# virtual methods
.method public final Hw()Lcom/google/android/gms/internal/measurement/nd;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/id;->Mr:Lcom/google/android/gms/internal/measurement/nd;

    return-object v0
.end method
