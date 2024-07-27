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
    .registers 9

    const/4 v8, 0x3

    const/4 v7, 0x5

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/google/android/gms/internal/measurement/id;

    const-string v1, "DOUBLE"

    sget-object v2, Lcom/google/android/gms/internal/measurement/nd;->Hw:Lcom/google/android/gms/internal/measurement/nd;

    invoke-direct {v0, v1, v4, v2, v5}, Lcom/google/android/gms/internal/measurement/id;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/nd;I)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/id;->j6:Lcom/google/android/gms/internal/measurement/id;

    new-instance v0, Lcom/google/android/gms/internal/measurement/id;

    const-string v1, "FLOAT"

    sget-object v2, Lcom/google/android/gms/internal/measurement/nd;->FH:Lcom/google/android/gms/internal/measurement/nd;

    invoke-direct {v0, v1, v5, v2, v7}, Lcom/google/android/gms/internal/measurement/id;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/nd;I)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/id;->DW:Lcom/google/android/gms/internal/measurement/id;

    new-instance v0, Lcom/google/android/gms/internal/measurement/id;

    const-string v1, "INT64"

    sget-object v2, Lcom/google/android/gms/internal/measurement/nd;->DW:Lcom/google/android/gms/internal/measurement/nd;

    invoke-direct {v0, v1, v6, v2, v4}, Lcom/google/android/gms/internal/measurement/id;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/nd;I)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/id;->FH:Lcom/google/android/gms/internal/measurement/id;

    new-instance v0, Lcom/google/android/gms/internal/measurement/id;

    const-string v1, "UINT64"

    sget-object v2, Lcom/google/android/gms/internal/measurement/nd;->DW:Lcom/google/android/gms/internal/measurement/nd;

    invoke-direct {v0, v1, v8, v2, v4}, Lcom/google/android/gms/internal/measurement/id;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/nd;I)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/id;->Hw:Lcom/google/android/gms/internal/measurement/id;

    new-instance v0, Lcom/google/android/gms/internal/measurement/id;

    const-string v1, "INT32"

    const/4 v2, 0x4

    sget-object v3, Lcom/google/android/gms/internal/measurement/nd;->j6:Lcom/google/android/gms/internal/measurement/nd;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/measurement/id;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/nd;I)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/id;->v5:Lcom/google/android/gms/internal/measurement/id;

    new-instance v0, Lcom/google/android/gms/internal/measurement/id;

    const-string v1, "FIXED64"

    sget-object v2, Lcom/google/android/gms/internal/measurement/nd;->DW:Lcom/google/android/gms/internal/measurement/nd;

    invoke-direct {v0, v1, v7, v2, v5}, Lcom/google/android/gms/internal/measurement/id;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/nd;I)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/id;->Zo:Lcom/google/android/gms/internal/measurement/id;

    new-instance v0, Lcom/google/android/gms/internal/measurement/id;

    const-string v1, "FIXED32"

    const/4 v2, 0x6

    sget-object v3, Lcom/google/android/gms/internal/measurement/nd;->j6:Lcom/google/android/gms/internal/measurement/nd;

    invoke-direct {v0, v1, v2, v3, v7}, Lcom/google/android/gms/internal/measurement/id;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/nd;I)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/id;->VH:Lcom/google/android/gms/internal/measurement/id;

    new-instance v0, Lcom/google/android/gms/internal/measurement/id;

    const-string v1, "BOOL"

    const/4 v2, 0x7

    sget-object v3, Lcom/google/android/gms/internal/measurement/nd;->v5:Lcom/google/android/gms/internal/measurement/nd;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/measurement/id;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/nd;I)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/id;->gn:Lcom/google/android/gms/internal/measurement/id;

    new-instance v0, Lcom/google/android/gms/internal/measurement/jd;

    const-string v1, "STRING"

    const/16 v2, 0x8

    sget-object v3, Lcom/google/android/gms/internal/measurement/nd;->Zo:Lcom/google/android/gms/internal/measurement/nd;

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/google/android/gms/internal/measurement/jd;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/nd;I)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/id;->u7:Lcom/google/android/gms/internal/measurement/id;

    new-instance v0, Lcom/google/android/gms/internal/measurement/kd;

    const-string v1, "GROUP"

    const/16 v2, 0x9

    sget-object v3, Lcom/google/android/gms/internal/measurement/nd;->u7:Lcom/google/android/gms/internal/measurement/nd;

    invoke-direct {v0, v1, v2, v3, v8}, Lcom/google/android/gms/internal/measurement/kd;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/nd;I)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/id;->tp:Lcom/google/android/gms/internal/measurement/id;

    new-instance v0, Lcom/google/android/gms/internal/measurement/ld;

    const-string v1, "MESSAGE"

    const/16 v2, 0xa

    sget-object v3, Lcom/google/android/gms/internal/measurement/nd;->u7:Lcom/google/android/gms/internal/measurement/nd;

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/google/android/gms/internal/measurement/ld;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/nd;I)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/id;->EQ:Lcom/google/android/gms/internal/measurement/id;

    new-instance v0, Lcom/google/android/gms/internal/measurement/md;

    const-string v1, "BYTES"

    const/16 v2, 0xb

    sget-object v3, Lcom/google/android/gms/internal/measurement/nd;->VH:Lcom/google/android/gms/internal/measurement/nd;

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/google/android/gms/internal/measurement/md;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/nd;I)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/id;->we:Lcom/google/android/gms/internal/measurement/id;

    new-instance v0, Lcom/google/android/gms/internal/measurement/id;

    const-string v1, "UINT32"

    const/16 v2, 0xc

    sget-object v3, Lcom/google/android/gms/internal/measurement/nd;->j6:Lcom/google/android/gms/internal/measurement/nd;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/measurement/id;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/nd;I)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/id;->J0:Lcom/google/android/gms/internal/measurement/id;

    new-instance v0, Lcom/google/android/gms/internal/measurement/id;

    const-string v1, "ENUM"

    const/16 v2, 0xd

    sget-object v3, Lcom/google/android/gms/internal/measurement/nd;->gn:Lcom/google/android/gms/internal/measurement/nd;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/measurement/id;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/nd;I)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/id;->J8:Lcom/google/android/gms/internal/measurement/id;

    new-instance v0, Lcom/google/android/gms/internal/measurement/id;

    const-string v1, "SFIXED32"

    const/16 v2, 0xe

    sget-object v3, Lcom/google/android/gms/internal/measurement/nd;->j6:Lcom/google/android/gms/internal/measurement/nd;

    invoke-direct {v0, v1, v2, v3, v7}, Lcom/google/android/gms/internal/measurement/id;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/nd;I)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/id;->Ws:Lcom/google/android/gms/internal/measurement/id;

    new-instance v0, Lcom/google/android/gms/internal/measurement/id;

    const-string v1, "SFIXED64"

    const/16 v2, 0xf

    sget-object v3, Lcom/google/android/gms/internal/measurement/nd;->DW:Lcom/google/android/gms/internal/measurement/nd;

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/google/android/gms/internal/measurement/id;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/nd;I)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/id;->QX:Lcom/google/android/gms/internal/measurement/id;

    new-instance v0, Lcom/google/android/gms/internal/measurement/id;

    const-string v1, "SINT32"

    const/16 v2, 0x10

    sget-object v3, Lcom/google/android/gms/internal/measurement/nd;->j6:Lcom/google/android/gms/internal/measurement/nd;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/measurement/id;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/nd;I)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/id;->XL:Lcom/google/android/gms/internal/measurement/id;

    new-instance v0, Lcom/google/android/gms/internal/measurement/id;

    const-string v1, "SINT64"

    const/16 v2, 0x11

    sget-object v3, Lcom/google/android/gms/internal/measurement/nd;->DW:Lcom/google/android/gms/internal/measurement/nd;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/measurement/id;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/measurement/nd;I)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/id;->aM:Lcom/google/android/gms/internal/measurement/id;

    const/16 v0, 0x12

    new-array v0, v0, [Lcom/google/android/gms/internal/measurement/id;

    sget-object v1, Lcom/google/android/gms/internal/measurement/id;->j6:Lcom/google/android/gms/internal/measurement/id;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/gms/internal/measurement/id;->DW:Lcom/google/android/gms/internal/measurement/id;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/gms/internal/measurement/id;->FH:Lcom/google/android/gms/internal/measurement/id;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/gms/internal/measurement/id;->Hw:Lcom/google/android/gms/internal/measurement/id;

    aput-object v1, v0, v8

    const/4 v1, 0x4

    sget-object v2, Lcom/google/android/gms/internal/measurement/id;->v5:Lcom/google/android/gms/internal/measurement/id;

    aput-object v2, v0, v1

    sget-object v1, Lcom/google/android/gms/internal/measurement/id;->Zo:Lcom/google/android/gms/internal/measurement/id;

    aput-object v1, v0, v7

    const/4 v1, 0x6

    sget-object v2, Lcom/google/android/gms/internal/measurement/id;->VH:Lcom/google/android/gms/internal/measurement/id;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/android/gms/internal/measurement/id;->gn:Lcom/google/android/gms/internal/measurement/id;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/android/gms/internal/measurement/id;->u7:Lcom/google/android/gms/internal/measurement/id;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/google/android/gms/internal/measurement/id;->tp:Lcom/google/android/gms/internal/measurement/id;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/google/android/gms/internal/measurement/id;->EQ:Lcom/google/android/gms/internal/measurement/id;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/google/android/gms/internal/measurement/id;->we:Lcom/google/android/gms/internal/measurement/id;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/google/android/gms/internal/measurement/id;->J0:Lcom/google/android/gms/internal/measurement/id;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/google/android/gms/internal/measurement/id;->J8:Lcom/google/android/gms/internal/measurement/id;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/google/android/gms/internal/measurement/id;->Ws:Lcom/google/android/gms/internal/measurement/id;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/google/android/gms/internal/measurement/id;->QX:Lcom/google/android/gms/internal/measurement/id;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/google/android/gms/internal/measurement/id;->XL:Lcom/google/android/gms/internal/measurement/id;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/google/android/gms/internal/measurement/id;->aM:Lcom/google/android/gms/internal/measurement/id;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/internal/measurement/id;->j3:[Lcom/google/android/gms/internal/measurement/id;

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
