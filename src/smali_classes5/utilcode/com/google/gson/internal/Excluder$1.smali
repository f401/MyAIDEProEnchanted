.class Lutilcode/com/google/gson/internal/Excluder$1;
.super Lutilcode/com/google/gson/TypeAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lutilcode/com/google/gson/internal/Excluder;->create(Lutilcode/com/google/gson/Gson;Lutilcode/com/google/gson/reflect/TypeToken;)Lutilcode/com/google/gson/TypeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lutilcode/com/google/gson/TypeAdapter",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private delegate:Lutilcode/com/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lutilcode/com/google/gson/TypeAdapter",
            "<TT;>;"
        }
    .end annotation
.end field

.field final this$0:Lutilcode/com/google/gson/internal/Excluder;

.field final val$gson:Lutilcode/com/google/gson/Gson;

.field final val$skipDeserialize:Z

.field final val$skipSerialize:Z

.field final val$type:Lutilcode/com/google/gson/reflect/TypeToken;


# direct methods
.method constructor <init>(Lutilcode/com/google/gson/internal/Excluder;ZZLutilcode/com/google/gson/Gson;Lutilcode/com/google/gson/reflect/TypeToken;)V
    .registers 6

    iput-object p1, p0, Lutilcode/com/google/gson/internal/Excluder$1;->this$0:Lutilcode/com/google/gson/internal/Excluder;

    iput-boolean p2, p0, Lutilcode/com/google/gson/internal/Excluder$1;->val$skipDeserialize:Z

    iput-boolean p3, p0, Lutilcode/com/google/gson/internal/Excluder$1;->val$skipSerialize:Z

    iput-object p4, p0, Lutilcode/com/google/gson/internal/Excluder$1;->val$gson:Lutilcode/com/google/gson/Gson;

    iput-object p5, p0, Lutilcode/com/google/gson/internal/Excluder$1;->val$type:Lutilcode/com/google/gson/reflect/TypeToken;

    invoke-direct {p0}, Lutilcode/com/google/gson/TypeAdapter;-><init>()V

    return-void
.end method

.method private delegate()Lutilcode/com/google/gson/TypeAdapter;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lutilcode/com/google/gson/TypeAdapter",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lutilcode/com/google/gson/internal/Excluder$1;->delegate:Lutilcode/com/google/gson/TypeAdapter;

    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    iget-object v0, p0, Lutilcode/com/google/gson/internal/Excluder$1;->val$gson:Lutilcode/com/google/gson/Gson;

    iget-object v1, p0, Lutilcode/com/google/gson/internal/Excluder$1;->this$0:Lutilcode/com/google/gson/internal/Excluder;

    iget-object v2, p0, Lutilcode/com/google/gson/internal/Excluder$1;->val$type:Lutilcode/com/google/gson/reflect/TypeToken;

    invoke-virtual {v0, v1, v2}, Lutilcode/com/google/gson/Gson;->getDelegateAdapter(Lutilcode/com/google/gson/TypeAdapterFactory;Lutilcode/com/google/gson/reflect/TypeToken;)Lutilcode/com/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lutilcode/com/google/gson/internal/Excluder$1;->delegate:Lutilcode/com/google/gson/TypeAdapter;

    goto :goto_4
.end method


# virtual methods
.method public read(Lutilcode/com/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lutilcode/com/google/gson/stream/JsonReader;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lutilcode/com/google/gson/internal/Excluder$1;->val$skipDeserialize:Z

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lutilcode/com/google/gson/stream/JsonReader;->skipValue()V

    const/4 v0, 0x0

    :goto_8
    return-object v0

    :cond_9
    invoke-direct {p0}, Lutilcode/com/google/gson/internal/Excluder$1;->delegate()Lutilcode/com/google/gson/TypeAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lutilcode/com/google/gson/TypeAdapter;->read(Lutilcode/com/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_8
.end method

.method public write(Lutilcode/com/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lutilcode/com/google/gson/stream/JsonWriter;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lutilcode/com/google/gson/internal/Excluder$1;->val$skipSerialize:Z

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lutilcode/com/google/gson/stream/JsonWriter;->nullValue()Lutilcode/com/google/gson/stream/JsonWriter;

    :goto_7
    return-void

    :cond_8
    invoke-direct {p0}, Lutilcode/com/google/gson/internal/Excluder$1;->delegate()Lutilcode/com/google/gson/TypeAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lutilcode/com/google/gson/TypeAdapter;->write(Lutilcode/com/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    goto :goto_7
.end method
