.class abstract Lutilcode/com/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lutilcode/com/google/gson/internal/bind/ReflectiveTypeAdapterFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "BoundField"
.end annotation


# instance fields
.field final deserialized:Z

.field final name:Ljava/lang/String;

.field final serialized:Z


# direct methods
.method protected constructor <init>(Ljava/lang/String;ZZ)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lutilcode/com/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;->name:Ljava/lang/String;

    iput-boolean p2, p0, Lutilcode/com/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;->serialized:Z

    iput-boolean p3, p0, Lutilcode/com/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;->deserialized:Z

    return-void
.end method


# virtual methods
.method abstract read(Lutilcode/com/google/gson/stream/JsonReader;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation
.end method

.method abstract write(Lutilcode/com/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation
.end method

.method abstract writeField(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation
.end method
