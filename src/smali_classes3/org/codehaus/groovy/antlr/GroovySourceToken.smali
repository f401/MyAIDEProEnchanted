.class public Lorg/codehaus/groovy/antlr/GroovySourceToken;
.super Lgroovyjarjarantlr/Token;

# interfaces
.implements Lorg/codehaus/groovy/antlr/SourceInfo;


# instance fields
.field protected FH:I

.field protected Hw:Ljava/lang/String;

.field protected VH:I

.field protected Zo:I

.field protected v5:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0, p1}, Lgroovyjarjarantlr/Token;-><init>(I)V

    const-string p1, ""

    iput-object p1, p0, Lorg/codehaus/groovy/antlr/GroovySourceToken;->Hw:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public DW(I)V
    .registers 2

    iput p1, p0, Lorg/codehaus/groovy/antlr/GroovySourceToken;->FH:I

    return-void
.end method

.method public Hw(I)V
    .registers 2

    iput p1, p0, Lorg/codehaus/groovy/antlr/GroovySourceToken;->VH:I

    return-void
.end method

.method public Mr()I
    .registers 2

    iget v0, p0, Lorg/codehaus/groovy/antlr/GroovySourceToken;->Zo:I

    return v0
.end method

.method public U2()I
    .registers 2

    iget v0, p0, Lorg/codehaus/groovy/antlr/GroovySourceToken;->VH:I

    return v0
.end method

.method public aM()I
    .registers 2

    iget v0, p0, Lorg/codehaus/groovy/antlr/GroovySourceToken;->FH:I

    return v0
.end method

.method public j3()I
    .registers 2

    iget v0, p0, Lorg/codehaus/groovy/antlr/GroovySourceToken;->v5:I

    return v0
.end method

.method public j6()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/codehaus/groovy/antlr/GroovySourceToken;->Hw:Ljava/lang/String;

    return-object v0
.end method

.method public j6(I)V
    .registers 2

    iput p1, p0, Lorg/codehaus/groovy/antlr/GroovySourceToken;->v5:I

    return-void
.end method

.method public j6(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lorg/codehaus/groovy/antlr/GroovySourceToken;->Hw:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/codehaus/groovy/antlr/GroovySourceToken;->j6()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\",<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lgroovyjarjarantlr/Token;->DW:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ">,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "line="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/codehaus/groovy/antlr/GroovySourceToken;->FH:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",col="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/codehaus/groovy/antlr/GroovySourceToken;->v5:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",lineLast="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/codehaus/groovy/antlr/GroovySourceToken;->Zo:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",colLast="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/codehaus/groovy/antlr/GroovySourceToken;->VH:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public v5(I)V
    .registers 2

    iput p1, p0, Lorg/codehaus/groovy/antlr/GroovySourceToken;->Zo:I

    return-void
.end method
