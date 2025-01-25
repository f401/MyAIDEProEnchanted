.class public final enum Lcom/android/apksig/internal/asn1/Asn1Tagging;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/apksig/internal/asn1/Asn1Tagging;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Lcom/android/apksig/internal/asn1/Asn1Tagging;

.field public static final enum EXPLICIT:Lcom/android/apksig/internal/asn1/Asn1Tagging;

.field public static final enum IMPLICIT:Lcom/android/apksig/internal/asn1/Asn1Tagging;

.field public static final enum NORMAL:Lcom/android/apksig/internal/asn1/Asn1Tagging;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/android/apksig/internal/asn1/Asn1Tagging;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v4}, Lcom/android/apksig/internal/asn1/Asn1Tagging;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/apksig/internal/asn1/Asn1Tagging;->NORMAL:Lcom/android/apksig/internal/asn1/Asn1Tagging;

    new-instance v1, Lcom/android/apksig/internal/asn1/Asn1Tagging;

    const-string v2, "EXPLICIT"

    invoke-direct {v1, v2, v5}, Lcom/android/apksig/internal/asn1/Asn1Tagging;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/apksig/internal/asn1/Asn1Tagging;->EXPLICIT:Lcom/android/apksig/internal/asn1/Asn1Tagging;

    new-instance v2, Lcom/android/apksig/internal/asn1/Asn1Tagging;

    const-string v3, "IMPLICIT"

    invoke-direct {v2, v3, v6}, Lcom/android/apksig/internal/asn1/Asn1Tagging;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/android/apksig/internal/asn1/Asn1Tagging;->IMPLICIT:Lcom/android/apksig/internal/asn1/Asn1Tagging;

    const/4 v3, 0x3

    new-array v3, v3, [Lcom/android/apksig/internal/asn1/Asn1Tagging;

    aput-object v0, v3, v4

    aput-object v1, v3, v5

    aput-object v2, v3, v6

    sput-object v3, Lcom/android/apksig/internal/asn1/Asn1Tagging;->$VALUES:[Lcom/android/apksig/internal/asn1/Asn1Tagging;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/apksig/internal/asn1/Asn1Tagging;
    .registers 2

    const-class v0, Lcom/android/apksig/internal/asn1/Asn1Tagging;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/apksig/internal/asn1/Asn1Tagging;

    return-object v0
.end method

.method public static values()[Lcom/android/apksig/internal/asn1/Asn1Tagging;
    .registers 1

    sget-object v0, Lcom/android/apksig/internal/asn1/Asn1Tagging;->$VALUES:[Lcom/android/apksig/internal/asn1/Asn1Tagging;

    invoke-virtual {v0}, [Lcom/android/apksig/internal/asn1/Asn1Tagging;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/apksig/internal/asn1/Asn1Tagging;

    return-object v0
.end method
