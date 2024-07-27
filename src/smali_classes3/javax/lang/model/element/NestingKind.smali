.class public final enum Ljavax/lang/model/element/NestingKind;
.super Ljava/lang/Enum;
.source "NestingKind.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljavax/lang/model/element/NestingKind;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Ljavax/lang/model/element/NestingKind;

.field public static final enum ANONYMOUS:Ljavax/lang/model/element/NestingKind;

.field public static final enum LOCAL:Ljavax/lang/model/element/NestingKind;

.field public static final enum MEMBER:Ljavax/lang/model/element/NestingKind;

.field public static final enum TOP_LEVEL:Ljavax/lang/model/element/NestingKind;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 85
    new-instance v0, Ljavax/lang/model/element/NestingKind;

    const-string v1, "TOP_LEVEL"

    invoke-direct {v0, v1, v3}, Ljavax/lang/model/element/NestingKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/lang/model/element/NestingKind;->TOP_LEVEL:Ljavax/lang/model/element/NestingKind;

    .line 86
    new-instance v0, Ljavax/lang/model/element/NestingKind;

    const-string v1, "MEMBER"

    invoke-direct {v0, v1, v4}, Ljavax/lang/model/element/NestingKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/lang/model/element/NestingKind;->MEMBER:Ljavax/lang/model/element/NestingKind;

    .line 87
    new-instance v0, Ljavax/lang/model/element/NestingKind;

    const-string v1, "LOCAL"

    invoke-direct {v0, v1, v5}, Ljavax/lang/model/element/NestingKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/lang/model/element/NestingKind;->LOCAL:Ljavax/lang/model/element/NestingKind;

    .line 88
    new-instance v0, Ljavax/lang/model/element/NestingKind;

    const-string v1, "ANONYMOUS"

    invoke-direct {v0, v1, v6}, Ljavax/lang/model/element/NestingKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/lang/model/element/NestingKind;->ANONYMOUS:Ljavax/lang/model/element/NestingKind;

    .line 84
    const/4 v1, 0x4

    new-array v1, v1, [Ljavax/lang/model/element/NestingKind;

    sget-object v2, Ljavax/lang/model/element/NestingKind;->TOP_LEVEL:Ljavax/lang/model/element/NestingKind;

    aput-object v2, v1, v3

    sget-object v2, Ljavax/lang/model/element/NestingKind;->MEMBER:Ljavax/lang/model/element/NestingKind;

    aput-object v2, v1, v4

    sget-object v2, Ljavax/lang/model/element/NestingKind;->LOCAL:Ljavax/lang/model/element/NestingKind;

    aput-object v2, v1, v5

    aput-object v0, v1, v6

    sput-object v1, Ljavax/lang/model/element/NestingKind;->$VALUES:[Ljavax/lang/model/element/NestingKind;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 84
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljavax/lang/model/element/NestingKind;
    .registers 2

    .line 84
    const-class v0, Ljavax/lang/model/element/NestingKind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/element/NestingKind;

    return-object v0
.end method

.method public static values()[Ljavax/lang/model/element/NestingKind;
    .registers 1

    .line 84
    sget-object v0, Ljavax/lang/model/element/NestingKind;->$VALUES:[Ljavax/lang/model/element/NestingKind;

    invoke-virtual {v0}, [Ljavax/lang/model/element/NestingKind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavax/lang/model/element/NestingKind;

    return-object v0
.end method


# virtual methods
.method public isNested()Z
    .registers 2

    .line 97
    sget-object v0, Ljavax/lang/model/element/NestingKind;->TOP_LEVEL:Ljavax/lang/model/element/NestingKind;

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
