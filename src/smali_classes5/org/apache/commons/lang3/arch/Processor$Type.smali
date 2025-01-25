.class public final enum Lorg/apache/commons/lang3/arch/Processor$Type;
.super Ljava/lang/Enum;
.source "Processor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/arch/Processor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/apache/commons/lang3/arch/Processor$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Lorg/apache/commons/lang3/arch/Processor$Type;

.field public static final enum IA_64:Lorg/apache/commons/lang3/arch/Processor$Type;

.field public static final enum PPC:Lorg/apache/commons/lang3/arch/Processor$Type;

.field public static final enum UNKNOWN:Lorg/apache/commons/lang3/arch/Processor$Type;

.field public static final enum X86:Lorg/apache/commons/lang3/arch/Processor$Type;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 91
    new-instance v0, Lorg/apache/commons/lang3/arch/Processor$Type;

    const-string v1, "X86"

    invoke-direct {v0, v1, v5}, Lorg/apache/commons/lang3/arch/Processor$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/lang3/arch/Processor$Type;->X86:Lorg/apache/commons/lang3/arch/Processor$Type;

    .line 96
    new-instance v1, Lorg/apache/commons/lang3/arch/Processor$Type;

    const-string v2, "IA_64"

    invoke-direct {v1, v2, v6}, Lorg/apache/commons/lang3/arch/Processor$Type;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/commons/lang3/arch/Processor$Type;->IA_64:Lorg/apache/commons/lang3/arch/Processor$Type;

    .line 101
    new-instance v2, Lorg/apache/commons/lang3/arch/Processor$Type;

    const-string v3, "PPC"

    invoke-direct {v2, v3, v7}, Lorg/apache/commons/lang3/arch/Processor$Type;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/apache/commons/lang3/arch/Processor$Type;->PPC:Lorg/apache/commons/lang3/arch/Processor$Type;

    .line 106
    new-instance v3, Lorg/apache/commons/lang3/arch/Processor$Type;

    const-string v4, "UNKNOWN"

    invoke-direct {v3, v4, v8}, Lorg/apache/commons/lang3/arch/Processor$Type;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/apache/commons/lang3/arch/Processor$Type;->UNKNOWN:Lorg/apache/commons/lang3/arch/Processor$Type;

    .line 86
    const/4 v4, 0x4

    new-array v4, v4, [Lorg/apache/commons/lang3/arch/Processor$Type;

    aput-object v0, v4, v5

    aput-object v1, v4, v6

    aput-object v2, v4, v7

    aput-object v3, v4, v8

    sput-object v4, Lorg/apache/commons/lang3/arch/Processor$Type;->$VALUES:[Lorg/apache/commons/lang3/arch/Processor$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 86
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/lang3/arch/Processor$Type;
    .registers 2

    .line 86
    const-class v0, Lorg/apache/commons/lang3/arch/Processor$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/lang3/arch/Processor$Type;

    return-object v0
.end method

.method public static values()[Lorg/apache/commons/lang3/arch/Processor$Type;
    .registers 1

    .line 86
    sget-object v0, Lorg/apache/commons/lang3/arch/Processor$Type;->$VALUES:[Lorg/apache/commons/lang3/arch/Processor$Type;

    invoke-virtual {v0}, [Lorg/apache/commons/lang3/arch/Processor$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/lang3/arch/Processor$Type;

    return-object v0
.end method
