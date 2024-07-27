.class public final enum Lutilcode/com/google/gson/stream/JsonToken;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lutilcode/com/google/gson/stream/JsonToken;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Lutilcode/com/google/gson/stream/JsonToken;

.field public static final enum BEGIN_ARRAY:Lutilcode/com/google/gson/stream/JsonToken;

.field public static final enum BEGIN_OBJECT:Lutilcode/com/google/gson/stream/JsonToken;

.field public static final enum BOOLEAN:Lutilcode/com/google/gson/stream/JsonToken;

.field public static final enum END_ARRAY:Lutilcode/com/google/gson/stream/JsonToken;

.field public static final enum END_DOCUMENT:Lutilcode/com/google/gson/stream/JsonToken;

.field public static final enum END_OBJECT:Lutilcode/com/google/gson/stream/JsonToken;

.field public static final enum NAME:Lutilcode/com/google/gson/stream/JsonToken;

.field public static final enum NULL:Lutilcode/com/google/gson/stream/JsonToken;

.field public static final enum NUMBER:Lutilcode/com/google/gson/stream/JsonToken;

.field public static final enum STRING:Lutilcode/com/google/gson/stream/JsonToken;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lutilcode/com/google/gson/stream/JsonToken;

    const-string v1, "BEGIN_ARRAY"

    invoke-direct {v0, v1, v3}, Lutilcode/com/google/gson/stream/JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lutilcode/com/google/gson/stream/JsonToken;->BEGIN_ARRAY:Lutilcode/com/google/gson/stream/JsonToken;

    new-instance v0, Lutilcode/com/google/gson/stream/JsonToken;

    const-string v1, "END_ARRAY"

    invoke-direct {v0, v1, v4}, Lutilcode/com/google/gson/stream/JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lutilcode/com/google/gson/stream/JsonToken;->END_ARRAY:Lutilcode/com/google/gson/stream/JsonToken;

    new-instance v0, Lutilcode/com/google/gson/stream/JsonToken;

    const-string v1, "BEGIN_OBJECT"

    invoke-direct {v0, v1, v5}, Lutilcode/com/google/gson/stream/JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lutilcode/com/google/gson/stream/JsonToken;->BEGIN_OBJECT:Lutilcode/com/google/gson/stream/JsonToken;

    new-instance v0, Lutilcode/com/google/gson/stream/JsonToken;

    const-string v1, "END_OBJECT"

    invoke-direct {v0, v1, v6}, Lutilcode/com/google/gson/stream/JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lutilcode/com/google/gson/stream/JsonToken;->END_OBJECT:Lutilcode/com/google/gson/stream/JsonToken;

    new-instance v0, Lutilcode/com/google/gson/stream/JsonToken;

    const-string v1, "NAME"

    invoke-direct {v0, v1, v7}, Lutilcode/com/google/gson/stream/JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lutilcode/com/google/gson/stream/JsonToken;->NAME:Lutilcode/com/google/gson/stream/JsonToken;

    new-instance v0, Lutilcode/com/google/gson/stream/JsonToken;

    const-string v1, "STRING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lutilcode/com/google/gson/stream/JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lutilcode/com/google/gson/stream/JsonToken;->STRING:Lutilcode/com/google/gson/stream/JsonToken;

    new-instance v0, Lutilcode/com/google/gson/stream/JsonToken;

    const-string v1, "NUMBER"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lutilcode/com/google/gson/stream/JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lutilcode/com/google/gson/stream/JsonToken;->NUMBER:Lutilcode/com/google/gson/stream/JsonToken;

    new-instance v0, Lutilcode/com/google/gson/stream/JsonToken;

    const-string v1, "BOOLEAN"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lutilcode/com/google/gson/stream/JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lutilcode/com/google/gson/stream/JsonToken;->BOOLEAN:Lutilcode/com/google/gson/stream/JsonToken;

    new-instance v0, Lutilcode/com/google/gson/stream/JsonToken;

    const-string v1, "NULL"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lutilcode/com/google/gson/stream/JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lutilcode/com/google/gson/stream/JsonToken;->NULL:Lutilcode/com/google/gson/stream/JsonToken;

    new-instance v0, Lutilcode/com/google/gson/stream/JsonToken;

    const-string v1, "END_DOCUMENT"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lutilcode/com/google/gson/stream/JsonToken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lutilcode/com/google/gson/stream/JsonToken;->END_DOCUMENT:Lutilcode/com/google/gson/stream/JsonToken;

    const/16 v1, 0xa

    new-array v1, v1, [Lutilcode/com/google/gson/stream/JsonToken;

    sget-object v2, Lutilcode/com/google/gson/stream/JsonToken;->BEGIN_ARRAY:Lutilcode/com/google/gson/stream/JsonToken;

    aput-object v2, v1, v3

    sget-object v2, Lutilcode/com/google/gson/stream/JsonToken;->END_ARRAY:Lutilcode/com/google/gson/stream/JsonToken;

    aput-object v2, v1, v4

    sget-object v2, Lutilcode/com/google/gson/stream/JsonToken;->BEGIN_OBJECT:Lutilcode/com/google/gson/stream/JsonToken;

    aput-object v2, v1, v5

    sget-object v2, Lutilcode/com/google/gson/stream/JsonToken;->END_OBJECT:Lutilcode/com/google/gson/stream/JsonToken;

    aput-object v2, v1, v6

    sget-object v2, Lutilcode/com/google/gson/stream/JsonToken;->NAME:Lutilcode/com/google/gson/stream/JsonToken;

    aput-object v2, v1, v7

    const/4 v2, 0x5

    sget-object v3, Lutilcode/com/google/gson/stream/JsonToken;->STRING:Lutilcode/com/google/gson/stream/JsonToken;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    sget-object v3, Lutilcode/com/google/gson/stream/JsonToken;->NUMBER:Lutilcode/com/google/gson/stream/JsonToken;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    sget-object v3, Lutilcode/com/google/gson/stream/JsonToken;->BOOLEAN:Lutilcode/com/google/gson/stream/JsonToken;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    sget-object v3, Lutilcode/com/google/gson/stream/JsonToken;->NULL:Lutilcode/com/google/gson/stream/JsonToken;

    aput-object v3, v1, v2

    const/16 v2, 0x9

    aput-object v0, v1, v2

    sput-object v1, Lutilcode/com/google/gson/stream/JsonToken;->$VALUES:[Lutilcode/com/google/gson/stream/JsonToken;

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

.method public static valueOf(Ljava/lang/String;)Lutilcode/com/google/gson/stream/JsonToken;
    .registers 2

    const-class v0, Lutilcode/com/google/gson/stream/JsonToken;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lutilcode/com/google/gson/stream/JsonToken;

    return-object v0
.end method

.method public static values()[Lutilcode/com/google/gson/stream/JsonToken;
    .registers 1

    sget-object v0, Lutilcode/com/google/gson/stream/JsonToken;->$VALUES:[Lutilcode/com/google/gson/stream/JsonToken;

    invoke-virtual {v0}, [Lutilcode/com/google/gson/stream/JsonToken;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lutilcode/com/google/gson/stream/JsonToken;

    return-object v0
.end method
