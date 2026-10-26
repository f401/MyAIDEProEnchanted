.class public Lorg/codehaus/groovy/GroovyBugError;
.super Ljava/lang/AssertionError;


# instance fields
.field private final DW:Ljava/lang/Exception;

.field private j6:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/codehaus/groovy/GroovyBugError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    iput-object p2, p0, Lorg/codehaus/groovy/GroovyBugError;->DW:Ljava/lang/Exception;

    iput-object p1, p0, Lorg/codehaus/groovy/GroovyBugError;->j6:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    iget-object v0, p0, Lorg/codehaus/groovy/GroovyBugError;->DW:Ljava/lang/Exception;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/codehaus/groovy/GroovyBugError;->j6:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "BUG! "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/codehaus/groovy/GroovyBugError;->j6:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "BUG! UNCAUGHT EXCEPTION: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/codehaus/groovy/GroovyBugError;->DW:Ljava/lang/Exception;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/codehaus/groovy/GroovyBugError;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
