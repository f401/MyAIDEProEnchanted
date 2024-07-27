.class Lorg/codehaus/groovy/antlr/UnicodeEscapingReader$DummyLexer;
.super Lgroovyjarjarantlr/CharScanner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codehaus/groovy/antlr/UnicodeEscapingReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DummyLexer"
.end annotation


# instance fields
.field private final J0:Lgroovyjarjarantlr/Token;


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lgroovyjarjarantlr/CharScanner;-><init>()V

    new-instance v0, Lgroovyjarjarantlr/Token;

    invoke-direct {v0}, Lgroovyjarjarantlr/Token;-><init>()V

    iput-object v0, p0, Lorg/codehaus/groovy/antlr/UnicodeEscapingReader$DummyLexer;->J0:Lgroovyjarjarantlr/Token;

    return-void
.end method

.method synthetic constructor <init>(Lorg/codehaus/groovy/antlr/UnicodeEscapingReader$1;)V
    .registers 2

    invoke-direct {p0}, Lorg/codehaus/groovy/antlr/UnicodeEscapingReader$DummyLexer;-><init>()V

    return-void
.end method


# virtual methods
.method public FH()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public nextToken()Lgroovyjarjarantlr/Token;
    .registers 2

    iget-object v0, p0, Lorg/codehaus/groovy/antlr/UnicodeEscapingReader$DummyLexer;->J0:Lgroovyjarjarantlr/Token;

    return-object v0
.end method

.method public v5()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
