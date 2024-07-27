.class public Lgroovyjarjarantlr/TokenStreamRecognitionException;
.super Lgroovyjarjarantlr/TokenStreamException;


# instance fields
.field public j6:Lgroovyjarjarantlr/RecognitionException;


# direct methods
.method public constructor <init>(Lgroovyjarjarantlr/RecognitionException;)V
    .registers 3

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lgroovyjarjarantlr/TokenStreamException;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lgroovyjarjarantlr/TokenStreamRecognitionException;->j6:Lgroovyjarjarantlr/RecognitionException;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lgroovyjarjarantlr/TokenStreamRecognitionException;->j6:Lgroovyjarjarantlr/RecognitionException;

    invoke-virtual {v0}, Lgroovyjarjarantlr/RecognitionException;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
