.class final enum Lutilcode/com/google/gson/LongSerializationPolicy$1;
.super Lutilcode/com/google/gson/LongSerializationPolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lutilcode/com/google/gson/LongSerializationPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lutilcode/com/google/gson/LongSerializationPolicy;-><init>(Ljava/lang/String;ILutilcode/com/google/gson/LongSerializationPolicy$1;)V

    return-void
.end method


# virtual methods
.method public serialize(Ljava/lang/Long;)Lutilcode/com/google/gson/JsonElement;
    .registers 3

    new-instance v0, Lutilcode/com/google/gson/JsonPrimitive;

    invoke-direct {v0, p1}, Lutilcode/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    return-object v0
.end method
