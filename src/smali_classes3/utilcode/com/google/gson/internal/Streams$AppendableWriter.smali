.class final Lutilcode/com/google/gson/internal/Streams$AppendableWriter;
.super Ljava/io/Writer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lutilcode/com/google/gson/internal/Streams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AppendableWriter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lutilcode/com/google/gson/internal/Streams$AppendableWriter$CurrentWrite;
    }
.end annotation


# instance fields
.field private final appendable:Ljava/lang/Appendable;

.field private final currentWrite:Lutilcode/com/google/gson/internal/Streams$AppendableWriter$CurrentWrite;


# direct methods
.method constructor <init>(Ljava/lang/Appendable;)V
    .registers 3

    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    new-instance v0, Lutilcode/com/google/gson/internal/Streams$AppendableWriter$CurrentWrite;

    invoke-direct {v0}, Lutilcode/com/google/gson/internal/Streams$AppendableWriter$CurrentWrite;-><init>()V

    iput-object v0, p0, Lutilcode/com/google/gson/internal/Streams$AppendableWriter;->currentWrite:Lutilcode/com/google/gson/internal/Streams$AppendableWriter$CurrentWrite;

    iput-object p1, p0, Lutilcode/com/google/gson/internal/Streams$AppendableWriter;->appendable:Ljava/lang/Appendable;

    return-void
.end method


# virtual methods
.method public close()V
    .registers 1

    return-void
.end method

.method public flush()V
    .registers 1

    return-void
.end method

.method public write(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lutilcode/com/google/gson/internal/Streams$AppendableWriter;->appendable:Ljava/lang/Appendable;

    int-to-char v1, p1

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    return-void
.end method

.method public write([CII)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lutilcode/com/google/gson/internal/Streams$AppendableWriter;->currentWrite:Lutilcode/com/google/gson/internal/Streams$AppendableWriter$CurrentWrite;

    iput-object p1, v0, Lutilcode/com/google/gson/internal/Streams$AppendableWriter$CurrentWrite;->chars:[C

    iget-object v0, p0, Lutilcode/com/google/gson/internal/Streams$AppendableWriter;->appendable:Ljava/lang/Appendable;

    iget-object v1, p0, Lutilcode/com/google/gson/internal/Streams$AppendableWriter;->currentWrite:Lutilcode/com/google/gson/internal/Streams$AppendableWriter$CurrentWrite;

    add-int v2, p3, p2

    invoke-interface {v0, v1, p2, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;

    return-void
.end method
