.class abstract enum Lcom/google/common/hash/LittleEndianByteArray$JavaLittleEndianBytes;
.super Ljava/lang/Enum;
.source "LittleEndianByteArray.java"

# interfaces
.implements Lcom/google/common/hash/LittleEndianByteArray$LittleEndianBytes;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/hash/LittleEndianByteArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x440a
    name = "JavaLittleEndianBytes"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/common/hash/LittleEndianByteArray$JavaLittleEndianBytes;",
        ">;",
        "Lcom/google/common/hash/LittleEndianByteArray$LittleEndianBytes;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Lcom/google/common/hash/LittleEndianByteArray$JavaLittleEndianBytes;

.field public static final enum INSTANCE:Lcom/google/common/hash/LittleEndianByteArray$JavaLittleEndianBytes;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v2, 0x0

    .line 207
    new-instance v0, Lcom/google/common/hash/LittleEndianByteArray$JavaLittleEndianBytes$1;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lcom/google/common/hash/LittleEndianByteArray$JavaLittleEndianBytes$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/hash/LittleEndianByteArray$JavaLittleEndianBytes;->INSTANCE:Lcom/google/common/hash/LittleEndianByteArray$JavaLittleEndianBytes;

    .line 206
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/common/hash/LittleEndianByteArray$JavaLittleEndianBytes;

    aput-object v0, v1, v2

    sput-object v1, Lcom/google/common/hash/LittleEndianByteArray$JavaLittleEndianBytes;->$VALUES:[Lcom/google/common/hash/LittleEndianByteArray$JavaLittleEndianBytes;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 206
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/google/common/hash/LittleEndianByteArray$1;)V
    .registers 4

    .line 206
    invoke-direct {p0, p1, p2}, Lcom/google/common/hash/LittleEndianByteArray$JavaLittleEndianBytes;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/hash/LittleEndianByteArray$JavaLittleEndianBytes;
    .registers 2

    .line 206
    const-class v0, Lcom/google/common/hash/LittleEndianByteArray$JavaLittleEndianBytes;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/common/hash/LittleEndianByteArray$JavaLittleEndianBytes;

    return-object v0
.end method

.method public static values()[Lcom/google/common/hash/LittleEndianByteArray$JavaLittleEndianBytes;
    .registers 1

    .line 206
    sget-object v0, Lcom/google/common/hash/LittleEndianByteArray$JavaLittleEndianBytes;->$VALUES:[Lcom/google/common/hash/LittleEndianByteArray$JavaLittleEndianBytes;

    invoke-virtual {v0}, [Lcom/google/common/hash/LittleEndianByteArray$JavaLittleEndianBytes;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/hash/LittleEndianByteArray$JavaLittleEndianBytes;

    return-object v0
.end method
