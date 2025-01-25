.class public Lgroovyjarjarantlr/CharBuffer;
.super Lgroovyjarjarantlr/InputBuffer;


# instance fields
.field public transient v5:Ljava/io/Reader;


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .registers 2

    invoke-direct {p0}, Lgroovyjarjarantlr/InputBuffer;-><init>()V

    iput-object p1, p0, Lgroovyjarjarantlr/CharBuffer;->v5:Ljava/io/Reader;

    return-void
.end method


# virtual methods
.method public DW(I)V
    .registers 4

    :try_start_0
    invoke-virtual {p0}, Lgroovyjarjarantlr/InputBuffer;->FH()V

    :goto_3
    iget-object v0, p0, Lgroovyjarjarantlr/InputBuffer;->Hw:Lgroovyjarjarantlr/CharQueue;

    iget v0, v0, Lgroovyjarjarantlr/CharQueue;->Hw:I

    iget v1, p0, Lgroovyjarjarantlr/InputBuffer;->DW:I

    add-int/2addr v1, p1

    if-ge v0, v1, :cond_19

    iget-object v0, p0, Lgroovyjarjarantlr/InputBuffer;->Hw:Lgroovyjarjarantlr/CharQueue;

    iget-object v1, p0, Lgroovyjarjarantlr/CharBuffer;->v5:Ljava/io/Reader;

    invoke-virtual {v1}, Ljava/io/Reader;->read()I

    move-result v1

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Lgroovyjarjarantlr/CharQueue;->j6(C)V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_18} :catch_1a

    goto :goto_3

    :cond_19
    return-void

    :catch_1a
    move-exception p1

    new-instance v0, Lgroovyjarjarantlr/CharStreamIOException;

    invoke-direct {v0, p1}, Lgroovyjarjarantlr/CharStreamIOException;-><init>(Ljava/io/IOException;)V

    goto :goto_22

    :goto_21
    throw v0

    :goto_22
    goto :goto_21
.end method
