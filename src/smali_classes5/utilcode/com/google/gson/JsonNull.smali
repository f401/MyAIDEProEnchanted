.class public final Lutilcode/com/google/gson/JsonNull;
.super Lutilcode/com/google/gson/JsonElement;


# static fields
.field public static final INSTANCE:Lutilcode/com/google/gson/JsonNull;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lutilcode/com/google/gson/JsonNull;

    invoke-direct {v0}, Lutilcode/com/google/gson/JsonNull;-><init>()V

    sput-object v0, Lutilcode/com/google/gson/JsonNull;->INSTANCE:Lutilcode/com/google/gson/JsonNull;

    return-void
.end method

.method public constructor <init>()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Lutilcode/com/google/gson/JsonElement;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic deepCopy()Lutilcode/com/google/gson/JsonElement;
    .registers 2

    invoke-virtual {p0}, Lutilcode/com/google/gson/JsonNull;->deepCopy()Lutilcode/com/google/gson/JsonNull;

    move-result-object v0

    return-object v0
.end method

.method public deepCopy()Lutilcode/com/google/gson/JsonNull;
    .registers 2

    sget-object v0, Lutilcode/com/google/gson/JsonNull;->INSTANCE:Lutilcode/com/google/gson/JsonNull;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    if-eq p0, p1, :cond_6

    instance-of v0, p1, Lutilcode/com/google/gson/JsonNull;

    if-eqz v0, :cond_8

    :cond_6
    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hashCode()I
    .registers 2

    const-class v0, Lutilcode/com/google/gson/JsonNull;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
