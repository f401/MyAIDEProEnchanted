.class Lutilcode/com/google/gson/internal/bind/TypeAdapters$26$1;
.super Lutilcode/com/google/gson/TypeAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lutilcode/com/google/gson/internal/bind/TypeAdapters$26;->create(Lutilcode/com/google/gson/Gson;Lutilcode/com/google/gson/reflect/TypeToken;)Lutilcode/com/google/gson/TypeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lutilcode/com/google/gson/TypeAdapter",
        "<",
        "Ljava/sql/Timestamp;",
        ">;"
    }
.end annotation


# instance fields
.field final this$0:Lutilcode/com/google/gson/internal/bind/TypeAdapters$26;

.field final val$dateTypeAdapter:Lutilcode/com/google/gson/TypeAdapter;


# direct methods
.method constructor <init>(Lutilcode/com/google/gson/internal/bind/TypeAdapters$26;Lutilcode/com/google/gson/TypeAdapter;)V
    .registers 3

    iput-object p1, p0, Lutilcode/com/google/gson/internal/bind/TypeAdapters$26$1;->this$0:Lutilcode/com/google/gson/internal/bind/TypeAdapters$26;

    iput-object p2, p0, Lutilcode/com/google/gson/internal/bind/TypeAdapters$26$1;->val$dateTypeAdapter:Lutilcode/com/google/gson/TypeAdapter;

    invoke-direct {p0}, Lutilcode/com/google/gson/TypeAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic read(Lutilcode/com/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lutilcode/com/google/gson/internal/bind/TypeAdapters$26$1;->read(Lutilcode/com/google/gson/stream/JsonReader;)Ljava/sql/Timestamp;

    move-result-object v0

    return-object v0
.end method

.method public read(Lutilcode/com/google/gson/stream/JsonReader;)Ljava/sql/Timestamp;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lutilcode/com/google/gson/internal/bind/TypeAdapters$26$1;->val$dateTypeAdapter:Lutilcode/com/google/gson/TypeAdapter;

    invoke-virtual {v0, p1}, Lutilcode/com/google/gson/TypeAdapter;->read(Lutilcode/com/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    if-eqz v0, :cond_15

    new-instance v1, Ljava/sql/Timestamp;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/sql/Timestamp;-><init>(J)V

    move-object v0, v1

    :goto_14
    return-object v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public bridge synthetic write(Lutilcode/com/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p2, Ljava/sql/Timestamp;

    invoke-virtual {p0, p1, p2}, Lutilcode/com/google/gson/internal/bind/TypeAdapters$26$1;->write(Lutilcode/com/google/gson/stream/JsonWriter;Ljava/sql/Timestamp;)V

    return-void
.end method

.method public write(Lutilcode/com/google/gson/stream/JsonWriter;Ljava/sql/Timestamp;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lutilcode/com/google/gson/internal/bind/TypeAdapters$26$1;->val$dateTypeAdapter:Lutilcode/com/google/gson/TypeAdapter;

    invoke-virtual {v0, p1, p2}, Lutilcode/com/google/gson/TypeAdapter;->write(Lutilcode/com/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    return-void
.end method
