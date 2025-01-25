.class public final enum Lorg/apache/commons/lang3/arch/Processor$Arch;
.super Ljava/lang/Enum;
.source "Processor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/arch/Processor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Arch"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/apache/commons/lang3/arch/Processor$Arch;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Lorg/apache/commons/lang3/arch/Processor$Arch;

.field public static final enum BIT_32:Lorg/apache/commons/lang3/arch/Processor$Arch;

.field public static final enum BIT_64:Lorg/apache/commons/lang3/arch/Processor$Arch;

.field public static final enum UNKNOWN:Lorg/apache/commons/lang3/arch/Processor$Arch;


# instance fields
.field private final label:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 43
    new-instance v0, Lorg/apache/commons/lang3/arch/Processor$Arch;

    const-string v1, "BIT_32"

    const-string v2, "32-bit"

    invoke-direct {v0, v1, v5, v2}, Lorg/apache/commons/lang3/arch/Processor$Arch;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/commons/lang3/arch/Processor$Arch;->BIT_32:Lorg/apache/commons/lang3/arch/Processor$Arch;

    .line 48
    new-instance v1, Lorg/apache/commons/lang3/arch/Processor$Arch;

    const-string v2, "BIT_64"

    const-string v3, "64-bit"

    invoke-direct {v1, v2, v6, v3}, Lorg/apache/commons/lang3/arch/Processor$Arch;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lorg/apache/commons/lang3/arch/Processor$Arch;->BIT_64:Lorg/apache/commons/lang3/arch/Processor$Arch;

    .line 53
    new-instance v2, Lorg/apache/commons/lang3/arch/Processor$Arch;

    const-string v3, "UNKNOWN"

    const-string v4, "Unknown"

    invoke-direct {v2, v3, v7, v4}, Lorg/apache/commons/lang3/arch/Processor$Arch;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lorg/apache/commons/lang3/arch/Processor$Arch;->UNKNOWN:Lorg/apache/commons/lang3/arch/Processor$Arch;

    .line 38
    const/4 v3, 0x3

    new-array v3, v3, [Lorg/apache/commons/lang3/arch/Processor$Arch;

    aput-object v0, v3, v5

    aput-object v1, v3, v6

    aput-object v2, v3, v7

    sput-object v3, Lorg/apache/commons/lang3/arch/Processor$Arch;->$VALUES:[Lorg/apache/commons/lang3/arch/Processor$Arch;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 62
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 63
    iput-object p3, p0, Lorg/apache/commons/lang3/arch/Processor$Arch;->label:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/lang3/arch/Processor$Arch;
    .registers 2

    .line 38
    const-class v0, Lorg/apache/commons/lang3/arch/Processor$Arch;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/lang3/arch/Processor$Arch;

    return-object v0
.end method

.method public static values()[Lorg/apache/commons/lang3/arch/Processor$Arch;
    .registers 1

    .line 38
    sget-object v0, Lorg/apache/commons/lang3/arch/Processor$Arch;->$VALUES:[Lorg/apache/commons/lang3/arch/Processor$Arch;

    invoke-virtual {v0}, [Lorg/apache/commons/lang3/arch/Processor$Arch;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/lang3/arch/Processor$Arch;

    return-object v0
.end method


# virtual methods
.method public getLabel()Ljava/lang/String;
    .registers 2

    .line 72
    iget-object v0, p0, Lorg/apache/commons/lang3/arch/Processor$Arch;->label:Ljava/lang/String;

    return-object v0
.end method
