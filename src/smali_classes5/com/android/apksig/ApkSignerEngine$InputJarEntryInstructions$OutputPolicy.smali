.class public final enum Lcom/android/apksig/ApkSignerEngine$InputJarEntryInstructions$OutputPolicy;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/apksig/ApkSignerEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OutputPolicy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/apksig/ApkSignerEngine$InputJarEntryInstructions$OutputPolicy;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Lcom/android/apksig/ApkSignerEngine$InputJarEntryInstructions$OutputPolicy;

.field public static final enum OUTPUT:Lcom/android/apksig/ApkSignerEngine$InputJarEntryInstructions$OutputPolicy;

.field public static final enum OUTPUT_BY_ENGINE:Lcom/android/apksig/ApkSignerEngine$InputJarEntryInstructions$OutputPolicy;

.field public static final enum SKIP:Lcom/android/apksig/ApkSignerEngine$InputJarEntryInstructions$OutputPolicy;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/android/apksig/ApkSignerEngine$InputJarEntryInstructions$OutputPolicy;

    const-string v1, "SKIP"

    invoke-direct {v0, v1, v4}, Lcom/android/apksig/ApkSignerEngine$InputJarEntryInstructions$OutputPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/apksig/ApkSignerEngine$InputJarEntryInstructions$OutputPolicy;->SKIP:Lcom/android/apksig/ApkSignerEngine$InputJarEntryInstructions$OutputPolicy;

    new-instance v1, Lcom/android/apksig/ApkSignerEngine$InputJarEntryInstructions$OutputPolicy;

    const-string v2, "OUTPUT"

    invoke-direct {v1, v2, v5}, Lcom/android/apksig/ApkSignerEngine$InputJarEntryInstructions$OutputPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/apksig/ApkSignerEngine$InputJarEntryInstructions$OutputPolicy;->OUTPUT:Lcom/android/apksig/ApkSignerEngine$InputJarEntryInstructions$OutputPolicy;

    new-instance v2, Lcom/android/apksig/ApkSignerEngine$InputJarEntryInstructions$OutputPolicy;

    const-string v3, "OUTPUT_BY_ENGINE"

    invoke-direct {v2, v3, v6}, Lcom/android/apksig/ApkSignerEngine$InputJarEntryInstructions$OutputPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/android/apksig/ApkSignerEngine$InputJarEntryInstructions$OutputPolicy;->OUTPUT_BY_ENGINE:Lcom/android/apksig/ApkSignerEngine$InputJarEntryInstructions$OutputPolicy;

    const/4 v3, 0x3

    new-array v3, v3, [Lcom/android/apksig/ApkSignerEngine$InputJarEntryInstructions$OutputPolicy;

    aput-object v0, v3, v4

    aput-object v1, v3, v5

    aput-object v2, v3, v6

    sput-object v3, Lcom/android/apksig/ApkSignerEngine$InputJarEntryInstructions$OutputPolicy;->$VALUES:[Lcom/android/apksig/ApkSignerEngine$InputJarEntryInstructions$OutputPolicy;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/apksig/ApkSignerEngine$InputJarEntryInstructions$OutputPolicy;
    .registers 2

    const-class v0, Lcom/android/apksig/ApkSignerEngine$InputJarEntryInstructions$OutputPolicy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/apksig/ApkSignerEngine$InputJarEntryInstructions$OutputPolicy;

    return-object v0
.end method

.method public static values()[Lcom/android/apksig/ApkSignerEngine$InputJarEntryInstructions$OutputPolicy;
    .registers 1

    sget-object v0, Lcom/android/apksig/ApkSignerEngine$InputJarEntryInstructions$OutputPolicy;->$VALUES:[Lcom/android/apksig/ApkSignerEngine$InputJarEntryInstructions$OutputPolicy;

    invoke-virtual {v0}, [Lcom/android/apksig/ApkSignerEngine$InputJarEntryInstructions$OutputPolicy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/apksig/ApkSignerEngine$InputJarEntryInstructions$OutputPolicy;

    return-object v0
.end method
