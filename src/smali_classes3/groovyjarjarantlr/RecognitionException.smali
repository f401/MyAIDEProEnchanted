.class public Lgroovyjarjarantlr/RecognitionException;
.super Lgroovyjarjarantlr/ANTLRException;


# instance fields
.field public DW:I

.field public FH:I

.field public j6:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "parsing error"

    invoke-direct {p0, v0}, Lgroovyjarjarantlr/ANTLRException;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lgroovyjarjarantlr/RecognitionException;->j6:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lgroovyjarjarantlr/RecognitionException;->DW:I

    iput v0, p0, Lgroovyjarjarantlr/RecognitionException;->FH:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lgroovyjarjarantlr/ANTLRException;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lgroovyjarjarantlr/RecognitionException;->j6:Ljava/lang/String;

    const/4 p1, -0x1

    iput p1, p0, Lgroovyjarjarantlr/RecognitionException;->DW:I

    iput p1, p0, Lgroovyjarjarantlr/RecognitionException;->FH:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .registers 5

    invoke-direct {p0, p1}, Lgroovyjarjarantlr/ANTLRException;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lgroovyjarjarantlr/RecognitionException;->j6:Ljava/lang/String;

    iput p3, p0, Lgroovyjarjarantlr/RecognitionException;->DW:I

    iput p4, p0, Lgroovyjarjarantlr/RecognitionException;->FH:I

    return-void
.end method


# virtual methods
.method public DW()I
    .registers 2

    iget v0, p0, Lgroovyjarjarantlr/RecognitionException;->DW:I

    return v0
.end method

.method public j6()I
    .registers 2

    iget v0, p0, Lgroovyjarjarantlr/RecognitionException;->FH:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {}, Lgroovyjarjarantlr/FileLineFormatter;->j6()Lgroovyjarjarantlr/FileLineFormatter;

    move-result-object v1

    iget-object v2, p0, Lgroovyjarjarantlr/RecognitionException;->j6:Ljava/lang/String;

    iget v3, p0, Lgroovyjarjarantlr/RecognitionException;->DW:I

    iget v4, p0, Lgroovyjarjarantlr/RecognitionException;->FH:I

    invoke-virtual {v1, v2, v3, v4}, Lgroovyjarjarantlr/FileLineFormatter;->j6(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
