.class Lgroovyjarjarantlr/DefaultToolErrorHandler;
.super Ljava/lang/Object;

# interfaces
.implements Lgroovyjarjarantlr/ToolErrorHandler;


# instance fields
.field DW:Lgroovyjarjarantlr/CharFormatter;

.field private final j6:Lgroovyjarjarantlr/Tool;


# direct methods
.method constructor <init>(Lgroovyjarjarantlr/Tool;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lgroovyjarjarantlr/JavaCharFormatter;

    invoke-direct {v0}, Lgroovyjarjarantlr/JavaCharFormatter;-><init>()V

    iput-object v0, p0, Lgroovyjarjarantlr/DefaultToolErrorHandler;->DW:Lgroovyjarjarantlr/CharFormatter;

    iput-object p1, p0, Lgroovyjarjarantlr/DefaultToolErrorHandler;->j6:Lgroovyjarjarantlr/Tool;

    return-void
.end method
