.class synthetic Lutilcode/com/google/gson/internal/bind/ObjectTypeAdapter$2;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lutilcode/com/google/gson/internal/bind/ObjectTypeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final $SwitchMap$com$google$gson$stream$JsonToken:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lutilcode/com/google/gson/stream/JsonToken;->values()[Lutilcode/com/google/gson/stream/JsonToken;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lutilcode/com/google/gson/internal/bind/ObjectTypeAdapter$2;->$SwitchMap$com$google$gson$stream$JsonToken:[I

    :try_start_9
    sget-object v1, Lutilcode/com/google/gson/stream/JsonToken;->BEGIN_ARRAY:Lutilcode/com/google/gson/stream/JsonToken;

    invoke-virtual {v1}, Lutilcode/com/google/gson/stream/JsonToken;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_54

    :goto_12
    :try_start_12
    sget-object v0, Lutilcode/com/google/gson/internal/bind/ObjectTypeAdapter$2;->$SwitchMap$com$google$gson$stream$JsonToken:[I

    sget-object v1, Lutilcode/com/google/gson/stream/JsonToken;->BEGIN_OBJECT:Lutilcode/com/google/gson/stream/JsonToken;

    invoke-virtual {v1}, Lutilcode/com/google/gson/stream/JsonToken;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_52

    :goto_1d
    :try_start_1d
    sget-object v0, Lutilcode/com/google/gson/internal/bind/ObjectTypeAdapter$2;->$SwitchMap$com$google$gson$stream$JsonToken:[I

    sget-object v1, Lutilcode/com/google/gson/stream/JsonToken;->STRING:Lutilcode/com/google/gson/stream/JsonToken;

    invoke-virtual {v1}, Lutilcode/com/google/gson/stream/JsonToken;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_50

    :goto_28
    :try_start_28
    sget-object v0, Lutilcode/com/google/gson/internal/bind/ObjectTypeAdapter$2;->$SwitchMap$com$google$gson$stream$JsonToken:[I

    sget-object v1, Lutilcode/com/google/gson/stream/JsonToken;->NUMBER:Lutilcode/com/google/gson/stream/JsonToken;

    invoke-virtual {v1}, Lutilcode/com/google/gson/stream/JsonToken;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_4e

    :goto_33
    :try_start_33
    sget-object v0, Lutilcode/com/google/gson/internal/bind/ObjectTypeAdapter$2;->$SwitchMap$com$google$gson$stream$JsonToken:[I

    sget-object v1, Lutilcode/com/google/gson/stream/JsonToken;->BOOLEAN:Lutilcode/com/google/gson/stream/JsonToken;

    invoke-virtual {v1}, Lutilcode/com/google/gson/stream/JsonToken;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_4c

    :goto_3e
    :try_start_3e
    sget-object v0, Lutilcode/com/google/gson/internal/bind/ObjectTypeAdapter$2;->$SwitchMap$com$google$gson$stream$JsonToken:[I

    sget-object v1, Lutilcode/com/google/gson/stream/JsonToken;->NULL:Lutilcode/com/google/gson/stream/JsonToken;

    invoke-virtual {v1}, Lutilcode/com/google/gson/stream/JsonToken;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_4a

    :goto_49
    return-void

    :catch_4a
    move-exception v0

    goto :goto_49

    :catch_4c
    move-exception v0

    goto :goto_3e

    :catch_4e
    move-exception v0

    goto :goto_33

    :catch_50
    move-exception v0

    goto :goto_28

    :catch_52
    move-exception v0

    goto :goto_1d

    :catch_54
    move-exception v0

    goto :goto_12
.end method
