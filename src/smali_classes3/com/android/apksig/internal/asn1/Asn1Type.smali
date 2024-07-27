.class public final enum Lcom/android/apksig/internal/asn1/Asn1Type;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/apksig/internal/asn1/Asn1Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Lcom/android/apksig/internal/asn1/Asn1Type;

.field public static final enum ANY:Lcom/android/apksig/internal/asn1/Asn1Type;

.field public static final enum BIT_STRING:Lcom/android/apksig/internal/asn1/Asn1Type;

.field public static final enum BOOLEAN:Lcom/android/apksig/internal/asn1/Asn1Type;

.field public static final enum CHOICE:Lcom/android/apksig/internal/asn1/Asn1Type;

.field public static final enum GENERALIZED_TIME:Lcom/android/apksig/internal/asn1/Asn1Type;

.field public static final enum INTEGER:Lcom/android/apksig/internal/asn1/Asn1Type;

.field public static final enum OBJECT_IDENTIFIER:Lcom/android/apksig/internal/asn1/Asn1Type;

.field public static final enum OCTET_STRING:Lcom/android/apksig/internal/asn1/Asn1Type;

.field public static final enum SEQUENCE:Lcom/android/apksig/internal/asn1/Asn1Type;

.field public static final enum SEQUENCE_OF:Lcom/android/apksig/internal/asn1/Asn1Type;

.field public static final enum SET_OF:Lcom/android/apksig/internal/asn1/Asn1Type;

.field public static final enum UNENCODED_CONTAINER:Lcom/android/apksig/internal/asn1/Asn1Type;

.field public static final enum UTC_TIME:Lcom/android/apksig/internal/asn1/Asn1Type;


