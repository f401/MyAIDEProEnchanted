.class Lcom/google/gson/internal/Excluder$1;
.super Lcom/google/gson/TypeAdapter;
.source "Excluder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/gson/internal/Excluder;->create(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/TypeAdapter",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private delegate:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter",
            "<TT;>;"
        }
    .end annotation
.end field

.field final this$0:Lcom/google/gson/internal/Excluder;

.field final val$gson:Lcom/google/gson/Gson;

.field final val$skipDeserialize:Z

.field final val$skipSerialize:Z

.field final val$type:Lcom/google/gson/reflect/TypeToken;


# direct methods
.method constructor <init>(Lcom/google/gson/internal/Excluder;ZZLcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;)V
    .registers 6

    .line 122
    iput-object p1, p0, Lcom/google/gson/internal/Excluder$1;->this$0:Lcom/google/gson/internal/Excluder;

    iput-boolean p2, p0, Lcom/google/gson/internal/Excluder$1;->val$skipDeserialize:Z

    iput-boolean p3, p0, Lcom/google/gson/internal/Excluder$1;->val$skipSerialize:Z

    iput-object p4, p0, Lcom/google/gson/internal/Excluder$1;->val$gson:Lcom/google/gson/Gson;

    iput-object p5, p0, Lcom/google/gson/internal/Excluder$1;->val$type:Lcom/google/gson/reflect/TypeToken;

    invoke-direct {p0}, Lcom/google/gson/TypeAdapter;-><init>()V

    return-void
.end method

.method private delegate()Lcom/google/gson/TypeAdapter;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/gson/TypeAdapter",
            "<TT;>;"
        }
    .end annotation

    .line 143
    iget-object v0, p0, Lcom/google/gson/internal/Excluder$1;->delegate:Lcom/google/gson/TypeAdapter;

    .line 144
    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    iget-object v0, p0, Lcom/google/gson/internal/Excluder$1;->val$gson:Lcom/google/gson/Gson;

    iget-object v1, p0, Lcom/google/gson/internal/Excluder$1;->this$0:Lcom/google/gson/internal/Excluder;

    iget-object v2, p0, Lcom/google/gson/internal/Excluder$1;->val$type:Lcom/google/gson/reflect/TypeToken;

    .line 146
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->getDelegateAdapter(Lcom/google/gson/TypeAdapterFactory;Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gson/internal/Excluder$1;->delegate:Lcom/google/gson/TypeAdapter;

    goto :goto_4
.end method


# virtual methods
.method public read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/stream/JsonReader;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 127
    iget-boolean v0, p0, Lcom/google/gson/internal/Excluder$1;->val$skipDeserialize:Z

    if-eqz v0, :cond_9

    .line 128
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->skipValue()V

    .line 129
    const/4 v0, 0x0

    .line 131
    :goto_8
    return-object v0

    :cond_9
    invoke-direct {p0}, Lcom/google/gson/internal/Excluder$1;->delegate()Lcom/google/gson/TypeAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_8
.end method

.method public write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/stream/JsonWriter;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 135
    iget-boolean v0, p0, Lcom/google/gson/internal/Excluder$1;->val$skipSerialize:Z

    if-eqz v0, :cond_8

    .line 136
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    .line 140
    :goto_7
    return-void

    .line 139
    :cond_8
    invoke-direct {p0}, Lcom/google/gson/internal/Excluder$1;->delegate()Lcom/google/gson/TypeAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    goto :goto_7
.end method
