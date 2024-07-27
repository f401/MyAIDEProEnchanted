.class public enum Lcom/tencent/mm/resourceproguard/InputParam$SignatureType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/mm/resourceproguard/InputParam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = "SignatureType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/tencent/mm/resourceproguard/InputParam$SignatureType;",
        ">;"
    }
.end annotation


# static fields
.field private static $VALUES:[Lcom/tencent/mm/resourceproguard/InputParam$SignatureType;

.field public static final SchemaV1:Lcom/tencent/mm/resourceproguard/InputParam$SignatureType;

.field public static final SchemaV2:Lcom/tencent/mm/resourceproguard/InputParam$SignatureType;


# direct methods
.method static final constructor <clinit>()V
    .registers 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/tencent/mm/resourceproguard/InputParam$SignatureType;

    const-string v1, "SchemaV1"

    invoke-direct {v0, v1, v2}, Lcom/tencent/mm/resourceproguard/InputParam$SignatureType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/mm/resourceproguard/InputParam$SignatureType;->SchemaV1:Lcom/tencent/mm/resourceproguard/InputParam$SignatureType;

    new-instance v0, Lcom/tencent/mm/resourceproguard/InputParam$SignatureType;

    const-string v1, "SchemaV2"

    invoke-direct {v0, v1, v3}, Lcom/tencent/mm/resourceproguard/InputParam$SignatureType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/mm/resourceproguard/InputParam$SignatureType;->SchemaV2:Lcom/tencent/mm/resourceproguard/InputParam$SignatureType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/tencent/mm/resourceproguard/InputParam$SignatureType;

    sget-object v1, Lcom/tencent/mm/resourceproguard/InputParam$SignatureType;->SchemaV1:Lcom/tencent/mm/resourceproguard/InputParam$SignatureType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/tencent/mm/resourceproguard/InputParam$SignatureType;->SchemaV2:Lcom/tencent/mm/resourceproguard/InputParam$SignatureType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/tencent/mm/resourceproguard/InputParam$SignatureType;->$VALUES:[Lcom/tencent/mm/resourceproguard/InputParam$SignatureType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/mm/resourceproguard/InputParam$SignatureType;
    .registers 5

    sget-object v1, Lcom/tencent/mm/resourceproguard/InputParam$SignatureType;->$VALUES:[Lcom/tencent/mm/resourceproguard/InputParam$SignatureType;

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-lt v0, v2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    aget-object v2, v1, v0

    invoke-virtual {v2}, Lcom/tencent/mm/resourceproguard/InputParam$SignatureType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static final values()[Lcom/tencent/mm/resourceproguard/InputParam$SignatureType;
    .registers 1

    sget-object v0, Lcom/tencent/mm/resourceproguard/InputParam$SignatureType;->$VALUES:[Lcom/tencent/mm/resourceproguard/InputParam$SignatureType;

    invoke-virtual {v0}, [Lcom/tencent/mm/resourceproguard/InputParam$SignatureType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/mm/resourceproguard/InputParam$SignatureType;

    return-object v0
.end method
