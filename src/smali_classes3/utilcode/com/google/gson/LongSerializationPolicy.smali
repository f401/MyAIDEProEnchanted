.class public abstract enum Lutilcode/com/google/gson/LongSerializationPolicy;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lutilcode/com/google/gson/LongSerializationPolicy;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Lutilcode/com/google/gson/LongSerializationPolicy;

.field public static final enum DEFAULT:Lutilcode/com/google/gson/LongSerializationPolicy;

.field public static final enum STRING:Lutilcode/com/google/gson/LongSerializationPolicy;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lutilcode/com/google/gson/LongSerializationPolicy$1;

    const-string v1, "DEFAULT"

    invoke-direct {v0, v1, v3}, Lutilcode/com/google/gson/LongSerializationPolicy$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lutilcode/com/google/gson/LongSerializationPolicy;->DEFAULT:Lutilcode/com/google/gson/LongSerializationPolicy;

    new-instance v0, Lutilcode/com/google/gson/LongSerializationPolicy$2;

    const-string v1, "STRING"

    invoke-direct {v0, v1, v4}, Lutilcode/com/google/gson/LongSerializationPolicy$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lutilcode/com/google/gson/LongSerializationPolicy;->STRING:Lutilcode/com/google/gson/LongSerializationPolicy;

    const/4 v1, 0x2

    new-array v1, v1, [Lutilcode/com/google/gson/LongSerializationPolicy;

    sget-object v2, Lutilcode/com/google/gson/LongSerializationPolicy;->DEFAULT:Lutilcode/com/google/gson/LongSerializationPolicy;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lutilcode/com/google/gson/LongSerializationPolicy;->$VALUES:[Lutilcode/com/google/gson/LongSerializationPolicy;

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

.method synthetic constructor <init>(Ljava/lang/String;ILutilcode/com/google/gson/LongSerializationPolicy$1;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lutilcode/com/google/gson/LongSerializationPolicy;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lutilcode/com/google/gson/LongSerializationPolicy;
    .registers 2

    const-class v0, Lutilcode/com/google/gson/LongSerializationPolicy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lutilcode/com/google/gson/LongSerializationPolicy;

    return-object v0
.end method

.method public static values()[Lutilcode/com/google/gson/LongSerializationPolicy;
    .registers 1

    sget-object v0, Lutilcode/com/google/gson/LongSerializationPolicy;->$VALUES:[Lutilcode/com/google/gson/LongSerializationPolicy;

    invoke-virtual {v0}, [Lutilcode/com/google/gson/LongSerializationPolicy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lutilcode/com/google/gson/LongSerializationPolicy;

    return-object v0
.end method


# virtual methods
.method public abstract serialize(Ljava/lang/Long;)Lutilcode/com/google/gson/JsonElement;
.end method
