.class Lutilcode/com/google/gson/Gson$FutureTypeAdapter;
.super Lutilcode/com/google/gson/TypeAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lutilcode/com/google/gson/Gson;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FutureTypeAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
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


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lutilcode/com/google/gson/TypeAdapter;-><init>()V

    return-void
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

    iget-object v0, p0, Lutilcode/com/google/gson/Gson$FutureTypeAdapter;->delegate:Lutilcode/com/google/gson/TypeAdapter;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1}, Lutilcode/com/google/gson/TypeAdapter;->read(Lutilcode/com/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public setDelegate(Lutilcode/com/google/gson/TypeAdapter;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lutilcode/com/google/gson/TypeAdapter",
            "<TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lutilcode/com/google/gson/Gson$FutureTypeAdapter;->delegate:Lutilcode/com/google/gson/TypeAdapter;

    if-nez v0, :cond_7

    iput-object p1, p0, Lutilcode/com/google/gson/Gson$FutureTypeAdapter;->delegate:Lutilcode/com/google/gson/TypeAdapter;

    return-void

    :cond_7
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
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

    iget-object v0, p0, Lutilcode/com/google/gson/Gson$FutureTypeAdapter;->delegate:Lutilcode/com/google/gson/TypeAdapter;

    if-eqz v0, :cond_8

    invoke-virtual {v0, p1, p2}, Lutilcode/com/google/gson/TypeAdapter;->write(Lutilcode/com/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    return-void

    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