# direct methods
.method static constructor <clinit>()V
    .registers 15

    new-instance v0, Lcom/android/apksig/internal/asn1/Asn1Type;

    const-string v1, "ANY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/apksig/internal/asn1/Asn1Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/apksig/internal/asn1/Asn1Type;->ANY:Lcom/android/apksig/internal/asn1/Asn1Type;

    new-instance v1, Lcom/android/apksig/internal/asn1/Asn1Type;

    const-string v2, "CHOICE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/android/apksig/internal/asn1/Asn1Type;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/apksig/internal/asn1/Asn1Type;->CHOICE:Lcom/android/apksig/internal/asn1/Asn1Type;

    new-instance v2, Lcom/android/apksig/internal/asn1/Asn1Type;

    const-string v3, "INTEGER"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/android/apksig/internal/asn1/Asn1Type;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/android/apksig/internal/asn1/Asn1Type;->INTEGER:Lcom/android/apksig/internal/asn1/Asn1Type;

    new-instance v3, Lcom/android/apksig/internal/asn1/Asn1Type;

    const-string v4, "OBJECT_IDENTIFIER"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/android/apksig/internal/asn1/Asn1Type;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/apksig/internal/asn1/Asn1Type;->OBJECT_IDENTIFIER:Lcom/android/apksig/internal/asn1/Asn1Type;

    new-instance v4, Lcom/android/apksig/internal/asn1/Asn1Type;

    const-string v5, "OCTET_STRING"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/android/apksig/internal/asn1/Asn1Type;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/android/apksig/internal/asn1/Asn1Type;->OCTET_STRING:Lcom/android/apksig/internal/asn1/Asn1Type;

    new-instance v5, Lcom/android/apksig/internal/asn1/Asn1Type;

    const-string v6, "SEQUENCE"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/android/apksig/internal/asn1/Asn1Type;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/android/apksig/internal/asn1/Asn1Type;->SEQUENCE:Lcom/android/apksig/internal/asn1/Asn1Type;

    new-instance v6, Lcom/android/apksig/internal/asn1/Asn1Type;

    const-string v7, "SEQUENCE_OF"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lcom/android/apksig/internal/asn1/Asn1Type;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/android/apksig/internal/asn1/Asn1Type;->SEQUENCE_OF:Lcom/android/apksig/internal/asn1/Asn1Type;

    new-instance v7, Lcom/android/apksig/internal/asn1/Asn1Type;

    const-string v8, "SET_OF"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lcom/android/apksig/internal/asn1/Asn1Type;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/android/apksig/internal/asn1/Asn1Type;->SET_OF:Lcom/android/apksig/internal/asn1/Asn1Type;

    new-instance v8, Lcom/android/apksig/internal/asn1/Asn1Type;

    const-string v9, "BIT_STRING"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Lcom/android/apksig/internal/asn1/Asn1Type;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/android/apksig/internal/asn1/Asn1Type;->BIT_STRING:Lcom/android/apksig/internal/asn1/Asn1Type;

    new-instance v9, Lcom/android/apksig/internal/asn1/Asn1Type;

    const-string v10, "UTC_TIME"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11}, Lcom/android/apksig/internal/asn1/Asn1Type;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/android/apksig/internal/asn1/Asn1Type;->UTC_TIME:Lcom/android/apksig/internal/asn1/Asn1Type;

    new-instance v10, Lcom/android/apksig/internal/asn1/Asn1Type;

    const-string v11, "GENERALIZED_TIME"

    const/16 v12, 0xa

    invoke-direct {v10, v11, v12}, Lcom/android/apksig/internal/asn1/Asn1Type;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/android/apksig/internal/asn1/Asn1Type;->GENERALIZED_TIME:Lcom/android/apksig/internal/asn1/Asn1Type;

    new-instance v11, Lcom/android/apksig/internal/asn1/Asn1Type;

    const-string v12, "BOOLEAN"

    const/16 v13, 0xb

    invoke-direct {v11, v12, v13}, Lcom/android/apksig/internal/asn1/Asn1Type;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/android/apksig/internal/asn1/Asn1Type;->BOOLEAN:Lcom/android/apksig/internal/asn1/Asn1Type;

    new-instance v12, Lcom/android/apksig/internal/asn1/Asn1Type;

    const-string v13, "UNENCODED_CONTAINER"

    const/16 v14, 0xc

    invoke-direct {v12, v13, v14}, Lcom/android/apksig/internal/asn1/Asn1Type;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/android/apksig/internal/asn1/Asn1Type;->UNENCODED_CONTAINER:Lcom/android/apksig/internal/asn1/Asn1Type;

    const/16 v13, 0xd

    new-array v13, v13, [Lcom/android/apksig/internal/asn1/Asn1Type;

    const/4 v14, 0x0

    aput-object v0, v13, v14

    const/4 v0, 0x1

    aput-object v1, v13, v0

    const/4 v0, 0x2

    aput-object v2, v13, v0

    const/4 v0, 0x3

    aput-object v3, v13, v0

    const/4 v0, 0x4

    aput-object v4, v13, v0

    const/4 v0, 0x5

    aput-object v5, v13, v0

    const/4 v0, 0x6

    aput-object v6, v13, v0

    const/4 v0, 0x7

    aput-object v7, v13, v0

    const/16 v0, 0x8

    aput-object v8, v13, v0

    const/16 v0, 0x9

    aput-object v9, v13, v0

    const/16 v0, 0xa

    aput-object v10, v13, v0

    const/16 v0, 0xb

    aput-object v11, v13, v0

    const/16 v0, 0xc

    aput-object v12, v13, v0

    sput-object v13, Lcom/android/apksig/internal/asn1/Asn1Type;->$VALUES:[Lcom/android/apksig/internal/asn1/Asn1Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/apksig/internal/asn1/Asn1Type;
    .registers 2

    const-class v0, Lcom/android/apksig/internal/asn1/Asn1Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/apksig/internal/asn1/Asn1Type;

    return-object v0
.end method

.method public static values()[Lcom/android/apksig/internal/asn1/Asn1Type;
    .registers 1

    sget-object v0, Lcom/android/apksig/internal/asn1/Asn1Type;->$VALUES:[Lcom/android/apksig/internal/asn1/Asn1Type;

    invoke-virtual {v0}, [Lcom/android/apksig/internal/asn1/Asn1Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/apksig/internal/asn1/Asn1Type;

    return-object v0
.end method
