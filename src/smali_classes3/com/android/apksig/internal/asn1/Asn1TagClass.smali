.class public final enum Lcom/android/apksig/internal/asn1/Asn1TagClass;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/apksig/internal/asn1/Asn1TagClass;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Lcom/android/apksig/internal/asn1/Asn1TagClass;

.field public static final enum APPLICATION:Lcom/android/apksig/internal/asn1/Asn1TagClass;

.field public static final enum AUTOMATIC:Lcom/android/apksig/internal/asn1/Asn1TagClass;

.field public static final enum CONTEXT_SPECIFIC:Lcom/android/apksig/internal/asn1/Asn1TagClass;

.field public static final enum PRIVATE:Lcom/android/apksig/internal/asn1/Asn1TagClass;

.field public static final enum UNIVERSAL:Lcom/android/apksig/internal/asn1/Asn1TagClass;


# direct methods
.method static constructor <clinit>()V
    .registers 11

    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    new-instance v0, Lcom/android/apksig/internal/asn1/Asn1TagClass;

    const-string v1, "UNIVERSAL"

    invoke-direct {v0, v1, v6}, Lcom/android/apksig/internal/asn1/Asn1TagClass;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/apksig/internal/asn1/Asn1TagClass;->UNIVERSAL:Lcom/android/apksig/internal/asn1/Asn1TagClass;

    new-instance v1, Lcom/android/apksig/internal/asn1/Asn1TagClass;

    const-string v2, "APPLICATION"

    invoke-direct {v1, v2, v7}, Lcom/android/apksig/internal/asn1/Asn1TagClass;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/apksig/internal/asn1/Asn1TagClass;->APPLICATION:Lcom/android/apksig/internal/asn1/Asn1TagClass;

    new-instance v2, Lcom/android/apksig/internal/asn1/Asn1TagClass;

    const-string v3, "CONTEXT_SPECIFIC"

    invoke-direct {v2, v3, v8}, Lcom/android/apksig/internal/asn1/Asn1TagClass;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/android/apksig/internal/asn1/Asn1TagClass;->CONTEXT_SPECIFIC:Lcom/android/apksig/internal/asn1/Asn1TagClass;

    new-instance v3, Lcom/android/apksig/internal/asn1/Asn1TagClass;

    const-string v4, "PRIVATE"

    invoke-direct {v3, v4, v9}, Lcom/android/apksig/internal/asn1/Asn1TagClass;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/apksig/internal/asn1/Asn1TagClass;->PRIVATE:Lcom/android/apksig/internal/asn1/Asn1TagClass;

    new-instance v4, Lcom/android/apksig/internal/asn1/Asn1TagClass;

    const-string v5, "AUTOMATIC"

    invoke-direct {v4, v5, v10}, Lcom/android/apksig/internal/asn1/Asn1TagClass;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/android/apksig/internal/asn1/Asn1TagClass;->AUTOMATIC:Lcom/android/apksig/internal/asn1/Asn1TagClass;

    const/4 v5, 0x5

    new-array v5, v5, [Lcom/android/apksig/internal/asn1/Asn1TagClass;

    aput-object v0, v5, v6

    aput-object v1, v5, v7

    aput-object v2, v5, v8

    aput-object v3, v5, v9

    aput-object v4, v5, v10

    sput-object v5, Lcom/android/apksig/internal/asn1/Asn1TagClass;->$VALUES:[Lcom/android/apksig/internal/asn1/Asn1TagClass;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/apksig/internal/asn1/Asn1TagClass;
    .registers 2

    const-class v0, Lcom/android/apksig/internal/asn1/Asn1TagClass;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/apksig/internal/asn1/Asn1TagClass;

    return-object v0
.end method

.method public static values()[Lcom/android/apksig/internal/asn1/Asn1TagClass;
    .registers 1

    sget-object v0, Lcom/android/apksig/internal/asn1/Asn1TagClass;->$VALUES:[Lcom/android/apksig/internal/asn1/Asn1TagClass;

    invoke-virtual {v0}, [Lcom/android/apksig/internal/asn1/Asn1TagClass;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/apksig/internal/asn1/Asn1TagClass;

    return-object v0
.end method
