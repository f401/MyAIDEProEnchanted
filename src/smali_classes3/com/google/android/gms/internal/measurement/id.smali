.class public enum Lcom/google/android/gms/internal/measurement/id;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
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
    .registers 22

    new-instance v0, Lcom/google/android/gms/internal/measurement/id;

    sget-object v1, Lcom/google/android/gms/internal/measurement/nd;->Hw:Lcom/google/android/gms/internal/measurement/nd;

    const-string v2, "DOUBLE"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/google/android/gms/internal/measurement/id;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/nd;I)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/id;->j6:Lcom/google/android/gms/internal/measurement/id;

    new-instance v1, Lcom/google/android/gms/internal/measurement/id;

    sget-object v2, Lcom/google/android/gms/internal/measurement/nd;->FH:Lcom/google/android/gms/internal/measurement/nd;

    const-string v5, "FLOAT"

    const/4 v6, 0x5

    invoke-direct {v1, v5, v4, v2, v6}, Lcom/google/android/gms/internal/measurement/id;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/nd;I)V

    sput-object v1, Lcom/google/android/gms/internal/measurement/id;->DW:Lcom/google/android/gms/internal/measurement/id;

    new-instance v2, Lcom/google/android/gms/internal/measurement/id;

    sget-object v5, Lcom/google/android/gms/internal/measurement/nd;->DW:Lcom/google/android/gms/internal/measurement/nd;

    const-string v7, "INT64"

    const/4 v8, 0x2

    invoke-direct {v2, v7, v8, v5, v3}, Lcom/google/android/gms/internal/measurement/id;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/nd;I)V

    sput-object v2, Lcom/google/android/gms/internal/measurement/id;->FH:Lcom/google/android/gms/internal/measurement/id;

    new-instance v5, Lcom/google/android/gms/internal/measurement/id;

    sget-object v7, Lcom/google/android/gms/internal/measurement/nd;->DW:Lcom/google/android/gms/internal/measurement/nd;

    const-string v9, "UINT64"

    const/4 v10, 0x3

    invoke-direct {v5, v9, v10, v7, v3}, Lcom/google/android/gms/internal/measurement/id;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/nd;I)V

    sput-object v5, Lcom/google/android/gms/internal/measurement/id;->Hw:Lcom/google/android/gms/internal/measurement/id;

    new-instance v7, Lcom/google/android/gms/internal/measurement/id;

    sget-object v9, Lcom/google/android/gms/internal/measurement/nd;->j6:Lcom/google/android/gms/internal/measurement/nd;

    const-string v11, "INT32"

    const/4 v12, 0x4

    invoke-direct {v7, v11, v12, v9, v3}, Lcom/google/android/gms/internal/measurement/id;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/nd;I)V

    sput-object v7, Lcom/google/android/gms/internal/measurement/id;->v5:Lcom/google/android/gms/internal/measurement/id;

    new-instance v9, Lcom/google/android/gms/internal/measurement/id;

    const-string v11, "FIXED64"

    sget-object v13, Lcom/google/android/gms/internal/measurement/nd;->DW:Lcom/google/android/gms/internal/measurement/nd;

    invoke-direct {v9, v11, v6, v13, v4}, Lcom/google/android/gms/internal/measurement/id;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/nd;I)V

    sput-object v9, Lcom/google/android/gms/internal/measurement/id;->Zo:Lcom/google/android/gms/internal/measurement/id;

    new-instance v11, Lcom/google/android/gms/internal/measurement/id;

    sget-object v13, Lcom/google/android/gms/internal/measurement/nd;->j6:Lcom/google/android/gms/internal/measurement/nd;

    const-string v14, "FIXED32"

    const/4 v15, 0x6

    invoke-direct {v11, v14, v15, v13, v6}, Lcom/google/android/gms/internal/measurement/id;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/nd;I)V

    sput-object v11, Lcom/google/android/gms/internal/measurement/id;->VH:Lcom/google/android/gms/internal/measurement/id;

    new-instance v13, Lcom/google/android/gms/internal/measurement/id;

    sget-object v14, Lcom/google/android/gms/internal/measurement/nd;->v5:Lcom/google/android/gms/internal/measurement/nd;

    const-string v15, "BOOL"

    const/4 v12, 0x7

    invoke-direct {v13, v15, v12, v14, v3}, Lcom/google/android/gms/internal/measurement/id;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/nd;I)V

    sput-object v13, Lcom/google/android/gms/internal/measurement/id;->gn:Lcom/google/android/gms/internal/measurement/id;

    new-instance v14, Lcom/google/android/gms/internal/measurement/jd;

    sget-object v15, Lcom/google/android/gms/internal/measurement/nd;->Zo:Lcom/google/android/gms/internal/measurement/nd;

    const-string v12, "STRING"

    const/16 v4, 0x8

    invoke-direct {v14, v12, v4, v15, v8}, Lcom/google/android/gms/internal/measurement/jd;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/nd;I)V

    sput-object v14, Lcom/google/android/gms/internal/measurement/id;->u7:Lcom/google/android/gms/internal/measurement/id;

    new-instance v12, Lcom/google/android/gms/internal/measurement/kd;

    sget-object v15, Lcom/google/android/gms/internal/measurement/nd;->u7:Lcom/google/android/gms/internal/measurement/nd;

    const-string v4, "GROUP"

    const/16 v6, 0x9

    invoke-direct {v12, v4, v6, v15, v10}, Lcom/google/android/gms/internal/measurement/kd;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/nd;I)V

    sput-object v12, Lcom/google/android/gms/internal/measurement/id;->tp:Lcom/google/android/gms/internal/measurement/id;

    new-instance v4, Lcom/google/android/gms/internal/measurement/ld;

    sget-object v15, Lcom/google/android/gms/internal/measurement/nd;->u7:Lcom/google/android/gms/internal/measurement/nd;

    const-string v6, "MESSAGE"

    const/16 v10, 0xa

    invoke-direct {v4, v6, v10, v15, v8}, Lcom/google/android/gms/internal/measurement/ld;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/nd;I)V

    sput-object v4, Lcom/google/android/gms/internal/measurement/id;->EQ:Lcom/google/android/gms/internal/measurement/id;

    new-instance v6, Lcom/google/android/gms/internal/measurement/md;

    sget-object v15, Lcom/google/android/gms/internal/measurement/nd;->VH:Lcom/google/android/gms/internal/measurement/nd;

    const-string v10, "BYTES"

    const/16 v3, 0xb

    invoke-direct {v6, v10, v3, v15, v8}, Lcom/google/android/gms/internal/measurement/md;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/nd;I)V

    sput-object v6, Lcom/google/android/gms/internal/measurement/id;->we:Lcom/google/android/gms/internal/measurement/id;

    new-instance v10, Lcom/google/android/gms/internal/measurement/id;

    sget-object v15, Lcom/google/android/gms/internal/measurement/nd;->j6:Lcom/google/android/gms/internal/measurement/nd;

    const-string v3, "UINT32"

    const/16 v8, 0xc

    move-object/from16 v16, v6

    const/4 v6, 0x0

    invoke-direct {v10, v3, v8, v15, v6}, Lcom/google/android/gms/internal/measurement/id;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/nd;I)V

    sput-object v10, Lcom/google/android/gms/internal/measurement/id;->J0:Lcom/google/android/gms/internal/measurement/id;

    new-instance v3, Lcom/google/android/gms/internal/measurement/id;

    sget-object v15, Lcom/google/android/gms/internal/measurement/nd;->gn:Lcom/google/android/gms/internal/measurement/nd;

    const-string v8, "ENUM"

    move-object/from16 v17, v10

    const/16 v10, 0xd

    invoke-direct {v3, v8, v10, v15, v6}, Lcom/google/android/gms/internal/measurement/id;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/nd;I)V

    sput-object v3, Lcom/google/android/gms/internal/measurement/id;->J8:Lcom/google/android/gms/internal/measurement/id;

    new-instance v6, Lcom/google/android/gms/internal/measurement/id;

    sget-object v8, Lcom/google/android/gms/internal/measurement/nd;->j6:Lcom/google/android/gms/internal/measurement/nd;

    const-string v15, "SFIXED32"

    const/16 v10, 0xe

    move-object/from16 v18, v3

    const/4 v3, 0x5

    invoke-direct {v6, v15, v10, v8, v3}, Lcom/google/android/gms/internal/measurement/id;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/nd;I)V

    sput-object v6, Lcom/google/android/gms/internal/measurement/id;->Ws:Lcom/google/android/gms/internal/measurement/id;

    new-instance v3, Lcom/google/android/gms/internal/measurement/id;

    sget-object v8, Lcom/google/android/gms/internal/measurement/nd;->DW:Lcom/google/android/gms/internal/measurement/nd;

    const-string v15, "SFIXED64"

    const/16 v10, 0xf

    move-object/from16 v19, v6

    const/4 v6, 0x1

    invoke-direct {v3, v15, v10, v8, v6}, Lcom/google/android/gms/internal/measurement/id;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/nd;I)V

    sput-object v3, Lcom/google/android/gms/internal/measurement/id;->QX:Lcom/google/android/gms/internal/measurement/id;

    new-instance v6, Lcom/google/android/gms/internal/measurement/id;

    sget-object v8, Lcom/google/android/gms/internal/measurement/nd;->j6:Lcom/google/android/gms/internal/measurement/nd;

    const-string v15, "SINT32"

    const/16 v10, 0x10

    move-object/from16 v20, v3

    const/4 v3, 0x0

    invoke-direct {v6, v15, v10, v8, v3}, Lcom/google/android/gms/internal/measurement/id;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/nd;I)V

    sput-object v6, Lcom/google/android/gms/internal/measurement/id;->XL:Lcom/google/android/gms/internal/measurement/id;

    new-instance v8, Lcom/google/android/gms/internal/measurement/id;

    sget-object v15, Lcom/google/android/gms/internal/measurement/nd;->DW:Lcom/google/android/gms/internal/measurement/nd;

    const-string v10, "SINT64"

    move-object/from16 v21, v6

    const/16 v6, 0x11

    invoke-direct {v8, v10, v6, v15, v3}, Lcom/google/android/gms/internal/measurement/id;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/nd;I)V

    sput-object v8, Lcom/google/android/gms/internal/measurement/id;->aM:Lcom/google/android/gms/internal/measurement/id;

    const/16 v10, 0x12

    new-array v10, v10, [Lcom/google/android/gms/internal/measurement/id;

    aput-object v0, v10, v3

    const/4 v0, 0x1

    aput-object v1, v10, v0

    const/4 v0, 0x2

    aput-object v2, v10, v0

    const/4 v0, 0x3

    aput-object v5, v10, v0

    const/4 v0, 0x4

    aput-object v7, v10, v0

    const/4 v0, 0x5

    aput-object v9, v10, v0

    const/4 v0, 0x6

    aput-object v11, v10, v0

    const/4 v0, 0x7

    aput-object v13, v10, v0

    const/16 v0, 0x8

    aput-object v14, v10, v0

    const/16 v0, 0x9

    aput-object v12, v10, v0

    const/16 v0, 0xa

    aput-object v4, v10, v0

    const/16 v0, 0xb

    aput-object v16, v10, v0

    const/16 v0, 0xc

    aput-object v17, v10, v0

    const/16 v0, 0xd

    aput-object v18, v10, v0

    const/16 v0, 0xe

    aput-object v19, v10, v0

    const/16 v0, 0xf

    aput-object v20, v10, v0

    const/16 v0, 0x10

    aput-object v21, v10, v0

    aput-object v8, v10, v6

    sput-object v10, Lcom/google/android/gms/internal/measurement/id;->j3:[Lcom/google/android/gms/internal/measurement/id;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/nd;I)V
    .registers 5
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
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/measurement/id;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/nd;I)V

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/measurement/id;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/id;->j3:[Lcom/google/android/gms/internal/measurement/id;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/measurement/id;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/measurement/id;

    return-object v0
.end method


# virtual methods
.method public final Hw()Lcom/google/android/gms/internal/measurement/nd;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/id;->Mr:Lcom/google/android/gms/internal/measurement/nd;

    return-object v0
.end method
